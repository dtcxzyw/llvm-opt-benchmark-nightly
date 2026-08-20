inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_Z28lodepng_huffman_code_lengthsPjPKjmj:bb.a
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %.not83 = icmp eq i64 %indvars.iv.next161, %i.bg
  br i1 %.not83, label %.preheader131, label %scalar.ph179, !llvm.loop !53

.lr.ph146:                                        ; preds = %.preheader131, %.lr.ph146
  %.3145 = phi i32 [ %i.dj, %.lr.ph146 ], [ 2, %.preheader131 ] ; 2 uses
  call fastcc void @_ZL10boundaryPMP8BPMListsP7BPMNodemii(ptr noundef %4, ptr noundef %i.f, i64 noundef %.1, i32 noundef %.pre164, i32 noundef %.3145)
  %i.dj = add i32 %.3145, 1                       ; 2 uses
  %i.dk = zext i32 %i.dj to i64
  %.not84 = icmp eq i64 %i.dg, %i.dk
  br i1 %.not84, label %._crit_edge147.loopexit, label %.lr.ph146, !llvm.loop !54

._crit_edge147.loopexit:                          ; preds = %.lr.ph146
  %.pre = load ptr, ptr %i.bl, align 8, !tbaa !41
  br label %._crit_edge147

._crit_edge147:                                   ; preds = %.preheader131, %._crit_edge147.loopexit
  %i.dl = phi ptr [ %.pre, %._crit_edge147.loopexit ], [ %i.bk, %.preheader131 ] ; 3 uses
  %i.dm = zext i32 %.pre164 to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %.0152 = load ptr, ptr %i.dn, align 8, !tbaa !42 ; 2 uses
  %.not85153 = icmp eq ptr %.0152, null
  br i1 %.not85153, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge147, %._crit_edge151
  %.0154 = phi ptr [ %.0, %._crit_edge151 ], [ %.0152, %._crit_edge147 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0154, i64 4 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !17
  %.not86148 = icmp eq i32 %i.dp, 0
  br i1 %.not86148, label %._crit_edge151, label %.lr.ph150

.lr.ph150:                                        ; preds = %.preheader, %.lr.ph150
  %.4149 = phi i32 [ %i.dy, %.lr.ph150 ], [ 0, %.preheader ] ; 2 uses
  %i.dq = zext i32 %.4149 to i64
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !17
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !13
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !13
  %i.dy = add i32 %.4149, 1                       ; 2 uses
  %i.dz = load i32, ptr %i.do, align 4, !tbaa !17
  %.not86 = icmp eq i32 %i.dy, %i.dz
  br i1 %.not86, label %._crit_edge151, label %.lr.ph150, !llvm.loop !55

._crit_edge151:                                   ; preds = %.lr.ph150, %.preheader
  %i.ea = getelementptr inbounds nuw i8, ptr %.0154, i64 8
  %.0 = load ptr, ptr %i.ea, align 8, !tbaa !42   ; 2 uses
  %.not85 = icmp eq ptr %.0, null
  br i1 %.not85, label %.loopexit, label %.preheader, !llvm.loop !56

.loopexit:                                        ; preds = %._crit_edge151, %._crit_edge147, %_ZL12bpmnode_sortP7BPMNodem.exit
  %i.eb = phi ptr [ %i.bk, %_ZL12bpmnode_sortP7BPMNodem.exit ], [ %i.dl, %._crit_edge147 ], [ %i.dl, %._crit_edge151 ]
  %i.ec = load ptr, ptr %i.bc, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.ec) #31
  %i.ed = load ptr, ptr %i.bf, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.ed) #31
  %i.ee = load ptr, ptr %i.bj, align 8, !tbaa !40
  tail call void @free(ptr noundef %i.ee) #31
  tail call void @free(ptr noundef %i.eb) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %.loopexit, %bb.e
  %.174 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ %spec.select, %.loopexit ]
  tail call void @free(ptr noundef nonnull %i.f) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.a, %bb.q
  %.075 = phi i32 [ 83, %bb.b ], [ 80, %bb.a ], [ %.174, %bb.q ]
  ret i32 %.075
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL10boundaryPMP8BPMListsP7BPMNodemii(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 2, 0) %2, i32 noundef range(i32 -2147483648, 2147483647) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = sext i32 %3 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17   ; 2 uses
  %i.h = icmp eq i32 %3, 0
  br i1 %i.h, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.o = add nsw i32 %4, 1
  %.tr = trunc i64 %2 to i32
  %i.p = shl i32 %.tr, 1
  %i.q = add i32 %i.p, -2
  %i.r = icmp slt i32 %i.o, %i.q
  br label %bb.l

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.lcssa144 = phi ptr [ %i.b, %bb.a ], [ %i.it, %tailrecurse ]
  %.lcssa138 = phi ptr [ %i.d, %bb.a ], [ %i.iu, %tailrecurse ]
  %.lcssa135 = phi ptr [ %i.e, %bb.a ], [ %i.iv, %tailrecurse ]
  %.lcssa132 = phi i32 [ %i.g, %bb.a ], [ %i.ix, %tailrecurse ] ; 2 uses
  %i.s = zext i32 %.lcssa132 to i64               ; 2 uses
  %.not = icmp ugt i64 %2, %i.s
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40   ; 2 uses
  store ptr %.lcssa135, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.s
  %i.w = load i32, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !37
  %.not.i = icmp ult i32 %i.y, %i.aa
  br i1 %.not.i, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit, label %.preheader47.i

.preheader47.i:                                   ; preds = %bb.b
  %i.ab = load i32, ptr %0, align 8, !tbaa !35    ; 6 uses
  %.not4148.i = icmp eq i32 %i.ab, 0              ; 2 uses
  br i1 %.not4148.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader47.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 9 uses
  %i.ae = zext i32 %i.ab to i64                   ; 2 uses
  %xtraiter269 = and i64 %i.ae, 7                 ; 3 uses
  %i.af = icmp ult i32 %i.ab, 8
  br i1 %i.af, label %.epil.preheader268, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter273 = and i64 %i.ae, 4294967288
  br label %bb.d

.preheader.i.loopexit.unr-lcssa:                  ; preds = %bb.d
  %lcmp.mod271.not = icmp eq i64 %xtraiter269, 0
  br i1 %lcmp.mod271.not, label %.preheader.i, label %.epil.preheader268

.epil.preheader268:                               ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod272 = icmp ne i64 %xtraiter269, 0
  tail call void @llvm.assume(i1 %lcmp.mod272)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader268
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader268 ], [ %indvars.iv.next.i.epil, %bb.c ] ; 2 uses
  %epil.iter270 = phi i64 [ 0, %.epil.preheader268 ], [ %epil.iter270.next, %bb.c ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.i.epil
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 0, ptr %i.ah, align 8, !tbaa !47
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter270.next = add i64 %epil.iter270, 1   ; 2 uses
  %epil.iter270.cmp.not = icmp eq i64 %epil.iter270.next, %xtraiter269
  br i1 %epil.iter270.cmp.not, label %.preheader.i, label %bb.c, !llvm.loop !57

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %bb.c, %.preheader47.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %.not4260.i = icmp eq i32 %i.aj, 0
  br i1 %.not4260.i, label %._crit_edge63.i, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.preheader.i
  %i.ak = zext i32 %i.aj to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.d ] ; 9 uses
  %niter274 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter274.next.7, %bb.d ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 0, ptr %i.am, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i32 0, ptr %i.ao, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i32 0, ptr %i.aq, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  store i32 0, ptr %i.as, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  store i32 0, ptr %i.au, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  store i32 0, ptr %i.aw, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  store i32 0, ptr %i.ay, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 184
  store i32 0, ptr %i.ba, align 8, !tbaa !47
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter274.next.7 = add nuw i64 %niter274, 8     ; 2 uses
  %niter274.ncmp.7 = icmp eq i64 %niter274.next.7, %unroll_iter273
  br i1 %niter274.ncmp.7, label %.preheader.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !59

bb.e:                                             ; preds = %._crit_edge59.i, %.lr.ph62.i
  %indvars.iv70.i = phi i64 [ 0, %.lr.ph62.i ], [ %indvars.iv.next71.i, %._crit_edge59.i ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv70.i
  %.050.i = load ptr, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %.not4551.i = icmp eq ptr %.050.i, null
  br i1 %.not4551.i, label %._crit_edge.i, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %bb.e, %.lr.ph53.i
  %.052.i = phi ptr [ %.0.i, %.lr.ph53.i ], [ %.050.i, %bb.e ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.052.i, i64 16
  store i32 1, ptr %i.bc, align 8, !tbaa !47
  %i.bd = getelementptr inbounds nuw i8, ptr %.052.i, i64 8
  %.0.i = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 2 uses
  %.not45.i = icmp eq ptr %.0.i, null
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph53.i, !llvm.loop !48

._crit_edge.i:                                    ; preds = %.lr.ph53.i, %bb.e
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.lcssa144, i64 %indvars.iv70.i
  %.154.i = load ptr, ptr %i.be, align 8, !tbaa !42 ; 2 uses
  %.not4655.i = icmp eq ptr %.154.i, null
  br i1 %.not4655.i, label %._crit_edge59.i, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %._crit_edge.i, %.lr.ph58.i
  %.156.i = phi ptr [ %.1.i, %.lr.ph58.i ], [ %.154.i, %._crit_edge.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.156.i, i64 16
  store i32 1, ptr %i.bf, align 8, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %.156.i, i64 8
  %.1.i = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %.not46.i = icmp eq ptr %.1.i, null
  br i1 %.not46.i, label %._crit_edge59.i, label %.lr.ph58.i, !llvm.loop !49

._crit_edge59.i:                                  ; preds = %.lr.ph58.i, %._crit_edge.i
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %.not42.i = icmp eq i64 %indvars.iv.next71.i, %i.ak
  br i1 %.not42.i, label %._crit_edge63.i, label %bb.e, !llvm.loop !50

._crit_edge63.i:                                  ; preds = %._crit_edge59.i, %.preheader.i
  store i32 0, ptr %i.z, align 8, !tbaa !37
  br i1 %.not4148.i, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %._crit_edge63.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bj = zext i32 %i.ab to i64                   ; 2 uses
  %xtraiter276 = and i64 %i.bj, 1
  %i.bk = icmp eq i32 %i.ab, 1
  br i1 %i.bk, label %.epil.preheader275, label %.lr.ph67.i.new

.lr.ph67.i.new:                                   ; preds = %.lr.ph67.i
  %unroll_iter282 = and i64 %i.bj, 4294967294
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph67.i.new
  %i.bl = phi i32 [ 0, %.lr.ph67.i.new ], [ %i.ce, %bb.j ] ; 3 uses
  %indvars.iv73.i = phi i64 [ 0, %.lr.ph67.i.new ], [ %indvars.iv.next74.i.1, %bb.j ] ; 3 uses
  %niter283 = phi i64 [ 0, %.lr.ph67.i.new ], [ %niter283.next.1, %bb.j ]
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !38
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %indvars.iv73.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !47
  %.not44.i = icmp eq i32 %i.bp, 0
  br i1 %.not44.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !39
  %i.br = add i32 %i.bl, 1                        ; 2 uses
  store i32 %i.br, ptr %i.z, align 8, !tbaa !37
  %i.bs = zext i32 %i.bl to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bs
  store ptr %i.bn, ptr %i.bt, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bu = phi i32 [ %i.bl, %bb.f ], [ %i.br, %bb.g ] ; 3 uses
  %i.bv = load ptr, ptr %i.bh, align 8, !tbaa !38
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %indvars.iv73.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !47
  %.not44.i.1 = icmp eq i32 %i.by, 0
  br i1 %.not44.i.1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.ca = load ptr, ptr %i.bi, align 8, !tbaa !39
  %i.cb = add i32 %i.bu, 1                        ; 2 uses
  store i32 %i.cb, ptr %i.z, align 8, !tbaa !37
  %i.cc = zext i32 %i.bu to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cc
  store ptr %i.bz, ptr %i.cd, align 8, !tbaa !42
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ce = phi i32 [ %i.bu, %bb.h ], [ %i.cb, %bb.i ] ; 2 uses
  %indvars.iv.next74.i.1 = add nuw nsw i64 %indvars.iv73.i, 2 ; 2 uses
  %niter283.next.1 = add nuw i64 %niter283, 2     ; 2 uses
  %niter283.ncmp.1 = icmp eq i64 %niter283.next.1, %unroll_iter282
  br i1 %niter283.ncmp.1, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !60

_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod280.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod280.not, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit, label %.epil.preheader275

.epil.preheader275:                               ; preds = %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit.loopexit.unr-lcssa, %.lr.ph67.i
  %.epil.init279 = phi i32 [ 0, %.lr.ph67.i ], [ %i.ce, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv73.i.epil.init = phi i64 [ 0, %.lr.ph67.i ], [ %indvars.iv.next74.i.1, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit.loopexit.unr-lcssa ]
  %lcmp.mod281 = trunc i32 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod281)
  %i.cf = load ptr, ptr %i.bh, align 8, !tbaa !38
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %indvars.iv73.i.epil.init ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !47
  %.not44.i.epil = icmp eq i32 %i.ci, 0
  br i1 %.not44.i.epil, label %bb.k, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit

bb.k:                                             ; preds = %.epil.preheader275
  %i.cj = load ptr, ptr %i.bi, align 8, !tbaa !39
  %i.ck = add i32 %.epil.init279, 1
  store i32 %i.ck, ptr %i.z, align 8, !tbaa !37
  %i.cl = zext i32 %.epil.init279 to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cl
  store ptr %i.cg, ptr %i.cm, align 8, !tbaa !42
  br label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit

_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit:    ; preds = %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit.loopexit.unr-lcssa, %bb.k, %.epil.preheader275, %bb.b, %._crit_edge63.i
  %i.cn = phi i32 [ %i.y, %bb.b ], [ 0, %._crit_edge63.i ], [ 0, %.epil.preheader275 ], [ 0, %bb.k ], [ 0, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit.loopexit.unr-lcssa ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !39
  %i.cq = add nuw i32 %i.cn, 1
  store i32 %i.cq, ptr %i.x, align 4, !tbaa !36
  br label %.loopexit.sink.split

bb.l:                                             ; preds = %.lr.ph, %tailrecurse
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %tailrecurse ] ; 2 uses
  %i.cr = phi i32 [ %i.g, %.lr.ph ], [ %i.ix, %tailrecurse ] ; 3 uses
  %i.cs = phi ptr [ %i.e, %.lr.ph ], [ %i.iv, %tailrecurse ]
  %i.ct = phi ptr [ %i.d, %.lr.ph ], [ %i.iu, %tailrecurse ] ; 3 uses
  %i.cu = phi ptr [ %i.b, %.lr.ph ], [ %i.it, %tailrecurse ] ; 3 uses
  %i.cv = load ptr, ptr %i.i, align 8, !tbaa !40  ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 6 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %indvars.iv.next
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !42
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !14
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %indvars.iv.next ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !42
  %i.db = load i32, ptr %i.da, align 8, !tbaa !14
  %i.dc = add nsw i32 %i.db, %i.cy                ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %indvars.iv
  store ptr %i.cs, ptr %i.dd, align 8, !tbaa !42
  %i.de = zext i32 %i.cr to i64                   ; 2 uses
  %i.df = icmp ugt i64 %2, %i.de
  br i1 %i.df, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.de
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !14 ; 2 uses
  %i.di = icmp sgt i32 %i.dc, %i.dh
  br i1 %i.di, label %.critedge, label %bb.w

.critedge:                                        ; preds = %bb.m
  %i.dj = load ptr, ptr %i.ct, align 8, !tbaa !42
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !51
  %i.dm = load i32, ptr %i.j, align 4, !tbaa !36  ; 2 uses
  %i.dn = load i32, ptr %i.k, align 8, !tbaa !37
  %.not.i59 = icmp ult i32 %i.dm, %i.dn
  br i1 %.not.i59, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92, label %.preheader47.i60

.preheader47.i60:                                 ; preds = %.critedge
  %i.do = load i32, ptr %0, align 8, !tbaa !35    ; 6 uses
  %.not4148.i61 = icmp eq i32 %i.do, 0            ; 2 uses
  br i1 %.not4148.i61, label %.preheader.i66, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.preheader47.i60
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !38  ; 9 uses
  %i.dq = zext i32 %i.do to i64                   ; 2 uses
  %xtraiter253 = and i64 %i.dq, 7                 ; 3 uses
  %i.dr = icmp ult i32 %i.do, 8
  br i1 %i.dr, label %.epil.preheader252, label %.lr.ph.i62.new

.lr.ph.i62.new:                                   ; preds = %.lr.ph.i62
  %unroll_iter257 = and i64 %i.dq, 4294967288
  br label %bb.o

.preheader.i66.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod255.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod255.not, label %.preheader.i66, label %.epil.preheader252

.epil.preheader252:                               ; preds = %.preheader.i66.loopexit.unr-lcssa, %.lr.ph.i62
  %indvars.iv.i63.epil.init = phi i64 [ 0, %.lr.ph.i62 ], [ %indvars.iv.next.i64.7, %.preheader.i66.loopexit.unr-lcssa ]
  %lcmp.mod256 = icmp ne i64 %xtraiter253, 0
  tail call void @llvm.assume(i1 %lcmp.mod256)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader252
  %indvars.iv.i63.epil = phi i64 [ %indvars.iv.i63.epil.init, %.epil.preheader252 ], [ %indvars.iv.next.i64.epil, %bb.n ] ; 2 uses
  %epil.iter254 = phi i64 [ 0, %.epil.preheader252 ], [ %epil.iter254.next, %bb.n ]
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv.i63.epil
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i32 0, ptr %i.dt, align 8, !tbaa !47
  %indvars.iv.next.i64.epil = add nuw nsw i64 %indvars.iv.i63.epil, 1
  %epil.iter254.next = add i64 %epil.iter254, 1   ; 2 uses
  %epil.iter254.cmp.not = icmp eq i64 %epil.iter254.next, %xtraiter253
  br i1 %epil.iter254.cmp.not, label %.preheader.i66, label %bb.n, !llvm.loop !61

.preheader.i66:                                   ; preds = %.preheader.i66.loopexit.unr-lcssa, %bb.n, %.preheader47.i60
  %i.du = load i32, ptr %i.m, align 8, !tbaa !31  ; 2 uses
  %.not4260.i67 = icmp eq i32 %i.du, 0
  br i1 %.not4260.i67, label %._crit_edge63.i86, label %.lr.ph62.i68

.lr.ph62.i68:                                     ; preds = %.preheader.i66
  %i.dv = zext i32 %i.du to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.o, %.lr.ph.i62.new
  %indvars.iv.i63 = phi i64 [ 0, %.lr.ph.i62.new ], [ %indvars.iv.next.i64.7, %bb.o ] ; 9 uses
  %niter258 = phi i64 [ 0, %.lr.ph.i62.new ], [ %niter258.next.7, %bb.o ]
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv.i63
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i32 0, ptr %i.dx, align 8, !tbaa !47
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv.i63
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  store i32 0, ptr %i.dz, align 8, !tbaa !47
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv.i63
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  store i32 0, ptr %i.eb, align 8, !tbaa !47
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv.i63
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 88
  store i32 0, ptr %i.ed, align 8, !tbaa !47
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv.i63
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 112
  store i32 0, ptr %i.ef, align 8, !tbaa !47
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv.i63
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 136
  store i32 0, ptr %i.eh, align 8, !tbaa !47
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv.i63
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 160
  store i32 0, ptr %i.ej, align 8, !tbaa !47
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv.i63
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 184
  store i32 0, ptr %i.el, align 8, !tbaa !47
  %indvars.iv.next.i64.7 = add nuw nsw i64 %indvars.iv.i63, 8 ; 2 uses
  %niter258.next.7 = add nuw i64 %niter258, 8     ; 2 uses
  %niter258.ncmp.7 = icmp eq i64 %niter258.next.7, %unroll_iter257
  br i1 %niter258.ncmp.7, label %.preheader.i66.loopexit.unr-lcssa, label %bb.o, !llvm.loop !59

bb.p:                                             ; preds = %._crit_edge59.i83, %.lr.ph62.i68
  %indvars.iv70.i69 = phi i64 [ 0, %.lr.ph62.i68 ], [ %indvars.iv.next71.i84, %._crit_edge59.i83 ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv70.i69
  %.050.i70 = load ptr, ptr %i.em, align 8, !tbaa !42 ; 2 uses
  %.not4551.i71 = icmp eq ptr %.050.i70, null
  br i1 %.not4551.i71, label %._crit_edge.i76, label %.lr.ph53.i72

.lr.ph53.i72:                                     ; preds = %bb.p, %.lr.ph53.i72
  %.052.i73 = phi ptr [ %.0.i74, %.lr.ph53.i72 ], [ %.050.i70, %bb.p ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.052.i73, i64 16
  store i32 1, ptr %i.en, align 8, !tbaa !47
  %i.eo = getelementptr inbounds nuw i8, ptr %.052.i73, i64 8
  %.0.i74 = load ptr, ptr %i.eo, align 8, !tbaa !42 ; 2 uses
  %.not45.i75 = icmp eq ptr %.0.i74, null
  br i1 %.not45.i75, label %._crit_edge.i76, label %.lr.ph53.i72, !llvm.loop !48

._crit_edge.i76:                                  ; preds = %.lr.ph53.i72, %bb.p
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv70.i69
  %.154.i77 = load ptr, ptr %i.ep, align 8, !tbaa !42 ; 2 uses
  %.not4655.i78 = icmp eq ptr %.154.i77, null
  br i1 %.not4655.i78, label %._crit_edge59.i83, label %.lr.ph58.i79

.lr.ph58.i79:                                     ; preds = %._crit_edge.i76, %.lr.ph58.i79
  %.156.i80 = phi ptr [ %.1.i81, %.lr.ph58.i79 ], [ %.154.i77, %._crit_edge.i76 ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.156.i80, i64 16
  store i32 1, ptr %i.eq, align 8, !tbaa !47
  %i.er = getelementptr inbounds nuw i8, ptr %.156.i80, i64 8
  %.1.i81 = load ptr, ptr %i.er, align 8, !tbaa !42 ; 2 uses
  %.not46.i82 = icmp eq ptr %.1.i81, null
  br i1 %.not46.i82, label %._crit_edge59.i83, label %.lr.ph58.i79, !llvm.loop !49

._crit_edge59.i83:                                ; preds = %.lr.ph58.i79, %._crit_edge.i76
  %indvars.iv.next71.i84 = add nuw nsw i64 %indvars.iv70.i69, 1 ; 2 uses
  %.not42.i85 = icmp eq i64 %indvars.iv.next71.i84, %i.dv
  br i1 %.not42.i85, label %._crit_edge63.i86, label %bb.p, !llvm.loop !50

._crit_edge63.i86:                                ; preds = %._crit_edge59.i83, %.preheader.i66
  store i32 0, ptr %i.k, align 8, !tbaa !37
  br i1 %.not4148.i61, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92, label %.lr.ph67.i87

.lr.ph67.i87:                                     ; preds = %._crit_edge63.i86
  %i.es = zext i32 %i.do to i64                   ; 2 uses
  %xtraiter260 = and i64 %i.es, 1
  %i.et = icmp eq i32 %i.do, 1
  br i1 %i.et, label %.epil.preheader259, label %.lr.ph67.i87.new

.lr.ph67.i87.new:                                 ; preds = %.lr.ph67.i87
  %unroll_iter266 = and i64 %i.es, 4294967294
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph67.i87.new
  %i.eu = phi i32 [ 0, %.lr.ph67.i87.new ], [ %i.fn, %bb.u ] ; 3 uses
  %indvars.iv73.i88 = phi i64 [ 0, %.lr.ph67.i87.new ], [ %indvars.iv.next74.i90.1, %bb.u ] ; 3 uses
  %niter267 = phi i64 [ 0, %.lr.ph67.i87.new ], [ %niter267.next.1, %bb.u ]
  %i.ev = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %indvars.iv73.i88 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !47
  %.not44.i89 = icmp eq i32 %i.ey, 0
  br i1 %.not44.i89, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ez = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.fa = add i32 %i.eu, 1                        ; 2 uses
  store i32 %i.fa, ptr %i.k, align 8, !tbaa !37
  %i.fb = zext i32 %i.eu to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fb
  store ptr %i.ew, ptr %i.fc, align 8, !tbaa !42
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fd = phi i32 [ %i.eu, %bb.q ], [ %i.fa, %bb.r ] ; 3 uses
  %i.fe = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %indvars.iv73.i88 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !47
  %.not44.i89.1 = icmp eq i32 %i.fh, 0
  br i1 %.not44.i89.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fj = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.fk = add i32 %i.fd, 1                        ; 2 uses
  store i32 %i.fk, ptr %i.k, align 8, !tbaa !37
  %i.fl = zext i32 %i.fd to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fl
  store ptr %i.fi, ptr %i.fm, align 8, !tbaa !42
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fn = phi i32 [ %i.fd, %bb.s ], [ %i.fk, %bb.t ] ; 2 uses
  %indvars.iv.next74.i90.1 = add nuw nsw i64 %indvars.iv73.i88, 2 ; 2 uses
  %niter267.next.1 = add nuw i64 %niter267, 2     ; 2 uses
  %niter267.ncmp.1 = icmp eq i64 %niter267.next.1, %unroll_iter266
  br i1 %niter267.ncmp.1, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92.loopexit.unr-lcssa, label %bb.q, !llvm.loop !60

_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92.loopexit.unr-lcssa: ; preds = %bb.u
  %lcmp.mod264.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod264.not, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92, label %.epil.preheader259

.epil.preheader259:                               ; preds = %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92.loopexit.unr-lcssa, %.lr.ph67.i87
  %.epil.init263 = phi i32 [ 0, %.lr.ph67.i87 ], [ %i.fn, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv73.i88.epil.init = phi i64 [ 0, %.lr.ph67.i87 ], [ %indvars.iv.next74.i90.1, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92.loopexit.unr-lcssa ]
  %lcmp.mod265 = trunc i32 %i.do to i1
  tail call void @llvm.assume(i1 %lcmp.mod265)
  %i.fo = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %indvars.iv73.i88.epil.init ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !47
  %.not44.i89.epil = icmp eq i32 %i.fr, 0
  br i1 %.not44.i89.epil, label %bb.v, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92

bb.v:                                             ; preds = %.epil.preheader259
  %i.fs = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.ft = add i32 %.epil.init263, 1
  store i32 %i.ft, ptr %i.k, align 8, !tbaa !37
  %i.fu = zext i32 %.epil.init263 to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fu
  store ptr %i.fp, ptr %i.fv, align 8, !tbaa !42
  br label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92

_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92:  ; preds = %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92.loopexit.unr-lcssa, %bb.v, %.epil.preheader259, %.critedge, %._crit_edge63.i86
  %i.fw = phi i32 [ %i.dm, %.critedge ], [ 0, %._crit_edge63.i86 ], [ 0, %.epil.preheader259 ], [ 0, %bb.v ], [ 0, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92.loopexit.unr-lcssa ] ; 2 uses
  %i.fx = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.fy = add nuw i32 %i.fw, 1
  store i32 %i.fy, ptr %i.j, align 4, !tbaa !36
  br label %.loopexit.sink.split

bb.w:                                             ; preds = %bb.m, %bb.l
  %i.fz = load ptr, ptr %i.cz, align 8, !tbaa !42
  %i.ga = load i32, ptr %i.j, align 4, !tbaa !36  ; 2 uses
  %i.gb = load i32, ptr %i.k, align 8, !tbaa !37
  %.not.i93 = icmp ult i32 %i.ga, %i.gb
  br i1 %.not.i93, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126, label %.preheader47.i94

.preheader47.i94:                                 ; preds = %bb.w
  %i.gc = load i32, ptr %0, align 8, !tbaa !35    ; 6 uses
  %.not4148.i95 = icmp eq i32 %i.gc, 0            ; 2 uses
  br i1 %.not4148.i95, label %.preheader.i100, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.preheader47.i94
  %i.gd = load ptr, ptr %i.l, align 8, !tbaa !38  ; 9 uses
  %i.ge = zext i32 %i.gc to i64                   ; 2 uses
  %xtraiter = and i64 %i.ge, 7                    ; 3 uses
  %i.gf = icmp ult i32 %i.gc, 8
  br i1 %i.gf, label %.epil.preheader, label %.lr.ph.i96.new

.lr.ph.i96.new:                                   ; preds = %.lr.ph.i96
  %unroll_iter = and i64 %i.ge, 4294967288
  br label %bb.y

.preheader.i100.loopexit.unr-lcssa:               ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i100, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i100.loopexit.unr-lcssa, %.lr.ph.i96
  %indvars.iv.i97.epil.init = phi i64 [ 0, %.lr.ph.i96 ], [ %indvars.iv.next.i98.7, %.preheader.i100.loopexit.unr-lcssa ]
  %lcmp.mod244 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod244)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader
  %indvars.iv.i97.epil = phi i64 [ %indvars.iv.i97.epil.init, %.epil.preheader ], [ %indvars.iv.next.i98.epil, %bb.x ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.x ]
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %indvars.iv.i97.epil
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store i32 0, ptr %i.gh, align 8, !tbaa !47
  %indvars.iv.next.i98.epil = add nuw nsw i64 %indvars.iv.i97.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i100, label %bb.x, !llvm.loop !62

.preheader.i100:                                  ; preds = %.preheader.i100.loopexit.unr-lcssa, %bb.x, %.preheader47.i94
  %i.gi = load i32, ptr %i.m, align 8, !tbaa !31  ; 2 uses
  %.not4260.i101 = icmp eq i32 %i.gi, 0
  br i1 %.not4260.i101, label %._crit_edge63.i120, label %.lr.ph62.i102

.lr.ph62.i102:                                    ; preds = %.preheader.i100
  %i.gj = zext i32 %i.gi to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph.i96.new
  %indvars.iv.i97 = phi i64 [ 0, %.lr.ph.i96.new ], [ %indvars.iv.next.i98.7, %bb.y ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i96.new ], [ %niter.next.7, %bb.y ]
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %indvars.iv.i97
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store i32 0, ptr %i.gl, align 8, !tbaa !47
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %indvars.iv.i97
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  store i32 0, ptr %i.gn, align 8, !tbaa !47
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %indvars.iv.i97
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  store i32 0, ptr %i.gp, align 8, !tbaa !47
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %indvars.iv.i97
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 88
  store i32 0, ptr %i.gr, align 8, !tbaa !47
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %indvars.iv.i97
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 112
  store i32 0, ptr %i.gt, align 8, !tbaa !47
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %indvars.iv.i97
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 136
  store i32 0, ptr %i.gv, align 8, !tbaa !47
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %indvars.iv.i97
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 160
  store i32 0, ptr %i.gx, align 8, !tbaa !47
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %indvars.iv.i97
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 184
  store i32 0, ptr %i.gz, align 8, !tbaa !47
  %indvars.iv.next.i98.7 = add nuw nsw i64 %indvars.iv.i97, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.i100.loopexit.unr-lcssa, label %bb.y, !llvm.loop !59

bb.z:                                             ; preds = %._crit_edge59.i117, %.lr.ph62.i102
  %indvars.iv70.i103 = phi i64 [ 0, %.lr.ph62.i102 ], [ %indvars.iv.next71.i118, %._crit_edge59.i117 ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv70.i103
  %.050.i104 = load ptr, ptr %i.ha, align 8, !tbaa !42 ; 2 uses
  %.not4551.i105 = icmp eq ptr %.050.i104, null
  br i1 %.not4551.i105, label %._crit_edge.i110, label %.lr.ph53.i106

.lr.ph53.i106:                                    ; preds = %bb.z, %.lr.ph53.i106
  %.052.i107 = phi ptr [ %.0.i108, %.lr.ph53.i106 ], [ %.050.i104, %bb.z ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.052.i107, i64 16
  store i32 1, ptr %i.hb, align 8, !tbaa !47
  %i.hc = getelementptr inbounds nuw i8, ptr %.052.i107, i64 8
  %.0.i108 = load ptr, ptr %i.hc, align 8, !tbaa !42 ; 2 uses
  %.not45.i109 = icmp eq ptr %.0.i108, null
  br i1 %.not45.i109, label %._crit_edge.i110, label %.lr.ph53.i106, !llvm.loop !48

._crit_edge.i110:                                 ; preds = %.lr.ph53.i106, %bb.z
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv70.i103
  %.154.i111 = load ptr, ptr %i.hd, align 8, !tbaa !42 ; 2 uses
  %.not4655.i112 = icmp eq ptr %.154.i111, null
  br i1 %.not4655.i112, label %._crit_edge59.i117, label %.lr.ph58.i113

.lr.ph58.i113:                                    ; preds = %._crit_edge.i110, %.lr.ph58.i113
  %.156.i114 = phi ptr [ %.1.i115, %.lr.ph58.i113 ], [ %.154.i111, %._crit_edge.i110 ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.156.i114, i64 16
  store i32 1, ptr %i.he, align 8, !tbaa !47
  %i.hf = getelementptr inbounds nuw i8, ptr %.156.i114, i64 8
  %.1.i115 = load ptr, ptr %i.hf, align 8, !tbaa !42 ; 2 uses
  %.not46.i116 = icmp eq ptr %.1.i115, null
  br i1 %.not46.i116, label %._crit_edge59.i117, label %.lr.ph58.i113, !llvm.loop !49

._crit_edge59.i117:                               ; preds = %.lr.ph58.i113, %._crit_edge.i110
  %indvars.iv.next71.i118 = add nuw nsw i64 %indvars.iv70.i103, 1 ; 2 uses
  %.not42.i119 = icmp eq i64 %indvars.iv.next71.i118, %i.gj
  br i1 %.not42.i119, label %._crit_edge63.i120, label %bb.z, !llvm.loop !50

._crit_edge63.i120:                               ; preds = %._crit_edge59.i117, %.preheader.i100
  store i32 0, ptr %i.k, align 8, !tbaa !37
  br i1 %.not4148.i95, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126, label %.lr.ph67.i121

.lr.ph67.i121:                                    ; preds = %._crit_edge63.i120
  %i.hg = zext i32 %i.gc to i64                   ; 2 uses
  %xtraiter246 = and i64 %i.hg, 1
  %i.hh = icmp eq i32 %i.gc, 1
  br i1 %i.hh, label %.epil.preheader245, label %.lr.ph67.i121.new

.lr.ph67.i121.new:                                ; preds = %.lr.ph67.i121
  %unroll_iter250 = and i64 %i.hg, 4294967294
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph67.i121.new
  %i.hi = phi i32 [ 0, %.lr.ph67.i121.new ], [ %i.ib, %bb.ae ] ; 3 uses
  %indvars.iv73.i122 = phi i64 [ 0, %.lr.ph67.i121.new ], [ %indvars.iv.next74.i124.1, %bb.ae ] ; 3 uses
  %niter251 = phi i64 [ 0, %.lr.ph67.i121.new ], [ %niter251.next.1, %bb.ae ]
  %i.hj = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.hj, i64 %indvars.iv73.i122 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !47
  %.not44.i123 = icmp eq i32 %i.hm, 0
  br i1 %.not44.i123, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hn = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.ho = add i32 %i.hi, 1                        ; 2 uses
  store i32 %i.ho, ptr %i.k, align 8, !tbaa !37
  %i.hp = zext i32 %i.hi to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hp
  store ptr %i.hk, ptr %i.hq, align 8, !tbaa !42
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hr = phi i32 [ %i.hi, %bb.aa ], [ %i.ho, %bb.ab ] ; 3 uses
  %i.hs = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %indvars.iv73.i122 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !47
  %.not44.i123.1 = icmp eq i32 %i.hv, 0
  br i1 %.not44.i123.1, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hx = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.hy = add i32 %i.hr, 1                        ; 2 uses
  store i32 %i.hy, ptr %i.k, align 8, !tbaa !37
  %i.hz = zext i32 %i.hr to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hz
  store ptr %i.hw, ptr %i.ia, align 8, !tbaa !42
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ib = phi i32 [ %i.hr, %bb.ac ], [ %i.hy, %bb.ad ] ; 2 uses
  %indvars.iv.next74.i124.1 = add nuw nsw i64 %indvars.iv73.i122, 2 ; 2 uses
  %niter251.next.1 = add nuw i64 %niter251, 2     ; 2 uses
  %niter251.ncmp.1 = icmp eq i64 %niter251.next.1, %unroll_iter250
  br i1 %niter251.ncmp.1, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !60

_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126.loopexit.unr-lcssa: ; preds = %bb.ae
  %lcmp.mod248.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod248.not, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126, label %.epil.preheader245

.epil.preheader245:                               ; preds = %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126.loopexit.unr-lcssa, %.lr.ph67.i121
  %.epil.init = phi i32 [ 0, %.lr.ph67.i121 ], [ %i.ib, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv73.i122.epil.init = phi i64 [ 0, %.lr.ph67.i121 ], [ %indvars.iv.next74.i124.1, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126.loopexit.unr-lcssa ]
  %lcmp.mod249 = trunc i32 %i.gc to i1
  tail call void @llvm.assume(i1 %lcmp.mod249)
  %i.ic = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.id = getelementptr inbounds nuw [24 x i8], ptr %i.ic, i64 %indvars.iv73.i122.epil.init ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !47
  %.not44.i123.epil = icmp eq i32 %i.if, 0
  br i1 %.not44.i123.epil, label %bb.af, label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126

bb.af:                                            ; preds = %.epil.preheader245
  %i.ig = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.ih = add i32 %.epil.init, 1
  store i32 %i.ih, ptr %i.k, align 8, !tbaa !37
  %i.ii = zext i32 %.epil.init to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.ii
  store ptr %i.id, ptr %i.ij, align 8, !tbaa !42
  br label %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126

_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126: ; preds = %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126.loopexit.unr-lcssa, %bb.af, %.epil.preheader245, %bb.w, %._crit_edge63.i120
  %i.ik = phi i32 [ %i.ga, %bb.w ], [ 0, %._crit_edge63.i120 ], [ 0, %.epil.preheader245 ], [ 0, %bb.af ], [ 0, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126.loopexit.unr-lcssa ] ; 2 uses
  %i.il = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.im = add nuw i32 %i.ik, 1
  store i32 %i.im, ptr %i.j, align 4, !tbaa !36
  %i.in = zext i32 %i.ik to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.in
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !42 ; 4 uses
  store i32 %i.dc, ptr %i.ip, align 8, !tbaa !14
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store i32 %i.cr, ptr %i.iq, align 4, !tbaa !17
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store ptr %i.fz, ptr %i.ir, align 8, !tbaa !51
  store ptr %i.ip, ptr %i.ct, align 8, !tbaa !42
  br i1 %i.r, label %tailrecurse, label %.loopexit

tailrecurse:                                      ; preds = %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126
  %i.is = trunc nsw i64 %indvars.iv.next to i32
  tail call fastcc void @_ZL10boundaryPMP8BPMListsP7BPMNodemii(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %i.is, i32 noundef %4)
  %i.it = load ptr, ptr %i.a, align 8, !tbaa !41  ; 3 uses
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.it, i64 %indvars.iv.next ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !42 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !17 ; 2 uses
  %i.iy = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.iy, label %tailrecurse._crit_edge, label %bb.l

.loopexit.sink.split:                             ; preds = %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit
  %.sink211 = phi i32 [ %i.cn, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit ], [ %i.fw, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92 ]
  %.sink = phi ptr [ %i.cp, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit ], [ %i.fx, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92 ]
  %.sink207 = phi i32 [ %i.w, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit ], [ %i.dh, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92 ]
  %.sink204.in = phi i32 [ %.lcssa132, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit ], [ %i.cr, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92 ]
  %.sink201 = phi ptr [ null, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit ], [ %i.dl, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92 ]
  %.lcssa138.sink = phi ptr [ %.lcssa138, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit ], [ %i.ct, %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit92 ]
  %.sink204 = add i32 %.sink204.in, 1
  %i.iz = zext i32 %.sink211 to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !42 ; 4 uses
  store i32 %.sink207, ptr %i.jb, align 8, !tbaa !14
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 %.sink204, ptr %i.jc, align 4, !tbaa !17
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %.sink201, ptr %i.jd, align 8, !tbaa !51
  store ptr %i.jb, ptr %.lcssa138.sink, align 8, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL14bpmnode_createP8BPMListsijP7BPMNode.exit126, %.loopexit.sink.split, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef i32 @_Z15lodepng_inflatePPhPmPKhmPK25LodePNGDecompressSettings(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %struct.ucvector, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = load i64, ptr %1, align 8, !tbaa !8      ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !63, !alias.scope !65
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.b, ptr %i.c, align 8, !tbaa !68, !alias.scope !65
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.b, ptr %i.d, align 8, !tbaa !69, !alias.scope !65
  %i.e = call fastcc noundef i32 @_ZL16lodepng_inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings(ptr noundef %5, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.f = load ptr, ptr %5, align 8, !tbaa !63
  store ptr %i.f, ptr %0, align 8, !tbaa !10
  %i.g = load i64, ptr %i.c, align 8, !tbaa !68
  store i64 %i.g, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZL16lodepng_inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.HuffmanTree, align 8        ; 10 uses
  %5 = alloca %struct.HuffmanTree, align 8        ; 10 uses
  %6 = alloca %struct.HuffmanTree, align 8        ; 10 uses
  %mul.val.i.i = shl i64 %2, 3                    ; 6 uses
  %mul.ov.i.i = icmp ult i64 %2, 2305843009213693952
  %i.a = icmp ult i64 %mul.val.i.i, -64
  %or.cond.i = and i1 %mul.ov.i.i, %i.a
  br i1 %or.cond.i, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.preheader, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.thread

_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.preheader: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %.phi.trans.insert183.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.preheader, %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit
  %.sroa.42.0123 = phi i64 [ 0, %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.preheader ], [ %.sroa.42.194, %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit ] ; 6 uses
  %i.o = sub i64 %mul.val.i.i, %.sroa.42.0123
  %i.p = icmp ult i64 %i.o, 3
  br i1 %i.p, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = lshr i64 %.sroa.42.0123, 3               ; 4 uses
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %i.s = icmp ult i64 %i.r, %2
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.x = load i8, ptr %i.w, align 1, !tbaa !20
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = or disjoint i32 %i.z, %i.v
  br label %_ZL11ensureBits9P16LodePNGBitReaderm.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = icmp samesign ult i64 %i.q, %2
  br i1 %i.ab, label %bb.f, label %_ZL11ensureBits9P16LodePNGBitReaderm.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !20
  %i.ae = zext i8 %i.ad to i32
  br label %_ZL11ensureBits9P16LodePNGBitReaderm.exit

_ZL11ensureBits9P16LodePNGBitReaderm.exit:        ; preds = %bb.e, %bb.f, %bb.d
  %.sink = phi i32 [ %i.aa, %bb.d ], [ %i.ae, %bb.f ], [ 0, %bb.e ]
  %i.af = trunc i64 %.sroa.42.0123 to i32
  %i.ag = and i32 %i.af, 7
  %i.ah = lshr i32 %.sink, %i.ag                  ; 2 uses
  %i.ai = and i32 %i.ah, 1
  %i.aj = lshr i32 %i.ah, 1
  %i.ak = and i32 %i.aj, 3                        ; 2 uses
  %i.al = add i64 %.sroa.42.0123, 3               ; 6 uses
  switch i32 %i.ak, label %bb.n [
    i32 3, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.thread
    i32 0, label %bb.g
  ]

bb.g:                                             ; preds = %_ZL11ensureBits9P16LodePNGBitReaderm.exit
  %i.am = add i64 %.sroa.42.0123, 10
  %i.an = lshr i64 %i.am, 3                       ; 2 uses
  %i.ao = add nuw nsw i64 %i.an, 4                ; 4 uses
  %.not.i = icmp ult i64 %i.ao, %2
  br i1 %.not.i, label %bb.h, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.an ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 1            ; 3 uses
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !70
  %.not38.i = icmp eq i32 %i.ar, 0
  br i1 %.not38.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = zext i16 %i.aq to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.au = load i16, ptr %i.at, align 1
  %i.av = zext i16 %i.au to i32
  %i.aw = add nuw nsw i32 %i.av, %i.as
  %.not39.i = icmp eq i32 %i.aw, 65535
  br i1 %.not39.i, label %bb.j, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h
end_hunk_0
begin_hunk_1_@_Z15lodepng_deflatePPhPmPKhmPK23LodePNGCompressSettings:bb.a
  call void @free(ptr noundef %i.ks) #31
  call void @free(ptr noundef %i.kt) #31
  call void @free(ptr noundef %i.ku) #31
  call void @free(ptr noundef %.0205.i.i) #31
  call void @free(ptr noundef %.0204.i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ep

bb.ep:                                            ; preds = %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i, %_ZL12deflateFixedP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i, %bb.j
  %.1.i = phi i32 [ %.2.i61.i, %_ZL12deflateFixedP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i ], [ %.1194.i.i, %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i ], [ 0, %bb.j ] ; 2 uses
  %i.ama = add nuw i64 %.04689.i, 1               ; 2 uses
  %.not55.i = icmp ne i64 %i.ama, %spec.store.select1.i
  %.not56.i = icmp eq i32 %.1.i, 0
  %or.cond.i = and i1 %.not55.i, %.not56.i
  br i1 %or.cond.i, label %bb.j, label %.critedge.i, !llvm.loop !167

.critedge.i:                                      ; preds = %bb.ep, %_ZL9hash_initP4Hashj.exit.i, %bb.i, %bb.h
  %.2.i = phi i32 [ 83, %bb.i ], [ 83, %bb.h ], [ 0, %_ZL9hash_initP4Hashj.exit.i ], [ %.1.i, %bb.ep ]
  call void @free(ptr noundef %i.bk) #31
  call void @free(ptr noundef %i.bn) #31
  call void @free(ptr noundef %i.bq) #31
  call void @free(ptr noundef %i.bs) #31
  call void @free(ptr noundef %i.bu) #31
  call void @free(ptr noundef %i.bw) #31
  br label %_ZL16lodepng_deflatevP8ucvectorPKhmPK23LodePNGCompressSettings.exit

_ZL16lodepng_deflatevP8ucvectorPKhmPK23LodePNGCompressSettings.exit: ; preds = %bb.e, %_ZL14lodepng_memcpyPvPKvm.exit.i.i, %bb.a, %bb.c, %.critedge.i
  %.048.i = phi i32 [ %.2.i, %.critedge.i ], [ 61, %bb.a ], [ 0, %bb.c ], [ 83, %bb.e ], [ 0, %_ZL14lodepng_memcpyPvPKvm.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.amb = load ptr, ptr %14, align 8, !tbaa !63
  store ptr %i.amb, ptr %0, align 8, !tbaa !10
  %i.amc = load i64, ptr %i.c, align 8, !tbaa !68
  store i64 %i.amc, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  ret i32 %.048.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z23lodepng_zlib_decompressPPhPmPKhmPK25LodePNGDecompressSettings(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.ucvector, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = load i64, ptr %1, align 8, !tbaa !8      ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !63, !alias.scope !168
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.b, ptr %i.c, align 8, !tbaa !68, !alias.scope !168
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.b, ptr %i.d, align 8, !tbaa !69, !alias.scope !168
  %i.e = call fastcc noundef i32 @_ZL24lodepng_zlib_decompressvP8ucvectorPKhmPK25LodePNGDecompressSettings(ptr noundef %5, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.f = load ptr, ptr %5, align 8, !tbaa !63
  store ptr %i.f, ptr %0, align 8, !tbaa !10
  %i.g = load i64, ptr %i.c, align 8, !tbaa !68
  store i64 %i.g, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL24lodepng_zlib_decompressvP8ucvectorPKhmPK25LodePNGDecompressSettings(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %2, 2
  br i1 %i.a, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !20      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = or disjoint i32 %i.d, %i.g
  %.lhs.trunc = trunc nuw i32 %i.h to i16
  %i.i = urem i16 %.lhs.trunc, 31
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %bb.c, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.c, 15
  %i.k = icmp ne i32 %i.j, 8
  %i.l = icmp slt i8 %i.b, 0
  %or.cond = or i1 %i.l, %i.k
  br i1 %or.cond, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %i.g, 32
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.e, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.o = add i64 %2, -2                           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !171  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = tail call noundef i32 %i.q(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.n, i64 noundef range(i64 0, -2) %i.o, ptr noundef nonnull %3), !inline_history !172
  %i.t = load i64, ptr %i.r, align 8, !tbaa !68   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.u, align 8, !tbaa !69
  %.not22.i = icmp eq i32 %i.s, 0
  br i1 %.not22.i, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread33, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !76   ; 2 uses
  %.not23.i = icmp eq i64 %i.w, 0
  br i1 %.not23.i, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp ugt i64 %i.t, %i.w
  %spec.select.i = select i1 %i.x, i32 109, i32 110
  br label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread

_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit: ; preds = %bb.e
  %i.y = tail call fastcc noundef i32 @_ZL16lodepng_inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i64 noundef range(i64 0, -2) %i.o, ptr noundef nonnull %3) ; 2 uses
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread33, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread

_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread33: ; preds = %bb.f, %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit
  %i.z = load i32, ptr %3, align 8, !tbaa !173
  %.not29 = icmp eq i32 %i.z, 0
  br i1 %.not29, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread33
  %i.aa = getelementptr i8, ptr %1, i64 %2        ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw i32 %i.ad, 24
  %i.af = getelementptr i8, ptr %i.aa, i64 -3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 16
  %i.aj = or disjoint i32 %i.ai, %i.ae
  %i.ak = getelementptr i8, ptr %i.aa, i64 -2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !20
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = or disjoint i32 %i.aj, %i.an
  %i.ap = getelementptr i8, ptr %i.aa, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %i.ar = zext i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !68
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %.not28.i.i = icmp eq i32 %i.av, 0
  br i1 %.not28.i.i, label %_ZL7adler32PKhj.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.aw = load ptr, ptr %0, align 8, !tbaa !63
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.epilog-lcssa
  %.01732.i.i = phi i32 [ %i.cc, %.epilog-lcssa ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01831.i.i = phi i32 [ %i.cb, %.epilog-lcssa ], [ 1, %.lr.ph.i.i.preheader ] ; 2 uses
  %.02030.i.i = phi i32 [ %i.by, %.epilog-lcssa ], [ %i.av, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02129.i.i = phi ptr [ %i.ca, %.epilog-lcssa ], [ %i.aw, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ax = tail call i32 @llvm.umin.i32(i32 %.02030.i.i, i32 5552) ; 4 uses
  %xtraiter = and i32 %i.ax, 3                    ; 3 uses
  %i.ay = icmp ult i32 %.02030.i.i, 4
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.ax, 8188
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.new
  %.126.i.i = phi i32 [ %.01732.i.i, %.lr.ph.i.i.new ], [ %i.bs, %bb.j ]
  %.11925.i.i = phi i32 [ %.01831.i.i, %.lr.ph.i.i.new ], [ %i.br, %bb.j ]
  %.12224.i.i = phi ptr [ %.02129.i.i, %.lr.ph.i.i.new ], [ %i.bo, %bb.j ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 1
  %i.ba = load i8, ptr %.12224.i.i, align 1, !tbaa !20
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add i32 %.11925.i.i, %i.bb              ; 2 uses
  %i.bd = add i32 %i.bc, %.126.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 2
  %i.bf = load i8, ptr %i.az, align 1, !tbaa !20
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add i32 %i.bc, %i.bg                    ; 2 uses
  %i.bi = add i32 %i.bh, %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 3
  %i.bk = load i8, ptr %i.be, align 1, !tbaa !20
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add i32 %i.bh, %i.bl                    ; 2 uses
  %i.bn = add i32 %i.bm, %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 4 ; 2 uses
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !20
  %i.bq = zext i8 %i.bp to i32
  %i.br = add i32 %i.bm, %i.bq                    ; 4 uses
  %i.bs = add i32 %i.br, %i.bn                    ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.j, !llvm.loop !174

.unr-lcssa:                                       ; preds = %bb.j
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %.126.i.i.epil.init = phi i32 [ %.01732.i.i, %.lr.ph.i.i ], [ %i.bs, %.unr-lcssa ]
  %.11925.i.i.epil.init = phi i32 [ %.01831.i.i, %.lr.ph.i.i ], [ %i.br, %.unr-lcssa ]
  %.12224.i.i.epil.init = phi ptr [ %.02129.i.i, %.lr.ph.i.i ], [ %i.bo, %.unr-lcssa ]
  %lcmp.mod59 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod59)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.126.i.i.epil = phi i32 [ %.126.i.i.epil.init, %.epil.preheader ], [ %i.bx, %bb.k ]
  %.11925.i.i.epil = phi i32 [ %.11925.i.i.epil.init, %.epil.preheader ], [ %i.bw, %bb.k ]
  %.12224.i.i.epil = phi ptr [ %.12224.i.i.epil.init, %.epil.preheader ], [ %i.bt, %bb.k ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.12224.i.i.epil, i64 1
  %i.bu = load i8, ptr %.12224.i.i.epil, align 1, !tbaa !20
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add i32 %.11925.i.i.epil, %i.bv         ; 3 uses
  %i.bx = add i32 %i.bw, %.126.i.i.epil           ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.k, !llvm.loop !175

.epilog-lcssa:                                    ; preds = %bb.k, %.unr-lcssa
  %.lcssa54 = phi i32 [ %i.br, %.unr-lcssa ], [ %i.bw, %bb.k ]
  %.lcssa = phi i32 [ %i.bs, %.unr-lcssa ], [ %i.bx, %bb.k ]
  %i.by = sub i32 %.02030.i.i, %i.ax              ; 2 uses
  %i.bz = zext nneg i32 %i.ax to i64
  %i.ca = getelementptr i8, ptr %.02129.i.i, i64 %i.bz
  %i.cb = urem i32 %.lcssa54, 65521               ; 2 uses
  %i.cc = urem i32 %.lcssa, 65521                 ; 2 uses
  %.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !176

._crit_edge.loopexit.i.i:                         ; preds = %.epilog-lcssa
  %i.cd = shl nuw i32 %i.cc, 16
  %i.ce = or disjoint i32 %i.cd, %i.cb
  br label %_ZL7adler32PKhj.exit

_ZL7adler32PKhj.exit:                             ; preds = %bb.i, %._crit_edge.loopexit.i.i
  %i.cf = phi i32 [ 1, %bb.i ], [ %i.ce, %._crit_edge.loopexit.i.i ]
  %.not30 = icmp eq i32 %i.cf, %i.as
  br i1 %.not30, label %bb.l, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread

bb.l:                                             ; preds = %_ZL7adler32PKhj.exit, %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread33
  br label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread

_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread: ; preds = %bb.g, %bb.h, %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit, %bb.d, %bb.c, %bb.b, %bb.a, %_ZL7adler32PKhj.exit, %bb.l
  %.1 = phi i32 [ 58, %_ZL7adler32PKhj.exit ], [ 53, %bb.a ], [ 24, %bb.b ], [ 25, %bb.c ], [ 26, %bb.d ], [ 0, %bb.l ], [ %i.y, %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit ], [ 110, %bb.g ], [ %spec.select.i, %bb.h ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 112) i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr null, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 0, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i32 %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4), !inline_history !178
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread, label %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread38

_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread38: ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !10
  store i64 0, ptr %1, align 8, !tbaa !8
  br label %.thread

_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit: ; preds = %bb.a
  %i.f = call noundef i32 @_Z15lodepng_deflatePPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4) ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !10
  store i64 0, ptr %1, align 8, !tbaa !8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread, label %.thread

_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread: ; preds = %bb.b, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit
  %i.g = load i64, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.h = add i64 %i.g, 6                          ; 2 uses
  store i64 %i.h, ptr %1, align 8, !tbaa !8
  %i.i = call noalias noundef ptr @malloc(i64 noundef %i.h) #30 ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !10
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread
  %i.j = trunc i64 %3 to i32                      ; 2 uses
  %.not28.i.i = icmp eq i32 %i.j, 0
  br i1 %.not28.i.i, label %_ZL7adler32PKhj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.epilog-lcssa
  %.01732.i.i = phi i32 [ %i.ap, %.epilog-lcssa ], [ 0, %bb.c ] ; 2 uses
  %.01831.i.i = phi i32 [ %i.ao, %.epilog-lcssa ], [ 1, %bb.c ] ; 2 uses
  %.02030.i.i = phi i32 [ %i.al, %.epilog-lcssa ], [ %i.j, %bb.c ] ; 3 uses
  %.02129.i.i = phi ptr [ %i.an, %.epilog-lcssa ], [ %2, %bb.c ] ; 3 uses
  %i.k = call i32 @llvm.umin.i32(i32 %.02030.i.i, i32 5552) ; 4 uses
  %xtraiter = and i32 %i.k, 3                     ; 3 uses
  %i.l = icmp ult i32 %.02030.i.i, 4
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.k, 8188
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %.126.i.i = phi i32 [ %.01732.i.i, %.lr.ph.i.i.new ], [ %i.af, %bb.d ]
  %.11925.i.i = phi i32 [ %.01831.i.i, %.lr.ph.i.i.new ], [ %i.ae, %bb.d ]
  %.12224.i.i = phi ptr [ %.02129.i.i, %.lr.ph.i.i.new ], [ %i.ab, %bb.d ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 1
  %i.n = load i8, ptr %.12224.i.i, align 1, !tbaa !20
  %i.o = zext i8 %i.n to i32
  %i.p = add i32 %.11925.i.i, %i.o                ; 2 uses
  %i.q = add i32 %i.p, %.126.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 2
  %i.s = load i8, ptr %i.m, align 1, !tbaa !20
  %i.t = zext i8 %i.s to i32
  %i.u = add i32 %i.p, %i.t                       ; 2 uses
  %i.v = add i32 %i.u, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 3
  %i.x = load i8, ptr %i.r, align 1, !tbaa !20
  %i.y = zext i8 %i.x to i32
  %i.z = add i32 %i.u, %i.y                       ; 2 uses
  %i.aa = add i32 %i.z, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 4 ; 2 uses
  %i.ac = load i8, ptr %i.w, align 1, !tbaa !20
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add i32 %i.z, %i.ad                     ; 4 uses
  %i.af = add i32 %i.ae, %i.aa                    ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.d, !llvm.loop !174

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %.126.i.i.epil.init = phi i32 [ %.01732.i.i, %.lr.ph.i.i ], [ %i.af, %.unr-lcssa ]
  %.11925.i.i.epil.init = phi i32 [ %.01831.i.i, %.lr.ph.i.i ], [ %i.ae, %.unr-lcssa ]
  %.12224.i.i.epil.init = phi ptr [ %.02129.i.i, %.lr.ph.i.i ], [ %i.ab, %.unr-lcssa ]
  %lcmp.mod70 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod70)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.126.i.i.epil = phi i32 [ %.126.i.i.epil.init, %.epil.preheader ], [ %i.ak, %bb.e ]
  %.11925.i.i.epil = phi i32 [ %.11925.i.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.e ]
  %.12224.i.i.epil = phi ptr [ %.12224.i.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.e ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.12224.i.i.epil, i64 1
  %i.ah = load i8, ptr %.12224.i.i.epil, align 1, !tbaa !20
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add i32 %.11925.i.i.epil, %i.ai         ; 3 uses
  %i.ak = add i32 %i.aj, %.126.i.i.epil           ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.e, !llvm.loop !179

.epilog-lcssa:                                    ; preds = %bb.e, %.unr-lcssa
  %.lcssa65 = phi i32 [ %i.ae, %.unr-lcssa ], [ %i.aj, %bb.e ]
  %.lcssa = phi i32 [ %i.af, %.unr-lcssa ], [ %i.ak, %bb.e ]
  %i.al = sub i32 %.02030.i.i, %i.k               ; 2 uses
  %i.am = zext nneg i32 %i.k to i64
  %i.an = getelementptr i8, ptr %.02129.i.i, i64 %i.am
  %i.ao = urem i32 %.lcssa65, 65521               ; 2 uses
  %i.ap = urem i32 %.lcssa, 65521                 ; 2 uses
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !176

._crit_edge.loopexit.i.i:                         ; preds = %.epilog-lcssa
  %i.aq = shl nuw i32 %i.ap, 16
  %i.ar = or disjoint i32 %i.aq, %i.ao
  br label %_ZL7adler32PKhj.exit

_ZL7adler32PKhj.exit:                             ; preds = %bb.c, %._crit_edge.loopexit.i.i
  %i.as = phi i32 [ 1, %bb.c ], [ %i.ar, %._crit_edge.loopexit.i.i ] ; 4 uses
  store i8 120, ptr %i.i, align 1, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 1, ptr %i.at, align 1, !tbaa !20
  %.not3548 = icmp eq i64 %i.g, 0
  br i1 %.not3548, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL7adler32PKhj.exit, %.lr.ph
  %.03149 = phi i64 [ %i.ba, %.lr.ph ], [ 0, %_ZL7adler32PKhj.exit ] ; 3 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.03149
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  %i.ax = load ptr, ptr %0, align 8, !tbaa !10
  %i.ay = getelementptr i8, ptr %i.ax, i64 %.03149
  %i.az = getelementptr i8, ptr %i.ay, i64 2
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !20
  %i.ba = add i64 %.03149, 1                      ; 2 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !8
  %.not35 = icmp eq i64 %i.ba, %i.bb
  br i1 %.not35, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !180

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !10
  %.pre53 = load i64, ptr %1, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZL7adler32PKhj.exit
  %i.bc = phi i64 [ %.pre53, %._crit_edge.loopexit ], [ 6, %_ZL7adler32PKhj.exit ]
  %i.bd = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.i, %_ZL7adler32PKhj.exit ]
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc  ; 4 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = lshr i32 %i.as, 24
  %i.bh = trunc nuw i32 %i.bg to i8
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !20
  %i.bi = lshr i32 %i.as, 16
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr i8, ptr %i.be, i64 -3
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !20
  %i.bl = lshr i32 %i.as, 8
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr i8, ptr %i.be, i64 -2
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !20
  %i.bo = trunc i32 %i.as to i8
  %i.bp = getelementptr i8, ptr %i.be, i64 -1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !20
  br label %.thread

.thread:                                          ; preds = %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread38, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit, %._crit_edge
  %.044 = phi i32 [ 0, %._crit_edge ], [ %i.f, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit ], [ 111, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread38 ], [ 83, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread ]
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @free(ptr noundef %i.bq) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z30lodepng_compress_settings_initP23LodePNGCompressSettings(ptr nofree noundef writeonly captures(none) initializes((0, 48)) %0) local_unnamed_addr #6 {
bb.a:
  store <4 x i32> <i32 2, i32 1, i32 2048, i32 3>, ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 128, ptr %i.a, align 8, !tbaa !139
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.b, align 4, !tbaa !140
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z32lodepng_decompress_settings_initP25LodePNGDecompressSettings(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z13lodepng_crc32PKhm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ugt i64 %1, 7
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.021.lcssa = phi ptr [ %0, %bb.a ], [ %i.bs, %.lr.ph ] ; 3 uses
  %.019.lcssa = phi i64 [ %1, %bb.a ], [ %i.bt, %.lr.ph ] ; 5 uses
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %i.br, %.lr.ph ] ; 4 uses
  %.not28 = icmp eq i64 %.019.lcssa, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.019.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol

.lr.ph32.prol:                                    ; preds = %.lr.ph32.preheader
  %i.b = add nsw i64 %.019.lcssa, -1
  %i.c = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 1
  %i.d = load i8, ptr %.021.lcssa, align 1, !tbaa !20
  %.1.tr.prol = trunc i32 %.0.lcssa to i8
  %.narrow.prol = xor i8 %i.d, %.1.tr.prol
  %i.e = zext i8 %.narrow.prol to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = lshr i32 %.0.lcssa, 8
  %i.i = xor i32 %i.g, %i.h                       ; 2 uses
  br label %.lr.ph32.prol.loopexit

.lr.ph32.prol.loopexit:                           ; preds = %.lr.ph32.prol, %.lr.ph32.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph32.preheader ], [ %i.i, %.lr.ph32.prol ]
  %.131.unr = phi i32 [ %.0.lcssa, %.lr.ph32.preheader ], [ %i.i, %.lr.ph32.prol ]
  %.12030.unr = phi i64 [ %.019.lcssa, %.lr.ph32.preheader ], [ %i.b, %.lr.ph32.prol ]
  %.12229.unr = phi ptr [ %.021.lcssa, %.lr.ph32.preheader ], [ %i.c, %.lr.ph32.prol ]
  %i.j = icmp eq i64 %.019.lcssa, 1
  br i1 %i.j, label %._crit_edge, label %.lr.ph32

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.025 = phi i32 [ %i.br, %.lr.ph ], [ -1, %bb.a ] ; 4 uses
  %.01924 = phi i64 [ %i.bt, %.lr.ph ], [ %1, %bb.a ]
  %.02123 = phi ptr [ %i.bs, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %i.k = load i8, ptr %.02123, align 1, !tbaa !20
  %i.l = zext i8 %i.k to i32
  %i.m = and i32 %.025, 255
  %i.n = xor i32 %i.m, %i.l
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table7, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.02123, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !20
  %i.t = zext i8 %i.s to i32
  %i.u = lshr i32 %.025, 8
  %i.v = and i32 %i.u, 255
  %i.w = xor i32 %i.v, %i.t
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table6, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13
  %i.aa = xor i32 %i.z, %i.q
  %i.ab = getelementptr inbounds nuw i8, ptr %.02123, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20
  %i.ad = zext i8 %i.ac to i32
  %i.ae = lshr i32 %.025, 16
  %i.af = and i32 %i.ae, 255
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table5, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13
  %i.ak = xor i32 %i.aa, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.02123, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  %i.an = zext i8 %i.am to i32
  %i.ao = lshr i32 %.025, 24
  %i.ap = xor i32 %i.ao, %i.an
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table4, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !13
end_hunk_1
begin_hunk_2_@_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj:bb.a
  ]

bb.u:                                             ; preds = %.lr.ph141
  %i.do = lshr i16 %i.dk, 8
  %i.dp = trunc nuw i16 %i.do to i8
  %i.dq = shl i64 %.184140, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %i.dq ; 2 uses
  store i8 %i.dp, ptr %i.dr, align 1, !tbaa !20
  %i.ds = trunc i16 %i.dk to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !20
  br label %_ZL13rgba16ToPixelPhmPK16LodePNGColorModetttt.exit

bb.v:                                             ; preds = %.lr.ph141
  %i.du = lshr i16 %i.dk, 8
  %i.dv = trunc nuw i16 %i.du to i8
  %i.dw = mul i64 %.184140, 6
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %i.dw ; 6 uses
  store i8 %i.dv, ptr %i.dx, align 1, !tbaa !20
  %i.dy = trunc i16 %i.dk to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !20
  %i.ea = lshr i16 %i.dl, 8
  %i.eb = trunc nuw i16 %i.ea to i8
  %i.ec = getelementptr i8, ptr %i.dx, i64 2
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !20
  %i.ed = trunc i16 %i.dl to i8
  %i.ee = getelementptr i8, ptr %i.dx, i64 3
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !20
  %i.ef = lshr i16 %i.dm, 8
  %i.eg = trunc nuw i16 %i.ef to i8
  %i.eh = getelementptr i8, ptr %i.dx, i64 4
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !20
  %i.ei = trunc i16 %i.dm to i8
  %i.ej = getelementptr i8, ptr %i.dx, i64 5
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !20
  br label %_ZL13rgba16ToPixelPhmPK16LodePNGColorModetttt.exit

bb.w:                                             ; preds = %.lr.ph141
  %i.ek = lshr i16 %i.dk, 8
  %i.el = trunc nuw i16 %i.ek to i8
  %i.em = shl i64 %.184140, 2
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %i.em ; 4 uses
  store i8 %i.el, ptr %i.en, align 1, !tbaa !20
  %i.eo = trunc i16 %i.dk to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !20
  %i.eq = lshr i16 %i.dn, 8
  %i.er = trunc nuw i16 %i.eq to i8
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store i8 %i.er, ptr %i.es, align 1, !tbaa !20
  %i.et = trunc i16 %i.dn to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !20
  br label %_ZL13rgba16ToPixelPhmPK16LodePNGColorModetttt.exit

bb.x:                                             ; preds = %.lr.ph141
  %i.ev = lshr i16 %i.dk, 8
  %i.ew = trunc nuw i16 %i.ev to i8
  %i.ex = shl i64 %.184140, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %i.ex ; 8 uses
  store i8 %i.ew, ptr %i.ey, align 1, !tbaa !20
  %i.ez = trunc i16 %i.dk to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !20
  %i.fb = lshr i16 %i.dl, 8
  %i.fc = trunc nuw i16 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !20
  %i.fe = trunc i16 %i.dl to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !20
  %i.fg = lshr i16 %i.dm, 8
  %i.fh = trunc nuw i16 %i.fg to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !20
  %i.fj = trunc i16 %i.dm to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 5
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !20
  %i.fl = lshr i16 %i.dn, 8
  %i.fm = trunc nuw i16 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 6
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !20
  %i.fo = trunc i16 %i.dn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ey, i64 7
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !20
  br label %_ZL13rgba16ToPixelPhmPK16LodePNGColorModetttt.exit

_ZL13rgba16ToPixelPhmPK16LodePNGColorModetttt.exit: ; preds = %.lr.ph141, %bb.u, %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.fq = add nuw i64 %.184140, 1                 ; 2 uses
  %.not99 = icmp eq i64 %i.fq, %i.k
  br i1 %.not99, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph141, !llvm.loop !314

.loopexit._crit_edge:                             ; preds = %.loopexit
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.fs = icmp eq i32 %i.di, 8
  br i1 %i.fs, label %bb.y, label %bb.bi

bb.y:                                             ; preds = %.loopexit._crit_edge
  %i.ft = load i32, ptr %2, align 8, !tbaa !197
  switch i32 %i.ft, label %bb.bi [
    i32 6, label %bb.z
    i32 2, label %bb.bh
  ]

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.fu = load i32, ptr %3, align 8, !tbaa !197, !noalias !320
  switch i32 %i.fu, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit [
    i32 0, label %bb.aa
    i32 2, label %bb.ar
    i32 3, label %bb.bc
    i32 4, label %bb.be
    i32 6, label %bb.bf
  ]

bb.aa:                                            ; preds = %bb.z
  switch i32 %i.df, label %bb.an [
    i32 8, label %.preheader.i106
    i32 16, label %.preheader237.i
  ]

.preheader237.i:                                  ; preds = %bb.aa
  %.not216289.i = icmp eq i64 %i.k, 0
  br i1 %.not216289.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph292.i

.lr.ph292.i:                                      ; preds = %.preheader237.i
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !213, !noalias !320
  %.not217.i = icmp eq i32 %i.fw, 0
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 28
  br label %bb.ak

.preheader.i106:                                  ; preds = %bb.aa
  %.not218293.i = icmp eq i64 %i.k, 0
  br i1 %.not218293.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph296.i.preheader

.lr.ph296.i.preheader:                            ; preds = %.preheader.i106
  %i.fy = add i64 %i.k, -1                        ; 2 uses
  %xtraiter279 = and i64 %i.k, 3                  ; 3 uses
  %i.fz = icmp ult i64 %i.fy, 3
  br i1 %i.fz, label %.lr.ph296.i.epil.preheader, label %.lr.ph296.i.preheader.new

.lr.ph296.i.preheader.new:                        ; preds = %.lr.ph296.i.preheader
  %unroll_iter284 = and i64 %i.k, -4
  br label %.lr.ph296.i

.lr.ph296.i:                                      ; preds = %.lr.ph296.i, %.lr.ph296.i.preheader.new
  %.0295.i = phi ptr [ %0, %.lr.ph296.i.preheader.new ], [ %i.hb, %.lr.ph296.i ] ; 17 uses
  %.0189294.i = phi i64 [ 0, %.lr.ph296.i.preheader.new ], [ %i.ha, %.lr.ph296.i ] ; 5 uses
  %niter285 = phi i64 [ 0, %.lr.ph296.i.preheader.new ], [ %niter285.next.3, %.lr.ph296.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 %.0189294.i
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !20, !alias.scope !318, !noalias !315 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0295.i, i64 2
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.gd = getelementptr inbounds nuw i8, ptr %.0295.i, i64 1
  store i8 %i.gb, ptr %i.gd, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  store i8 %i.gb, ptr %.0295.i, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.ge = getelementptr inbounds nuw i8, ptr %.0295.i, i64 3
  store i8 -1, ptr %i.ge, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.gf = getelementptr inbounds nuw i8, ptr %.0295.i, i64 4
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 %.0189294.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !20, !alias.scope !318, !noalias !315 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0295.i, i64 6
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.gk = getelementptr inbounds nuw i8, ptr %.0295.i, i64 5
  store i8 %i.gi, ptr %i.gk, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  store i8 %i.gi, ptr %i.gf, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.gl = getelementptr inbounds nuw i8, ptr %.0295.i, i64 7
  store i8 -1, ptr %i.gl, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.gm = getelementptr inbounds nuw i8, ptr %.0295.i, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %.0189294.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !20, !alias.scope !318, !noalias !315 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0295.i, i64 10
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.gr = getelementptr inbounds nuw i8, ptr %.0295.i, i64 9
  store i8 %i.gp, ptr %i.gr, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  store i8 %i.gp, ptr %i.gm, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.gs = getelementptr inbounds nuw i8, ptr %.0295.i, i64 11
  store i8 -1, ptr %i.gs, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.gt = getelementptr inbounds nuw i8, ptr %.0295.i, i64 12
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 %.0189294.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 3
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !20, !alias.scope !318, !noalias !315 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0295.i, i64 14
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.gy = getelementptr inbounds nuw i8, ptr %.0295.i, i64 13
  store i8 %i.gw, ptr %i.gy, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  store i8 %i.gw, ptr %i.gt, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.gz = getelementptr inbounds nuw i8, ptr %.0295.i, i64 15
  store i8 -1, ptr %i.gz, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.ha = add nuw i64 %.0189294.i, 4              ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0295.i, i64 16 ; 3 uses
  %niter285.next.3 = add nuw i64 %niter285, 4     ; 2 uses
  %niter285.ncmp.3 = icmp eq i64 %niter285.next.3, %unroll_iter284
  br i1 %niter285.ncmp.3, label %._crit_edge297.thread.i.unr-lcssa, label %.lr.ph296.i, !llvm.loop !321

._crit_edge297.thread.i.unr-lcssa:                ; preds = %.lr.ph296.i
  %lcmp.mod281.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod281.not, label %._crit_edge297.thread.i, label %.lr.ph296.i.epil.preheader

.lr.ph296.i.epil.preheader:                       ; preds = %._crit_edge297.thread.i.unr-lcssa, %.lr.ph296.i.preheader
  %.0295.i.epil.init = phi ptr [ %0, %.lr.ph296.i.preheader ], [ %i.hb, %._crit_edge297.thread.i.unr-lcssa ]
  %.0189294.i.epil.init = phi i64 [ 0, %.lr.ph296.i.preheader ], [ %i.ha, %._crit_edge297.thread.i.unr-lcssa ]
  %lcmp.mod283 = icmp ne i64 %xtraiter279, 0
  tail call void @llvm.assume(i1 %lcmp.mod283)
  br label %.lr.ph296.i.epil

.lr.ph296.i.epil:                                 ; preds = %.lr.ph296.i.epil, %.lr.ph296.i.epil.preheader
  %.0295.i.epil = phi ptr [ %i.hi, %.lr.ph296.i.epil ], [ %.0295.i.epil.init, %.lr.ph296.i.epil.preheader ] ; 5 uses
  %.0189294.i.epil = phi i64 [ %i.hh, %.lr.ph296.i.epil ], [ %.0189294.i.epil.init, %.lr.ph296.i.epil.preheader ] ; 2 uses
  %epil.iter280 = phi i64 [ %epil.iter280.next, %.lr.ph296.i.epil ], [ 0, %.lr.ph296.i.epil.preheader ]
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 %.0189294.i.epil
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !20, !alias.scope !318, !noalias !315 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0295.i.epil, i64 2
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.hf = getelementptr inbounds nuw i8, ptr %.0295.i.epil, i64 1
  store i8 %i.hd, ptr %i.hf, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  store i8 %i.hd, ptr %.0295.i.epil, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.hg = getelementptr inbounds nuw i8, ptr %.0295.i.epil, i64 3
  store i8 -1, ptr %i.hg, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.hh = add nuw i64 %.0189294.i.epil, 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.0295.i.epil, i64 4 ; 2 uses
  %epil.iter280.next = add i64 %epil.iter280, 1   ; 2 uses
  %epil.iter280.cmp.not = icmp eq i64 %epil.iter280.next, %xtraiter279
  br i1 %epil.iter280.cmp.not, label %._crit_edge297.thread.i, label %.lr.ph296.i.epil, !llvm.loop !322

._crit_edge297.thread.i:                          ; preds = %.lr.ph296.i.epil, %._crit_edge297.thread.i.unr-lcssa
  %.lcssa232 = phi ptr [ %i.hb, %._crit_edge297.thread.i.unr-lcssa ], [ %i.hi, %.lr.ph296.i.epil ]
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !213, !noalias !320
  %.not219337.i = icmp eq i32 %i.hk, 0
  br i1 %.not219337.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph303.i

.lr.ph303.i:                                      ; preds = %._crit_edge297.thread.i
  %.neg220.i = mul i64 %i.k, -4
  %i.hl = getelementptr inbounds i8, ptr %.lcssa232, i64 %.neg220.i ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.pre325.i = load i32, ptr %i.hm, align 4, !tbaa !296, !noalias !320 ; 5 uses
  %xtraiter287 = and i64 %i.k, 3                  ; 3 uses
  %i.hn = icmp ult i64 %i.fy, 3
  br i1 %i.hn, label %.epil.preheader286, label %.lr.ph303.i.new

.lr.ph303.i.new:                                  ; preds = %.lr.ph303.i
  %unroll_iter291 = and i64 %i.k, -4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aj, %.lr.ph303.i.new
  %.1301.i = phi ptr [ %i.hl, %.lr.ph303.i.new ], [ %i.ih, %bb.aj ] ; 9 uses
  %niter292 = phi i64 [ 0, %.lr.ph303.i.new ], [ %niter292.next.3, %bb.aj ]
  %i.ho = load i8, ptr %.1301.i, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.hp = zext i8 %i.ho to i32
  %i.hq = icmp eq i32 %.pre325.i, %i.hp
  br i1 %i.hq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hr = getelementptr inbounds nuw i8, ptr %.1301.i, i64 3
  store i8 0, ptr %i.hr, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hs = getelementptr inbounds nuw i8, ptr %.1301.i, i64 4
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.hu = zext i8 %i.ht to i32
  %i.hv = icmp eq i32 %.pre325.i, %i.hu
  br i1 %i.hv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hw = getelementptr inbounds nuw i8, ptr %.1301.i, i64 7
  store i8 0, ptr %i.hw, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hx = getelementptr inbounds nuw i8, ptr %.1301.i, i64 8
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.hz = zext i8 %i.hy to i32
  %i.ia = icmp eq i32 %.pre325.i, %i.hz
  br i1 %i.ia, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ib = getelementptr inbounds nuw i8, ptr %.1301.i, i64 11
  store i8 0, ptr %i.ib, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ic = getelementptr inbounds nuw i8, ptr %.1301.i, i64 12
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.ie = zext i8 %i.id to i32
  %i.if = icmp eq i32 %.pre325.i, %i.ie
  br i1 %i.if, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ig = getelementptr inbounds nuw i8, ptr %.1301.i, i64 15
  store i8 0, ptr %i.ig, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ih = getelementptr inbounds nuw i8, ptr %.1301.i, i64 16 ; 2 uses
  %niter292.next.3 = add nuw i64 %niter292, 4     ; 2 uses
  %niter292.ncmp.3 = icmp eq i64 %niter292.next.3, %unroll_iter291
  br i1 %niter292.ncmp.3, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit.loopexit231.unr-lcssa, label %bb.ab, !llvm.loop !323

bb.ak:                                            ; preds = %bb.am, %.lr.ph292.i
  %.2291.i = phi ptr [ %0, %.lr.ph292.i ], [ %i.iz, %bb.am ] ; 5 uses
  %.2191290.i = phi i64 [ 0, %.lr.ph292.i ], [ %i.iy, %bb.am ] ; 2 uses
  %i.ii = shl i64 %.2191290.i, 1
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 %i.ii ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !20, !alias.scope !318, !noalias !315 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.2291.i, i64 2
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.im = getelementptr inbounds nuw i8, ptr %.2291.i, i64 1
  store i8 %i.ik, ptr %i.im, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  store i8 %i.ik, ptr %.2291.i, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  br i1 %.not217.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.in = zext i8 %i.ik to i32
  %i.io = shl nuw nsw i32 %i.in, 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.ir = zext i8 %i.iq to i32
  %i.is = or disjoint i32 %i.io, %i.ir
  %i.it = load i32, ptr %i.fx, align 4, !tbaa !296, !noalias !320
  %i.iu = icmp ne i32 %i.is, %i.it
  %i.iv = sext i1 %i.iu to i8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.iw = phi i8 [ -1, %bb.ak ], [ %i.iv, %bb.al ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.2291.i, i64 3
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.iy = add nuw i64 %.2191290.i, 1              ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.2291.i, i64 4
  %.not216.i = icmp eq i64 %i.iy, %i.k
  br i1 %.not216.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %bb.ak, !llvm.loop !324

bb.an:                                            ; preds = %bb.aa
  %notmask.i = shl nsw i32 -1, %i.df
  %i.ja = xor i32 %notmask.i, -1
  %.not214304.i = icmp eq i64 %i.k, 0
  br i1 %.not214304.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph309.i

.lr.ph309.i:                                      ; preds = %bb.an
  %i.jb = zext i32 %i.df to i64                   ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !213, !noalias !320
  %.not215.i = icmp eq i32 %i.jd, 0
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 28
  %xtraiter293 = and i64 %i.jb, 1
  %i.jf = icmp eq i32 %i.df, 1                    ; 0 uses
  %unroll_iter300 = and i64 %i.jb, 4294967294
  %lcmp.mod297.not = icmp eq i64 %xtraiter293, 0
  %lcmp.mod299 = trunc i32 %i.df to i1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %.lr.ph309.i
  %.3307.i = phi ptr [ %0, %.lr.ph309.i ], [ %i.lc, %bb.aq ] ; 5 uses
  %.3192306.i = phi i64 [ 0, %.lr.ph309.i ], [ %i.lb, %bb.aq ]
  %.0234305.i = phi i64 [ 0, %.lr.ph309.i ], [ %.1235.i, %bb.aq ] ; 4 uses
  switch i32 %i.df, label %.lr.ph.i.i [
    i32 0, label %_ZL26readBitsFromReversedStreamPmPKhm.exit.i
    i32 1, label %.lr.ph.i.i.epil.preheader
  ]

.lr.ph.i.i:                                       ; preds = %bb.ao, %.lr.ph.i.i
  %i.jg = phi i64 [ %i.kc, %.lr.ph.i.i ], [ %.0234305.i, %bb.ao ] ; 4 uses
  %.078.i.i = phi i32 [ %i.ke, %.lr.ph.i.i ], [ 0, %bb.ao ]
  %niter301 = phi i64 [ %niter301.next.1, %.lr.ph.i.i ], [ 0, %bb.ao ]
  %i.jh = lshr i64 %i.jg, 3
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.jk = trunc i64 %i.jg to i8
  %i.jl = and i8 %i.jk, 7
  %i.jm = xor i8 %i.jl, 7
  %i.jn = lshr i8 %i.jj, %i.jm
  %i.jo = add i64 %i.jg, 1                        ; 2 uses
  %i.jp = shl i32 %.078.i.i, 2
  %i.jq = shl i8 %i.jn, 1
  %i.jr = and i8 %i.jq, 2
  %i.js = zext nneg i8 %i.jr to i32
  %i.jt = or disjoint i32 %i.jp, %i.js
  %i.ju = lshr i64 %i.jo, 3
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.jx = trunc i64 %i.jo to i8
  %i.jy = and i8 %i.jx, 7
  %i.jz = xor i8 %i.jy, 7
  %i.ka = lshr i8 %i.jw, %i.jz
  %i.kb = and i8 %i.ka, 1
  %i.kc = add i64 %i.jg, 2                        ; 2 uses
  %i.kd = zext nneg i8 %i.kb to i32
  %i.ke = or disjoint i32 %i.jt, %i.kd            ; 3 uses
  %niter301.next.1 = add nuw i64 %niter301, 2     ; 2 uses
  %niter301.ncmp.1 = icmp eq i64 %niter301.next.1, %unroll_iter300
  br i1 %niter301.ncmp.1, label %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !325

_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod297.not, label %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %bb.ao, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.i.unr-lcssa
  %.epil.init296 = phi i64 [ %.0234305.i, %bb.ao ], [ %i.kc, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.i.unr-lcssa ] ; 2 uses
  %.078.i.i.epil.init = phi i32 [ 0, %bb.ao ], [ %i.ke, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod299)
  %i.kf = shl i32 %.078.i.i.epil.init, 1
  %i.kg = lshr i64 %.epil.init296, 3
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.kj = trunc i64 %.epil.init296 to i8
  %i.kk = and i8 %i.kj, 7
  %i.kl = xor i8 %i.kk, 7
  %i.km = lshr i8 %i.ki, %i.kl
  %i.kn = and i8 %i.km, 1
  %i.ko = zext nneg i8 %i.kn to i32
  %i.kp = or disjoint i32 %i.kf, %i.ko
  br label %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.i

_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.i: ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa = phi i32 [ %i.ke, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.i.unr-lcssa ], [ %i.kp, %.lr.ph.i.i.epil.preheader ]
  %i.kq = add i64 %.0234305.i, %i.jb
  br label %_ZL26readBitsFromReversedStreamPmPKhm.exit.i

_ZL26readBitsFromReversedStreamPmPKhm.exit.i:     ; preds = %bb.ao, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.i
  %.1235.i = phi i64 [ %.0234305.i, %bb.ao ], [ %i.kq, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.i ]
  %.07.lcssa.i.i = phi i32 [ 0, %bb.ao ], [ %.lcssa, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.i ] ; 2 uses
  %i.kr = mul i32 %.07.lcssa.i.i, 255
  %i.ks = udiv i32 %i.kr, %i.ja
  %i.kt = trunc i32 %i.ks to i8                   ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.3307.i, i64 2
  store i8 %i.kt, ptr %i.ku, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.kv = getelementptr inbounds nuw i8, ptr %.3307.i, i64 1
  store i8 %i.kt, ptr %i.kv, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  store i8 %i.kt, ptr %.3307.i, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  br i1 %.not215.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit.i
  %i.kw = load i32, ptr %i.je, align 4, !tbaa !296, !noalias !320
  %i.kx = icmp ne i32 %.07.lcssa.i.i, %i.kw
  %i.ky = sext i1 %i.kx to i8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZL26readBitsFromReversedStreamPmPKhm.exit.i
  %i.kz = phi i8 [ -1, %_ZL26readBitsFromReversedStreamPmPKhm.exit.i ], [ %i.ky, %bb.ap ]
  %i.la = getelementptr inbounds nuw i8, ptr %.3307.i, i64 3
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.lb = add nuw i64 %.3192306.i, 1              ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.3307.i, i64 4
  %.not214.i = icmp eq i64 %i.lb, %i.k
  br i1 %.not214.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %bb.ao, !llvm.loop !326

bb.ar:                                            ; preds = %bb.z
  %i.ld = icmp eq i32 %i.df, 8
  %.not211280.i = icmp eq i64 %i.k, 0             ; 2 uses
  br i1 %i.ld, label %.preheader240.i, label %.preheader241.i

.preheader241.i:                                  ; preds = %bb.ar
  br i1 %.not211280.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph279.i

.lr.ph279.i:                                      ; preds = %.preheader241.i
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !213, !noalias !320
  %.not210.i = icmp eq i32 %i.lf, 0
  %i.lg = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.lh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 36
  br label %bb.ax

.preheader240.i:                                  ; preds = %bb.ar
  br i1 %.not211280.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph283.i.preheader

.lr.ph283.i.preheader:                            ; preds = %.preheader240.i
  %xtraiter272 = and i64 %i.k, 1
  %i.lj = icmp eq i64 %i.k, 1
  br i1 %i.lj, label %.lr.ph283.i.epil.preheader, label %.lr.ph283.i.preheader.new

.lr.ph283.i.preheader.new:                        ; preds = %.lr.ph283.i.preheader
  %unroll_iter277 = and i64 %i.k, -2
  br label %.lr.ph283.i

.lr.ph283.i:                                      ; preds = %.lr.ph283.i, %.lr.ph283.i.preheader.new
  %.4282.i = phi ptr [ %0, %.lr.ph283.i.preheader.new ], [ %i.lt, %.lr.ph283.i ] ; 5 uses
  %.4193281.i = phi i64 [ 0, %.lr.ph283.i.preheader.new ], [ %i.ls, %.lr.ph283.i ] ; 3 uses
  %niter278 = phi i64 [ 0, %.lr.ph283.i.preheader.new ], [ %niter278.next.1, %.lr.ph283.i ]
  %i.lk = mul i64 %.4193281.i, 3
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 %i.lk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.4282.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ll, i64 3, i1 false), !tbaa !20, !alias.scope !327
  %i.lm = getelementptr inbounds nuw i8, ptr %.4282.i, i64 3
  store i8 -1, ptr %i.lm, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.ln = getelementptr inbounds nuw i8, ptr %.4282.i, i64 4
  %i.lo = mul i64 %.4193281.i, 3
  %i.lp = getelementptr i8, ptr %1, i64 %i.lo
  %i.lq = getelementptr i8, ptr %i.lp, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ln, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.lq, i64 3, i1 false), !tbaa !20, !alias.scope !327
  %i.lr = getelementptr inbounds nuw i8, ptr %.4282.i, i64 7
  store i8 -1, ptr %i.lr, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.ls = add nuw i64 %.4193281.i, 2              ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.4282.i, i64 8 ; 3 uses
  %niter278.next.1 = add nuw i64 %niter278, 2     ; 2 uses
  %niter278.ncmp.1 = icmp eq i64 %niter278.next.1, %unroll_iter277
  br i1 %niter278.ncmp.1, label %._crit_edge.thread.i.unr-lcssa, label %.lr.ph283.i, !llvm.loop !331

._crit_edge.thread.i.unr-lcssa:                   ; preds = %.lr.ph283.i
  %lcmp.mod274.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod274.not, label %._crit_edge.thread.i, label %.lr.ph283.i.epil.preheader

.lr.ph283.i.epil.preheader:                       ; preds = %._crit_edge.thread.i.unr-lcssa, %.lr.ph283.i.preheader
  %.4282.i.epil.init = phi ptr [ %0, %.lr.ph283.i.preheader ], [ %i.lt, %._crit_edge.thread.i.unr-lcssa ] ; 3 uses
  %.4193281.i.epil.init = phi i64 [ 0, %.lr.ph283.i.preheader ], [ %i.ls, %._crit_edge.thread.i.unr-lcssa ]
  %lcmp.mod276 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod276)
  %i.lu = mul i64 %.4193281.i.epil.init, 3
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 %i.lu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.4282.i.epil.init, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.lv, i64 3, i1 false), !tbaa !20, !alias.scope !327
  %i.lw = getelementptr inbounds nuw i8, ptr %.4282.i.epil.init, i64 3
  store i8 -1, ptr %i.lw, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.lx = getelementptr inbounds nuw i8, ptr %.4282.i.epil.init, i64 4
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.thread.i.unr-lcssa, %.lr.ph283.i.epil.preheader
  %.lcssa235 = phi ptr [ %i.lt, %._crit_edge.thread.i.unr-lcssa ], [ %i.lx, %.lr.ph283.i.epil.preheader ]
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !213, !noalias !320
  %.not212342.i = icmp eq i32 %i.lz, 0
  br i1 %.not212342.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph288.i

.lr.ph288.i:                                      ; preds = %._crit_edge.thread.i
  %.neg.i = mul i64 %i.k, -4
  %i.ma = getelementptr inbounds i8, ptr %.lcssa235, i64 %.neg.i
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.md = getelementptr inbounds nuw i8, ptr %3, i64 36
  %.pre.i = load i32, ptr %i.mb, align 4, !tbaa !296, !noalias !320
  br label %bb.as

bb.as:                                            ; preds = %bb.aw, %.lr.ph288.i
  %.5286.i = phi ptr [ %i.ma, %.lr.ph288.i ], [ %i.mt, %bb.aw ] ; 5 uses
  %.5194285.i = phi i64 [ 0, %.lr.ph288.i ], [ %i.ms, %bb.aw ]
  %i.me = load i8, ptr %.5286.i, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.mf = zext i8 %i.me to i32
  %i.mg = icmp eq i32 %.pre.i, %i.mf
  br i1 %i.mg, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.mh = getelementptr inbounds nuw i8, ptr %.5286.i, i64 1
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.mj = zext i8 %i.mi to i32
  %i.mk = load i32, ptr %i.mc, align 8, !tbaa !297, !noalias !320
  %i.ml = icmp eq i32 %i.mk, %i.mj
  br i1 %i.ml, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.mm = getelementptr inbounds nuw i8, ptr %.5286.i, i64 2
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.mo = zext i8 %i.mn to i32
  %i.mp = load i32, ptr %i.md, align 4, !tbaa !298, !noalias !320
  %i.mq = icmp eq i32 %i.mp, %i.mo
  br i1 %i.mq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.mr = getelementptr inbounds nuw i8, ptr %.5286.i, i64 3
  store i8 0, ptr %i.mr, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %i.ms = add nuw i64 %.5194285.i, 1              ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.5286.i, i64 4
  %.not213.i = icmp eq i64 %i.ms, %i.k
  br i1 %.not213.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %bb.as, !llvm.loop !332

bb.ax:                                            ; preds = %bb.bb, %.lr.ph279.i
  %.6278.i = phi ptr [ %0, %.lr.ph279.i ], [ %i.of, %bb.bb ] ; 5 uses
  %.6195277.i = phi i64 [ 0, %.lr.ph279.i ], [ %i.oe, %bb.bb ] ; 2 uses
  %i.mu = mul i64 %.6195277.i, 6
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 %i.mu ; 6 uses
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !20, !alias.scope !318, !noalias !315 ; 2 uses
  store i8 %i.mw, ptr %.6278.i, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.mx = getelementptr i8, ptr %i.mv, i64 2
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !20, !alias.scope !318, !noalias !315 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.6278.i, i64 1
  store i8 %i.my, ptr %i.mz, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.na = getelementptr i8, ptr %i.mv, i64 4
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !20, !alias.scope !318, !noalias !315 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.6278.i, i64 2
  store i8 %i.nb, ptr %i.nc, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  br i1 %.not210.i, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nd = zext i8 %i.mw to i32
  %i.ne = shl nuw nsw i32 %i.nd, 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mv, i64 1
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.nh = zext i8 %i.ng to i32
  %i.ni = or disjoint i32 %i.ne, %i.nh
  %i.nj = load i32, ptr %i.lg, align 4, !tbaa !296, !noalias !320
  %i.nk = icmp eq i32 %i.ni, %i.nj
  br i1 %i.nk, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.nl = zext i8 %i.my to i32
  %i.nm = shl nuw nsw i32 %i.nl, 8
  %i.nn = getelementptr i8, ptr %i.mv, i64 3
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.np = zext i8 %i.no to i32
  %i.nq = or disjoint i32 %i.nm, %i.np
  %i.nr = load i32, ptr %i.lh, align 8, !tbaa !297, !noalias !320
  %i.ns = icmp eq i32 %i.nq, %i.nr
  br i1 %i.ns, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.nt = zext i8 %i.nb to i32
  %i.nu = shl nuw nsw i32 %i.nt, 8
  %i.nv = getelementptr i8, ptr %i.mv, i64 5
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.nx = zext i8 %i.nw to i32
  %i.ny = or disjoint i32 %i.nu, %i.nx
  %i.nz = load i32, ptr %i.li, align 4, !tbaa !298, !noalias !320
  %i.oa = icmp ne i32 %i.ny, %i.nz
  %i.ob = sext i1 %i.oa to i8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax
  %i.oc = phi i8 [ -1, %bb.az ], [ -1, %bb.ay ], [ -1, %bb.ax ], [ %i.ob, %bb.ba ]
  %i.od = getelementptr inbounds nuw i8, ptr %.6278.i, i64 3
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.oe = add nuw i64 %.6195277.i, 1              ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.6278.i, i64 4
  %.not209.i = icmp eq i64 %i.oe, %i.k
  br i1 %.not209.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %bb.ax, !llvm.loop !333

bb.bc:                                            ; preds = %bb.z
  %i.og = icmp eq i32 %i.df, 8
  %.not208272.i = icmp eq i64 %i.k, 0             ; 2 uses
  br i1 %i.og, label %.preheader243.i, label %.preheader245.i

.preheader245.i:                                  ; preds = %bb.bc
  br i1 %.not208272.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph271.i

.lr.ph271.i:                                      ; preds = %.preheader245.i
  %i.oh = zext i32 %i.df to i64                   ; 3 uses
  %.not.i222.i = icmp eq i32 %i.df, 0
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !201, !noalias !320 ; 13 uses
  br i1 %.not.i222.i, label %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader, label %.lr.ph.i223.preheader.i.preheader

.lr.ph.i223.preheader.i.preheader:                ; preds = %.lr.ph271.i
  %xtraiter259 = and i64 %i.oh, 1
  %i.ok = icmp eq i32 %i.df, 1
  %unroll_iter263 = and i64 %i.oh, 4294967294
  %lcmp.mod260.not = icmp eq i64 %xtraiter259, 0
  %lcmp.mod262 = trunc i32 %i.df to i1
  br label %.lr.ph.i223.preheader.i

_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader: ; preds = %.lr.ph271.i
  %min.iters.check = icmp ult i64 %i.k, 16
  br i1 %min.iters.check, label %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader238, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader
  %i.ol = mul nuw i64 %i.j, %i.i
  %i.om = shl i64 %i.ol, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.om
  %scevgep228 = getelementptr i8, ptr %i.oj, i64 4
  %bound0 = icmp ult ptr %0, %scevgep228
  %bound1 = icmp ult ptr %i.oj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader238, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, -8                       ; 4 uses
  %i.on = shl i64 %n.vec, 2
  %i.oo = getelementptr i8, ptr %0, i64 %i.on
  %i.op = load i32, ptr %i.oj, align 1, !tbaa !20, !alias.scope !334, !noalias !318
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.op, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.oq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.oq ; 2 uses
  %i.or = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 1, !tbaa !20, !alias.scope !340, !noalias !342
  store <4 x i32> %broadcast.splat, ptr %i.or, align 1, !tbaa !20, !alias.scope !340, !noalias !342
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.os = icmp eq i64 %index.next, %n.vec
  br i1 %i.os, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader238

_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader238: ; preds = %vector.memcheck, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader, %middle.block
  %.8270.us.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader ], [ %i.oo, %middle.block ] ; 2 uses
  %.8197269.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter265 = and i64 %i.k, 7                  ; 2 uses
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol.loopexit, label %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol

_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol: ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader238, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol
  %.8270.us.i.prol = phi ptr [ %i.ov, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol ], [ %.8270.us.i.ph, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader238 ] ; 2 uses
  %.8197269.us.i.prol = phi i64 [ %i.ou, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol ], [ %.8197269.us.i.ph, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader238 ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol ], [ 0, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader238 ]
  %i.ot = load i32, ptr %i.oj, align 1, !tbaa !20, !alias.scope !344, !noalias !318
  store i32 %i.ot, ptr %.8270.us.i.prol, align 1, !tbaa !20, !alias.scope !345, !noalias !318
  %i.ou = add nuw i64 %.8197269.us.i.prol, 1      ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.8270.us.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter265
  br i1 %prol.iter.cmp.not, label %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol.loopexit, label %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol, !llvm.loop !346

_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol.loopexit: ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader238
  %.8270.us.i.unr = phi ptr [ %.8270.us.i.ph, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader238 ], [ %i.ov, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol ]
  %.8197269.us.i.unr = phi i64 [ %.8197269.us.i.ph, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.preheader238 ], [ %i.ou, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol ]
  %i.ow = sub i64 %.8197269.us.i.ph, %i.k
  %i.ox = icmp ugt i64 %i.ow, -8
  br i1 %i.ox, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i

_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i: ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol.loopexit, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i
  %.8270.us.i = phi ptr [ %i.po, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i ], [ %.8270.us.i.unr, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol.loopexit ] ; 9 uses
  %.8197269.us.i = phi i64 [ %i.pn, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i ], [ %.8197269.us.i.unr, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i.prol.loopexit ]
  %i.oy = load i32, ptr %i.oj, align 1, !tbaa !20, !alias.scope !344, !noalias !318
  store i32 %i.oy, ptr %.8270.us.i, align 1, !tbaa !20, !alias.scope !345, !noalias !318
  %i.oz = getelementptr inbounds nuw i8, ptr %.8270.us.i, i64 4
  %i.pa = load i32, ptr %i.oj, align 1, !tbaa !20, !alias.scope !344, !noalias !318
  store i32 %i.pa, ptr %i.oz, align 1, !tbaa !20, !alias.scope !345, !noalias !318
  %i.pb = getelementptr inbounds nuw i8, ptr %.8270.us.i, i64 8
  %i.pc = load i32, ptr %i.oj, align 1, !tbaa !20, !alias.scope !344, !noalias !318
  store i32 %i.pc, ptr %i.pb, align 1, !tbaa !20, !alias.scope !345, !noalias !318
  %i.pd = getelementptr inbounds nuw i8, ptr %.8270.us.i, i64 12
  %i.pe = load i32, ptr %i.oj, align 1, !tbaa !20, !alias.scope !344, !noalias !318
  store i32 %i.pe, ptr %i.pd, align 1, !tbaa !20, !alias.scope !345, !noalias !318
  %i.pf = getelementptr inbounds nuw i8, ptr %.8270.us.i, i64 16
  %i.pg = load i32, ptr %i.oj, align 1, !tbaa !20, !alias.scope !344, !noalias !318
  store i32 %i.pg, ptr %i.pf, align 1, !tbaa !20, !alias.scope !345, !noalias !318
  %i.ph = getelementptr inbounds nuw i8, ptr %.8270.us.i, i64 20
  %i.pi = load i32, ptr %i.oj, align 1, !tbaa !20, !alias.scope !344, !noalias !318
  store i32 %i.pi, ptr %i.ph, align 1, !tbaa !20, !alias.scope !345, !noalias !318
  %i.pj = getelementptr inbounds nuw i8, ptr %.8270.us.i, i64 24
  %i.pk = load i32, ptr %i.oj, align 1, !tbaa !20, !alias.scope !344, !noalias !318
  store i32 %i.pk, ptr %i.pj, align 1, !tbaa !20, !alias.scope !345, !noalias !318
  %i.pl = getelementptr inbounds nuw i8, ptr %.8270.us.i, i64 28
  %i.pm = load i32, ptr %i.oj, align 1, !tbaa !20, !alias.scope !344, !noalias !318
  store i32 %i.pm, ptr %i.pl, align 1, !tbaa !20, !alias.scope !345, !noalias !318
  %i.pn = add nuw i64 %.8197269.us.i, 8           ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.8270.us.i, i64 32
  %.not207.us.i.7 = icmp eq i64 %i.pn, %i.k
  br i1 %.not207.us.i.7, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %_ZL26readBitsFromReversedStreamPmPKhm.exit229.us.i, !llvm.loop !347

.preheader243.i:                                  ; preds = %bb.bc
  br i1 %.not208272.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph275.i

.lr.ph275.i:                                      ; preds = %.preheader243.i
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !201, !noalias !320 ; 5 uses
  %i.pr = add i64 %i.k, -1
  %xtraiter267 = and i64 %i.k, 3                  ; 3 uses
  %i.ps = icmp ult i64 %i.pr, 3
  br i1 %i.ps, label %.epil.preheader, label %.lr.ph275.i.new

.lr.ph275.i.new:                                  ; preds = %.lr.ph275.i
  %unroll_iter270 = and i64 %i.k, -4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph275.i.new
  %.7274.i = phi ptr [ %0, %.lr.ph275.i.new ], [ %i.qy, %bb.bd ] ; 5 uses
  %.7196273.i = phi i64 [ 0, %.lr.ph275.i.new ], [ %i.qx, %bb.bd ] ; 5 uses
  %niter271 = phi i64 [ 0, %.lr.ph275.i.new ], [ %niter271.next.3, %bb.bd ]
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 %.7196273.i
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.pv = zext i8 %i.pu to i64
  %i.pw = shl nuw nsw i64 %i.pv, 2
  %i.px = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 1, !tbaa !20, !alias.scope !348, !noalias !318
  store i32 %i.py, ptr %.7274.i, align 1, !tbaa !20, !alias.scope !352, !noalias !318
  %i.pz = getelementptr inbounds nuw i8, ptr %.7274.i, i64 4
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 %.7196273.i
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 1
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.qd = zext i8 %i.qc to i64
  %i.qe = shl nuw nsw i64 %i.qd, 2
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 1, !tbaa !20, !alias.scope !348, !noalias !318
  store i32 %i.qg, ptr %i.pz, align 1, !tbaa !20, !alias.scope !352, !noalias !318
  %i.qh = getelementptr inbounds nuw i8, ptr %.7274.i, i64 8
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 %.7196273.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 2
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.ql = zext i8 %i.qk to i64
  %i.qm = shl nuw nsw i64 %i.ql, 2
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 1, !tbaa !20, !alias.scope !348, !noalias !318
  store i32 %i.qo, ptr %i.qh, align 1, !tbaa !20, !alias.scope !352, !noalias !318
  %i.qp = getelementptr inbounds nuw i8, ptr %.7274.i, i64 12
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 %.7196273.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 3
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.qt = zext i8 %i.qs to i64
  %i.qu = shl nuw nsw i64 %i.qt, 2
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.qu
  %i.qw = load i32, ptr %i.qv, align 1, !tbaa !20, !alias.scope !348, !noalias !318
  store i32 %i.qw, ptr %i.qp, align 1, !tbaa !20, !alias.scope !352, !noalias !318
  %i.qx = add nuw i64 %.7196273.i, 4              ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.7274.i, i64 16 ; 2 uses
  %niter271.next.3 = add nuw i64 %niter271, 4     ; 2 uses
  %niter271.ncmp.3 = icmp eq i64 %niter271.next.3, %unroll_iter270
  br i1 %niter271.ncmp.3, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit.loopexit237.unr-lcssa, label %bb.bd, !llvm.loop !353

.lr.ph.i223.preheader.i:                          ; preds = %.lr.ph.i223.preheader.i.preheader, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i
  %.8270.i = phi ptr [ %i.sp, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i ], [ %0, %.lr.ph.i223.preheader.i.preheader ] ; 2 uses
  %.8197269.i = phi i64 [ %i.so, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i ], [ 0, %.lr.ph.i223.preheader.i.preheader ]
  %.0232268.i = phi i64 [ %i.sj, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i ], [ 0, %.lr.ph.i223.preheader.i.preheader ] ; 3 uses
  br i1 %i.ok, label %.lr.ph.i223.i.epil.preheader, label %.lr.ph.i223.i

.lr.ph.i223.i:                                    ; preds = %.lr.ph.i223.preheader.i, %.lr.ph.i223.i
  %i.qz = phi i64 [ %i.rv, %.lr.ph.i223.i ], [ %.0232268.i, %.lr.ph.i223.preheader.i ] ; 4 uses
  %.078.i226.i = phi i32 [ %i.rx, %.lr.ph.i223.i ], [ 0, %.lr.ph.i223.preheader.i ]
  %niter264 = phi i64 [ %niter264.next.1, %.lr.ph.i223.i ], [ 0, %.lr.ph.i223.preheader.i ]
  %i.ra = lshr i64 %i.qz, 3
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ra
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.rd = trunc i64 %i.qz to i8
  %i.re = and i8 %i.rd, 7
  %i.rf = xor i8 %i.re, 7
  %i.rg = lshr i8 %i.rc, %i.rf
  %i.rh = add i64 %i.qz, 1                        ; 2 uses
  %i.ri = shl i32 %.078.i226.i, 2
  %i.rj = shl i8 %i.rg, 1
  %i.rk = and i8 %i.rj, 2
  %i.rl = zext nneg i8 %i.rk to i32
  %i.rm = or disjoint i32 %i.ri, %i.rl
  %i.rn = lshr i64 %i.rh, 3
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.rq = trunc i64 %i.rh to i8
  %i.rr = and i8 %i.rq, 7
  %i.rs = xor i8 %i.rr, 7
  %i.rt = lshr i8 %i.rp, %i.rs
  %i.ru = and i8 %i.rt, 1
  %i.rv = add i64 %i.qz, 2                        ; 2 uses
  %i.rw = zext nneg i8 %i.ru to i32
  %i.rx = or disjoint i32 %i.rm, %i.rw            ; 3 uses
  %niter264.next.1 = add nuw i64 %niter264, 2     ; 2 uses
  %niter264.ncmp.1 = icmp eq i64 %niter264.next.1, %unroll_iter263
  br i1 %niter264.ncmp.1, label %_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i.unr-lcssa, label %.lr.ph.i223.i, !llvm.loop !325

_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i223.i
  br i1 %lcmp.mod260.not, label %_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i, label %.lr.ph.i223.i.epil.preheader

.lr.ph.i223.i.epil.preheader:                     ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i.unr-lcssa, %.lr.ph.i223.preheader.i
  %.epil.init = phi i64 [ %.0232268.i, %.lr.ph.i223.preheader.i ], [ %i.rv, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i.unr-lcssa ] ; 2 uses
  %.078.i226.i.epil.init = phi i32 [ 0, %.lr.ph.i223.preheader.i ], [ %i.rx, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod262)
  %i.ry = shl i32 %.078.i226.i.epil.init, 1
  %i.rz = lshr i64 %.epil.init, 3
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 %i.rz
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.sc = trunc i64 %.epil.init to i8
  %i.sd = and i8 %i.sc, 7
  %i.se = xor i8 %i.sd, 7
  %i.sf = lshr i8 %i.sb, %i.se
  %i.sg = and i8 %i.sf, 1
  %i.sh = zext nneg i8 %i.sg to i32
  %i.si = or disjoint i32 %i.ry, %i.sh
  br label %_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i

_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i: ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i.unr-lcssa, %.lr.ph.i223.i.epil.preheader
  %.lcssa241 = phi i32 [ %i.rx, %_ZL26readBitsFromReversedStreamPmPKhm.exit229.loopexit.i.unr-lcssa ], [ %i.si, %.lr.ph.i223.i.epil.preheader ]
  %i.sj = add i64 %.0232268.i, %i.oh
  %i.sk = shl i32 %.lcssa241, 2
  %i.sl = zext i32 %i.sk to i64
  %i.sm = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.sl
  %i.sn = load i32, ptr %i.sm, align 1, !tbaa !20, !alias.scope !344, !noalias !318
  store i32 %i.sn, ptr %.8270.i, align 1, !tbaa !20, !alias.scope !345, !noalias !318
  %i.so = add nuw i64 %.8197269.i, 1              ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.8270.i, i64 4
  %.not207.i = icmp eq i64 %i.so, %i.k
  br i1 %.not207.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph.i223.preheader.i, !llvm.loop !354

bb.be:                                            ; preds = %bb.z
  %i.sq = icmp eq i32 %i.df, 8
  %.not206263.i = icmp eq i64 %i.k, 0             ; 2 uses
  br i1 %i.sq, label %.preheader247.i, label %.preheader249.i

.preheader249.i:                                  ; preds = %bb.be
  br i1 %.not206263.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph262.i.preheader

.lr.ph262.i.preheader:                            ; preds = %.preheader249.i
  %xtraiter249 = and i64 %i.k, 1
  %i.sr = icmp eq i64 %i.k, 1
  br i1 %i.sr, label %.lr.ph262.i.epil.preheader, label %.lr.ph262.i.preheader.new

.lr.ph262.i.preheader.new:                        ; preds = %.lr.ph262.i.preheader
  %unroll_iter252 = and i64 %i.k, -2
  br label %.lr.ph262.i

.preheader247.i:                                  ; preds = %bb.be
  br i1 %.not206263.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph266.i.preheader

.lr.ph266.i.preheader:                            ; preds = %.preheader247.i
  %xtraiter254 = and i64 %i.k, 1
  %i.ss = icmp eq i64 %i.k, 1
  br i1 %i.ss, label %.lr.ph266.i.epil.preheader, label %.lr.ph266.i.preheader.new

.lr.ph266.i.preheader.new:                        ; preds = %.lr.ph266.i.preheader
  %unroll_iter257 = and i64 %i.k, -2
  br label %.lr.ph266.i

.lr.ph266.i:                                      ; preds = %.lr.ph266.i, %.lr.ph266.i.preheader.new
  %.9265.i = phi ptr [ %0, %.lr.ph266.i.preheader.new ], [ %i.tm, %.lr.ph266.i ] ; 9 uses
  %.9198264.i = phi i64 [ 0, %.lr.ph266.i.preheader.new ], [ %i.tl, %.lr.ph266.i ] ; 3 uses
  %niter258 = phi i64 [ 0, %.lr.ph266.i.preheader.new ], [ %niter258.next.1, %.lr.ph266.i ]
  %i.st = shl i64 %.9198264.i, 1
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 %i.st ; 2 uses
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !20, !alias.scope !318, !noalias !315 ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.9265.i, i64 2
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.sx = getelementptr inbounds nuw i8, ptr %.9265.i, i64 1
  store i8 %i.sv, ptr %i.sx, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  store i8 %i.sv, ptr %.9265.i, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 1
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.ta = getelementptr inbounds nuw i8, ptr %.9265.i, i64 3
  store i8 %i.sz, ptr %i.ta, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.tb = getelementptr inbounds nuw i8, ptr %.9265.i, i64 4
  %i.tc = shl i64 %.9198264.i, 1
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 2
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !20, !alias.scope !318, !noalias !315 ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.9265.i, i64 6
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.th = getelementptr inbounds nuw i8, ptr %.9265.i, i64 5
  store i8 %i.tf, ptr %i.th, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  store i8 %i.tf, ptr %i.tb, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 3
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.tk = getelementptr inbounds nuw i8, ptr %.9265.i, i64 7
  store i8 %i.tj, ptr %i.tk, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.tl = add nuw i64 %.9198264.i, 2              ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.9265.i, i64 8 ; 2 uses
  %niter258.next.1 = add nuw i64 %niter258, 2     ; 2 uses
  %niter258.ncmp.1 = icmp eq i64 %niter258.next.1, %unroll_iter257
  br i1 %niter258.ncmp.1, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit.loopexit242.unr-lcssa, label %.lr.ph266.i, !llvm.loop !355

.lr.ph262.i:                                      ; preds = %.lr.ph262.i, %.lr.ph262.i.preheader.new
  %.10261.i = phi ptr [ %0, %.lr.ph262.i.preheader.new ], [ %i.ug, %.lr.ph262.i ] ; 9 uses
  %.10199260.i = phi i64 [ 0, %.lr.ph262.i.preheader.new ], [ %i.uf, %.lr.ph262.i ] ; 3 uses
  %niter253 = phi i64 [ 0, %.lr.ph262.i.preheader.new ], [ %niter253.next.1, %.lr.ph262.i ]
  %i.tn = shl i64 %.10199260.i, 2
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 %i.tn ; 2 uses
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !20, !alias.scope !318, !noalias !315 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.10261.i, i64 2
  store i8 %i.tp, ptr %i.tq, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.tr = getelementptr inbounds nuw i8, ptr %.10261.i, i64 1
  store i8 %i.tp, ptr %i.tr, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  store i8 %i.tp, ptr %.10261.i, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.ts = getelementptr inbounds nuw i8, ptr %i.to, i64 2
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.tu = getelementptr inbounds nuw i8, ptr %.10261.i, i64 3
  store i8 %i.tt, ptr %i.tu, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.tv = getelementptr inbounds nuw i8, ptr %.10261.i, i64 4
  %i.tw = shl i64 %.10199260.i, 2
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 %i.tw ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 4
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !20, !alias.scope !318, !noalias !315 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.10261.i, i64 6
  store i8 %i.tz, ptr %i.ua, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.ub = getelementptr inbounds nuw i8, ptr %.10261.i, i64 5
  store i8 %i.tz, ptr %i.ub, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  store i8 %i.tz, ptr %i.tv, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tx, i64 6
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.ue = getelementptr inbounds nuw i8, ptr %.10261.i, i64 7
  store i8 %i.ud, ptr %i.ue, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.uf = add nuw i64 %.10199260.i, 2             ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.10261.i, i64 8 ; 2 uses
  %niter253.next.1 = add nuw i64 %niter253, 2     ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit.loopexit243.unr-lcssa, label %.lr.ph262.i, !llvm.loop !356

bb.bf:                                            ; preds = %bb.z
  %i.uh = icmp eq i32 %i.df, 8
  br i1 %i.uh, label %bb.bg, label %.preheader251.i

.preheader251.i:                                  ; preds = %bb.bf
  %.not256.i = icmp eq i64 %i.k, 0
  br i1 %.not256.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph.i104.preheader

.lr.ph.i104.preheader:                            ; preds = %.preheader251.i
  %xtraiter = and i64 %i.k, 1
  %i.ui = icmp eq i64 %i.k, 1
  br i1 %i.ui, label %.lr.ph.i104.epil.preheader, label %.lr.ph.i104.preheader.new

.lr.ph.i104.preheader.new:                        ; preds = %.lr.ph.i104.preheader
  %unroll_iter = and i64 %i.k, -2
  br label %.lr.ph.i104

bb.bg:                                            ; preds = %bb.bf
  %i.uj = shl i64 %i.k, 2                         ; 2 uses
  %.not.i230.i = icmp eq i64 %i.uj, 0
  br i1 %.not.i230.i, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %1, i64 %i.uj, i1 false), !tbaa !20, !alias.scope !357
  br label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit

.lr.ph.i104:                                      ; preds = %.lr.ph.i104, %.lr.ph.i104.preheader.new
  %.11258.i = phi ptr [ %0, %.lr.ph.i104.preheader.new ], [ %i.vl, %.lr.ph.i104 ] ; 9 uses
  %.11200257.i = phi i64 [ 0, %.lr.ph.i104.preheader.new ], [ %i.vk, %.lr.ph.i104 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i104.preheader.new ], [ %niter.next.1, %.lr.ph.i104 ]
  %i.uk = shl i64 %.11200257.i, 3
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 %i.uk ; 4 uses
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  store i8 %i.um, ptr %.11258.i, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 2
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.up = getelementptr inbounds nuw i8, ptr %.11258.i, i64 1
  store i8 %i.uo, ptr %i.up, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.us = getelementptr inbounds nuw i8, ptr %.11258.i, i64 2
  store i8 %i.ur, ptr %i.us, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ul, i64 6
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.uv = getelementptr inbounds nuw i8, ptr %.11258.i, i64 3
  store i8 %i.uu, ptr %i.uv, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.uw = getelementptr inbounds nuw i8, ptr %.11258.i, i64 4
  %i.ux = shl i64 %.11200257.i, 3
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 %i.ux ; 4 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  store i8 %i.va, ptr %i.uw, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uy, i64 10
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.vd = getelementptr inbounds nuw i8, ptr %.11258.i, i64 5
  store i8 %i.vc, ptr %i.vd, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uy, i64 12
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.vg = getelementptr inbounds nuw i8, ptr %.11258.i, i64 6
  store i8 %i.vf, ptr %i.vg, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uy, i64 14
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !20, !alias.scope !318, !noalias !315
  %i.vj = getelementptr inbounds nuw i8, ptr %.11258.i, i64 7
  store i8 %i.vi, ptr %i.vj, align 1, !tbaa !20, !alias.scope !315, !noalias !318
  %i.vk = add nuw i64 %.11200257.i, 2             ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.11258.i, i64 8 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit.loopexit244.unr-lcssa, label %.lr.ph.i104, !llvm.loop !361

bb.bh:                                            ; preds = %bb.y
  tail call fastcc void @_ZL18getPixelColorsRGB8PhmPKhPK16LodePNGColorMode(ptr noundef %0, i64 noundef %i.k, ptr noundef %1, ptr noundef nonnull %3)
  br label %_ZL19getPixelColorsRGBA8PhmPKhPK16LodePNGColorMode.exit

bb.bi:                                            ; preds = %bb.y, %.loopexit._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i8 0, ptr %i.e, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i8 0, ptr %i.f, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store i8 0, ptr %i.g, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  store i8 0, ptr %i.h, align 1, !tbaa !20
  %.not97134 = icmp eq i64 %i.k, 0
  br i1 %.not97134, label %_ZL12rgba8ToPixelPhmPK16LodePNGColorModeP9ColorTreehhhh.exit, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.bi, %bb.ce
  %.2135 = phi i64 [ %i.zn, %bb.ce ], [ 0, %bb.bi ] ; 17 uses
  call fastcc void @_ZL18getPixelColorRGBA8PhS_S_S_PKhmPK16LodePNGColorMode(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %1, i64 noundef %.2135, ptr noundef nonnull %3)
  %i.vm = load i8, ptr %i.e, align 1, !tbaa !20   ; 14 uses
  %i.vn = load i8, ptr %i.f, align 1, !tbaa !20   ; 7 uses
  %i.vo = load i8, ptr %i.g, align 1, !tbaa !20   ; 7 uses
  %i.vp = load i8, ptr %i.h, align 1, !tbaa !20   ; 7 uses
  %i.vq = load i32, ptr %2, align 8, !tbaa !197
  switch i32 %i.vq, label %bb.ce [
    i32 0, label %bb.bj
    i32 2, label %bb.bp
    i32 3, label %bb.bs
    i32 4, label %bb.by
    i32 6, label %bb.cb
  ]

bb.bj:                                            ; preds = %.lr.ph136
  %i.vr = load i32, ptr %i.fr, align 4, !tbaa !200 ; 8 uses
  switch i32 %i.vr, label %bb.bm [
    i32 8, label %bb.bk
    i32 16, label %bb.bl
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 %.2135
  store i8 %i.vm, ptr %i.vs, align 1, !tbaa !20
  br label %bb.ce

bb.bl:                                            ; preds = %bb.bj
  %i.vt = shl i64 %.2135, 1
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 %i.vt ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 1
  store i8 %i.vm, ptr %i.vv, align 1, !tbaa !20
  store i8 %i.vm, ptr %i.vu, align 1, !tbaa !20
  br label %bb.ce

bb.bm:                                            ; preds = %bb.bj
  %i.vw = zext i8 %i.vm to i32
  %i.vx = sub i32 8, %i.vr
  %i.vy = lshr i32 %i.vw, %i.vx
  %notmask.i107 = shl nsw i32 -1, %i.vr
  %i.vz = xor i32 %notmask.i107, -1
  %i.wa = and i32 %i.vy, %i.vz
  %i.wb = icmp eq i32 %i.vr, 1
  %i.wc = icmp eq i32 %i.vr, 2
  %i.wd = select i1 %i.wc, i32 3, i32 1
  %i.we = select i1 %i.wb, i32 7, i32 %i.wd       ; 2 uses
  %i.wf = trunc i64 %.2135 to i32
  %i.wg = and i32 %i.we, %i.wf                    ; 2 uses
  %i.wh = sub nsw i32 %i.we, %i.wg
  %i.wi = mul i32 %i.wh, %i.vr
  %i.wj = shl i32 %i.wa, %i.wi                    ; 2 uses
  %i.wk = icmp eq i32 %i.wg, 0
  br i1 %i.wk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.wl = trunc i32 %i.wj to i8
  %i.wm = zext i32 %i.vr to i64
  %i.wn = mul i64 %.2135, %i.wm
  %i.wo = lshr i64 %i.wn, 3
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 %i.wo
  store i8 %i.wl, ptr %i.wp, align 1, !tbaa !20
  br label %bb.ce

bb.bo:                                            ; preds = %bb.bm
  %i.wq = zext i32 %i.vr to i64
  %i.wr = mul i64 %.2135, %i.wq
  %i.ws = lshr i64 %i.wr, 3
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 %i.ws ; 2 uses
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !20
  %i.wv = trunc i32 %i.wj to i8
  %i.ww = or i8 %i.wu, %i.wv
  store i8 %i.ww, ptr %i.wt, align 1, !tbaa !20
  br label %bb.ce

bb.bp:                                            ; preds = %.lr.ph136
  %i.wx = load i32, ptr %i.fr, align 4, !tbaa !200
  %i.wy = icmp eq i32 %i.wx, 8
  br i1 %i.wy, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.wz = mul i64 %.2135, 3
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 %i.wz ; 3 uses
  store i8 %i.vm, ptr %i.xa, align 1, !tbaa !20
  %i.xb = getelementptr i8, ptr %i.xa, i64 1
  store i8 %i.vn, ptr %i.xb, align 1, !tbaa !20
  %i.xc = getelementptr i8, ptr %i.xa, i64 2
  store i8 %i.vo, ptr %i.xc, align 1, !tbaa !20
  br label %bb.ce

bb.br:                                            ; preds = %bb.bp
  %i.xd = mul i64 %.2135, 6
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 %i.xd ; 6 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 1
  store i8 %i.vm, ptr %i.xf, align 1, !tbaa !20
  store i8 %i.vm, ptr %i.xe, align 1, !tbaa !20
  %i.xg = getelementptr i8, ptr %i.xe, i64 3
  store i8 %i.vn, ptr %i.xg, align 1, !tbaa !20
  %i.xh = getelementptr i8, ptr %i.xe, i64 2
  store i8 %i.vn, ptr %i.xh, align 1, !tbaa !20
  %i.xi = getelementptr i8, ptr %i.xe, i64 5
  store i8 %i.vo, ptr %i.xi, align 1, !tbaa !20
  %i.xj = getelementptr i8, ptr %i.xe, i64 4
  store i8 %i.vo, ptr %i.xj, align 1, !tbaa !20
  br label %bb.ce

bb.bs:                                            ; preds = %.lr.ph136
  %i.xk = call fastcc noundef i32 @_ZL14color_tree_getP9ColorTreehhhh(ptr noundef nonnull readonly %6, i8 noundef zeroext %i.vm, i8 noundef zeroext %i.vn, i8 noundef zeroext %i.vo, i8 noundef zeroext %i.vp) ; 3 uses
  %i.xl = icmp slt i32 %i.xk, 0
  br i1 %i.xl, label %_ZL12rgba8ToPixelPhmPK16LodePNGColorModeP9ColorTreehhhh.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.xm = load i32, ptr %i.fr, align 4, !tbaa !200 ; 7 uses
  %i.xn = icmp eq i32 %i.xm, 8
  br i1 %i.xn, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.xo = trunc i32 %i.xk to i8
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 %.2135
  store i8 %i.xo, ptr %i.xp, align 1, !tbaa !20
  br label %bb.ce

bb.bv:                                            ; preds = %bb.bt
  %i.xq = icmp eq i32 %i.xm, 1
  %i.xr = icmp eq i32 %i.xm, 2
  %i.xs = select i1 %i.xr, i32 3, i32 1
  %i.xt = select i1 %i.xq, i32 7, i32 %i.xs       ; 2 uses
  %i.xu = trunc i64 %.2135 to i32
  %i.xv = and i32 %i.xt, %i.xu                    ; 2 uses
  %notmask.i121.i = shl nsw i32 -1, %i.xm
  %i.xw = xor i32 %notmask.i121.i, -1
  %i.xx = and i32 %i.xk, %i.xw
  %i.xy = sub nsw i32 %i.xt, %i.xv
  %i.xz = mul i32 %i.xy, %i.xm
  %i.ya = shl i32 %i.xx, %i.xz                    ; 2 uses
  %i.yb = icmp eq i32 %i.xv, 0
  br i1 %i.yb, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.yc = trunc i32 %i.ya to i8
  %i.yd = zext i32 %i.xm to i64
  %i.ye = mul i64 %.2135, %i.yd
  %i.yf = lshr i64 %i.ye, 3
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 %i.yf
  store i8 %i.yc, ptr %i.yg, align 1, !tbaa !20
  br label %bb.ce

bb.bx:                                            ; preds = %bb.bv
  %i.yh = zext i32 %i.xm to i64
  %i.yi = mul i64 %.2135, %i.yh
  %i.yj = lshr i64 %i.yi, 3
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 %i.yj ; 2 uses
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !20
  %i.ym = trunc i32 %i.ya to i8
  %i.yn = or i8 %i.yl, %i.ym
  store i8 %i.yn, ptr %i.yk, align 1, !tbaa !20
  br label %bb.ce

bb.by:                                            ; preds = %.lr.ph136
  %i.yo = load i32, ptr %i.fr, align 4, !tbaa !200
  switch i32 %i.yo, label %bb.ce [
    i32 8, label %bb.bz
    i32 16, label %bb.ca
  ]

bb.bz:                                            ; preds = %bb.by
  %i.yp = shl i64 %.2135, 1
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 %i.yp ; 2 uses
  store i8 %i.vm, ptr %i.yq, align 1, !tbaa !20
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 1
  store i8 %i.vp, ptr %i.yr, align 1, !tbaa !20
  br label %bb.ce

bb.ca:                                            ; preds = %bb.by
  %i.ys = shl i64 %.2135, 2
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 %i.ys ; 4 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 1
  store i8 %i.vm, ptr %i.yu, align 1, !tbaa !20
  store i8 %i.vm, ptr %i.yt, align 1, !tbaa !20
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yt, i64 3
  store i8 %i.vp, ptr %i.yv, align 1, !tbaa !20
end_hunk_2
begin_hunk_3_@_ZL19getPixelColorRGBA16PtS_S_S_PKhmPK16LodePNGColorMode:bb.a
  %.sink = phi i16 [ 0, %bb.h ], [ 0, %bb.c ], [ %i.du, %bb.j ], [ %i.cn, %bb.i ], [ -1, %bb.d ]
  store i16 %.sink, ptr %3, align 2, !tbaa !94
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL18getPixelColorsRGB8PhmPKhPK16LodePNGColorMode(ptr noalias nofree noundef writeonly captures(none) %0, i64 noundef range(i64 0, -8589934590) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr %3, align 8, !tbaa !197
  switch i32 %i.a, label %_ZL14lodepng_memcpyPvPKvm.exit [
    i32 0, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 6, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !200  ; 6 uses
  switch i32 %i.c, label %bb.c [
    i32 8, label %.preheader
    i32 16, label %.preheader151
  ]

.preheader151:                                    ; preds = %bb.b
  %.not131198 = icmp eq i64 %1, 0
  br i1 %.not131198, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph201.preheader

.lr.ph201.preheader:                              ; preds = %.preheader151
  %i.d = add i64 %1, -1
  %xtraiter305 = and i64 %1, 3                    ; 3 uses
  %i.e = icmp ult i64 %i.d, 3
  br i1 %i.e, label %.lr.ph201.epil.preheader, label %.lr.ph201.preheader.new

.lr.ph201.preheader.new:                          ; preds = %.lr.ph201.preheader
  %unroll_iter309 = and i64 %1, -4
  br label %.lr.ph201

.preheader:                                       ; preds = %bb.b
  %.not132202 = icmp eq i64 %1, 0
  br i1 %.not132202, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph205.preheader

.lr.ph205.preheader:                              ; preds = %.preheader
  %i.f = add i64 %1, -1
  %xtraiter311 = and i64 %1, 3                    ; 3 uses
  %i.g = icmp ult i64 %i.f, 3
  br i1 %i.g, label %.lr.ph205.epil.preheader, label %.lr.ph205.preheader.new

.lr.ph205.preheader.new:                          ; preds = %.lr.ph205.preheader
  %unroll_iter315 = and i64 %1, -4
  br label %.lr.ph205

.lr.ph205:                                        ; preds = %.lr.ph205, %.lr.ph205.preheader.new
  %.0204 = phi ptr [ %0, %.lr.ph205.preheader.new ], [ %i.ae, %.lr.ph205 ] ; 13 uses
  %.0112203 = phi i64 [ 0, %.lr.ph205.preheader.new ], [ %i.ad, %.lr.ph205 ] ; 5 uses
  %niter316 = phi i64 [ 0, %.lr.ph205.preheader.new ], [ %niter316.next.3, %.lr.ph205 ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.0112203
  %i.i = load i8, ptr %i.h, align 1, !tbaa !20    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0204, i64 2
  store i8 %i.i, ptr %i.j, align 1, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %.0204, i64 1
  store i8 %i.i, ptr %i.k, align 1, !tbaa !20
  store i8 %i.i, ptr %.0204, align 1, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %.0204, i64 3
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.0112203
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !20    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0204, i64 5
  store i8 %i.o, ptr %i.p, align 1, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %.0204, i64 4
  store i8 %i.o, ptr %i.q, align 1, !tbaa !20
  store i8 %i.o, ptr %i.l, align 1, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %.0204, i64 6
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.0112203
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0204, i64 8
  store i8 %i.u, ptr %i.v, align 1, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %.0204, i64 7
  store i8 %i.u, ptr %i.w, align 1, !tbaa !20
  store i8 %i.u, ptr %i.r, align 1, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %.0204, i64 9
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %.0112203
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0204, i64 11
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %.0204, i64 10
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !20
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !20
  %i.ad = add nuw i64 %.0112203, 4                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0204, i64 12 ; 2 uses
  %niter316.next.3 = add nuw i64 %niter316, 4     ; 2 uses
  %niter316.ncmp.3 = icmp eq i64 %niter316.next.3, %unroll_iter315
  br i1 %niter316.ncmp.3, label %_ZL14lodepng_memcpyPvPKvm.exit.loopexit251.unr-lcssa, label %.lr.ph205, !llvm.loop !370

.lr.ph201:                                        ; preds = %.lr.ph201, %.lr.ph201.preheader.new
  %.1200 = phi ptr [ %0, %.lr.ph201.preheader.new ], [ %i.bg, %.lr.ph201 ] ; 13 uses
  %.1113199 = phi i64 [ 0, %.lr.ph201.preheader.new ], [ %i.bf, %.lr.ph201 ] ; 5 uses
  %niter310 = phi i64 [ 0, %.lr.ph201.preheader.new ], [ %niter310.next.3, %.lr.ph201 ]
  %i.af = shl i64 %.1113199, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1200, i64 2
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %.1200, i64 1
  store i8 %i.ah, ptr %i.aj, align 1, !tbaa !20
  store i8 %i.ah, ptr %.1200, align 1, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %.1200, i64 3
  %i.al = shl i64 %.1113199, 1
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !20  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1200, i64 5
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %.1200, i64 4
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !20
  store i8 %i.ao, ptr %i.ak, align 1, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %.1200, i64 6
  %i.as = shl i64 %.1113199, 1
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !20  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1200, i64 8
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %.1200, i64 7
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !20
  store i8 %i.av, ptr %i.ar, align 1, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %.1200, i64 9
  %i.az = shl i64 %.1113199, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !20  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.1200, i64 11
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %.1200, i64 10
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !20
  store i8 %i.bc, ptr %i.ay, align 1, !tbaa !20
  %i.bf = add nuw i64 %.1113199, 4                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1200, i64 12 ; 2 uses
  %niter310.next.3 = add nuw i64 %niter310, 4     ; 2 uses
  %niter310.ncmp.3 = icmp eq i64 %niter310.next.3, %unroll_iter309
  br i1 %niter310.ncmp.3, label %_ZL14lodepng_memcpyPvPKvm.exit.loopexit252.unr-lcssa, label %.lr.ph201, !llvm.loop !371

bb.c:                                             ; preds = %bb.b
  %notmask = shl nsw i32 -1, %i.c
  %i.bh = xor i32 %notmask, -1
  %.not130206 = icmp eq i64 %1, 0
  br i1 %.not130206, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph210

.lr.ph210:                                        ; preds = %bb.c
  %i.bi = zext i32 %i.c to i64                    ; 3 uses
  %xtraiter317 = and i64 %i.bi, 1
  %i.bj = icmp eq i32 %i.c, 1                     ; 0 uses
  %unroll_iter324 = and i64 %i.bi, 4294967294
  %lcmp.mod321.not = icmp eq i64 %xtraiter317, 0
  %lcmp.mod323 = trunc i32 %i.c to i1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph210, %_ZL26readBitsFromReversedStreamPmPKhm.exit
  %.2209 = phi ptr [ %0, %.lr.ph210 ], [ %i.db, %_ZL26readBitsFromReversedStreamPmPKhm.exit ] ; 4 uses
  %.2114208 = phi i64 [ 0, %.lr.ph210 ], [ %i.da, %_ZL26readBitsFromReversedStreamPmPKhm.exit ]
  %.0148207 = phi i64 [ 0, %.lr.ph210 ], [ %.1149, %_ZL26readBitsFromReversedStreamPmPKhm.exit ] ; 4 uses
  switch i32 %i.c, label %.lr.ph.i [
    i32 0, label %_ZL26readBitsFromReversedStreamPmPKhm.exit
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.bk = phi i64 [ %i.cg, %.lr.ph.i ], [ %.0148207, %bb.d ] ; 4 uses
  %.078.i = phi i32 [ %i.ci, %.lr.ph.i ], [ 0, %bb.d ]
  %niter325 = phi i64 [ %niter325.next.1, %.lr.ph.i ], [ 0, %bb.d ]
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20
  %i.bo = trunc i64 %i.bk to i8
  %i.bp = and i8 %i.bo, 7
  %i.bq = xor i8 %i.bp, 7
  %i.br = lshr i8 %i.bn, %i.bq
  %i.bs = add i64 %i.bk, 1                        ; 2 uses
  %i.bt = shl i32 %.078.i, 2
  %i.bu = shl i8 %i.br, 1
  %i.bv = and i8 %i.bu, 2
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bt, %i.bw
  %i.by = lshr i64 %i.bs, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !20
  %i.cb = trunc i64 %i.bs to i8
  %i.cc = and i8 %i.cb, 7
  %i.cd = xor i8 %i.cc, 7
  %i.ce = lshr i8 %i.ca, %i.cd
  %i.cf = and i8 %i.ce, 1
  %i.cg = add i64 %i.bk, 2                        ; 2 uses
  %i.ch = zext nneg i8 %i.cf to i32
  %i.ci = or disjoint i32 %i.bx, %i.ch            ; 3 uses
  %niter325.next.1 = add nuw i64 %niter325, 2     ; 2 uses
  %niter325.ncmp.1 = icmp eq i64 %niter325.next.1, %unroll_iter324
  br i1 %niter325.ncmp.1, label %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !325

_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  br i1 %lcmp.mod321.not, label %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.d, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa
  %.epil.init320 = phi i64 [ %.0148207, %bb.d ], [ %i.cg, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.078.i.epil.init = phi i32 [ 0, %bb.d ], [ %i.ci, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod323)
  %i.cj = shl i32 %.078.i.epil.init, 1
  %i.ck = lshr i64 %.epil.init320, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !20
  %i.cn = trunc i64 %.epil.init320 to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = xor i8 %i.co, 7
  %i.cq = lshr i8 %i.cm, %i.cp
  %i.cr = and i8 %i.cq, 1
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cj, %i.cs
  br label %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit

_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit: ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.ci, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa ], [ %i.ct, %.lr.ph.i.epil.preheader ]
  %i.cu = add i64 %.0148207, %i.bi
  %i.cv = mul i32 %.lcssa, 255
  br label %_ZL26readBitsFromReversedStreamPmPKhm.exit

_ZL26readBitsFromReversedStreamPmPKhm.exit:       ; preds = %bb.d, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit
  %.1149 = phi i64 [ %.0148207, %bb.d ], [ %i.cu, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit ]
  %.07.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.cv, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit ]
  %i.cw = udiv i32 %.07.lcssa.i, %i.bh
  %i.cx = trunc i32 %i.cw to i8                   ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.2209, i64 2
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %.2209, i64 1
  store i8 %i.cx, ptr %i.cz, align 1, !tbaa !20
  store i8 %i.cx, ptr %.2209, align 1, !tbaa !20
  %i.da = add nuw i64 %.2114208, 1                ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.2209, i64 3
  %.not130 = icmp eq i64 %i.da, %1
  br i1 %.not130, label %_ZL14lodepng_memcpyPvPKvm.exit, label %bb.d, !llvm.loop !372

bb.e:                                             ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !200
  %i.de = icmp eq i32 %i.dd, 8
  %.not.i133 = icmp eq i64 %1, 0                  ; 2 uses
  br i1 %i.de, label %bb.f, label %.preheader153

.preheader153:                                    ; preds = %bb.e
  br i1 %.not.i133, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph197.preheader

.lr.ph197.preheader:                              ; preds = %.preheader153
  %xtraiter299 = and i64 %1, 1
  %i.df = icmp eq i64 %1, 1
  br i1 %i.df, label %.lr.ph197.epil.preheader, label %.lr.ph197.preheader.new

.lr.ph197.preheader.new:                          ; preds = %.lr.ph197.preheader
  %unroll_iter303 = and i64 %1, -2
  br label %.lr.ph197

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i133, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.dg = mul i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %2, i64 %i.dg, i1 false), !tbaa !20, !alias.scope !373
  br label %_ZL14lodepng_memcpyPvPKvm.exit

.lr.ph197:                                        ; preds = %.lr.ph197, %.lr.ph197.preheader.new
  %.3196 = phi ptr [ %0, %.lr.ph197.preheader.new ], [ %i.ec, %.lr.ph197 ] ; 7 uses
  %.3115195 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %i.eb, %.lr.ph197 ] ; 3 uses
  %niter304 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %niter304.next.1, %.lr.ph197 ]
  %i.dh = mul i64 %.3115195, 6
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %i.dh ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !20
  store i8 %i.dj, ptr %.3196, align 1, !tbaa !20
  %i.dk = getelementptr i8, ptr %i.di, i64 2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !20
  %i.dm = getelementptr inbounds nuw i8, ptr %.3196, i64 1
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !20
  %i.dn = getelementptr i8, ptr %i.di, i64 4
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !20
  %i.dp = getelementptr inbounds nuw i8, ptr %.3196, i64 2
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %.3196, i64 3
  %i.dr = mul i64 %.3115195, 6
  %i.ds = getelementptr i8, ptr %2, i64 %i.dr     ; 3 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 6
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !20
  store i8 %i.du, ptr %i.dq, align 1, !tbaa !20
  %i.dv = getelementptr i8, ptr %i.ds, i64 8
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %.3196, i64 4
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !20
  %i.dy = getelementptr i8, ptr %i.ds, i64 10
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !20
  %i.ea = getelementptr inbounds nuw i8, ptr %.3196, i64 5
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !20
  %i.eb = add nuw i64 %.3115195, 2                ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.3196, i64 6 ; 2 uses
  %niter304.next.1 = add nuw i64 %niter304, 2     ; 2 uses
  %niter304.ncmp.1 = icmp eq i64 %niter304.next.1, %unroll_iter303
  br i1 %niter304.ncmp.1, label %_ZL14lodepng_memcpyPvPKvm.exit.loopexit253.unr-lcssa, label %.lr.ph197, !llvm.loop !377

bb.g:                                             ; preds = %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !200 ; 5 uses
  %i.ef = icmp eq i32 %i.ee, 8
  %.not128190 = icmp eq i64 %1, 0                 ; 2 uses
  br i1 %i.ef, label %.preheader155, label %.preheader157

.preheader157:                                    ; preds = %bb.g
  br i1 %.not128190, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph189

.lr.ph189:                                        ; preds = %.preheader157
  %i.eg = zext i32 %i.ee to i64                   ; 3 uses
  %.not.i135 = icmp eq i32 %i.ee, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !201 ; 6 uses
  br i1 %.not.i135, label %_ZL26readBitsFromReversedStreamPmPKhm.exit142.us.preheader, label %.lr.ph.i136.preheader.preheader

.lr.ph.i136.preheader.preheader:                  ; preds = %.lr.ph189
  %xtraiter280 = and i64 %i.eg, 1
  %i.ej = icmp eq i32 %i.ee, 1
  %unroll_iter285 = and i64 %i.eg, 4294967294
  %lcmp.mod282.not = icmp eq i64 %xtraiter280, 0
  %lcmp.mod284 = trunc i32 %i.ee to i1
  br label %.lr.ph.i136.preheader

_ZL26readBitsFromReversedStreamPmPKhm.exit142.us.preheader: ; preds = %.lr.ph189
  %i.ek = add i64 %1, -1
  %xtraiter287 = and i64 %1, 3                    ; 3 uses
  %i.el = icmp ult i64 %i.ek, 3
  br i1 %i.el, label %_ZL26readBitsFromReversedStreamPmPKhm.exit142.us.epil.preheader, label %_ZL26readBitsFromReversedStreamPmPKhm.exit142.us.preheader.new

_ZL26readBitsFromReversedStreamPmPKhm.exit142.us.preheader.new: ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit142.us.preheader
  %unroll_iter291 = and i64 %1, -4
  br label %_ZL26readBitsFromReversedStreamPmPKhm.exit142.us

_ZL26readBitsFromReversedStreamPmPKhm.exit142.us: ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit142.us, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.us.preheader.new
  %.5188.us = phi ptr [ %0, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.us.preheader.new ], [ %i.ep, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.us ] ; 5 uses
  %niter292 = phi i64 [ 0, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.us.preheader.new ], [ %niter292.next.3, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.us ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.5188.us, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ei, i64 3, i1 false), !tbaa !20, !alias.scope !378
  %i.em = getelementptr inbounds nuw i8, ptr %.5188.us, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.em, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ei, i64 3, i1 false), !tbaa !20, !alias.scope !378
  %i.en = getelementptr inbounds nuw i8, ptr %.5188.us, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.en, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ei, i64 3, i1 false), !tbaa !20, !alias.scope !378
  %i.eo = getelementptr inbounds nuw i8, ptr %.5188.us, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.eo, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ei, i64 3, i1 false), !tbaa !20, !alias.scope !378
  %i.ep = getelementptr inbounds nuw i8, ptr %.5188.us, i64 12 ; 2 uses
  %niter292.next.3 = add nuw i64 %niter292, 4     ; 2 uses
  %niter292.ncmp.3 = icmp eq i64 %niter292.next.3, %unroll_iter291
  br i1 %niter292.ncmp.3, label %_ZL14lodepng_memcpyPvPKvm.exit.loopexit255.unr-lcssa, label %_ZL26readBitsFromReversedStreamPmPKhm.exit142.us, !llvm.loop !382

.preheader155:                                    ; preds = %bb.g
  br i1 %.not128190, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph193

.lr.ph193:                                        ; preds = %.preheader155
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !201 ; 3 uses
  %xtraiter293 = and i64 %1, 1
  %i.es = icmp eq i64 %1, 1
  br i1 %i.es, label %.epil.preheader, label %.lr.ph193.new

.lr.ph193.new:                                    ; preds = %.lr.ph193
  %unroll_iter297 = and i64 %1, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph193.new
  %.4192 = phi ptr [ %0, %.lr.ph193.new ], [ %i.fg, %bb.h ] ; 3 uses
  %.4116191 = phi i64 [ 0, %.lr.ph193.new ], [ %i.ff, %bb.h ] ; 3 uses
  %niter298 = phi i64 [ 0, %.lr.ph193.new ], [ %niter298.next.1, %bb.h ]
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 %.4116191
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !20
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ew
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.4192, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ex, i64 3, i1 false), !tbaa !20, !alias.scope !383
  %i.ey = getelementptr inbounds nuw i8, ptr %.4192, i64 3
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %.4116191
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !20
  %i.fc = zext i8 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 2
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ey, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fe, i64 3, i1 false), !tbaa !20, !alias.scope !383
  %i.ff = add nuw i64 %.4116191, 2                ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.4192, i64 6 ; 2 uses
  %niter298.next.1 = add nuw i64 %niter298, 2     ; 2 uses
  %niter298.ncmp.1 = icmp eq i64 %niter298.next.1, %unroll_iter297
  br i1 %niter298.ncmp.1, label %_ZL14lodepng_memcpyPvPKvm.exit.loopexit254.unr-lcssa, label %bb.h, !llvm.loop !387

.lr.ph.i136.preheader:                            ; preds = %.lr.ph.i136.preheader.preheader, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit
  %.5188 = phi ptr [ %i.gw, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit ], [ %0, %.lr.ph.i136.preheader.preheader ] ; 2 uses
  %.5117187 = phi i64 [ %i.gv, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit ], [ 0, %.lr.ph.i136.preheader.preheader ]
  %.0146186 = phi i64 [ %i.gr, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit ], [ 0, %.lr.ph.i136.preheader.preheader ] ; 3 uses
  br i1 %i.ej, label %.lr.ph.i136.epil.preheader, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %.lr.ph.i136.preheader, %.lr.ph.i136
  %i.fh = phi i64 [ %i.gd, %.lr.ph.i136 ], [ %.0146186, %.lr.ph.i136.preheader ] ; 4 uses
  %.078.i139 = phi i32 [ %i.gf, %.lr.ph.i136 ], [ 0, %.lr.ph.i136.preheader ]
  %niter286 = phi i64 [ %niter286.next.1, %.lr.ph.i136 ], [ 0, %.lr.ph.i136.preheader ]
  %i.fi = lshr i64 %i.fh, 3
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !20
  %i.fl = trunc i64 %i.fh to i8
  %i.fm = and i8 %i.fl, 7
  %i.fn = xor i8 %i.fm, 7
  %i.fo = lshr i8 %i.fk, %i.fn
  %i.fp = add i64 %i.fh, 1                        ; 2 uses
  %i.fq = shl i32 %.078.i139, 2
  %i.fr = shl i8 %i.fo, 1
  %i.fs = and i8 %i.fr, 2
  %i.ft = zext nneg i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fq, %i.ft
  %i.fv = lshr i64 %i.fp, 3
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !20
  %i.fy = trunc i64 %i.fp to i8
  %i.fz = and i8 %i.fy, 7
  %i.ga = xor i8 %i.fz, 7
  %i.gb = lshr i8 %i.fx, %i.ga
  %i.gc = and i8 %i.gb, 1
  %i.gd = add i64 %i.fh, 2                        ; 2 uses
  %i.ge = zext nneg i8 %i.gc to i32
  %i.gf = or disjoint i32 %i.fu, %i.ge            ; 3 uses
  %niter286.next.1 = add nuw i64 %niter286, 2     ; 2 uses
  %niter286.ncmp.1 = icmp eq i64 %niter286.next.1, %unroll_iter285
  br i1 %niter286.ncmp.1, label %_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit.unr-lcssa, label %.lr.ph.i136, !llvm.loop !325

_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit.unr-lcssa: ; preds = %.lr.ph.i136
  br i1 %lcmp.mod282.not, label %_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit, label %.lr.ph.i136.epil.preheader

.lr.ph.i136.epil.preheader:                       ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit.unr-lcssa, %.lr.ph.i136.preheader
  %.epil.init = phi i64 [ %.0146186, %.lr.ph.i136.preheader ], [ %i.gd, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit.unr-lcssa ] ; 2 uses
  %.078.i139.epil.init = phi i32 [ 0, %.lr.ph.i136.preheader ], [ %i.gf, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod284)
  %i.gg = shl i32 %.078.i139.epil.init, 1
  %i.gh = lshr i64 %.epil.init, 3
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !20
  %i.gk = trunc i64 %.epil.init to i8
  %i.gl = and i8 %i.gk, 7
  %i.gm = xor i8 %i.gl, 7
  %i.gn = lshr i8 %i.gj, %i.gm
  %i.go = and i8 %i.gn, 1
  %i.gp = zext nneg i8 %i.go to i32
  %i.gq = or disjoint i32 %i.gg, %i.gp
  br label %_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit

_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit: ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit.unr-lcssa, %.lr.ph.i136.epil.preheader
  %.lcssa257 = phi i32 [ %i.gf, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit.unr-lcssa ], [ %i.gq, %.lr.ph.i136.epil.preheader ]
  %i.gr = add i64 %.0146186, %i.eg
  %i.gs = shl i32 %.lcssa257, 2
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.gt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.5188, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gu, i64 3, i1 false), !tbaa !20, !alias.scope !378
  %i.gv = add nuw i64 %.5117187, 1                ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.5188, i64 3
  %.not127 = icmp eq i64 %i.gv, %1
  br i1 %.not127, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph.i136.preheader, !llvm.loop !382

bb.i:                                             ; preds = %bb.a
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !200
  %i.gz = icmp eq i32 %i.gy, 8
  %.not126181 = icmp eq i64 %1, 0                 ; 2 uses
  br i1 %i.gz, label %.preheader159, label %.preheader161

.preheader161:                                    ; preds = %bb.i
  br i1 %.not126181, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %.preheader161
  %i.ha = add i64 %1, -1
  %xtraiter268 = and i64 %1, 3                    ; 3 uses
  %i.hb = icmp ult i64 %i.ha, 3
  br i1 %i.hb, label %.lr.ph180.epil.preheader, label %.lr.ph180.preheader.new

.lr.ph180.preheader.new:                          ; preds = %.lr.ph180.preheader
  %unroll_iter272 = and i64 %1, -4
  br label %.lr.ph180

.preheader159:                                    ; preds = %bb.i
  br i1 %.not126181, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph184.preheader

.lr.ph184.preheader:                              ; preds = %.preheader159
  %i.hc = add i64 %1, -1
  %xtraiter274 = and i64 %1, 3                    ; 3 uses
  %i.hd = icmp ult i64 %i.hc, 3
  br i1 %i.hd, label %.lr.ph184.epil.preheader, label %.lr.ph184.preheader.new

.lr.ph184.preheader.new:                          ; preds = %.lr.ph184.preheader
  %unroll_iter278 = and i64 %1, -4
  br label %.lr.ph184

.lr.ph184:                                        ; preds = %.lr.ph184, %.lr.ph184.preheader.new
  %.6183 = phi ptr [ %0, %.lr.ph184.preheader.new ], [ %i.if, %.lr.ph184 ] ; 13 uses
  %.6118182 = phi i64 [ 0, %.lr.ph184.preheader.new ], [ %i.ie, %.lr.ph184 ] ; 5 uses
  %niter279 = phi i64 [ 0, %.lr.ph184.preheader.new ], [ %niter279.next.3, %.lr.ph184 ]
  %i.he = shl i64 %.6118182, 1
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !20  ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.6183, i64 2
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !20
  %i.hi = getelementptr inbounds nuw i8, ptr %.6183, i64 1
  store i8 %i.hg, ptr %i.hi, align 1, !tbaa !20
  store i8 %i.hg, ptr %.6183, align 1, !tbaa !20
  %i.hj = getelementptr inbounds nuw i8, ptr %.6183, i64 3
  %i.hk = shl i64 %.6118182, 1
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !20  ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.6183, i64 5
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %.6183, i64 4
  store i8 %i.hn, ptr %i.hp, align 1, !tbaa !20
  store i8 %i.hn, ptr %i.hj, align 1, !tbaa !20
  %i.hq = getelementptr inbounds nuw i8, ptr %.6183, i64 6
  %i.hr = shl i64 %.6118182, 1
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !20  ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.6183, i64 8
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !20
  %i.hw = getelementptr inbounds nuw i8, ptr %.6183, i64 7
  store i8 %i.hu, ptr %i.hw, align 1, !tbaa !20
  store i8 %i.hu, ptr %i.hq, align 1, !tbaa !20
  %i.hx = getelementptr inbounds nuw i8, ptr %.6183, i64 9
  %i.hy = shl i64 %.6118182, 1
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 6
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !20  ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.6183, i64 11
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !20
  %i.id = getelementptr inbounds nuw i8, ptr %.6183, i64 10
  store i8 %i.ib, ptr %i.id, align 1, !tbaa !20
  store i8 %i.ib, ptr %i.hx, align 1, !tbaa !20
  %i.ie = add nuw i64 %.6118182, 4                ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.6183, i64 12 ; 2 uses
  %niter279.next.3 = add nuw i64 %niter279, 4     ; 2 uses
  %niter279.ncmp.3 = icmp eq i64 %niter279.next.3, %unroll_iter278
  br i1 %niter279.ncmp.3, label %_ZL14lodepng_memcpyPvPKvm.exit.loopexit258.unr-lcssa, label %.lr.ph184, !llvm.loop !388

.lr.ph180:                                        ; preds = %.lr.ph180, %.lr.ph180.preheader.new
  %.7179 = phi ptr [ %0, %.lr.ph180.preheader.new ], [ %i.jh, %.lr.ph180 ] ; 13 uses
  %.7119178 = phi i64 [ 0, %.lr.ph180.preheader.new ], [ %i.jg, %.lr.ph180 ] ; 5 uses
  %niter273 = phi i64 [ 0, %.lr.ph180.preheader.new ], [ %niter273.next.3, %.lr.ph180 ]
  %i.ig = shl i64 %.7119178, 2
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !20  ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.7179, i64 2
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !20
  %i.ik = getelementptr inbounds nuw i8, ptr %.7179, i64 1
  store i8 %i.ii, ptr %i.ik, align 1, !tbaa !20
  store i8 %i.ii, ptr %.7179, align 1, !tbaa !20
  %i.il = getelementptr inbounds nuw i8, ptr %.7179, i64 3
  %i.im = shl i64 %.7119178, 2
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !20  ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.7179, i64 5
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !20
  %i.ir = getelementptr inbounds nuw i8, ptr %.7179, i64 4
  store i8 %i.ip, ptr %i.ir, align 1, !tbaa !20
  store i8 %i.ip, ptr %i.il, align 1, !tbaa !20
  %i.is = getelementptr inbounds nuw i8, ptr %.7179, i64 6
  %i.it = shl i64 %.7119178, 2
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !20  ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.7179, i64 8
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !20
  %i.iy = getelementptr inbounds nuw i8, ptr %.7179, i64 7
  store i8 %i.iw, ptr %i.iy, align 1, !tbaa !20
  store i8 %i.iw, ptr %i.is, align 1, !tbaa !20
  %i.iz = getelementptr inbounds nuw i8, ptr %.7179, i64 9
  %i.ja = shl i64 %.7119178, 2
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !20  ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.7179, i64 11
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !20
  %i.jf = getelementptr inbounds nuw i8, ptr %.7179, i64 10
  store i8 %i.jd, ptr %i.jf, align 1, !tbaa !20
  store i8 %i.jd, ptr %i.iz, align 1, !tbaa !20
  %i.jg = add nuw i64 %.7119178, 4                ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.7179, i64 12 ; 2 uses
  %niter273.next.3 = add nuw i64 %niter273, 4     ; 2 uses
  %niter273.ncmp.3 = icmp eq i64 %niter273.next.3, %unroll_iter272
  br i1 %niter273.ncmp.3, label %_ZL14lodepng_memcpyPvPKvm.exit.loopexit259.unr-lcssa, label %.lr.ph180, !llvm.loop !389

bb.j:                                             ; preds = %bb.a
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !200
  %i.jk = icmp eq i32 %i.jj, 8
  %.not124173 = icmp eq i64 %1, 0                 ; 2 uses
  br i1 %i.jk, label %.preheader163, label %.preheader165

.preheader165:                                    ; preds = %bb.j
  br i1 %.not124173, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader165
  %xtraiter = and i64 %1, 1
  %i.jl = icmp eq i64 %1, 1
  br i1 %i.jl, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -2
  br label %.lr.ph

.preheader163:                                    ; preds = %bb.j
  br i1 %.not124173, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph176.preheader

.lr.ph176.preheader:                              ; preds = %.preheader163
  %i.jm = add i64 %1, -1
  %xtraiter263 = and i64 %1, 3                    ; 3 uses
  %i.jn = icmp ult i64 %i.jm, 3
  br i1 %i.jn, label %.lr.ph176.epil.preheader, label %.lr.ph176.preheader.new

.lr.ph176.preheader.new:                          ; preds = %.lr.ph176.preheader
  %unroll_iter266 = and i64 %1, -4
  br label %.lr.ph176

.lr.ph176:                                        ; preds = %.lr.ph176, %.lr.ph176.preheader.new
  %.8175 = phi ptr [ %0, %.lr.ph176.preheader.new ], [ %i.kd, %.lr.ph176 ] ; 5 uses
  %.8120174 = phi i64 [ 0, %.lr.ph176.preheader.new ], [ %i.kc, %.lr.ph176 ] ; 5 uses
  %niter267 = phi i64 [ 0, %.lr.ph176.preheader.new ], [ %niter267.next.3, %.lr.ph176 ]
end_hunk_3
begin_hunk_4_@_ZL18getPixelColorsRGB8PhmPKhPK16LodePNGColorMode:bb.a
  %i.me = load i8, ptr %i.md, align 1, !tbaa !20  ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.6183.epil, i64 2
  store i8 %i.me, ptr %i.mf, align 1, !tbaa !20
  %i.mg = getelementptr inbounds nuw i8, ptr %.6183.epil, i64 1
  store i8 %i.me, ptr %i.mg, align 1, !tbaa !20
  store i8 %i.me, ptr %.6183.epil, align 1, !tbaa !20
  %i.mh = add nuw i64 %.6118182.epil, 1
  %i.mi = getelementptr inbounds nuw i8, ptr %.6183.epil, i64 3
  %epil.iter275.next = add i64 %epil.iter275, 1   ; 2 uses
  %epil.iter275.cmp.not = icmp eq i64 %epil.iter275.next, %xtraiter274
  br i1 %epil.iter275.cmp.not, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph184.epil, !llvm.loop !399

_ZL14lodepng_memcpyPvPKvm.exit.loopexit259.unr-lcssa: ; preds = %.lr.ph180
  %lcmp.mod270.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod270.not, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph180.epil.preheader

.lr.ph180.epil.preheader:                         ; preds = %_ZL14lodepng_memcpyPvPKvm.exit.loopexit259.unr-lcssa, %.lr.ph180.preheader
  %.7179.epil.init = phi ptr [ %0, %.lr.ph180.preheader ], [ %i.jh, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit259.unr-lcssa ]
  %.7119178.epil.init = phi i64 [ 0, %.lr.ph180.preheader ], [ %i.jg, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit259.unr-lcssa ]
  %lcmp.mod271 = icmp ne i64 %xtraiter268, 0
  tail call void @llvm.assume(i1 %lcmp.mod271)
  br label %.lr.ph180.epil

.lr.ph180.epil:                                   ; preds = %.lr.ph180.epil, %.lr.ph180.epil.preheader
  %.7179.epil = phi ptr [ %i.mp, %.lr.ph180.epil ], [ %.7179.epil.init, %.lr.ph180.epil.preheader ] ; 4 uses
  %.7119178.epil = phi i64 [ %i.mo, %.lr.ph180.epil ], [ %.7119178.epil.init, %.lr.ph180.epil.preheader ] ; 2 uses
  %epil.iter269 = phi i64 [ %epil.iter269.next, %.lr.ph180.epil ], [ 0, %.lr.ph180.epil.preheader ]
  %i.mj = shl i64 %.7119178.epil, 2
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !20  ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.7179.epil, i64 2
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !20
  %i.mn = getelementptr inbounds nuw i8, ptr %.7179.epil, i64 1
  store i8 %i.ml, ptr %i.mn, align 1, !tbaa !20
  store i8 %i.ml, ptr %.7179.epil, align 1, !tbaa !20
  %i.mo = add nuw i64 %.7119178.epil, 1
  %i.mp = getelementptr inbounds nuw i8, ptr %.7179.epil, i64 3
  %epil.iter269.next = add i64 %epil.iter269, 1   ; 2 uses
  %epil.iter269.cmp.not = icmp eq i64 %epil.iter269.next, %xtraiter268
  br i1 %epil.iter269.cmp.not, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph180.epil, !llvm.loop !400

_ZL14lodepng_memcpyPvPKvm.exit.loopexit260.unr-lcssa: ; preds = %.lr.ph176
  %lcmp.mod264.not = icmp eq i64 %xtraiter263, 0
  br i1 %lcmp.mod264.not, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph176.epil.preheader

.lr.ph176.epil.preheader:                         ; preds = %_ZL14lodepng_memcpyPvPKvm.exit.loopexit260.unr-lcssa, %.lr.ph176.preheader
  %.8175.epil.init = phi ptr [ %0, %.lr.ph176.preheader ], [ %i.kd, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit260.unr-lcssa ]
  %.8120174.epil.init = phi i64 [ 0, %.lr.ph176.preheader ], [ %i.kc, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit260.unr-lcssa ]
  %lcmp.mod265 = icmp ne i64 %xtraiter263, 0
  tail call void @llvm.assume(i1 %lcmp.mod265)
  br label %.lr.ph176.epil

.lr.ph176.epil:                                   ; preds = %.lr.ph176.epil, %.lr.ph176.epil.preheader
  %.8175.epil = phi ptr [ %i.mt, %.lr.ph176.epil ], [ %.8175.epil.init, %.lr.ph176.epil.preheader ] ; 2 uses
  %.8120174.epil = phi i64 [ %i.ms, %.lr.ph176.epil ], [ %.8120174.epil.init, %.lr.ph176.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph176.epil ], [ 0, %.lr.ph176.epil.preheader ]
  %i.mq = shl i64 %.8120174.epil, 2
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 %i.mq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.8175.epil, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.mr, i64 3, i1 false), !tbaa !20, !alias.scope !390
  %i.ms = add nuw i64 %.8120174.epil, 1
  %i.mt = getelementptr inbounds nuw i8, ptr %.8175.epil, i64 3
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter263
  br i1 %epil.iter.cmp.not, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph176.epil, !llvm.loop !401

_ZL14lodepng_memcpyPvPKvm.exit.loopexit261.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZL14lodepng_memcpyPvPKvm.exit.loopexit261.unr-lcssa, %.lr.ph.preheader
  %.9172.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.kz, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit261.unr-lcssa ] ; 3 uses
  %.9121171.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ky, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit261.unr-lcssa ]
  %lcmp.mod262 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod262)
  %i.mu = shl i64 %.9121171.epil.init, 3
  %i.mv = getelementptr inbounds nuw i8, ptr %2, i64 %i.mu ; 3 uses
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !20
  store i8 %i.mw, ptr %.9172.epil.init, align 1, !tbaa !20
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 2
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !20
  %i.mz = getelementptr inbounds nuw i8, ptr %.9172.epil.init, i64 1
  store i8 %i.my, ptr %i.mz, align 1, !tbaa !20
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !20
  %i.nc = getelementptr inbounds nuw i8, ptr %.9172.epil.init, i64 2
  store i8 %i.nb, ptr %i.nc, align 1, !tbaa !20
  br label %_ZL14lodepng_memcpyPvPKvm.exit

_ZL14lodepng_memcpyPvPKvm.exit:                   ; preds = %.lr.ph.epil.preheader, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit261.unr-lcssa, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit260.unr-lcssa, %.lr.ph176.epil, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit259.unr-lcssa, %.lr.ph180.epil, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit258.unr-lcssa, %.lr.ph184.epil, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.loopexit, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit255.unr-lcssa, %_ZL26readBitsFromReversedStreamPmPKhm.exit142.us.epil, %.epil.preheader, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit254.unr-lcssa, %.lr.ph197.epil.preheader, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit253.unr-lcssa, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit252.unr-lcssa, %.lr.ph201.epil, %_ZL14lodepng_memcpyPvPKvm.exit.loopexit251.unr-lcssa, %.lr.ph205.epil, %_ZL26readBitsFromReversedStreamPmPKhm.exit, %.preheader165, %.preheader163, %.preheader161, %.preheader159, %.preheader157, %.preheader155, %.preheader153, %.preheader151, %.preheader, %bb.c, %.lr.ph.preheader.i, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL18getPixelColorRGBA8PhS_S_S_PKhmPK16LodePNGColorMode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %6, align 8, !tbaa !197
  switch i32 %i.a, label %bb.ab [
    i32 0, label %bb.b
    i32 2, label %bb.j
    i32 3, label %bb.s
    i32 4, label %bb.v
    i32 6, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !200  ; 6 uses
  switch i32 %i.c, label %bb.g [
    i32 8, label %bb.c
    i32 16, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 %5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20    ; 4 uses
  store i8 %i.e, ptr %2, align 1, !tbaa !20
  store i8 %i.e, ptr %1, align 1, !tbaa !20
  store i8 %i.e, ptr %0, align 1, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !213
  %.not156 = icmp eq i32 %i.g, 0
  br i1 %.not156, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext i8 %i.e to i32
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !296
  %i.k = icmp eq i32 %i.j, %i.h
  br i1 %i.k, label %.sink.split, label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.l = shl i64 %5, 1
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %i.l ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !20    ; 3 uses
  store i8 %i.n, ptr %2, align 1, !tbaa !20
  store i8 %i.n, ptr %1, align 1, !tbaa !20
  store i8 %i.n, ptr %0, align 1, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !213
  %.not155 = icmp eq i32 %i.p, 0
  br i1 %.not155, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.m, align 1, !tbaa !20
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.s, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !296
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %.sink.split, label %bb.i

bb.g:                                             ; preds = %bb.b
  %notmask = shl nsw i32 -1, %i.c
  %i.aa = xor i32 %notmask, -1
  %i.ab = zext i32 %i.c to i64                    ; 3 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZL26readBitsFromReversedStreamPmPKhm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ac = mul i64 %5, %i.ab                       ; 2 uses
  %xtraiter174 = and i64 %i.ab, 1
  %i.ad = icmp eq i32 %i.c, 1
  br i1 %i.ad, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter180 = and i64 %i.ab, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %i.ae = phi i64 [ %i.ac, %.lr.ph.i.preheader.new ], [ %i.ba, %.lr.ph.i ] ; 4 uses
  %.078.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.bc, %.lr.ph.i ]
  %niter181 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter181.next.1, %.lr.ph.i ]
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20
  %i.ai = trunc i64 %i.ae to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = xor i8 %i.aj, 7
  %i.al = lshr i8 %i.ah, %i.ak
  %i.am = add i64 %i.ae, 1                        ; 2 uses
  %i.an = shl i32 %.078.i, 2
  %i.ao = shl i8 %i.al, 1
  %i.ap = and i8 %i.ao, 2
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq
  %i.as = lshr i64 %i.am, 3
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20
  %i.av = trunc i64 %i.am to i8
  %i.aw = and i8 %i.av, 7
  %i.ax = xor i8 %i.aw, 7
  %i.ay = lshr i8 %i.au, %i.ax
  %i.az = and i8 %i.ay, 1
  %i.ba = add i64 %i.ae, 2                        ; 2 uses
  %i.bb = zext nneg i8 %i.az to i32
  %i.bc = or disjoint i32 %i.ar, %i.bb            ; 3 uses
  %niter181.next.1 = add nuw i64 %niter181, 2     ; 2 uses
  %niter181.ncmp.1 = icmp eq i64 %niter181.next.1, %unroll_iter180
  br i1 %niter181.ncmp.1, label %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !325

_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod177.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod177.not, label %_ZL26readBitsFromReversedStreamPmPKhm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init176 = phi i64 [ %i.ac, %.lr.ph.i.preheader ], [ %i.ba, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.078.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bc, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa ]
  %lcmp.mod179 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.bd = shl i32 %.078.i.epil.init, 1
  %i.be = lshr i64 %.epil.init176, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20
  %i.bh = trunc i64 %.epil.init176 to i8
  %i.bi = and i8 %i.bh, 7
  %i.bj = xor i8 %i.bi, 7
  %i.bk = lshr i8 %i.bg, %i.bj
  %i.bl = and i8 %i.bk, 1
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bd, %i.bm
  br label %_ZL26readBitsFromReversedStreamPmPKhm.exit

_ZL26readBitsFromReversedStreamPmPKhm.exit:       ; preds = %.lr.ph.i.epil.preheader, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa, %bb.g
  %.07.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.bc, %_ZL26readBitsFromReversedStreamPmPKhm.exit.loopexit.unr-lcssa ], [ %i.bn, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.bo = mul i32 %.07.lcssa.i, 255
  %i.bp = udiv i32 %i.bo, %i.aa
  %i.bq = trunc i32 %i.bp to i8                   ; 3 uses
  store i8 %i.bq, ptr %2, align 1, !tbaa !20
  store i8 %i.bq, ptr %1, align 1, !tbaa !20
  store i8 %i.bq, ptr %0, align 1, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !213
  %.not154 = icmp eq i32 %i.bs, 0
  br i1 %.not154, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !296
  %i.bv = icmp eq i32 %.07.lcssa.i, %i.bu
  br i1 %i.bv, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.k, %bb.l, %bb.m, %bb.n, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %_ZL26readBitsFromReversedStreamPmPKhm.exit
  br label %.sink.split

bb.j:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !200
  %i.by = icmp eq i32 %i.bx, 8
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  br i1 %i.by, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ca = mul i64 %5, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 %i.ca ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !20
  store i8 %i.cc, ptr %0, align 1, !tbaa !20
  %i.cd = getelementptr i8, ptr %i.cb, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !20
  store i8 %i.ce, ptr %1, align 1, !tbaa !20
  %i.cf = getelementptr i8, ptr %i.cb, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !20  ; 2 uses
  store i8 %i.cg, ptr %2, align 1, !tbaa !20
  %i.ch = load i32, ptr %i.bz, align 8, !tbaa !213
  %.not153 = icmp eq i32 %i.ch, 0
  br i1 %.not153, label %bb.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = load i8, ptr %0, align 1, !tbaa !20
  %i.cj = zext i8 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !296
  %i.cm = icmp eq i32 %i.cl, %i.cj
  br i1 %i.cm, label %bb.m, label %bb.i

bb.m:                                             ; preds = %bb.l
  %i.cn = load i8, ptr %1, align 1, !tbaa !20
  %i.co = zext i8 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !297
  %i.cr = icmp eq i32 %i.cq, %i.co
  br i1 %i.cr, label %bb.n, label %bb.i

bb.n:                                             ; preds = %bb.m
  %i.cs = zext i8 %i.cg to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !298
  %i.cv = icmp eq i32 %i.cu, %i.cs
  br i1 %i.cv, label %.sink.split, label %bb.i

bb.o:                                             ; preds = %bb.j
  %i.cw = mul i64 %5, 6
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 %i.cw ; 7 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !20
  store i8 %i.cy, ptr %0, align 1, !tbaa !20
  %i.cz = getelementptr i8, ptr %i.cx, i64 2      ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !20
  store i8 %i.da, ptr %1, align 1, !tbaa !20
  %i.db = getelementptr i8, ptr %i.cx, i64 4
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !20  ; 2 uses
  store i8 %i.dc, ptr %2, align 1, !tbaa !20
  %i.dd = load i32, ptr %i.bz, align 8, !tbaa !213
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %bb.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = load i8, ptr %i.cx, align 1, !tbaa !20
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !20
  %i.dj = zext i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dg, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !296
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.q, label %bb.i

bb.q:                                             ; preds = %bb.p
  %i.do = load i8, ptr %i.cz, align 1, !tbaa !20
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 8
  %i.dr = getelementptr i8, ptr %i.cx, i64 3
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !20
  %i.dt = zext i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dq, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !297
  %i.dx = icmp eq i32 %i.du, %i.dw
  br i1 %i.dx, label %bb.r, label %bb.i

bb.r:                                             ; preds = %bb.q
  %i.dy = zext i8 %i.dc to i32
  %i.dz = shl nuw nsw i32 %i.dy, 8
  %i.ea = getelementptr i8, ptr %i.cx, i64 5
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !20
  %i.ec = zext i8 %i.eb to i32
  %i.ed = or disjoint i32 %i.dz, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !298
  %i.eg = icmp eq i32 %i.ed, %i.ef
  br i1 %i.eg, label %.sink.split, label %bb.i

bb.s:                                             ; preds = %bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !200 ; 5 uses
  %i.ej = icmp eq i32 %i.ei, 8
  br i1 %i.ej, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 %5
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !20
  %i.em = zext i8 %i.el to i32
  br label %_ZL26readBitsFromReversedStreamPmPKhm.exit164

bb.u:                                             ; preds = %bb.s
  %i.en = zext i32 %i.ei to i64                   ; 3 uses
  %.not.i157 = icmp eq i32 %i.ei, 0
  br i1 %.not.i157, label %_ZL26readBitsFromReversedStreamPmPKhm.exit164, label %.lr.ph.i158.preheader

.lr.ph.i158.preheader:                            ; preds = %bb.u
  %i.eo = mul i64 %5, %i.en                       ; 2 uses
  %xtraiter = and i64 %i.en, 1
  %i.ep = icmp eq i32 %i.ei, 1
  br i1 %i.ep, label %.lr.ph.i158.epil.preheader, label %.lr.ph.i158.preheader.new

.lr.ph.i158.preheader.new:                        ; preds = %.lr.ph.i158.preheader
  %unroll_iter = and i64 %i.en, 4294967294
  br label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %.lr.ph.i158, %.lr.ph.i158.preheader.new
  %i.eq = phi i64 [ %i.eo, %.lr.ph.i158.preheader.new ], [ %i.fm, %.lr.ph.i158 ] ; 4 uses
  %.078.i161 = phi i32 [ 0, %.lr.ph.i158.preheader.new ], [ %i.fo, %.lr.ph.i158 ]
  %niter = phi i64 [ 0, %.lr.ph.i158.preheader.new ], [ %niter.next.1, %.lr.ph.i158 ]
  %i.er = lshr i64 %i.eq, 3
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !20
  %i.eu = trunc i64 %i.eq to i8
  %i.ev = and i8 %i.eu, 7
  %i.ew = xor i8 %i.ev, 7
  %i.ex = lshr i8 %i.et, %i.ew
  %i.ey = add i64 %i.eq, 1                        ; 2 uses
  %i.ez = shl i32 %.078.i161, 2
  %i.fa = shl i8 %i.ex, 1
  %i.fb = and i8 %i.fa, 2
  %i.fc = zext nneg i8 %i.fb to i32
  %i.fd = or disjoint i32 %i.ez, %i.fc
  %i.fe = lshr i64 %i.ey, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !20
  %i.fh = trunc i64 %i.ey to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = xor i8 %i.fi, 7
  %i.fk = lshr i8 %i.fg, %i.fj
  %i.fl = and i8 %i.fk, 1
  %i.fm = add i64 %i.eq, 2                        ; 2 uses
  %i.fn = zext nneg i8 %i.fl to i32
  %i.fo = or disjoint i32 %i.fd, %i.fn            ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL26readBitsFromReversedStreamPmPKhm.exit164.loopexit.unr-lcssa, label %.lr.ph.i158, !llvm.loop !325

_ZL26readBitsFromReversedStreamPmPKhm.exit164.loopexit.unr-lcssa: ; preds = %.lr.ph.i158
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL26readBitsFromReversedStreamPmPKhm.exit164, label %.lr.ph.i158.epil.preheader

.lr.ph.i158.epil.preheader:                       ; preds = %_ZL26readBitsFromReversedStreamPmPKhm.exit164.loopexit.unr-lcssa, %.lr.ph.i158.preheader
  %.epil.init = phi i64 [ %i.eo, %.lr.ph.i158.preheader ], [ %i.fm, %_ZL26readBitsFromReversedStreamPmPKhm.exit164.loopexit.unr-lcssa ] ; 2 uses
  %.078.i161.epil.init = phi i32 [ 0, %.lr.ph.i158.preheader ], [ %i.fo, %_ZL26readBitsFromReversedStreamPmPKhm.exit164.loopexit.unr-lcssa ]
  %lcmp.mod173 = trunc i32 %i.ei to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.fp = shl i32 %.078.i161.epil.init, 1
  %i.fq = lshr i64 %.epil.init, 3
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !20
  %i.ft = trunc i64 %.epil.init to i8
  %i.fu = and i8 %i.ft, 7
  %i.fv = xor i8 %i.fu, 7
  %i.fw = lshr i8 %i.fs, %i.fv
  %i.fx = and i8 %i.fw, 1
  %i.fy = zext nneg i8 %i.fx to i32
  %i.fz = or disjoint i32 %i.fp, %i.fy
  br label %_ZL26readBitsFromReversedStreamPmPKhm.exit164

_ZL26readBitsFromReversedStreamPmPKhm.exit164:    ; preds = %.lr.ph.i158.epil.preheader, %_ZL26readBitsFromReversedStreamPmPKhm.exit164.loopexit.unr-lcssa, %bb.u, %bb.t
  %.0 = phi i32 [ %i.em, %bb.t ], [ 0, %bb.u ], [ %i.fo, %_ZL26readBitsFromReversedStreamPmPKhm.exit164.loopexit.unr-lcssa ], [ %i.fz, %.lr.ph.i158.epil.preheader ]
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !201
  %i.gc = shl i32 %.0, 2                          ; 4 uses
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !20
  store i8 %i.gf, ptr %0, align 1, !tbaa !20
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !201
  %i.gh = or disjoint i32 %i.gc, 1
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !20
  store i8 %i.gk, ptr %1, align 1, !tbaa !20
  %i.gl = load ptr, ptr %i.ga, align 8, !tbaa !201
  %i.gm = or disjoint i32 %i.gc, 2
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !20
  store i8 %i.gp, ptr %2, align 1, !tbaa !20
  %i.gq = load ptr, ptr %i.ga, align 8, !tbaa !201
  %i.gr = or disjoint i32 %i.gc, 3
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !20
  br label %.sink.split

bb.v:                                             ; preds = %bb.a
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !200
  %i.gx = icmp eq i32 %i.gw, 8
  br i1 %i.gx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gy = shl i64 %5, 1
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 %i.gy ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !20  ; 3 uses
  store i8 %i.ha, ptr %2, align 1, !tbaa !20
  store i8 %i.ha, ptr %1, align 1, !tbaa !20
  store i8 %i.ha, ptr %0, align 1, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !20
  br label %.sink.split

bb.x:                                             ; preds = %bb.v
  %i.hd = shl i64 %5, 2
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 %i.hd ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !20  ; 3 uses
  store i8 %i.hf, ptr %2, align 1, !tbaa !20
  store i8 %i.hf, ptr %1, align 1, !tbaa !20
  store i8 %i.hf, ptr %0, align 1, !tbaa !20
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !20
  br label %.sink.split

bb.y:                                             ; preds = %bb.a
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !200
  %i.hk = icmp eq i32 %i.hj, 8
  br i1 %i.hk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hl = shl i64 %5, 2
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 %i.hl ; 4 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !20
  store i8 %i.hn, ptr %0, align 1, !tbaa !20
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !20
  store i8 %i.hp, ptr %1, align 1, !tbaa !20
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !20
  store i8 %i.hr, ptr %2, align 1, !tbaa !20
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 3
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !20
  br label %.sink.split

bb.aa:                                            ; preds = %bb.y
  %i.hu = shl i64 %5, 3
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 %i.hu ; 4 uses
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !20
  store i8 %i.hw, ptr %0, align 1, !tbaa !20
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !20
  store i8 %i.hy, ptr %1, align 1, !tbaa !20
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !20
  store i8 %i.ia, ptr %2, align 1, !tbaa !20
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 6
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.n, %bb.i, %bb.h, %bb.f, %bb.d, %_ZL26readBitsFromReversedStreamPmPKhm.exit164, %bb.aa, %bb.z, %bb.w, %bb.x
  %.sink = phi i8 [ 0, %bb.n ], [ 0, %bb.d ], [ 0, %bb.h ], [ -1, %bb.i ], [ %i.hh, %bb.x ], [ %i.hc, %bb.w ], [ %i.ht, %bb.z ], [ %i.ic, %bb.aa ], [ %i.gu, %_ZL26readBitsFromReversedStreamPmPKhm.exit164 ], [ 0, %bb.r ], [ 0, %bb.f ]
  store i8 %.sink, ptr %3, align 1, !tbaa !20
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL18color_tree_cleanupP9ColorTree(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !365    ; 2 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL18color_tree_cleanupP9ColorTree(ptr noundef %i.a)
  %i.b = load ptr, ptr %0, align 8, !tbaa !365
  tail call void @free(ptr noundef %i.b) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !365  ; 2 uses
  %.not8.1 = icmp eq ptr %i.d, null
  br i1 %.not8.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL18color_tree_cleanupP9ColorTree(ptr noundef %i.d)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !365
  tail call void @free(ptr noundef %i.e) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !365  ; 2 uses
  %.not8.2 = icmp eq ptr %i.g, null
  br i1 %.not8.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZL18color_tree_cleanupP9ColorTree(ptr noundef %i.g)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !365
  tail call void @free(ptr noundef %i.h) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !365  ; 2 uses
  %.not8.3 = icmp eq ptr %i.j, null
  br i1 %.not8.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZL18color_tree_cleanupP9ColorTree(ptr noundef %i.j)
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !365
  tail call void @free(ptr noundef %i.k) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !365  ; 2 uses
  %.not8.4 = icmp eq ptr %i.m, null
  br i1 %.not8.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZL18color_tree_cleanupP9ColorTree(ptr noundef %i.m)
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !365
  tail call void @free(ptr noundef %i.n) #31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !365  ; 2 uses
  %.not8.5 = icmp eq ptr %i.p, null
  br i1 %.not8.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_ZL18color_tree_cleanupP9ColorTree(ptr noundef %i.p)
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !365
  tail call void @free(ptr noundef %i.q) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
end_hunk_4
begin_hunk_5_@_Z27lodepng_compute_color_statsP17LodePNGColorStatsPKhjjPK16LodePNGColorMode:bb.a
  %i.bx = add nuw i64 %.1348, 1                   ; 2 uses
  %.not262 = icmp eq i64 %i.bx, %i.o
  br i1 %.not262, label %.thread314, label %.lr.ph349, !llvm.loop !415

.thread314:                                       ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.thread

.lr.ph349:                                        ; preds = %bb.h, %bb.i
  %.1348 = phi i64 [ %i.bx, %bb.i ], [ 0, %bb.h ] ; 2 uses
  call fastcc void @_ZL19getPixelColorRGBA16PtS_S_S_PKhmPK16LodePNGColorMode(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %1, i64 noundef %.1348, ptr noundef nonnull %4)
  %i.by = load i16, ptr %i.a, align 2, !tbaa !94
  %i.bz = zext i16 %i.by to i32                   ; 2 uses
  %i.ca = and i32 %i.bz, 255
  %i.cb = lshr i32 %i.bz, 8
  %.not263 = icmp eq i32 %i.ca, %i.cb
  br i1 %.not263, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph349
  %i.cc = load i16, ptr %i.b, align 2, !tbaa !94
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %i.ce = and i32 %i.cd, 255
  %i.cf = lshr i32 %i.cd, 8
  %.not264 = icmp eq i32 %i.ce, %i.cf
  br i1 %.not264, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cg = load i16, ptr %i.c, align 2, !tbaa !94
  %i.ch = zext i16 %i.cg to i32                   ; 2 uses
  %i.ci = and i32 %i.ch, 255
  %i.cj = lshr i32 %i.ch, 8
  %.not265 = icmp eq i32 %i.ci, %i.cj
  br i1 %.not265, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ck = load i16, ptr %i.d, align 2, !tbaa !94
  %i.cl = zext i16 %i.ck to i32                   ; 2 uses
  %i.cm = and i32 %i.cl, 255
  %i.cn = lshr i32 %i.cl, 8
  %.not266 = icmp eq i32 %i.cm, %i.cn
  br i1 %.not266, label %bb.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph349
  store i32 16, ptr %i.aj, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i16 0, ptr %i.e, align 2, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i16 0, ptr %i.f, align 2, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store i16 0, ptr %i.g, align 2, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  store i16 0, ptr %i.h, align 2, !tbaa !94
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread320
  %.2352 = phi i64 [ 0, %bb.m ], [ %i.dp, %.thread320 ] ; 2 uses
  %.1224351 = phi i32 [ %.0223, %bb.m ], [ %.3226325, %.thread320 ]
  %.1232350 = phi i32 [ %.0231, %bb.m ], [ %.2233, %.thread320 ]
  call fastcc void @_ZL19getPixelColorRGBA16PtS_S_S_PKhmPK16LodePNGColorMode(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %1, i64 noundef %.2352, ptr noundef nonnull %4)
  %.not287 = icmp eq i32 %.1232350, 0
  br i1 %.not287, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cs = load i16, ptr %i.e, align 2, !tbaa !94  ; 2 uses
  %i.ct = load i16, ptr %i.f, align 2, !tbaa !94
  %.not288 = icmp eq i16 %i.cs, %i.ct
  %i.cu = load i16, ptr %i.g, align 2
  %.not289 = icmp eq i16 %i.cs, %i.cu
  %or.cond = select i1 %.not288, i1 %.not289, i1 false
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %0, align 8, !tbaa !413
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.cv = phi i1 [ true, %bb.n ], [ true, %bb.p ], [ false, %bb.o ]
  %.2233 = phi i32 [ 1, %bb.n ], [ 1, %bb.p ], [ 0, %bb.o ]
  %.not290 = icmp eq i32 %.1224351, 0
  br i1 %.not290, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.cw = load i16, ptr %i.e, align 2, !tbaa !94  ; 2 uses
  %i.cx = load i16, ptr %i.co, align 8, !tbaa !416
  %i.cy = icmp eq i16 %i.cw, %i.cx
  br i1 %i.cy, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cz = load i16, ptr %i.f, align 2, !tbaa !94
  %i.da = load i16, ptr %i.cp, align 2, !tbaa !417
  %i.db = icmp eq i16 %i.cz, %i.da
  br i1 %i.db, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dc = load i16, ptr %i.g, align 2, !tbaa !94
  %i.dd = load i16, ptr %i.cq, align 4, !tbaa !418
  %i.de = icmp eq i16 %i.dc, %i.dd
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.df = phi i1 [ false, %bb.s ], [ false, %bb.r ], [ %i.de, %bb.t ] ; 2 uses
  %i.dg = load i16, ptr %i.h, align 2, !tbaa !94
  switch i16 %i.dg, label %.sink.split [
    i16 -1, label %bb.y
    i16 0, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.dh = load i32, ptr %i.cr, align 4, !tbaa !419 ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  %or.cond3 = select i1 %i.di, i1 true, i1 %i.df
  br i1 %or.cond3, label %bb.w, label %.sink.split

bb.w:                                             ; preds = %bb.v
  %i.dj = load i32, ptr %i.az, align 8, !tbaa !403
  %i.dk = or i32 %i.dj, %i.dh
  %brmerge.not = icmp eq i32 %i.dk, 0
  br i1 %brmerge.not, label %bb.x, label %.thread320

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %i.cr, align 4, !tbaa !419
  store i16 %i.cw, ptr %i.co, align 8, !tbaa !416
  %i.dl = load i16, ptr %i.f, align 2, !tbaa !94
  store i16 %i.dl, ptr %i.cp, align 2, !tbaa !417
  %i.dm = load i16, ptr %i.g, align 2, !tbaa !94
  store i16 %i.dm, ptr %i.cq, align 4, !tbaa !418
  br label %.thread320

bb.y:                                             ; preds = %bb.u
  %i.dn = load i32, ptr %i.cr, align 4, !tbaa !419
  %i.do = icmp ne i32 %i.dn, 0
  %or.cond5 = select i1 %i.do, i1 %i.df, i1 false
  br i1 %or.cond5, label %.sink.split, label %.thread320

.sink.split:                                      ; preds = %bb.y, %bb.v, %bb.u
  store i32 1, ptr %i.az, align 8, !tbaa !403
  store i32 0, ptr %i.cr, align 4, !tbaa !419
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.q
  br i1 %i.cv, label %bb.aa, label %.thread320

.thread320:                                       ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %.3226325 = phi i32 [ 1, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ]
  %i.dp = add i64 %.2352, 1                       ; 2 uses
  %.not286 = icmp eq i64 %i.dp, %i.o
  br i1 %.not286, label %bb.aa, label %bb.n, !llvm.loop !420

bb.aa:                                            ; preds = %bb.z, %.thread320
  %i.dq = load i32, ptr %i.cr, align 4, !tbaa !419
  %.not295 = icmp eq i32 %i.dq, 0
  br i1 %.not295, label %.loopexit341, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = load i32, ptr %i.az, align 8, !tbaa !403
  %.not296 = icmp eq i32 %i.dr, 0
  br i1 %.not296, label %.preheader340, label %.loopexit341

.preheader340:                                    ; preds = %bb.ab, %bb.ag
  %.3353 = phi i64 [ %i.ec, %bb.ag ], [ 0, %bb.ab ] ; 2 uses
  call fastcc void @_ZL19getPixelColorRGBA16PtS_S_S_PKhmPK16LodePNGColorMode(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %1, i64 noundef %.3353, ptr noundef nonnull %4)
  %i.ds = load i16, ptr %i.h, align 2, !tbaa !94
  %.not298 = icmp eq i16 %i.ds, 0
  br i1 %.not298, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %.preheader340
  %i.dt = load i16, ptr %i.e, align 2, !tbaa !94
  %i.du = load i16, ptr %i.co, align 8, !tbaa !416
  %i.dv = icmp eq i16 %i.dt, %i.du
  br i1 %i.dv, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dw = load i16, ptr %i.f, align 2, !tbaa !94
  %i.dx = load i16, ptr %i.cp, align 2, !tbaa !417
  %i.dy = icmp eq i16 %i.dw, %i.dx
  br i1 %i.dy, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.dz = load i16, ptr %i.g, align 2, !tbaa !94
  %i.ea = load i16, ptr %i.cq, align 4, !tbaa !418
  %i.eb = icmp eq i16 %i.dz, %i.ea
  br i1 %i.eb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 1, ptr %i.az, align 8, !tbaa !403
  store i32 0, ptr %i.cr, align 4, !tbaa !419
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader340, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %i.ec = add nuw i64 %.3353, 1                   ; 2 uses
  %.not297 = icmp eq i64 %i.ec, %i.o
  br i1 %.not297, label %.loopexit341, label %.preheader340, !llvm.loop !421

.loopexit341:                                     ; preds = %bb.ag, %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %.loopexit344

.thread:                                          ; preds = %.loopexit343, %.thread314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  store i8 0, ptr %i.i, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31
  store i8 0, ptr %i.k, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  store i8 0, ptr %i.l, align 1, !tbaa !20
  %.not268354 = icmp eq i64 %i.o, 0               ; 2 uses
  br i1 %.not268354, label %._crit_edge, label %.lr.ph364

.lr.ph364:                                        ; preds = %.thread
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph364, %.thread329
  %i.ei = phi i32 [ %i.bv, %.lr.ph364 ], [ %i.gq, %.thread329 ] ; 4 uses
  %.4363 = phi i64 [ 0, %.lr.ph364 ], [ %i.gr, %.thread329 ] ; 3 uses
  %.0199362 = phi i8 [ 0, %.lr.ph364 ], [ %.1200, %.thread329 ] ; 2 uses
  %.0201361 = phi i8 [ 0, %.lr.ph364 ], [ %.1202, %.thread329 ] ; 2 uses
  %.0203360 = phi i8 [ 0, %.lr.ph364 ], [ %.1204, %.thread329 ] ; 2 uses
  %.0205359 = phi i8 [ 0, %.lr.ph364 ], [ %.1206, %.thread329 ] ; 2 uses
  %.3215358 = phi i32 [ %.0212, %.lr.ph364 ], [ %.4216, %.thread329 ] ; 2 uses
  %.5222357 = phi i32 [ %.2219, %.lr.ph364 ], [ %.7, %.thread329 ] ; 2 uses
  %.4227356 = phi i32 [ %.0223, %.lr.ph364 ], [ %.7230, %.thread329 ] ; 2 uses
  %.3234355 = phi i32 [ %.0231, %.lr.ph364 ], [ %.5236, %.thread329 ] ; 2 uses
  call fastcc void @_ZL18getPixelColorRGBA8PhS_S_S_PKhmPK16LodePNGColorMode(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %1, i64 noundef %.4363, ptr noundef nonnull %4)
  %.not269 = icmp ne i64 %.4363, 0
  %i.ej = load i8, ptr %i.i, align 1              ; 12 uses
  %i.ek = icmp eq i8 %i.ej, %.0205359
  %or.cond301 = select i1 %.not269, i1 %i.ek, i1 false
  %i.el = load i8, ptr %i.j, align 1              ; 9 uses
  %i.em = icmp eq i8 %i.el, %.0203360
  %or.cond303 = select i1 %or.cond301, i1 %i.em, i1 false
  %i.en = load i8, ptr %i.k, align 1              ; 9 uses
  %i.eo = icmp eq i8 %i.en, %.0201361
  %or.cond305 = select i1 %or.cond303, i1 %i.eo, i1 false
  %i.ep = load i8, ptr %i.l, align 1              ; 7 uses
  %i.eq = icmp eq i8 %i.ep, %.0199362
  %or.cond307 = select i1 %or.cond305, i1 %i.eq, i1 false
  br i1 %or.cond307, label %.thread329, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not270 = icmp eq i32 %.3215358, 0
  %.pr.pre = load i32, ptr %i.aj, align 8, !tbaa !406 ; 4 uses
  %i.er = icmp ult i32 %.pr.pre, 8
  %or.cond392 = select i1 %.not270, i1 %i.er, i1 false
  br i1 %or.cond392, label %bb.aj, label %thread-pre-split

bb.aj:                                            ; preds = %bb.ai
  %i.es = add i8 %i.ej, 1
  %or.cond.i = icmp ult i8 %i.es, 2
  br i1 %or.cond.i, label %_ZL20getValueRequiredBitsh.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = urem i8 %i.ej, 17
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %bb.al, label %_ZL20getValueRequiredBitsh.exit

bb.al:                                            ; preds = %bb.ak
  %i.ev = urem i8 %i.ej, 85
  %i.ew = icmp eq i8 %i.ev, 0
  %i.ex = select i1 %i.ew, i32 2, i32 4
  br label %_ZL20getValueRequiredBitsh.exit

_ZL20getValueRequiredBitsh.exit:                  ; preds = %bb.aj, %bb.ak, %bb.al
  %.0.i = phi i32 [ 1, %bb.aj ], [ %i.ex, %bb.al ], [ 8, %bb.ak ] ; 3 uses
  %i.ey = icmp samesign ugt i32 %.0.i, %.pr.pre
  br i1 %i.ey, label %bb.am, label %thread-pre-split

bb.am:                                            ; preds = %_ZL20getValueRequiredBitsh.exit
  store i32 %.0.i, ptr %i.aj, align 8, !tbaa !406
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZL20getValueRequiredBitsh.exit, %bb.ai, %bb.am
  %i.ez = phi i32 [ %.pr.pre, %_ZL20getValueRequiredBitsh.exit ], [ %.0.i, %bb.am ], [ %.pr.pre, %bb.ai ] ; 5 uses
  %i.fa = icmp uge i32 %i.ez, %.0.i.i.i           ; 2 uses
  %i.fb = zext i1 %i.fa to i32                    ; 2 uses
  %.not271 = icmp eq i32 %.3234355, 0
  br i1 %.not271, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %thread-pre-split
  %.not272 = icmp eq i8 %i.ej, %i.el
  %.not273 = icmp eq i8 %i.ej, %i.en
  %or.cond308 = select i1 %.not272, i1 %.not273, i1 false
  br i1 %or.cond308, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 1, ptr %0, align 8, !tbaa !413
  %i.fc = icmp ult i32 %i.ez, 8
  br i1 %i.fc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 8, ptr %i.aj, align 8, !tbaa !406
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ao, %bb.ap, %thread-pre-split
  %i.fd = phi i32 [ %i.ez, %thread-pre-split ], [ 8, %bb.ap ], [ %i.ez, %bb.ao ], [ %i.ez, %bb.an ] ; 2 uses
  %i.fe = phi i1 [ true, %thread-pre-split ], [ true, %bb.ap ], [ true, %bb.ao ], [ false, %bb.an ]
  %.4235 = phi i32 [ 1, %thread-pre-split ], [ 1, %bb.ap ], [ 1, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %.not274 = icmp eq i32 %.4227356, 0
  br i1 %.not274, label %bb.ar, label %.thread328

bb.ar:                                            ; preds = %bb.aq
  %i.ff = load i16, ptr %i.ed, align 8, !tbaa !416
  %i.fg = zext i8 %i.ej to i16                    ; 2 uses
  %i.fh = icmp eq i16 %i.ff, %i.fg
  br i1 %i.fh, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.fi = load i16, ptr %i.ee, align 2, !tbaa !417
  %i.fj = zext i8 %i.el to i16
  %i.fk = icmp eq i16 %i.fi, %i.fj
  br i1 %i.fk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fl = load i16, ptr %i.ef, align 4, !tbaa !418
  %i.fm = zext i8 %i.en to i16
  %i.fn = icmp eq i16 %i.fl, %i.fm
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.fo = phi i1 [ false, %bb.as ], [ false, %bb.ar ], [ %i.fn, %bb.at ] ; 2 uses
  switch i8 %i.ep, label %bb.aw [
    i8 -1, label %bb.ba
    i8 0, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  %i.fp = load i32, ptr %i.eg, align 4, !tbaa !419 ; 2 uses
  %i.fq = icmp eq i32 %i.fp, 0
  %or.cond13 = select i1 %i.fq, i1 true, i1 %i.fo
  br i1 %or.cond13, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  store i32 1, ptr %i.az, align 8, !tbaa !403
  store i32 0, ptr %i.eg, align 4, !tbaa !419
  %i.fr = icmp ult i32 %i.fd, 8
  br i1 %i.fr, label %bb.ax, label %.thread328

bb.ax:                                            ; preds = %bb.aw
  store i32 8, ptr %i.aj, align 8, !tbaa !406
  br label %.thread328

bb.ay:                                            ; preds = %bb.av
  %i.fs = load i32, ptr %i.az, align 8, !tbaa !403
  %i.ft = or i32 %i.fs, %i.fp
  %brmerge394.not = icmp eq i32 %i.ft, 0
  br i1 %brmerge394.not, label %bb.az, label %.thread328

bb.az:                                            ; preds = %bb.ay
  store i32 1, ptr %i.eg, align 4, !tbaa !419
  store i16 %i.fg, ptr %i.ed, align 8, !tbaa !416
  %i.fu = zext i8 %i.el to i16
  store i16 %i.fu, ptr %i.ee, align 2, !tbaa !417
  %i.fv = zext i8 %i.en to i16
  store i16 %i.fv, ptr %i.ef, align 4, !tbaa !418
  br label %.thread328

bb.ba:                                            ; preds = %bb.au
  %i.fw = load i32, ptr %i.eg, align 4, !tbaa !419
  %i.fx = icmp ne i32 %i.fw, 0
  %or.cond15 = select i1 %i.fx, i1 %i.fo, i1 false
  br i1 %or.cond15, label %bb.bb, label %.thread328

bb.bb:                                            ; preds = %bb.ba
  store i32 1, ptr %i.az, align 8, !tbaa !403
  store i32 0, ptr %i.eg, align 4, !tbaa !419
  %i.fy = icmp ult i32 %i.fd, 8
  br i1 %i.fy, label %bb.bc, label %.thread328

bb.bc:                                            ; preds = %bb.bb
  store i32 8, ptr %i.aj, align 8, !tbaa !406
  br label %.thread328

.thread328:                                       ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ba, %bb.bc, %bb.bb, %bb.az, %bb.aq
  %i.fz = phi i1 [ true, %bb.aq ], [ true, %bb.ax ], [ true, %bb.aw ], [ true, %bb.bc ], [ true, %bb.bb ], [ false, %bb.ba ], [ false, %bb.az ], [ false, %bb.ay ]
  %.6229 = phi i32 [ 1, %bb.aq ], [ 1, %bb.ax ], [ 1, %bb.aw ], [ 1, %bb.bc ], [ 1, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.az ], [ 0, %bb.ay ] ; 2 uses
  %.not279 = icmp eq i32 %.5222357, 0
  br i1 %.not279, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %.thread328
  %i.ga = call fastcc noundef i32 @_ZL14color_tree_getP9ColorTreehhhh(ptr noundef nonnull readonly %5, i8 noundef zeroext %i.ej, i8 noundef zeroext %i.el, i8 noundef zeroext %i.en, i8 noundef zeroext %i.ep)
  %i.gb = icmp slt i32 %i.ga, 0
  br i1 %i.gb, label %bb.be, label %.thread329
end_hunk_5
begin_hunk_6_@_ZL18checkColorValidity16LodePNGColorTypej:bb.a
  %i.b = icmp eq i32 %i.a, 1
  %i.c = and i32 %1, 31
  %switch = icmp ne i32 %i.c, 0
  %or.cond = and i1 %i.b, %switch
  br i1 %or.cond, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = add i32 %1, -8
  %switch.and = and i32 %i.d, -9
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %i.e = select i1 %switch.selectcmp, i32 0, i32 37
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.g = icmp eq i32 %i.f, 1
  %i.h = and i32 %1, 15
  %switch41 = icmp ne i32 %i.h, 0
  %or.cond42 = and i1 %i.g, %switch41
  br i1 %or.cond42, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.i = add i32 %1, -8
  %switch.and37 = and i32 %i.i, -9
  %switch.selectcmp38 = icmp eq i32 %switch.and37, 0
  %i.j = select i1 %switch.selectcmp38, i32 0, i32 37
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.k = add i32 %1, -8
  %switch.and39 = and i32 %i.k, -9
  %switch.selectcmp40 = icmp eq i32 %switch.and39, 0
  %i.l = select i1 %switch.selectcmp40, i32 0, i32 37
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.b
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g
  %.0 = phi i32 [ 37, %bb.d ], [ 0, %bb.g ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ 37, %bb.b ], [ %i.e, %bb.c ], [ 31, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z21lodepng_inspect_chunkP12LodePNGStatemPKhm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 42 uses
  %i.b = add i64 %1, 4
  %i.c = icmp ugt i64 %i.b, %3
  br i1 %i.c, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !20
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw i32 %i.e, 24                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !20
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.j, %i.q
  %i.s = or disjoint i32 %i.r, %i.n
  %i.t = or disjoint i32 %i.s, %i.f               ; 22 uses
  %i.u = icmp slt i32 %i.f, 0
  br i1 %i.u, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 23 uses
  %i.w = add nuw i32 %i.t, 12
  %i.x = zext i32 %i.w to i64
  %i.y = sub i64 %3, %1
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !20
  switch i8 %i.ab, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread [
    i8 80, label %bb.e
    i8 116, label %bb.h
    i8 98, label %bb.q
  ]

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !20
  %i.ae = icmp eq i8 %i.ad, 76
  br i1 %i.ae, label %bb.f, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = icmp eq i8 %i.ag, 84
  br i1 %i.ah, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit:         ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !20
  %.not = icmp eq i8 %i.aj, 69
  br i1 %.not, label %bb.g, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

bb.g:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.al = zext nneg i32 %i.t to i64
  %i.am = tail call fastcc noundef i32 @_ZL14readChunk_PLTEP16LodePNGColorModePKhm(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.v, i64 noundef %i.al)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.h:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !20
  %i.ap = icmp eq i8 %i.ao, 82
  br i1 %i.ap, label %bb.i, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !20
  %i.as = icmp eq i8 %i.ar, 78
  br i1 %i.as, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit112, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit112:      ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20
  %.not133 = icmp eq i8 %i.au, 83
  br i1 %.not133, label %bb.j, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

bb.j:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit112
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !197
  switch i32 %i.aw, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread [
    i32 3, label %bb.k
    i32 0, label %bb.m
    i32 2, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.ax = zext nneg i32 %i.t to i64               ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !206
  %i.ba = icmp ult i64 %i.az, %i.ax
  br i1 %i.ba, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %.not3536.i = icmp eq i32 %i.t, 0
  br i1 %.not3536.i, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %xtraiter = and i64 %i.ax, 3                    ; 3 uses
  %i.bc = icmp ult i32 %i.t, 4
  br i1 %i.bc, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ax, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.l ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !20
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !201
  %i.bg = shl nuw nsw i64 %indvars.iv.i, 2
  %i.bh = and i64 %i.bg, 4294967280
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  store i8 %i.be, ptr %i.bj, align 1, !tbaa !20
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !20
  %i.bm = load ptr, ptr %i.bb, align 8, !tbaa !201
  %i.bn = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.bo = and i64 %i.bn, 4294967284
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 3
  store i8 %i.bl, ptr %i.bq, align 1, !tbaa !20
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.i.1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !20
  %i.bt = load ptr, ptr %i.bb, align 8, !tbaa !201
  %i.bu = shl nuw nsw i64 %indvars.iv.next.i.1, 2
  %i.bv = and i64 %i.bu, 4294967288
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  store i8 %i.bs, ptr %i.bx, align 1, !tbaa !20
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.i.2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !20
  %i.ca = load ptr, ptr %i.bb, align 8, !tbaa !201
  %i.cb = shl nuw nsw i64 %indvars.iv.next.i.2, 2
  %i.cc = and i64 %i.cb, 4294967292
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 %i.bz, ptr %i.ce, align 1, !tbaa !20
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138.loopexit.unr-lcssa, label %bb.l, !llvm.loop !432

bb.m:                                             ; preds = %bb.j
  %.not34.i = icmp eq i32 %i.t, 2
  br i1 %.not34.i, label %bb.n, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 1, ptr %i.cf, align 8, !tbaa !213
  %i.cg = load i8, ptr %i.v, align 1, !tbaa !20
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !20
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.ci, %i.cl            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !298
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %i.cm, ptr %i.co, align 8, !tbaa !297
  br label %.loopexit.sink.split.i

bb.o:                                             ; preds = %bb.j
  %.not.i113 = icmp eq i32 %i.t, 6
  br i1 %.not.i113, label %bb.p, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 1, ptr %i.cp, align 8, !tbaa !213
  %i.cq = load i8, ptr %i.v, align 1, !tbaa !20
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !20
  %i.cv = zext i8 %i.cu to i32
  %i.cw = or disjoint i32 %i.cs, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !296
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !20
  %i.da = zext i8 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !20
  %i.de = zext i8 %i.dd to i32
  %i.df = or disjoint i32 %i.db, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !297
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !20
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !20
  %i.dn = zext i8 %i.dm to i32
  %i.do = or disjoint i32 %i.dk, %i.dn
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.p, %bb.n
  %.sink40.i = phi i64 [ 36, %bb.p ], [ 28, %bb.n ]
  %.sink.i = phi i32 [ %i.do, %bb.p ], [ %i.cm, %bb.n ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sink40.i
  store i32 %.sink.i, ptr %i.dp, align 4, !tbaa !13
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138

bb.q:                                             ; preds = %bb.d
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !20
  %i.ds = icmp eq i8 %i.dr, 75
  br i1 %i.ds, label %bb.r, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

bb.r:                                             ; preds = %bb.q
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !20
  %i.dv = icmp eq i8 %i.du, 71
  br i1 %i.dv, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit117:      ; preds = %bb.r
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !20
  %.not134 = icmp eq i8 %i.dx, 68
  br i1 %.not134, label %bb.s, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

bb.s:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit117
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dz = zext nneg i32 %i.t to i64
  %i.ea = tail call fastcc noundef i32 @_ZL14readChunk_bKGDP11LodePNGInfoPKhm(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.v, i64 noundef %i.dz)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread: ; preds = %bb.d, %bb.e, %bb.f, %_Z25lodepng_chunk_type_equalsPKhPKc.exit, %bb.h, %bb.i, %_Z25lodepng_chunk_type_equalsPKhPKc.exit112, %bb.q, %bb.r, %_Z25lodepng_chunk_type_equalsPKhPKc.exit117
  %i.eb = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7)
  %.not93 = icmp eq i8 %i.eb, 0
  br i1 %.not93, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ed = zext nneg i32 %i.t to i64
  %i.ee = tail call fastcc noundef i32 @_ZL14readChunk_tEXtP11LodePNGInfoPKhm(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.v, i64 noundef %i.ed)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.u:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread
  %i.ef = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8)
  %.not94 = icmp eq i8 %i.ef, 0
  br i1 %.not94, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.eh = zext nneg i32 %i.t to i64
  %i.ei = tail call fastcc noundef i32 @_ZL14readChunk_zTXtP11LodePNGInfoPK22LodePNGDecoderSettingsPKhm(ptr noundef nonnull %i.eg, ptr noundef %0, ptr noundef nonnull %i.v, i64 noundef %i.eh)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.w:                                             ; preds = %bb.u
  %i.ej = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.9)
  %.not95 = icmp eq i8 %i.ej, 0
  br i1 %.not95, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.el = zext nneg i32 %i.t to i64
  %i.em = tail call fastcc noundef i32 @_ZL14readChunk_iTXtP11LodePNGInfoPK22LodePNGDecoderSettingsPKhm(ptr noundef nonnull %i.ek, ptr noundef %0, ptr noundef nonnull %i.v, i64 noundef %i.el)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.y:                                             ; preds = %bb.w
  %i.en = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.10)
  %.not96 = icmp eq i8 %i.en, 0
  br i1 %.not96, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ep = zext nneg i32 %i.t to i64
  %i.eq = tail call fastcc noundef i32 @_ZL14readChunk_tIMEP11LodePNGInfoPKhm(ptr noundef nonnull %i.eo, ptr noundef nonnull %i.v, i64 noundef %i.ep)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.aa:                                            ; preds = %bb.y
  %i.er = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.11)
  %.not97 = icmp eq i8 %i.er, 0
  br i1 %.not97, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.et = zext nneg i32 %i.t to i64
  %i.eu = tail call fastcc noundef i32 @_ZL14readChunk_pHYsP11LodePNGInfoPKhm(ptr noundef nonnull %i.es, ptr noundef nonnull %i.v, i64 noundef %i.et)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ev = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.12)
  %.not98 = icmp eq i8 %i.ev, 0
  br i1 %.not98, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i118 = icmp eq i32 %i.t, 4
  br i1 %.not.i118, label %bb.ae, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 1, ptr %i.ew, align 8, !tbaa !274
  %i.ex = load i8, ptr %i.v, align 1, !tbaa !20
  %i.ey = zext i8 %i.ex to i32
  %i.ez = shl nuw i32 %i.ey, 24
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !20
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 16
  %i.fe = or disjoint i32 %i.fd, %i.ez
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !20
  %i.fh = zext i8 %i.fg to i32
  %i.fi = shl nuw nsw i32 %i.fh, 8
  %i.fj = or disjoint i32 %i.fe, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !20
  %i.fm = zext i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fj, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !433
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138

bb.af:                                            ; preds = %bb.ac
  %i.fp = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.13)
  %.not99 = icmp eq i8 %i.fp, 0
  br i1 %.not99, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fr = zext nneg i32 %i.t to i64
  %i.fs = tail call fastcc noundef i32 @_ZL14readChunk_cHRMP11LodePNGInfoPKhm(ptr noundef nonnull %i.fq, ptr noundef nonnull %i.v, i64 noundef %i.fr)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.ah:                                            ; preds = %bb.af
  %i.ft = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14)
  %.not100 = icmp eq i8 %i.ft, 0
  br i1 %.not100, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i120 = icmp eq i32 %i.t, 1
  br i1 %.not.i120, label %bb.aj, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 452
end_hunk_6
begin_hunk_7_@_ZL14readChunk_cHRMP11LodePNGInfoPKhm:bb.a
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !494
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !20
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw i32 %i.ca, 24
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !20
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 16
  %i.cg = or disjoint i32 %i.cf, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !20
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 8
  %i.cl = or disjoint i32 %i.cg, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !20
  %i.co = zext i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !495
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !20
  %i.ct = zext i8 %i.cs to i32
  %i.cu = shl nuw i32 %i.ct, 24
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !20
  %i.cx = zext i8 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 16
  %i.cz = or disjoint i32 %i.cy, %i.cu
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.db = load i8, ptr %i.da, align 1, !tbaa !20
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 8
  %i.de = or disjoint i32 %i.cz, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !20
  %i.dh = zext i8 %i.dg to i32
  %i.di = or disjoint i32 %i.de, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !496
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !20
  %i.dm = zext i8 %i.dl to i32
  %i.dn = shl nuw i32 %i.dm, 24
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !20
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 16
  %i.ds = or disjoint i32 %i.dr, %i.dn
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !20
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 8
  %i.dx = or disjoint i32 %i.ds, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !20
  %i.ea = zext i8 %i.dz to i32
  %i.eb = or disjoint i32 %i.dx, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !497
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !20
  %i.ef = zext i8 %i.ee to i32
  %i.eg = shl nuw i32 %i.ef, 24
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !20
  %i.ej = zext i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 16
  %i.el = or disjoint i32 %i.ek, %i.eg
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.en = load i8, ptr %i.em, align 1, !tbaa !20
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 8
  %i.eq = or disjoint i32 %i.el, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.es = load i8, ptr %i.er, align 1, !tbaa !20
  %i.et = zext i8 %i.es to i32
  %i.eu = or disjoint i32 %i.eq, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %i.eu, ptr %i.ev, align 8, !tbaa !498
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 97, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL14readChunk_iCCPP11LodePNGInfoPK22LodePNGDecoderSettingsPKhm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef range(i64 0, 2147483648) %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.ucvector, align 8           ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %struct.LodePNGDecompressSettings, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !456
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !251
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !252
  tail call void @free(ptr noundef %i.e) #31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !253
  tail call void @free(ptr noundef %i.g) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not98 = icmp eq i64 %3, 0
  br i1 %.not98, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.h = trunc nuw nsw i64 %3 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.i = phi i64 [ %i.m, %bb.d ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.090 = phi i32 [ %i.l, %bb.d ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
  %.not53 = icmp eq i8 %i.k, 0
  br i1 %.not53, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.l = add nuw nsw i32 %.090, 1                 ; 4 uses
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = icmp samesign ult i32 %i.l, %i.h
  br i1 %i.n, label %.lr.ph, label %.critedge, !llvm.loop !499

.critedge:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %bb.d ], [ %.090, %.lr.ph ] ; 5 uses
  %.lcssa = phi i64 [ 0, %bb.c ], [ %i.m, %bb.d ], [ %i.i, %.lr.ph ]
  %i.o = add i32 %.0.lcssa, 2                     ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.not54 = icmp samesign ugt i64 %3, %i.p
  br i1 %.not54, label %bb.e, label %.thread85

bb.e:                                             ; preds = %.critedge
  %i.q = add i32 %.0.lcssa, -80
  %or.cond = icmp ult i32 %i.q, -79
  br i1 %or.cond, label %.thread85, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nuw nsw i32 %.0.lcssa, 1
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef %i.s) #30 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !252
  %.not55 = icmp eq ptr %i.t, null
  br i1 %.not55, label %.thread85, label %.lr.ph97.preheader

.lr.ph97.preheader:                               ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.lcssa
  store i8 0, ptr %i.v, align 1, !tbaa !20
  %i.w = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.x = add nsw i32 %.0.lcssa, -1
  %i.y = icmp ult i32 %i.x, 3
  br i1 %i.y, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader.new

.lr.ph97.preheader.new:                           ; preds = %.lr.ph97.preheader
  %unroll_iter = and i64 %i.w, 124
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97, %.lr.ph97.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph97.preheader.new ], [ %indvars.iv.next.3, %.lr.ph97 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph97.preheader.new ], [ %niter.next.3, %.lr.ph97 ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !252
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !20
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !252
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.next
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !20
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !252
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next.1
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !20
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !252
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next.2
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !20
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph97, !llvm.loop !500

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph97
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph97.epil.preheader

.lr.ph97.epil.preheader:                          ; preds = %._crit_edge.unr-lcssa, %.lr.ph97.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph97.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph97.epil

.lr.ph97.epil:                                    ; preds = %.lr.ph97.epil, %.lr.ph97.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph97.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph97.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph97.epil.preheader ], [ %epil.iter.next, %.lr.ph97.epil ]
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.epil
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !252
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.epil
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !20
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph97.epil, !llvm.loop !501

._crit_edge:                                      ; preds = %.lr.ph97.epil, %._crit_edge.unr-lcssa
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.s
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20
  %.not57 = icmp eq i8 %i.au, 0
  br i1 %.not57, label %bb.g, label %.thread85

bb.g:                                             ; preds = %._crit_edge
  %i.av = trunc nuw nsw i64 %3 to i32
  %i.aw = sub nsw i32 %i.av, %i.o
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !502
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.bc = zext i32 %i.aw to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !464 ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = call noundef i32 %i.be(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bb, i64 noundef %i.bc, ptr noundef nonnull %5), !inline_history !465
  %.not27.i = icmp eq i32 %i.bf, 0
  br i1 %.not27.i, label %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit.thread67, label %.thread78

_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit.thread67: ; preds = %bb.h
  %i.bg = load i64, ptr %i.a, align 8
  br label %.thread

.thread78:                                        ; preds = %bb.h
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !76
  %i.bi = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, %i.bh
  %spec.select65 = select i1 %i.bj, i32 113, i32 110
  %i.bk = trunc i64 %i.bi to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !262
  br label %.thread85

_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.bm = load ptr, ptr %i.ba, align 8, !tbaa !10
  store ptr %i.bm, ptr %4, align 8, !tbaa !63, !alias.scope !503
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  %i.bo = call fastcc noundef i32 @_ZL24lodepng_zlib_decompressvP8ucvectorPKhmPK25LodePNGDecompressSettings(ptr noundef %4, ptr noundef nonnull %i.bb, i64 noundef %i.bc, ptr noundef nonnull %5) ; 2 uses
  %i.bp = load ptr, ptr %4, align 8, !tbaa !63
  store ptr %i.bp, ptr %i.ba, align 8, !tbaa !10
  %i.bq = load i64, ptr %i.bn, align 8, !tbaa !68 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %.not58 = icmp eq i32 %i.bo, 0
  br i1 %.not58, label %.thread, label %bb.i

.thread:                                          ; preds = %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit.thread67, %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit
  %.ph = phi i64 [ %i.bg, %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit.thread67 ], [ %i.bq, %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit ]
  %i.br = trunc i64 %.ph to i32                   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !262
  %.not6074 = icmp eq i32 %i.br, 0
  br i1 %.not6074, label %.thread85, label %.thread87

bb.i:                                             ; preds = %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit
  %i.bt = load i64, ptr %i.az, align 8
  %i.bu = icmp ugt i64 %i.bq, %i.bt
  %spec.select = select i1 %i.bu, i32 113, i32 %i.bo
  %i.bv = trunc i64 %i.bq to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !262
  br label %.thread85

.thread87:                                        ; preds = %.thread
  store i32 1, ptr %i.b, align 4, !tbaa !251
  br label %.thread85

.thread85:                                        ; preds = %bb.i, %.thread, %.thread78, %.thread87, %._crit_edge, %bb.f, %bb.e, %.critedge
  %.046 = phi i32 [ 89, %bb.e ], [ 75, %.critedge ], [ 83, %bb.f ], [ 72, %._crit_edge ], [ 123, %.thread ], [ 0, %.thread87 ], [ %spec.select, %bb.i ], [ %spec.select65, %.thread78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.046
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 120) i32 @_ZL14readChunk_mDCVP11LodePNGInfoPKhm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 0, 2147483648) %2) unnamed_addr #8 {
bb.a:
  %.not = icmp eq i64 %2, 24
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 1, ptr %i.a, align 8, !tbaa !506
  %i.b = load i8, ptr %1, align 1, !tbaa !20
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 %i.h, ptr %i.i, align 4, !tbaa !507
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !20
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %i.q, ptr %i.r, align 8, !tbaa !508
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !20
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !20
  %i.y = zext i8 %i.x to i32
  %i.z = or disjoint i32 %i.v, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !509
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !510
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !20
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !20
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !511
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20
  %i.az = zext i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !512
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !20
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !20
  %i.bi = zext i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !513
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !20
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !514
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw i32 %i.bw, 24
end_hunk_7
begin_hunk_8_@_Z14lodepng_decodePPhPjS1_P12LodePNGStatePKhm:bb.a
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !529
  %.not333.i = icmp eq i32 %i.cq, 0
  br i1 %.not333.i, label %.thread.i.sink.split, label %.critedge.i

bb.k:                                             ; preds = %bb.i
  %i.cr = load i8, ptr %i.cl, align 1, !tbaa !20  ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 16
  %i.cu = load i8, ptr %i.cm, align 1, !tbaa !20  ; 2 uses
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = load i8, ptr %i.cn, align 1, !tbaa !20  ; 2 uses
  %i.cy = zext i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.ct, %i.cy
  %i.da = or disjoint i32 %i.cz, %i.cw
  %i.db = or disjoint i32 %i.da, %i.ck            ; 11 uses
  %i.dc = zext nneg i32 %i.db to i64              ; 18 uses
  %i.dd = add i64 %i.ce, %i.dc                    ; 2 uses
  %i.de = icmp ugt i64 %i.dd, %5
  %i.df = icmp ult i64 %i.dd, %i.cc
  %or.cond345.i = or i1 %i.de, %i.df
  br i1 %or.cond345.i, label %.thread.i.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 8 ; 28 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 4 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !20  ; 2 uses
  switch i8 %i.di, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread [
    i8 73, label %bb.m
    i8 80, label %bb.r
    i8 116, label %bb.u
    i8 98, label %bb.ac
  ]

bb.m:                                             ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 5
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !20
  switch i8 %i.dk, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread [
    i8 68, label %bb.n
    i8 69, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 6
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !20
  %i.dn = icmp eq i8 %i.dm, 65
  br i1 %i.dn, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.i, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit.i:       ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 7
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !20
  %.not447.i = icmp eq i8 %i.dp, 84
  br i1 %.not447.i, label %bb.o, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.o:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit.i
  %i.dq = add i64 %.0265468.i, %i.dc              ; 4 uses
  %.not448.i = icmp ult i64 %i.dq, %.0265468.i
  %i.dr = icmp ugt i64 %i.dq, %5
  %or.cond606.i = or i1 %.not448.i, %i.dr
  br i1 %or.cond606.i, label %.thread.i.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i349.i = icmp eq i32 %i.db, 0
  br i1 %.not.i349.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0265468.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr nonnull readonly align 1 %i.dg, i64 %i.dc, i1 false), !tbaa !20, !alias.scope !530
  br label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i

bb.q:                                             ; preds = %bb.m
  %i.dt = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 6
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !20
  %i.dv = icmp eq i8 %i.du, 78
  br i1 %i.dv, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit353.i, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit353.i:    ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 7
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !20
  %.not449.i = icmp eq i8 %i.dx, 68
  br i1 %.not449.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.r:                                             ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 5
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !20
  %i.dy = icmp eq i8 %.pre, 76
  br i1 %i.dy, label %bb.s, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.dz = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 6
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !20
  %i.eb = icmp eq i8 %i.ea, 84
  br i1 %i.eb, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit72, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit72:       ; preds = %bb.s
  %i.ec = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 7
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !20
  %.not97 = icmp eq i8 %i.ed, 69
  br i1 %.not97, label %bb.t, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.t:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit72
  %i.ee = tail call fastcc noundef i32 @_ZL14readChunk_PLTEP16LodePNGColorModePKhm(ptr noundef nonnull %i.r, ptr noundef nonnull %i.dg, i64 noundef %i.dc) ; 2 uses
  store i32 %i.ee, ptr %i.n, align 8, !tbaa !424
  %.not329.i = icmp eq i32 %i.ee, 0
  br i1 %.not329.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.thread.i

bb.u:                                             ; preds = %bb.l
  %.phi.trans.insert131 = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 5
  %.pre132 = load i8, ptr %.phi.trans.insert131, align 1, !tbaa !20
  %i.ef = icmp eq i8 %.pre132, 82
  br i1 %i.ef, label %bb.v, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 6
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !20
  %i.ei = icmp eq i8 %i.eh, 78
  br i1 %i.ei, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit68, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit68:       ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 7
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !20
  %.not98 = icmp eq i8 %i.ek, 83
  br i1 %.not98, label %bb.w, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.w:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit68
  %i.el = load i32, ptr %i.r, align 8, !tbaa !197
  switch i32 %i.el, label %.thread.i.sink.split [
    i32 3, label %bb.x
    i32 0, label %bb.y
    i32 2, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.em = load i64, ptr %i.bv, align 8, !tbaa !206
  %i.en = icmp ult i64 %i.em, %i.dc
  br i1 %i.en, label %.thread.i.sink.split, label %.preheader.i63

.preheader.i63:                                   ; preds = %bb.x
  %.not3536.i = icmp eq i32 %i.db, 0
  br i1 %.not3536.i, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit, label %.lr.ph.i64.preheader

.lr.ph.i64.preheader:                             ; preds = %.preheader.i63
  %i.eo = zext i8 %i.ci to i64
  %i.ep = shl nuw nsw i64 %i.eo, 24
  %i.eq = add nsw i64 %i.ep, -1
  %i.er = zext i8 %i.cr to i64
  %i.es = shl nuw nsw i64 %i.er, 16
  %i.et = add nsw i64 %i.eq, %i.es
  %i.eu = zext i8 %i.cu to i64
  %i.ev = shl nuw nsw i64 %i.eu, 8
  %i.ew = add nsw i64 %i.et, %i.ev
  %i.ex = zext i8 %i.cx to i64
  %i.ey = add nsw i64 %i.ew, %i.ex
  %xtraiter = and i64 %i.dc, 3                    ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 3
  br i1 %i.ez, label %.lr.ph.i64.epil.preheader, label %.lr.ph.i64.preheader.new

.lr.ph.i64.preheader.new:                         ; preds = %.lr.ph.i64.preheader
  %unroll_iter = and i64 %i.dc, 2147483644
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %.lr.ph.i64, %.lr.ph.i64.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i64.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i64 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i64.preheader.new ], [ %niter.next.3, %.lr.ph.i64 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.i
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !20
  %i.fc = load ptr, ptr %i.ca, align 8, !tbaa !201
  %i.fd = shl nuw nsw i64 %indvars.iv.i, 2
  %i.fe = and i64 %i.fd, 4294967280
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 3
  store i8 %i.fb, ptr %i.fg, align 1, !tbaa !20
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !20
  %i.fj = load ptr, ptr %i.ca, align 8, !tbaa !201
  %i.fk = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.fl = and i64 %i.fk, 4294967284
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  store i8 %i.fi, ptr %i.fn, align 1, !tbaa !20
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next.i.1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !20
  %i.fq = load ptr, ptr %i.ca, align 8, !tbaa !201
  %i.fr = shl nuw nsw i64 %indvars.iv.next.i.1, 2
  %i.fs = and i64 %i.fr, 4294967288
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 3
  store i8 %i.fp, ptr %i.fu, align 1, !tbaa !20
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next.i.2
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !20
  %i.fx = load ptr, ptr %i.ca, align 8, !tbaa !201
  %i.fy = shl nuw nsw i64 %indvars.iv.next.i.2, 2
  %i.fz = and i64 %i.fy, 4294967292
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 3
  store i8 %i.fw, ptr %i.gb, align 1, !tbaa !20
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.loopexit.unr-lcssa, label %.lr.ph.i64, !llvm.loop !432

bb.y:                                             ; preds = %bb.w
  %.not34.i62 = icmp eq i32 %i.db, 2
  br i1 %.not34.i62, label %bb.z, label %.thread.i.sink.split

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %i.bw, align 8, !tbaa !213
  %i.gc = load i8, ptr %i.dg, align 1, !tbaa !20
  %i.gd = zext i8 %i.gc to i32
  %i.ge = shl nuw nsw i32 %i.gd, 8
  %i.gf = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 9
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !20
  %i.gh = zext i8 %i.gg to i32
  %i.gi = or disjoint i32 %i.ge, %i.gh            ; 3 uses
  store i32 %i.gi, ptr %i.bz, align 4, !tbaa !298
  store i32 %i.gi, ptr %i.by, align 8, !tbaa !297
  br label %.loopexit.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %.not.i60 = icmp eq i32 %i.db, 6
  br i1 %.not.i60, label %bb.ab, label %.thread.i.sink.split

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr %i.bw, align 8, !tbaa !213
  %i.gj = load i8, ptr %i.dg, align 1, !tbaa !20
  %i.gk = zext i8 %i.gj to i32
  %i.gl = shl nuw nsw i32 %i.gk, 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 9
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !20
  %i.go = zext i8 %i.gn to i32
  %i.gp = or disjoint i32 %i.gl, %i.go
  store i32 %i.gp, ptr %i.bx, align 4, !tbaa !296
  %i.gq = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 10
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !20
  %i.gs = zext i8 %i.gr to i32
  %i.gt = shl nuw nsw i32 %i.gs, 8
  %i.gu = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 11
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !20
  %i.gw = zext i8 %i.gv to i32
  %i.gx = or disjoint i32 %i.gt, %i.gw
  store i32 %i.gx, ptr %i.by, align 8, !tbaa !297
  %i.gy = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 12
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !20
  %i.ha = zext i8 %i.gz to i32
  %i.hb = shl nuw nsw i32 %i.ha, 8
  %i.hc = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 13
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !20
  %i.he = zext i8 %i.hd to i32
  %i.hf = or disjoint i32 %i.hb, %i.he
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.ab, %bb.z
  %.sink40.i = phi i64 [ 36, %bb.ab ], [ 28, %bb.z ]
  %.sink.i61 = phi i32 [ %i.hf, %bb.ab ], [ %i.gi, %bb.z ]
  %i.hg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sink40.i
  store i32 %.sink.i61, ptr %i.hg, align 4, !tbaa !13
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i64
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit, label %.lr.ph.i64.epil.preheader

.lr.ph.i64.epil.preheader:                        ; preds = %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.loopexit.unr-lcssa, %.lr.ph.i64.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i64.preheader ], [ %indvars.iv.next.i.3, %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.loopexit.unr-lcssa ]
  %lcmp.mod416 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod416)
  br label %.lr.ph.i64.epil

.lr.ph.i64.epil:                                  ; preds = %.lr.ph.i64.epil, %.lr.ph.i64.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i64.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i64.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i64.epil ], [ 0, %.lr.ph.i64.epil.preheader ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.i.epil
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !20
  %i.hj = load ptr, ptr %i.ca, align 8, !tbaa !201
  %i.hk = shl nuw nsw i64 %indvars.iv.i.epil, 2
  %i.hl = and i64 %i.hk, 4294967292
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 3
  store i8 %i.hi, ptr %i.hn, align 1, !tbaa !20
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit, label %.lr.ph.i64.epil, !llvm.loop !534

_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit:  ; preds = %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.loopexit.unr-lcssa, %.lr.ph.i64.epil, %.preheader.i63, %.loopexit.sink.split.i
  store i32 0, ptr %i.n, align 8, !tbaa !424
  br label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i

bb.ac:                                            ; preds = %bb.l
  %.phi.trans.insert134 = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 5
  %.pre135 = load i8, ptr %.phi.trans.insert134, align 1, !tbaa !20
  %i.ho = icmp eq i8 %.pre135, 75
  br i1 %i.ho, label %bb.ad, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.hp = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 6
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !20
  %i.hr = icmp eq i8 %i.hq, 71
  br i1 %i.hr, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit:         ; preds = %bb.ad
  %i.hs = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 7
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !20
  %.not99 = icmp eq i8 %i.ht, 68
  br i1 %.not99, label %bb.ae, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.ae:                                            ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit
  %i.hu = load i32, ptr %i.r, align 8, !tbaa !430
  switch i32 %i.hu, label %_ZL14readChunk_bKGDP11LodePNGInfoPKhm.exit [
    i32 3, label %bb.af
    i32 0, label %bb.ai
    i32 4, label %bb.ai
    i32 2, label %bb.ak
    i32 6, label %bb.ak
  ]

bb.af:                                            ; preds = %bb.ae
  %.not33.i = icmp eq i32 %i.db, 1
  br i1 %.not33.i, label %bb.ag, label %.thread.i.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.hv = load i8, ptr %i.dg, align 1, !tbaa !20
  %i.hw = zext i8 %i.hv to i64
  %i.hx = load i64, ptr %i.bv, align 8, !tbaa !442
  %.not34.i = icmp ugt i64 %i.hx, %i.hw
  br i1 %.not34.i, label %bb.ah, label %.thread.i.sink.split

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %i.br, align 8, !tbaa !443
  %i.hy = load i8, ptr %i.dg, align 1, !tbaa !20
  %i.hz = zext i8 %i.hy to i32                    ; 3 uses
  store i32 %i.hz, ptr %i.bu, align 4, !tbaa !444
  store i32 %i.hz, ptr %i.bt, align 8, !tbaa !445
  br label %.sink.split.i

bb.ai:                                            ; preds = %bb.ae, %bb.ae
  %.not32.i57 = icmp eq i32 %i.db, 2
  br i1 %.not32.i57, label %bb.aj, label %.thread.i.sink.split

bb.aj:                                            ; preds = %bb.ai
  store i32 1, ptr %i.br, align 8, !tbaa !443
  %i.ia = load i8, ptr %i.dg, align 1, !tbaa !20
  %i.ib = zext i8 %i.ia to i32
  %i.ic = shl nuw nsw i32 %i.ib, 8
  %i.id = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 9
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !20
  %i.if = zext i8 %i.ie to i32
  %i.ig = or disjoint i32 %i.ic, %i.if            ; 3 uses
  store i32 %i.ig, ptr %i.bu, align 4, !tbaa !444
  store i32 %i.ig, ptr %i.bt, align 8, !tbaa !445
  br label %.sink.split.i

bb.ak:                                            ; preds = %bb.ae, %bb.ae
  %.not.i55 = icmp eq i32 %i.db, 6
  br i1 %.not.i55, label %bb.al, label %.thread.i.sink.split

bb.al:                                            ; preds = %bb.ak
  store i32 1, ptr %i.br, align 8, !tbaa !443
  %i.ih = load i8, ptr %i.dg, align 1, !tbaa !20
  %i.ii = zext i8 %i.ih to i32
  %i.ij = shl nuw nsw i32 %i.ii, 8
  %i.ik = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 9
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !20
  %i.im = zext i8 %i.il to i32
  %i.in = or disjoint i32 %i.ij, %i.im
  store i32 %i.in, ptr %i.bs, align 4, !tbaa !446
  %i.io = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 10
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !20
  %i.iq = zext i8 %i.ip to i32
  %i.ir = shl nuw nsw i32 %i.iq, 8
  %i.is = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 11
  %i.it = load i8, ptr %i.is, align 1, !tbaa !20
  %i.iu = zext i8 %i.it to i32
  %i.iv = or disjoint i32 %i.ir, %i.iu
  store i32 %i.iv, ptr %i.bt, align 8, !tbaa !445
  %i.iw = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 12
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !20
  %i.iy = zext i8 %i.ix to i32
  %i.iz = shl nuw nsw i32 %i.iy, 8
  %i.ja = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 13
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !20
  %i.jc = zext i8 %i.jb to i32
  %i.jd = or disjoint i32 %i.iz, %i.jc
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.al, %bb.aj, %bb.ah
  %.sink36.i = phi i64 [ 60, %bb.ah ], [ 68, %bb.al ], [ 60, %bb.aj ]
  %.sink.i = phi i32 [ %i.hz, %bb.ah ], [ %i.jd, %bb.al ], [ %i.ig, %bb.aj ]
  %i.je = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sink36.i
  store i32 %.sink.i, ptr %i.je, align 4, !tbaa !13
  br label %_ZL14readChunk_bKGDP11LodePNGInfoPKhm.exit

_ZL14readChunk_bKGDP11LodePNGInfoPKhm.exit:       ; preds = %bb.ae, %.sink.split.i
  store i32 0, ptr %i.n, align 8, !tbaa !424
  br label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i

_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread:  ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit68, %bb.v, %bb.u, %_Z25lodepng_chunk_type_equalsPKhPKc.exit72, %bb.s, %bb.r, %bb.q, %_Z25lodepng_chunk_type_equalsPKhPKc.exit353.i, %_Z25lodepng_chunk_type_equalsPKhPKc.exit.i, %bb.n, %bb.m, %bb.l, %bb.ac, %bb.ad, %_Z25lodepng_chunk_type_equalsPKhPKc.exit
  %i.jf = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.7)
end_hunk_8
begin_hunk_9_@_ZL19preProcessScanlinesPPhPmPKhjjPK11LodePNGInfoPK22LodePNGEncoderSettings:bb.a
  br i1 %i.dw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = trunc i64 %i.dn to i8
  %i.eb = and i8 %i.ea, 7
  %i.ec = lshr exact i8 -128, %i.eb
  %i.ed = or i8 %i.ec, %i.dz
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3

bb.t:                                             ; preds = %bb.r
  %i.ee = trunc i64 %i.dn to i16
  %i.ef = and i16 %i.ee, 7
  %i.eg = ashr i16 -129, %i.ef
  %i.eh = trunc i16 %i.eg to i8
  %i.ei = and i8 %i.dz, %i.eh
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3

_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3:     ; preds = %bb.t, %bb.s
  %.sink.i.us.i.3 = phi i8 [ %i.ed, %bb.s ], [ %i.ei, %bb.t ]
  store i8 %.sink.i.us.i.3, ptr %i.dy, align 1, !tbaa !20
  %i.ej = add i64 %i.az, 4                        ; 3 uses
  br i1 %exitcond.not.i.3, label %._crit_edge.us.i, label %bb.u

bb.u:                                             ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3
  %i.ek = lshr i64 %i.dt, 3
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !20
  %i.en = trunc i64 %i.dt to i8
  %i.eo = and i8 %i.en, 7
  %i.ep = add nuw nsw i64 %i.ax, 5                ; 2 uses
  %i.eq = lshr exact i8 -128, %i.eo
  %i.er = and i8 %i.eq, %i.em
  %i.es = icmp eq i8 %i.er, 0
  %i.et = lshr i64 %i.ej, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !20  ; 2 uses
  br i1 %i.es, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ew = trunc i64 %i.ej to i8
  %i.ex = and i8 %i.ew, 7
  %i.ey = lshr exact i8 -128, %i.ex
  %i.ez = or i8 %i.ey, %i.ev
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4

bb.w:                                             ; preds = %bb.u
  %i.fa = trunc i64 %i.ej to i16
  %i.fb = and i16 %i.fa, 7
  %i.fc = ashr i16 -129, %i.fb
  %i.fd = trunc i16 %i.fc to i8
  %i.fe = and i8 %i.ev, %i.fd
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4

_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4:     ; preds = %bb.w, %bb.v
  %.sink.i.us.i.4 = phi i8 [ %i.ez, %bb.v ], [ %i.fe, %bb.w ]
  store i8 %.sink.i.us.i.4, ptr %i.eu, align 1, !tbaa !20
  %i.ff = add i64 %i.az, 5                        ; 3 uses
  br i1 %exitcond.not.i.4, label %._crit_edge.us.i, label %bb.x

bb.x:                                             ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4
  %i.fg = lshr i64 %i.ep, 3
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !20
  %i.fj = trunc i64 %i.ep to i8
  %i.fk = and i8 %i.fj, 7
  %i.fl = add nuw nsw i64 %i.ax, 6                ; 2 uses
  %i.fm = lshr exact i8 -128, %i.fk
  %i.fn = and i8 %i.fm, %i.fi
  %i.fo = icmp eq i8 %i.fn, 0
  %i.fp = lshr i64 %i.ff, 3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.fp ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !20  ; 2 uses
  br i1 %i.fo, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fs = trunc i64 %i.ff to i8
  %i.ft = and i8 %i.fs, 7
  %i.fu = lshr exact i8 -128, %i.ft
  %i.fv = or i8 %i.fu, %i.fr
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5

bb.z:                                             ; preds = %bb.x
  %i.fw = trunc i64 %i.ff to i16
  %i.fx = and i16 %i.fw, 7
  %i.fy = ashr i16 -129, %i.fx
  %i.fz = trunc i16 %i.fy to i8
  %i.ga = and i8 %i.fr, %i.fz
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5

_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5:     ; preds = %bb.z, %bb.y
  %.sink.i.us.i.5 = phi i8 [ %i.fv, %bb.y ], [ %i.ga, %bb.z ]
  store i8 %.sink.i.us.i.5, ptr %i.fq, align 1, !tbaa !20
  %i.gb = add i64 %i.az, 6                        ; 3 uses
  br i1 %exitcond.not.i.5, label %._crit_edge.us.i, label %bb.aa

bb.aa:                                            ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5
  %i.gc = lshr i64 %i.fl, 3
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !20
  %i.gf = trunc i64 %i.fl to i8
  %i.gg = and i8 %i.gf, 7
  %i.gh = lshr exact i8 -128, %i.gg
  %i.gi = and i8 %i.gh, %i.ge
  %i.gj = icmp eq i8 %i.gi, 0
  %i.gk = lshr i64 %i.gb, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.gk ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !20  ; 2 uses
  br i1 %i.gj, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = trunc i64 %i.gb to i8
  %i.go = and i8 %i.gn, 7
  %i.gp = lshr exact i8 -128, %i.go
  %i.gq = or i8 %i.gp, %i.gm
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.6

bb.ac:                                            ; preds = %bb.aa
  %i.gr = trunc i64 %i.gb to i16
  %i.gs = and i16 %i.gr, 7
  %i.gt = ashr i16 -129, %i.gs
  %i.gu = trunc i16 %i.gt to i8
  %i.gv = and i8 %i.gm, %i.gu
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.6

_ZL22setBitOfReversedStreamPmPhh.exit.us.i.6:     ; preds = %bb.ac, %bb.ab
  %.sink.i.us.i.6 = phi i8 [ %i.gq, %bb.ab ], [ %i.gv, %bb.ac ]
  store i8 %.sink.i.us.i.6, ptr %i.gl, align 1, !tbaa !20
  br label %._crit_edge.us.i

._crit_edge93.split.us.i:                         ; preds = %._crit_edge91.us.i, %.preheader84.split.us.i
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %.not.us.i = icmp eq i64 %indvars.iv.next121.i, 7
  br i1 %.not.us.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader84.split.us.i, !llvm.loop !631

.preheader83.us.i:                                ; preds = %.preheader83.lr.ph.split.us.i, %._crit_edge91.us.i
  %.06692.us.i = phi i32 [ 0, %.preheader83.lr.ph.split.us.i ], [ %i.ha, %._crit_edge91.us.i ] ; 3 uses
  %i.gw = mul i32 %.06692.us.i, %i.hh
  %i.gx = add i32 %i.gw, %i.hg
  %i.gy = mul i32 %i.gx, %3
  %invariant.op.us.i = add i32 %i.gy, %i.hi
  %i.gz = mul i32 %.06692.us.i, %i.as
  br label %.lr.ph.us.i

._crit_edge.us.i:                                 ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.6, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.2, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.1, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond118.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond118.not.i, label %._crit_edge91.us.i, label %.lr.ph.us.i, !llvm.loop !632

._crit_edge91.us.i:                               ; preds = %._crit_edge.us.i
  %i.ha = add nuw i32 %.06692.us.i, 1             ; 2 uses
  %exitcond119.not.i = icmp eq i32 %i.ha, %i.au
  br i1 %exitcond119.not.i, label %._crit_edge93.split.us.i, label %.preheader83.us.i, !llvm.loop !633

.preheader83.lr.ph.split.us.i:                    ; preds = %.preheader84.split.us.i
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv120.i
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_DX, i64 %indvars.iv120.i
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_IX, i64 %indvars.iv120.i
  %i.he = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_DY, i64 %indvars.iv120.i
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_IY, i64 %indvars.iv120.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !13
  %i.hh = load i32, ptr %i.he, align 4, !tbaa !13
  %i.hi = load i32, ptr %i.hd, align 4, !tbaa !13
  %i.hj = load i32, ptr %i.hc, align 4, !tbaa !13
  %i.hk = load i64, ptr %i.hb, align 8, !tbaa !8
  %i.hl = shl i64 %i.hk, 3
  %wide.trip.count.i = zext i32 %i.as to i64
  br label %.preheader83.us.i

.preheader82.split.us.preheader.i:                ; preds = %bb.i
  %i.hm = lshr i32 %.0.i.i.i, 3
  %i.hn = zext nneg i32 %i.hm to i64              ; 63 uses
  %i.ho = load i32, ptr %i.b, align 16, !tbaa !13 ; 2 uses
  %.not112.i = icmp eq i32 %i.ho, 0
  br i1 %.not112.i, label %._crit_edge101.split.us.i, label %.preheader.lr.ph.us.i

.lr.ph.us104.i:                                   ; preds = %.preheader.us.i, %.lr.ph.us104.i
  %indvars.iv133.i = phi i64 [ %indvars.iv.next134.i.1, %.lr.ph.us104.i ], [ 0, %.preheader.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us104.i ], [ 0, %.preheader.us.i ]
  %i.hp = add nuw i64 %i.pv, %indvars.iv133.i
  %i.hq = and i64 %i.hp, 4294967295
  %i.hr = mul nuw nsw i64 %i.hq, %i.hn
  %scevgep138 = getelementptr i8, ptr %scevgep, i64 %i.hr
  %i.hs = shl nuw nsw i64 %indvars.iv133.i, 3
  %i.ht = add nuw i64 %i.pw, %i.hs
  %i.hu = and i64 %i.ht, 4294967288
  %i.hv = mul nuw nsw i64 %i.hu, %i.hn
  %scevgep139 = getelementptr nuw i8, ptr %2, i64 %i.hv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep138, ptr align 1 %scevgep139, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.i = or disjoint i64 %indvars.iv133.i, 1 ; 2 uses
  %i.hw = add nuw i64 %i.pv, %indvars.iv.next134.i
  %i.hx = and i64 %i.hw, 4294967295
  %i.hy = mul nuw nsw i64 %i.hx, %i.hn
  %scevgep138.1 = getelementptr i8, ptr %scevgep, i64 %i.hy
  %i.hz = shl nuw nsw i64 %indvars.iv.next134.i, 3
  %i.ia = add nuw i64 %i.pw, %i.hz
  %i.ib = and i64 %i.ia, 4294967288
  %i.ic = mul nuw nsw i64 %i.ib, %i.hn
  %scevgep139.1 = getelementptr nuw i8, ptr %2, i64 %i.ic
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep138.1, ptr align 1 %scevgep139.1, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.i.1 = add nuw nsw i64 %indvars.iv133.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge99.us.i.unr-lcssa, label %.lr.ph.us104.i, !llvm.loop !634

._crit_edge101.split.us.i:                        ; preds = %._crit_edge99.us.i, %.preheader.lr.ph.us.i, %.preheader82.split.us.preheader.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !13 ; 2 uses
  %.not112.1.i = icmp eq i32 %i.ie, 0
  br i1 %.not112.1.i, label %._crit_edge101.split.us.1.i, label %.preheader.lr.ph.us.1.i

.preheader.lr.ph.us.1.i:                          ; preds = %._crit_edge101.split.us.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !13 ; 4 uses
  %.not113.1.i = icmp eq i32 %i.ig, 0
  br i1 %.not113.1.i, label %._crit_edge101.split.us.1.i, label %.preheader.lr.ph.split.us.1.i

.preheader.lr.ph.split.us.1.i:                    ; preds = %.preheader.lr.ph.us.1.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !8
  %wide.trip.count136.1.i = zext i32 %i.ig to i64 ; 3 uses
  %scevgep141 = getelementptr i8, ptr %i.an, i64 %i.ii ; 3 uses
  %i.ij = shl i32 %3, 3
  %wide.trip.count147 = zext i32 %i.ie to i64
  %xtraiter239 = and i64 %wide.trip.count136.1.i, 1
  %i.ik = icmp eq i32 %i.ig, 1
  %unroll_iter242 = and i64 %wide.trip.count136.1.i, 4294967294
  %lcmp.mod240.not = icmp eq i64 %xtraiter239, 0
  %lcmp.mod241 = trunc i32 %i.ig to i1
  br label %.preheader.us.1.i

.preheader.us.1.i:                                ; preds = %._crit_edge99.us.1.i, %.preheader.lr.ph.split.us.1.i
  %indvar142 = phi i64 [ %indvar.next143, %._crit_edge99.us.1.i ], [ 0, %.preheader.lr.ph.split.us.1.i ] ; 3 uses
  %i.il = mul nuw i64 %indvar142, %wide.trip.count136.1.i ; 3 uses
  %i.im = trunc i64 %indvar142 to i32
  %i.in = mul i32 %i.ij, %i.im
  %i.io = or disjoint i32 %i.in, 4                ; 3 uses
  br i1 %i.ik, label %.lr.ph.us104.1.i.epil.preheader, label %.lr.ph.us104.1.i

.lr.ph.us104.1.i:                                 ; preds = %.preheader.us.1.i, %.lr.ph.us104.1.i
  %indvars.iv133.1.i = phi i64 [ %indvars.iv.next134.1.i.1, %.lr.ph.us104.1.i ], [ 0, %.preheader.us.1.i ] ; 4 uses
  %niter243 = phi i64 [ %niter243.next.1, %.lr.ph.us104.1.i ], [ 0, %.preheader.us.1.i ]
  %i.ip = add nuw i64 %i.il, %indvars.iv133.1.i
  %i.iq = and i64 %i.ip, 4294967295
  %i.ir = mul nuw nsw i64 %i.iq, %i.hn
  %scevgep144 = getelementptr i8, ptr %scevgep141, i64 %i.ir
  %indvars.iv133.1.i.tr = trunc i64 %indvars.iv133.1.i to i32
  %i.is = shl i32 %indvars.iv133.1.i.tr, 3
  %i.it = add i32 %i.is, %i.io
  %i.iu = zext i32 %i.it to i64
  %i.iv = mul nuw nsw i64 %i.hn, %i.iu
  %scevgep145 = getelementptr nuw i8, ptr %2, i64 %i.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep144, ptr align 1 %scevgep145, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.1.i = or disjoint i64 %indvars.iv133.1.i, 1 ; 2 uses
  %i.iw = add nuw i64 %i.il, %indvars.iv.next134.1.i
  %i.ix = and i64 %i.iw, 4294967295
  %i.iy = mul nuw nsw i64 %i.ix, %i.hn
  %scevgep144.1 = getelementptr i8, ptr %scevgep141, i64 %i.iy
  %indvars.iv133.1.i.tr.1 = trunc i64 %indvars.iv.next134.1.i to i32
  %i.iz = shl i32 %indvars.iv133.1.i.tr.1, 3
  %i.ja = add i32 %i.iz, %i.io
  %i.jb = zext i32 %i.ja to i64
  %i.jc = mul nuw nsw i64 %i.hn, %i.jb
  %scevgep145.1 = getelementptr nuw i8, ptr %2, i64 %i.jc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep144.1, ptr align 1 %scevgep145.1, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.1.i.1 = add nuw nsw i64 %indvars.iv133.1.i, 2 ; 2 uses
  %niter243.next.1 = add nuw i64 %niter243, 2     ; 2 uses
  %niter243.ncmp.1 = icmp eq i64 %niter243.next.1, %unroll_iter242
  br i1 %niter243.ncmp.1, label %._crit_edge99.us.1.i.unr-lcssa, label %.lr.ph.us104.1.i, !llvm.loop !634

._crit_edge99.us.1.i.unr-lcssa:                   ; preds = %.lr.ph.us104.1.i
  br i1 %lcmp.mod240.not, label %._crit_edge99.us.1.i, label %.lr.ph.us104.1.i.epil.preheader

.lr.ph.us104.1.i.epil.preheader:                  ; preds = %._crit_edge99.us.1.i.unr-lcssa, %.preheader.us.1.i
  %indvars.iv133.1.i.epil.init = phi i64 [ 0, %.preheader.us.1.i ], [ %indvars.iv.next134.1.i.1, %._crit_edge99.us.1.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod241)
  %i.jd = add nuw i64 %i.il, %indvars.iv133.1.i.epil.init
  %i.je = and i64 %i.jd, 4294967295
  %i.jf = mul nuw nsw i64 %i.je, %i.hn
  %scevgep144.epil = getelementptr i8, ptr %scevgep141, i64 %i.jf
  %indvars.iv133.1.i.tr.epil = trunc i64 %indvars.iv133.1.i.epil.init to i32
  %i.jg = shl i32 %indvars.iv133.1.i.tr.epil, 3
  %i.jh = add i32 %i.jg, %i.io
  %i.ji = zext i32 %i.jh to i64
  %i.jj = mul nuw nsw i64 %i.hn, %i.ji
  %scevgep145.epil = getelementptr nuw i8, ptr %2, i64 %i.jj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep144.epil, ptr align 1 %scevgep145.epil, i64 %i.hn, i1 false), !tbaa !20
  br label %._crit_edge99.us.1.i

._crit_edge99.us.1.i:                             ; preds = %._crit_edge99.us.1.i.unr-lcssa, %.lr.ph.us104.1.i.epil.preheader
  %indvar.next143 = add nuw nsw i64 %indvar142, 1 ; 2 uses
  %exitcond148 = icmp eq i64 %indvar.next143, %wide.trip.count147
  br i1 %exitcond148, label %._crit_edge101.split.us.1.i, label %.preheader.us.1.i, !llvm.loop !635

._crit_edge101.split.us.1.i:                      ; preds = %._crit_edge99.us.1.i, %.preheader.lr.ph.us.1.i, %._crit_edge101.split.us.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !13 ; 2 uses
  %.not112.2.i = icmp eq i32 %i.jl, 0
  br i1 %.not112.2.i, label %._crit_edge101.split.us.2.i, label %.preheader.lr.ph.us.2.i

.preheader.lr.ph.us.2.i:                          ; preds = %._crit_edge101.split.us.1.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !13 ; 4 uses
  %.not113.2.i = icmp eq i32 %i.jn, 0
  br i1 %.not113.2.i, label %._crit_edge101.split.us.2.i, label %.preheader.lr.ph.split.us.2.i

.preheader.lr.ph.split.us.2.i:                    ; preds = %.preheader.lr.ph.us.2.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.jp = load i64, ptr %i.jo, align 16, !tbaa !8
  %wide.trip.count136.2.i = zext i32 %i.jn to i64 ; 3 uses
  %scevgep149 = getelementptr i8, ptr %i.an, i64 %i.jp ; 3 uses
  %i.jq = shl i32 %3, 2
  %i.jr = zext i32 %i.jq to i64
  %i.js = shl i32 %3, 3
  %i.jt = zext i32 %i.js to i64
  %wide.trip.count155 = zext i32 %i.jl to i64
  %xtraiter244 = and i64 %wide.trip.count136.2.i, 1
  %i.ju = icmp eq i32 %i.jn, 1
  %unroll_iter247 = and i64 %wide.trip.count136.2.i, 4294967294
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  %lcmp.mod246 = trunc i32 %i.jn to i1
  br label %.preheader.us.2.i

.preheader.us.2.i:                                ; preds = %._crit_edge99.us.2.i, %.preheader.lr.ph.split.us.2.i
  %indvar150 = phi i64 [ %indvar.next151, %._crit_edge99.us.2.i ], [ 0, %.preheader.lr.ph.split.us.2.i ] ; 3 uses
  %i.jv = mul nuw i64 %indvar150, %wide.trip.count136.2.i ; 3 uses
  %i.jw = mul nuw i64 %indvar150, %i.jt
  %i.jx = add nuw i64 %i.jw, %i.jr                ; 3 uses
  br i1 %i.ju, label %.lr.ph.us104.2.i.epil.preheader, label %.lr.ph.us104.2.i

.lr.ph.us104.2.i:                                 ; preds = %.preheader.us.2.i, %.lr.ph.us104.2.i
  %indvars.iv133.2.i = phi i64 [ %indvars.iv.next134.2.i.1, %.lr.ph.us104.2.i ], [ 0, %.preheader.us.2.i ] ; 4 uses
  %niter248 = phi i64 [ %niter248.next.1, %.lr.ph.us104.2.i ], [ 0, %.preheader.us.2.i ]
  %i.jy = add nuw i64 %i.jv, %indvars.iv133.2.i
  %i.jz = and i64 %i.jy, 4294967295
  %i.ka = mul nuw nsw i64 %i.jz, %i.hn
  %scevgep152 = getelementptr i8, ptr %scevgep149, i64 %i.ka
  %i.kb = shl nuw nsw i64 %indvars.iv133.2.i, 2
  %i.kc = add nuw i64 %i.jx, %i.kb
  %i.kd = and i64 %i.kc, 4294967292
  %i.ke = mul nuw nsw i64 %i.kd, %i.hn
  %scevgep153 = getelementptr nuw i8, ptr %2, i64 %i.ke
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep152, ptr align 1 %scevgep153, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.2.i = or disjoint i64 %indvars.iv133.2.i, 1 ; 2 uses
  %i.kf = add nuw i64 %i.jv, %indvars.iv.next134.2.i
  %i.kg = and i64 %i.kf, 4294967295
  %i.kh = mul nuw nsw i64 %i.kg, %i.hn
  %scevgep152.1 = getelementptr i8, ptr %scevgep149, i64 %i.kh
  %i.ki = shl nuw nsw i64 %indvars.iv.next134.2.i, 2
  %i.kj = add nuw i64 %i.jx, %i.ki
  %i.kk = and i64 %i.kj, 4294967292
  %i.kl = mul nuw nsw i64 %i.kk, %i.hn
  %scevgep153.1 = getelementptr nuw i8, ptr %2, i64 %i.kl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep152.1, ptr align 1 %scevgep153.1, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.2.i.1 = add nuw nsw i64 %indvars.iv133.2.i, 2 ; 2 uses
  %niter248.next.1 = add nuw i64 %niter248, 2     ; 2 uses
  %niter248.ncmp.1 = icmp eq i64 %niter248.next.1, %unroll_iter247
  br i1 %niter248.ncmp.1, label %._crit_edge99.us.2.i.unr-lcssa, label %.lr.ph.us104.2.i, !llvm.loop !634

._crit_edge99.us.2.i.unr-lcssa:                   ; preds = %.lr.ph.us104.2.i
  br i1 %lcmp.mod245.not, label %._crit_edge99.us.2.i, label %.lr.ph.us104.2.i.epil.preheader

.lr.ph.us104.2.i.epil.preheader:                  ; preds = %._crit_edge99.us.2.i.unr-lcssa, %.preheader.us.2.i
  %indvars.iv133.2.i.epil.init = phi i64 [ 0, %.preheader.us.2.i ], [ %indvars.iv.next134.2.i.1, %._crit_edge99.us.2.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod246)
  %i.km = add nuw i64 %i.jv, %indvars.iv133.2.i.epil.init
  %i.kn = and i64 %i.km, 4294967295
  %i.ko = mul nuw nsw i64 %i.kn, %i.hn
  %scevgep152.epil = getelementptr i8, ptr %scevgep149, i64 %i.ko
  %i.kp = shl nuw nsw i64 %indvars.iv133.2.i.epil.init, 2
  %i.kq = add nuw i64 %i.jx, %i.kp
  %i.kr = and i64 %i.kq, 4294967292
  %i.ks = mul nuw nsw i64 %i.kr, %i.hn
  %scevgep153.epil = getelementptr nuw i8, ptr %2, i64 %i.ks
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep152.epil, ptr align 1 %scevgep153.epil, i64 %i.hn, i1 false), !tbaa !20
  br label %._crit_edge99.us.2.i

._crit_edge99.us.2.i:                             ; preds = %._crit_edge99.us.2.i.unr-lcssa, %.lr.ph.us104.2.i.epil.preheader
  %indvar.next151 = add nuw nsw i64 %indvar150, 1 ; 2 uses
  %exitcond156 = icmp eq i64 %indvar.next151, %wide.trip.count155
  br i1 %exitcond156, label %._crit_edge101.split.us.2.i, label %.preheader.us.2.i, !llvm.loop !635

._crit_edge101.split.us.2.i:                      ; preds = %._crit_edge99.us.2.i, %.preheader.lr.ph.us.2.i, %._crit_edge101.split.us.1.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !13 ; 2 uses
  %.not112.3.i = icmp eq i32 %i.ku, 0
  br i1 %.not112.3.i, label %._crit_edge101.split.us.3.i, label %.preheader.lr.ph.us.3.i

.preheader.lr.ph.us.3.i:                          ; preds = %._crit_edge101.split.us.2.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !13 ; 4 uses
  %.not113.3.i = icmp eq i32 %i.kw, 0
  br i1 %.not113.3.i, label %._crit_edge101.split.us.3.i, label %.preheader.lr.ph.split.us.3.i

.preheader.lr.ph.split.us.3.i:                    ; preds = %.preheader.lr.ph.us.3.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !8
  %wide.trip.count136.3.i = zext i32 %i.kw to i64 ; 3 uses
  %scevgep157 = getelementptr i8, ptr %i.an, i64 %i.ky ; 3 uses
  %i.kz = shl i32 %3, 2
  %wide.trip.count163 = zext i32 %i.ku to i64
  %xtraiter249 = and i64 %wide.trip.count136.3.i, 1
  %i.la = icmp eq i32 %i.kw, 1
  %unroll_iter252 = and i64 %wide.trip.count136.3.i, 4294967294
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  %lcmp.mod251 = trunc i32 %i.kw to i1
  br label %.preheader.us.3.i

.preheader.us.3.i:                                ; preds = %._crit_edge99.us.3.i, %.preheader.lr.ph.split.us.3.i
  %indvar158 = phi i64 [ %indvar.next159, %._crit_edge99.us.3.i ], [ 0, %.preheader.lr.ph.split.us.3.i ] ; 3 uses
  %i.lb = mul nuw i64 %indvar158, %wide.trip.count136.3.i ; 3 uses
  %i.lc = trunc i64 %indvar158 to i32
  %i.ld = mul i32 %i.kz, %i.lc
  %i.le = or disjoint i32 %i.ld, 2                ; 3 uses
  br i1 %i.la, label %.lr.ph.us104.3.i.epil.preheader, label %.lr.ph.us104.3.i

.lr.ph.us104.3.i:                                 ; preds = %.preheader.us.3.i, %.lr.ph.us104.3.i
  %indvars.iv133.3.i = phi i64 [ %indvars.iv.next134.3.i.1, %.lr.ph.us104.3.i ], [ 0, %.preheader.us.3.i ] ; 4 uses
  %niter253 = phi i64 [ %niter253.next.1, %.lr.ph.us104.3.i ], [ 0, %.preheader.us.3.i ]
  %i.lf = add nuw i64 %i.lb, %indvars.iv133.3.i
  %i.lg = and i64 %i.lf, 4294967295
  %i.lh = mul nuw nsw i64 %i.lg, %i.hn
  %scevgep160 = getelementptr i8, ptr %scevgep157, i64 %i.lh
  %indvars.iv133.3.i.tr = trunc i64 %indvars.iv133.3.i to i32
  %i.li = shl i32 %indvars.iv133.3.i.tr, 2
  %i.lj = add i32 %i.li, %i.le
  %i.lk = zext i32 %i.lj to i64
  %i.ll = mul nuw nsw i64 %i.hn, %i.lk
  %scevgep161 = getelementptr nuw i8, ptr %2, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep160, ptr align 1 %scevgep161, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.3.i = or disjoint i64 %indvars.iv133.3.i, 1 ; 2 uses
  %i.lm = add nuw i64 %i.lb, %indvars.iv.next134.3.i
  %i.ln = and i64 %i.lm, 4294967295
  %i.lo = mul nuw nsw i64 %i.ln, %i.hn
  %scevgep160.1 = getelementptr i8, ptr %scevgep157, i64 %i.lo
  %indvars.iv133.3.i.tr.1 = trunc i64 %indvars.iv.next134.3.i to i32
  %i.lp = shl i32 %indvars.iv133.3.i.tr.1, 2
  %i.lq = add i32 %i.lp, %i.le
  %i.lr = zext i32 %i.lq to i64
  %i.ls = mul nuw nsw i64 %i.hn, %i.lr
  %scevgep161.1 = getelementptr nuw i8, ptr %2, i64 %i.ls
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep160.1, ptr align 1 %scevgep161.1, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.3.i.1 = add nuw nsw i64 %indvars.iv133.3.i, 2 ; 2 uses
  %niter253.next.1 = add nuw i64 %niter253, 2     ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %._crit_edge99.us.3.i.unr-lcssa, label %.lr.ph.us104.3.i, !llvm.loop !634

._crit_edge99.us.3.i.unr-lcssa:                   ; preds = %.lr.ph.us104.3.i
  br i1 %lcmp.mod250.not, label %._crit_edge99.us.3.i, label %.lr.ph.us104.3.i.epil.preheader

.lr.ph.us104.3.i.epil.preheader:                  ; preds = %._crit_edge99.us.3.i.unr-lcssa, %.preheader.us.3.i
  %indvars.iv133.3.i.epil.init = phi i64 [ 0, %.preheader.us.3.i ], [ %indvars.iv.next134.3.i.1, %._crit_edge99.us.3.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.lt = add nuw i64 %i.lb, %indvars.iv133.3.i.epil.init
  %i.lu = and i64 %i.lt, 4294967295
  %i.lv = mul nuw nsw i64 %i.lu, %i.hn
  %scevgep160.epil = getelementptr i8, ptr %scevgep157, i64 %i.lv
  %indvars.iv133.3.i.tr.epil = trunc i64 %indvars.iv133.3.i.epil.init to i32
  %i.lw = shl i32 %indvars.iv133.3.i.tr.epil, 2
  %i.lx = add i32 %i.lw, %i.le
  %i.ly = zext i32 %i.lx to i64
  %i.lz = mul nuw nsw i64 %i.hn, %i.ly
  %scevgep161.epil = getelementptr nuw i8, ptr %2, i64 %i.lz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep160.epil, ptr align 1 %scevgep161.epil, i64 %i.hn, i1 false), !tbaa !20
  br label %._crit_edge99.us.3.i

._crit_edge99.us.3.i:                             ; preds = %._crit_edge99.us.3.i.unr-lcssa, %.lr.ph.us104.3.i.epil.preheader
  %indvar.next159 = add nuw nsw i64 %indvar158, 1 ; 2 uses
  %exitcond164 = icmp eq i64 %indvar.next159, %wide.trip.count163
  br i1 %exitcond164, label %._crit_edge101.split.us.3.i, label %.preheader.us.3.i, !llvm.loop !635

._crit_edge101.split.us.3.i:                      ; preds = %._crit_edge99.us.3.i, %.preheader.lr.ph.us.3.i, %._crit_edge101.split.us.2.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.mb = load i32, ptr %i.ma, align 16, !tbaa !13 ; 2 uses
  %.not112.4.i = icmp eq i32 %i.mb, 0
  br i1 %.not112.4.i, label %._crit_edge101.split.us.4.i, label %.preheader.lr.ph.us.4.i

.preheader.lr.ph.us.4.i:                          ; preds = %._crit_edge101.split.us.3.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.md = load i32, ptr %i.mc, align 16, !tbaa !13 ; 4 uses
  %.not113.4.i = icmp eq i32 %i.md, 0
  br i1 %.not113.4.i, label %._crit_edge101.split.us.4.i, label %.preheader.lr.ph.split.us.4.i

.preheader.lr.ph.split.us.4.i:                    ; preds = %.preheader.lr.ph.us.4.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.mf = load i64, ptr %i.me, align 16, !tbaa !8
  %wide.trip.count136.4.i = zext i32 %i.md to i64 ; 3 uses
  %scevgep165 = getelementptr i8, ptr %i.an, i64 %i.mf ; 3 uses
  %i.mg = shl i32 %3, 1
  %i.mh = zext i32 %i.mg to i64
  %i.mi = shl i32 %3, 2
  %i.mj = zext i32 %i.mi to i64
  %wide.trip.count171 = zext i32 %i.mb to i64
  %xtraiter254 = and i64 %wide.trip.count136.4.i, 1
  %i.mk = icmp eq i32 %i.md, 1
  %unroll_iter257 = and i64 %wide.trip.count136.4.i, 4294967294
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  %lcmp.mod256 = trunc i32 %i.md to i1
  br label %.preheader.us.4.i

.preheader.us.4.i:                                ; preds = %._crit_edge99.us.4.i, %.preheader.lr.ph.split.us.4.i
  %indvar166 = phi i64 [ %indvar.next167, %._crit_edge99.us.4.i ], [ 0, %.preheader.lr.ph.split.us.4.i ] ; 3 uses
  %i.ml = mul nuw i64 %indvar166, %wide.trip.count136.4.i ; 3 uses
  %i.mm = mul nuw i64 %indvar166, %i.mj
  %i.mn = add nuw i64 %i.mm, %i.mh                ; 3 uses
  br i1 %i.mk, label %.lr.ph.us104.4.i.epil.preheader, label %.lr.ph.us104.4.i

.lr.ph.us104.4.i:                                 ; preds = %.preheader.us.4.i, %.lr.ph.us104.4.i
  %indvars.iv133.4.i = phi i64 [ %indvars.iv.next134.4.i.1, %.lr.ph.us104.4.i ], [ 0, %.preheader.us.4.i ] ; 4 uses
  %niter258 = phi i64 [ %niter258.next.1, %.lr.ph.us104.4.i ], [ 0, %.preheader.us.4.i ]
  %i.mo = add nuw i64 %i.ml, %indvars.iv133.4.i
  %i.mp = and i64 %i.mo, 4294967295
  %i.mq = mul nuw nsw i64 %i.mp, %i.hn
  %scevgep168 = getelementptr i8, ptr %scevgep165, i64 %i.mq
  %i.mr = shl nuw nsw i64 %indvars.iv133.4.i, 1
  %i.ms = add nuw i64 %i.mn, %i.mr
  %i.mt = and i64 %i.ms, 4294967294
  %i.mu = mul nuw nsw i64 %i.mt, %i.hn
  %scevgep169 = getelementptr nuw i8, ptr %2, i64 %i.mu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep168, ptr align 1 %scevgep169, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.4.i = or disjoint i64 %indvars.iv133.4.i, 1 ; 2 uses
  %i.mv = add nuw i64 %i.ml, %indvars.iv.next134.4.i
  %i.mw = and i64 %i.mv, 4294967295
  %i.mx = mul nuw nsw i64 %i.mw, %i.hn
  %scevgep168.1 = getelementptr i8, ptr %scevgep165, i64 %i.mx
  %i.my = shl nuw nsw i64 %indvars.iv.next134.4.i, 1
  %i.mz = add nuw i64 %i.mn, %i.my
  %i.na = and i64 %i.mz, 4294967294
  %i.nb = mul nuw nsw i64 %i.na, %i.hn
  %scevgep169.1 = getelementptr nuw i8, ptr %2, i64 %i.nb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep168.1, ptr align 1 %scevgep169.1, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.4.i.1 = add nuw nsw i64 %indvars.iv133.4.i, 2 ; 2 uses
  %niter258.next.1 = add nuw i64 %niter258, 2     ; 2 uses
  %niter258.ncmp.1 = icmp eq i64 %niter258.next.1, %unroll_iter257
  br i1 %niter258.ncmp.1, label %._crit_edge99.us.4.i.unr-lcssa, label %.lr.ph.us104.4.i, !llvm.loop !634

._crit_edge99.us.4.i.unr-lcssa:                   ; preds = %.lr.ph.us104.4.i
  br i1 %lcmp.mod255.not, label %._crit_edge99.us.4.i, label %.lr.ph.us104.4.i.epil.preheader

.lr.ph.us104.4.i.epil.preheader:                  ; preds = %._crit_edge99.us.4.i.unr-lcssa, %.preheader.us.4.i
  %indvars.iv133.4.i.epil.init = phi i64 [ 0, %.preheader.us.4.i ], [ %indvars.iv.next134.4.i.1, %._crit_edge99.us.4.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod256)
  %i.nc = add nuw i64 %i.ml, %indvars.iv133.4.i.epil.init
  %i.nd = and i64 %i.nc, 4294967295
  %i.ne = mul nuw nsw i64 %i.nd, %i.hn
  %scevgep168.epil = getelementptr i8, ptr %scevgep165, i64 %i.ne
  %i.nf = shl nuw nsw i64 %indvars.iv133.4.i.epil.init, 1
  %i.ng = add nuw i64 %i.mn, %i.nf
  %i.nh = and i64 %i.ng, 4294967294
  %i.ni = mul nuw nsw i64 %i.nh, %i.hn
  %scevgep169.epil = getelementptr nuw i8, ptr %2, i64 %i.ni
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep168.epil, ptr align 1 %scevgep169.epil, i64 %i.hn, i1 false), !tbaa !20
  br label %._crit_edge99.us.4.i

._crit_edge99.us.4.i:                             ; preds = %._crit_edge99.us.4.i.unr-lcssa, %.lr.ph.us104.4.i.epil.preheader
  %indvar.next167 = add nuw nsw i64 %indvar166, 1 ; 2 uses
  %exitcond172 = icmp eq i64 %indvar.next167, %wide.trip.count171
  br i1 %exitcond172, label %._crit_edge101.split.us.4.i, label %.preheader.us.4.i, !llvm.loop !635

._crit_edge101.split.us.4.i:                      ; preds = %._crit_edge99.us.4.i, %.preheader.lr.ph.us.4.i, %._crit_edge101.split.us.3.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !13 ; 2 uses
  %.not112.5.i = icmp eq i32 %i.nk, 0
  br i1 %.not112.5.i, label %._crit_edge101.split.us.5.i, label %.preheader.lr.ph.us.5.i

.preheader.lr.ph.us.5.i:                          ; preds = %._crit_edge101.split.us.4.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !13 ; 4 uses
  %.not113.5.i = icmp eq i32 %i.nm, 0
  br i1 %.not113.5.i, label %._crit_edge101.split.us.5.i, label %.preheader.lr.ph.split.us.5.i

.preheader.lr.ph.split.us.5.i:                    ; preds = %.preheader.lr.ph.us.5.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !8
  %wide.trip.count136.5.i = zext i32 %i.nm to i64 ; 3 uses
  %scevgep173 = getelementptr i8, ptr %i.an, i64 %i.no ; 3 uses
  %i.np = shl i32 %3, 1
  %wide.trip.count179 = zext i32 %i.nk to i64
  %xtraiter259 = and i64 %wide.trip.count136.5.i, 1
  %i.nq = icmp eq i32 %i.nm, 1
  %unroll_iter262 = and i64 %wide.trip.count136.5.i, 4294967294
  %lcmp.mod260.not = icmp eq i64 %xtraiter259, 0
  %lcmp.mod261 = trunc i32 %i.nm to i1
  br label %.preheader.us.5.i

.preheader.us.5.i:                                ; preds = %._crit_edge99.us.5.i, %.preheader.lr.ph.split.us.5.i
  %indvar174 = phi i64 [ %indvar.next175, %._crit_edge99.us.5.i ], [ 0, %.preheader.lr.ph.split.us.5.i ] ; 3 uses
  %i.nr = mul nuw i64 %indvar174, %wide.trip.count136.5.i ; 3 uses
  %i.ns = trunc i64 %indvar174 to i32
  %i.nt = mul i32 %i.np, %i.ns
  %i.nu = or disjoint i32 %i.nt, 1                ; 3 uses
  br i1 %i.nq, label %.lr.ph.us104.5.i.epil.preheader, label %.lr.ph.us104.5.i

.lr.ph.us104.5.i:                                 ; preds = %.preheader.us.5.i, %.lr.ph.us104.5.i
  %indvars.iv133.5.i = phi i64 [ %indvars.iv.next134.5.i.1, %.lr.ph.us104.5.i ], [ 0, %.preheader.us.5.i ] ; 4 uses
  %niter263 = phi i64 [ %niter263.next.1, %.lr.ph.us104.5.i ], [ 0, %.preheader.us.5.i ]
  %i.nv = add nuw i64 %i.nr, %indvars.iv133.5.i
  %i.nw = and i64 %i.nv, 4294967295
  %i.nx = mul nuw nsw i64 %i.nw, %i.hn
  %scevgep176 = getelementptr i8, ptr %scevgep173, i64 %i.nx
  %indvars.iv133.5.i.tr = trunc i64 %indvars.iv133.5.i to i32
  %i.ny = shl i32 %indvars.iv133.5.i.tr, 1
  %i.nz = add i32 %i.ny, %i.nu
  %i.oa = zext i32 %i.nz to i64
  %i.ob = mul nuw nsw i64 %i.hn, %i.oa
  %scevgep177 = getelementptr nuw i8, ptr %2, i64 %i.ob
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep176, ptr align 1 %scevgep177, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.5.i = or disjoint i64 %indvars.iv133.5.i, 1 ; 2 uses
  %i.oc = add nuw i64 %i.nr, %indvars.iv.next134.5.i
  %i.od = and i64 %i.oc, 4294967295
  %i.oe = mul nuw nsw i64 %i.od, %i.hn
  %scevgep176.1 = getelementptr i8, ptr %scevgep173, i64 %i.oe
  %indvars.iv133.5.i.tr.1 = trunc i64 %indvars.iv.next134.5.i to i32
  %i.of = shl i32 %indvars.iv133.5.i.tr.1, 1
  %i.og = add i32 %i.of, %i.nu
  %i.oh = zext i32 %i.og to i64
  %i.oi = mul nuw nsw i64 %i.hn, %i.oh
  %scevgep177.1 = getelementptr nuw i8, ptr %2, i64 %i.oi
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep176.1, ptr align 1 %scevgep177.1, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.5.i.1 = add nuw nsw i64 %indvars.iv133.5.i, 2 ; 2 uses
  %niter263.next.1 = add nuw i64 %niter263, 2     ; 2 uses
  %niter263.ncmp.1 = icmp eq i64 %niter263.next.1, %unroll_iter262
  br i1 %niter263.ncmp.1, label %._crit_edge99.us.5.i.unr-lcssa, label %.lr.ph.us104.5.i, !llvm.loop !634

._crit_edge99.us.5.i.unr-lcssa:                   ; preds = %.lr.ph.us104.5.i
  br i1 %lcmp.mod260.not, label %._crit_edge99.us.5.i, label %.lr.ph.us104.5.i.epil.preheader

.lr.ph.us104.5.i.epil.preheader:                  ; preds = %._crit_edge99.us.5.i.unr-lcssa, %.preheader.us.5.i
  %indvars.iv133.5.i.epil.init = phi i64 [ 0, %.preheader.us.5.i ], [ %indvars.iv.next134.5.i.1, %._crit_edge99.us.5.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod261)
  %i.oj = add nuw i64 %i.nr, %indvars.iv133.5.i.epil.init
  %i.ok = and i64 %i.oj, 4294967295
  %i.ol = mul nuw nsw i64 %i.ok, %i.hn
  %scevgep176.epil = getelementptr i8, ptr %scevgep173, i64 %i.ol
  %indvars.iv133.5.i.tr.epil = trunc i64 %indvars.iv133.5.i.epil.init to i32
  %i.om = shl i32 %indvars.iv133.5.i.tr.epil, 1
  %i.on = add i32 %i.om, %i.nu
  %i.oo = zext i32 %i.on to i64
  %i.op = mul nuw nsw i64 %i.hn, %i.oo
  %scevgep177.epil = getelementptr nuw i8, ptr %2, i64 %i.op
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep176.epil, ptr align 1 %scevgep177.epil, i64 %i.hn, i1 false), !tbaa !20
  br label %._crit_edge99.us.5.i

._crit_edge99.us.5.i:                             ; preds = %._crit_edge99.us.5.i.unr-lcssa, %.lr.ph.us104.5.i.epil.preheader
  %indvar.next175 = add nuw nsw i64 %indvar174, 1 ; 2 uses
  %exitcond180 = icmp eq i64 %indvar.next175, %wide.trip.count179
  br i1 %exitcond180, label %._crit_edge101.split.us.5.i, label %.preheader.us.5.i, !llvm.loop !635

._crit_edge101.split.us.5.i:                      ; preds = %._crit_edge99.us.5.i, %.preheader.lr.ph.us.5.i, %._crit_edge101.split.us.4.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !13 ; 2 uses
  %.not112.6.i = icmp eq i32 %i.or, 0
  br i1 %.not112.6.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader.lr.ph.us.6.i

.preheader.lr.ph.us.6.i:                          ; preds = %._crit_edge101.split.us.5.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !13 ; 4 uses
  %.not113.6.i = icmp eq i32 %i.ot, 0
  br i1 %.not113.6.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader.lr.ph.split.us.6.i

.preheader.lr.ph.split.us.6.i:                    ; preds = %.preheader.lr.ph.us.6.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ov = load i64, ptr %i.ou, align 16, !tbaa !8
  %wide.trip.count136.6.i = zext i32 %i.ot to i64 ; 3 uses
  %scevgep181 = getelementptr i8, ptr %i.an, i64 %i.ov ; 3 uses
  %i.ow = zext i32 %3 to i64
  %i.ox = shl i32 %3, 1
  %i.oy = zext i32 %i.ox to i64
  %wide.trip.count187 = zext i32 %i.or to i64
  %xtraiter264 = and i64 %wide.trip.count136.6.i, 1
  %i.oz = icmp eq i32 %i.ot, 1
  %unroll_iter267 = and i64 %wide.trip.count136.6.i, 4294967294
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  %lcmp.mod266 = trunc i32 %i.ot to i1
  br label %.preheader.us.6.i

.preheader.us.6.i:                                ; preds = %._crit_edge99.us.6.i, %.preheader.lr.ph.split.us.6.i
  %indvar182 = phi i64 [ %indvar.next183, %._crit_edge99.us.6.i ], [ 0, %.preheader.lr.ph.split.us.6.i ] ; 3 uses
  %i.pa = mul nuw i64 %indvar182, %wide.trip.count136.6.i ; 3 uses
  %i.pb = mul nuw i64 %indvar182, %i.oy
  %i.pc = add nuw i64 %i.pb, %i.ow                ; 3 uses
  br i1 %i.oz, label %.lr.ph.us104.6.i.epil.preheader, label %.lr.ph.us104.6.i

.lr.ph.us104.6.i:                                 ; preds = %.preheader.us.6.i, %.lr.ph.us104.6.i
  %indvars.iv133.6.i = phi i64 [ %indvars.iv.next134.6.i.1, %.lr.ph.us104.6.i ], [ 0, %.preheader.us.6.i ] ; 4 uses
  %niter268 = phi i64 [ %niter268.next.1, %.lr.ph.us104.6.i ], [ 0, %.preheader.us.6.i ]
  %i.pd = add nuw i64 %i.pa, %indvars.iv133.6.i
  %i.pe = and i64 %i.pd, 4294967295
  %i.pf = mul nuw nsw i64 %i.pe, %i.hn
  %scevgep184 = getelementptr i8, ptr %scevgep181, i64 %i.pf
  %i.pg = add nuw i64 %i.pc, %indvars.iv133.6.i
  %i.ph = and i64 %i.pg, 4294967295
  %i.pi = mul nuw nsw i64 %i.ph, %i.hn
  %scevgep185 = getelementptr nuw i8, ptr %2, i64 %i.pi
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep184, ptr align 1 %scevgep185, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.6.i = or disjoint i64 %indvars.iv133.6.i, 1 ; 2 uses
  %i.pj = add nuw i64 %i.pa, %indvars.iv.next134.6.i
  %i.pk = and i64 %i.pj, 4294967295
  %i.pl = mul nuw nsw i64 %i.pk, %i.hn
  %scevgep184.1 = getelementptr i8, ptr %scevgep181, i64 %i.pl
  %i.pm = add nuw i64 %i.pc, %indvars.iv.next134.6.i
  %i.pn = and i64 %i.pm, 4294967295
  %i.po = mul nuw nsw i64 %i.pn, %i.hn
  %scevgep185.1 = getelementptr nuw i8, ptr %2, i64 %i.po
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep184.1, ptr align 1 %scevgep185.1, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next134.6.i.1 = add nuw nsw i64 %indvars.iv133.6.i, 2 ; 2 uses
  %niter268.next.1 = add nuw i64 %niter268, 2     ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %._crit_edge99.us.6.i.unr-lcssa, label %.lr.ph.us104.6.i, !llvm.loop !634

._crit_edge99.us.6.i.unr-lcssa:                   ; preds = %.lr.ph.us104.6.i
  br i1 %lcmp.mod265.not, label %._crit_edge99.us.6.i, label %.lr.ph.us104.6.i.epil.preheader

.lr.ph.us104.6.i.epil.preheader:                  ; preds = %._crit_edge99.us.6.i.unr-lcssa, %.preheader.us.6.i
  %indvars.iv133.6.i.epil.init = phi i64 [ 0, %.preheader.us.6.i ], [ %indvars.iv.next134.6.i.1, %._crit_edge99.us.6.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod266)
  %i.pp = add nuw i64 %i.pa, %indvars.iv133.6.i.epil.init
  %i.pq = and i64 %i.pp, 4294967295
  %i.pr = mul nuw nsw i64 %i.pq, %i.hn
  %scevgep184.epil = getelementptr i8, ptr %scevgep181, i64 %i.pr
  %i.ps = add nuw i64 %i.pc, %indvars.iv133.6.i.epil.init
  %i.pt = and i64 %i.ps, 4294967295
  %i.pu = mul nuw nsw i64 %i.pt, %i.hn
  %scevgep185.epil = getelementptr nuw i8, ptr %2, i64 %i.pu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep184.epil, ptr align 1 %scevgep185.epil, i64 %i.hn, i1 false), !tbaa !20
  br label %._crit_edge99.us.6.i

._crit_edge99.us.6.i:                             ; preds = %._crit_edge99.us.6.i.unr-lcssa, %.lr.ph.us104.6.i.epil.preheader
  %indvar.next183 = add nuw nsw i64 %indvar182, 1 ; 2 uses
  %exitcond188 = icmp eq i64 %indvar.next183, %wide.trip.count187
  br i1 %exitcond188, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader.us.6.i, !llvm.loop !635

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.split.us.i, %._crit_edge99.us.i
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split.us.i ], [ %indvar.next, %._crit_edge99.us.i ] ; 3 uses
  %i.pv = mul nuw i64 %indvar, %wide.trip.count136.i ; 3 uses
  %i.pw = mul nuw i64 %indvar, %i.qh              ; 3 uses
  br i1 %i.qi, label %.lr.ph.us104.i.epil.preheader, label %.lr.ph.us104.i

._crit_edge99.us.i.unr-lcssa:                     ; preds = %.lr.ph.us104.i
  br i1 %lcmp.mod.not, label %._crit_edge99.us.i, label %.lr.ph.us104.i.epil.preheader

.lr.ph.us104.i.epil.preheader:                    ; preds = %._crit_edge99.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv133.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next134.i.1, %._crit_edge99.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod238)
  %i.px = add nuw i64 %i.pv, %indvars.iv133.i.epil.init
  %i.py = and i64 %i.px, 4294967295
  %i.pz = mul nuw nsw i64 %i.py, %i.hn
  %scevgep138.epil = getelementptr i8, ptr %scevgep, i64 %i.pz
  %i.qa = shl nuw nsw i64 %indvars.iv133.i.epil.init, 3
  %i.qb = add nuw i64 %i.pw, %i.qa
  %i.qc = and i64 %i.qb, 4294967288
  %i.qd = mul nuw nsw i64 %i.qc, %i.hn
  %scevgep139.epil = getelementptr nuw i8, ptr %2, i64 %i.qd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep138.epil, ptr align 1 %scevgep139.epil, i64 %i.hn, i1 false), !tbaa !20
  br label %._crit_edge99.us.i

._crit_edge99.us.i:                               ; preds = %._crit_edge99.us.i.unr-lcssa, %.lr.ph.us104.i.epil.preheader
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge101.split.us.i, label %.preheader.us.i, !llvm.loop !635

.preheader.lr.ph.us.i:                            ; preds = %.preheader82.split.us.preheader.i
  %i.qe = load i32, ptr %i.a, align 16, !tbaa !13 ; 4 uses
  %.not113.i = icmp eq i32 %i.qe, 0
  br i1 %.not113.i, label %._crit_edge101.split.us.i, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.us.i
  %i.qf = load i64, ptr %i.e, align 16, !tbaa !8
  %wide.trip.count136.i = zext i32 %i.qe to i64   ; 3 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.qf ; 3 uses
  %i.qg = shl i32 %3, 3
  %i.qh = zext i32 %i.qg to i64
  %wide.trip.count = zext i32 %i.ho to i64
  %xtraiter = and i64 %wide.trip.count136.i, 1
  %i.qi = icmp eq i32 %i.qe, 1
  %unroll_iter = and i64 %wide.trip.count136.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod238 = trunc i32 %i.qe to i1
  br label %.preheader.us.i

_ZL15Adam7_interlacePhPKhjjj.exit:                ; preds = %._crit_edge93.split.us.i, %._crit_edge99.us.6.i, %._crit_edge101.split.us.5.i, %.preheader.lr.ph.us.6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.qj = icmp ult i32 %.0.i.i.i, 8
  br i1 %i.qj, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.preheader, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.preheader

_ZL15Adam7_interlacePhPKhjjj.exit.split.preheader: ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit
  %i.qk = load i64, ptr %i.h, align 16, !tbaa !8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.qk
  %i.qm = load i64, ptr %i.i, align 16, !tbaa !8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.qm
  %i.qo = load i32, ptr %i.f, align 16, !tbaa !13
  %i.qp = load i32, ptr %i.g, align 16, !tbaa !13
  %i.qq = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef nonnull %i.ql, ptr noundef %i.qn, i32 noundef %i.qo, i32 noundef %i.qp, i32 %i.l, i32 %i.n, ptr noundef %6) ; 2 uses
  %.not100 = icmp eq i32 %i.qq, 0
  br i1 %.not100, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.1, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.preheader: ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.thread, %_ZL15Adam7_interlacePhPKhjjj.exit
  %i.qr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !8  ; 2 uses
  %i.qt = load i64, ptr %i.i, align 16, !tbaa !8
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = tail call noalias noundef ptr @malloc(i64 noundef %i.qu) #30 ; 4 uses
  %.not99.us = icmp eq ptr %i.qv, null
  br i1 %.not99.us, label %.loopexit, label %.thread119.us

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.1:     ; preds = %.thread119.us
  %i.qw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.qx = load i64, ptr %i.qw, align 16, !tbaa !8 ; 2 uses
  %i.qy = sub i64 %i.qx, %i.qs
  %i.qz = tail call noalias noundef ptr @malloc(i64 noundef %i.qy) #30 ; 4 uses
  %.not99.us.1 = icmp eq ptr %i.qz, null
  br i1 %.not99.us.1, label %.loopexit, label %.thread119.us.1

.thread119.us.1:                                  ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.1
  %i.ra = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !13 ; 2 uses
  %i.rf = zext i32 %i.re to i64
  %i.rg = mul nuw nsw i64 %i.rf, %i.r             ; 2 uses
  %i.rh = add nuw nsw i64 %i.rg, 7
  %i.ri = and i64 %i.rh, 68719476728
  %i.rj = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !13 ; 2 uses
  tail call fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr noundef nonnull %i.qz, ptr noundef %i.rc, i64 noundef %i.ri, i64 noundef %i.rg, i32 noundef %i.rk)
  %i.rl = load ptr, ptr %0, align 8, !tbaa !10
  %i.rm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rn
  %.val111.us.1 = load i32, ptr %i.k, align 8, !tbaa !197
  %.val112.us.1 = load i32, ptr %i.m, align 4, !tbaa !200
  %i.rp = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.ro, ptr noundef nonnull %i.qz, i32 noundef %i.re, i32 noundef %i.rk, i32 %.val111.us.1, i32 %.val112.us.1, ptr noundef %6) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.qz) #31
  %.not100.us.1 = icmp eq i32 %i.rp, 0
  br i1 %.not100.us.1, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.2, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.2:     ; preds = %.thread119.us.1
  %i.rq = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !8  ; 2 uses
  %i.rs = sub i64 %i.rr, %i.qx
  %i.rt = tail call noalias noundef ptr @malloc(i64 noundef %i.rs) #30 ; 4 uses
  %.not99.us.2 = icmp eq ptr %i.rt, null
  br i1 %.not99.us.2, label %.loopexit, label %.thread119.us.2

.thread119.us.2:                                  ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.2
  %i.ru = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.rv = load i64, ptr %i.ru, align 16, !tbaa !8
  %i.rw = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !13 ; 2 uses
  %i.rz = zext i32 %i.ry to i64
  %i.sa = mul nuw nsw i64 %i.rz, %i.r             ; 2 uses
  %i.sb = add nuw nsw i64 %i.sa, 7
  %i.sc = and i64 %i.sb, 68719476728
  %i.sd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !13 ; 2 uses
  tail call fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr noundef nonnull %i.rt, ptr noundef %i.rw, i64 noundef %i.sc, i64 noundef %i.sa, i32 noundef %i.se)
  %i.sf = load ptr, ptr %0, align 8, !tbaa !10
  %i.sg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.sh = load i64, ptr %i.sg, align 16, !tbaa !8
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.sh
  %.val111.us.2 = load i32, ptr %i.k, align 8, !tbaa !197
  %.val112.us.2 = load i32, ptr %i.m, align 4, !tbaa !200
  %i.sj = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.si, ptr noundef nonnull %i.rt, i32 noundef %i.ry, i32 noundef %i.se, i32 %.val111.us.2, i32 %.val112.us.2, ptr noundef %6) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.rt) #31
  %.not100.us.2 = icmp eq i32 %i.sj, 0
  br i1 %.not100.us.2, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.3, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.3:     ; preds = %.thread119.us.2
  %i.sk = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.sl = load i64, ptr %i.sk, align 16, !tbaa !8 ; 2 uses
  %i.sm = sub i64 %i.sl, %i.rr
  %i.sn = tail call noalias noundef ptr @malloc(i64 noundef %i.sm) #30 ; 4 uses
  %.not99.us.3 = icmp eq ptr %i.sn, null
  br i1 %.not99.us.3, label %.loopexit, label %.thread119.us.3

.thread119.us.3:                                  ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.3
  %i.so = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !13 ; 2 uses
  %i.st = zext i32 %i.ss to i64
  %i.su = mul nuw nsw i64 %i.st, %i.r             ; 2 uses
  %i.sv = add nuw nsw i64 %i.su, 7
  %i.sw = and i64 %i.sv, 68719476728
  %i.sx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !13 ; 2 uses
  tail call fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr noundef nonnull %i.sn, ptr noundef %i.sq, i64 noundef %i.sw, i64 noundef %i.su, i32 noundef %i.sy)
  %i.sz = load ptr, ptr %0, align 8, !tbaa !10
  %i.ta = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.tb
  %.val111.us.3 = load i32, ptr %i.k, align 8, !tbaa !197
  %.val112.us.3 = load i32, ptr %i.m, align 4, !tbaa !200
  %i.td = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.tc, ptr noundef nonnull %i.sn, i32 noundef %i.ss, i32 noundef %i.sy, i32 %.val111.us.3, i32 %.val112.us.3, ptr noundef %6) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.sn) #31
  %.not100.us.3 = icmp eq i32 %i.td, 0
  br i1 %.not100.us.3, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.4, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.4:     ; preds = %.thread119.us.3
  %i.te = getelementptr inbounds nuw i8, ptr %i.i, i64 40
end_hunk_9
begin_hunk_10_@_ZL13addChunk_PLTEP8ucvectorPK16LodePNGColorMode:bb.a
  %i.p = phi ptr [ %i.o, %.thread.i.i.i ], [ %.pre.i, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  %i.r = sub nsw i64 0, %i.d
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r ; 5 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -12 ; 3 uses
  store i8 0, ptr %i.t, align 1, !tbaa !20
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -11
  store i8 0, ptr %i.u, align 1, !tbaa !20
  %i.v = lshr i64 %i.d, 8
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 -10
  store i8 %i.w, ptr %i.x, align 1, !tbaa !20
  %i.y = trunc i64 %i.d to i8
  %i.z = getelementptr inbounds i8, ptr %i.s, i64 -9
  store i8 %i.y, ptr %i.z, align 1, !tbaa !20
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 -8
  store i32 1163152464, ptr %i.aa, align 1, !tbaa !20, !alias.scope !710
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !206
  %.not2331 = icmp eq i64 %i.ab, 0
  br i1 %.not2331, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.01933 = phi i64 [ 8, %.lr.ph ], [ %i.ar, %bb.f ] ; 2 uses
  %.02032 = phi i64 [ 0, %.lr.ph ], [ %i.at, %bb.f ] ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !201
  %i.ae = shl i64 %.02032, 2                      ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 %.01933 ; 3 uses
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !20
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !201
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !20
  %i.am = getelementptr i8, ptr %i.ah, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !20
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !201
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ae
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %i.ar = add i64 %.01933, 3
  %i.as = getelementptr i8, ptr %i.ah, i64 2
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !20
  %i.at = add i64 %.02032, 1                      ; 2 uses
  %i.au = load i64, ptr %i.a, align 8, !tbaa !206
  %.not23 = icmp eq i64 %i.at, %i.au
  br i1 %.not23, label %._crit_edge, label %bb.f, !llvm.loop !714

._crit_edge:                                      ; preds = %bb.f, %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit
  tail call void @_Z26lodepng_chunk_generate_crcPh(ptr noundef nonnull %i.t)
  br label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread: ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %._crit_edge
  %.1 = phi i32 [ 68, %bb.a ], [ 0, %._crit_edge ], [ 83, %bb.e ], [ 77, %bb.b ], [ 77, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_tRNSP8ucvectorPK16LodePNGColorMode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !197
  switch i32 %i.a, label %.thread103 [
    i32 3, label %bb.b
    i32 0, label %bb.i
    i32 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !206  ; 3 uses
  %.not56106 = icmp eq i64 %i.c, 0
  br i1 %.not56106, label %.thread103, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.d ] ; 2 uses
  %.044108 = phi i64 [ %i.c, %.lr.ph ], [ %i.j, %bb.d ] ; 10 uses
  %i.f = shl i64 %.044108, 2
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !20
  %.not57 = icmp eq i8 %i.i, -1
  br i1 %.not57, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %.044108, -1                     ; 2 uses
  %.not56 = icmp eq i64 %i.j, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not56, label %.thread103, label %bb.c, !llvm.loop !715

._crit_edge:                                      ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68   ; 2 uses
  %i.m = add i64 %i.l, %.044108                   ; 3 uses
  %.not.i = icmp ult i64 %i.m, %i.l
  br i1 %.not.i, label %.thread103, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.n = add nuw i64 %i.m, 12                     ; 4 uses
  %i.o = icmp ult i64 %i.m, -12
  br i1 %i.o, label %bb.f, label %.thread103

bb.f:                                             ; preds = %bb.e
  store i64 %i.n, ptr %i.k, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !69   ; 2 uses
  %i.r = icmp ugt i64 %i.n, %i.q
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !63  ; 2 uses
  br i1 %i.r, label %bb.g, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit

bb.g:                                             ; preds = %bb.f
  %i.s = lshr i64 %i.q, 1
  %i.t = add i64 %i.s, %i.n                       ; 2 uses
  %i.u = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.t) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %.thread103, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.g
  store i64 %i.t, ptr %i.p, align 8, !tbaa !69
  store ptr %i.u, ptr %0, align 8, !tbaa !63
  br label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit

_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit:    ; preds = %bb.f, %.thread.i.i.i
  %i.v = phi ptr [ %i.u, %.thread.i.i.i ], [ %.pre.i, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = sub i64 0, %.044108
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -12 ; 8 uses
  %i.aa = lshr i64 %.044108, 24
  %i.ab = trunc i64 %i.aa to i8
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !20
  %i.ac = lshr i64 %.044108, 16
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 -11
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !20
  %i.af = lshr i64 %.044108, 8
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds i8, ptr %i.y, i64 -10
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !20
  %i.ai = trunc i64 %.044108 to i8
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 -9
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !20
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 -8
  store i32 1397641844, ptr %i.ak, align 1, !tbaa !20, !alias.scope !716
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %xtraiter = and i64 %.044108, 3                 ; 3 uses
  %i.am = sub i64 %indvar, %i.c
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.epil.preheader, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.new

_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.new: ; preds = %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit
  %unroll_iter = and i64 %.044108, -4
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.new
  %.146111 = phi i64 [ 0, %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.new ], [ %i.bt, %bb.h ] ; 6 uses
  %niter = phi i64 [ 0, %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.new ], [ %niter.next.3, %bb.h ]
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !201
  %i.ap = shl i64 %.146111, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !20
  %i.at = getelementptr i8, ptr %i.z, i64 %.146111
  %i.au = getelementptr i8, ptr %i.at, i64 8
  store i8 %i.as, ptr %i.au, align 1, !tbaa !20
  %i.av = or disjoint i64 %.146111, 1             ; 2 uses
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !201
  %i.ax = shl i64 %i.av, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !20
  %i.bb = getelementptr i8, ptr %i.z, i64 %i.av
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !20
  %i.bd = or disjoint i64 %.146111, 2             ; 2 uses
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !201
  %i.bf = shl i64 %i.bd, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.bj = getelementptr i8, ptr %i.z, i64 %i.bd
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !20
  %i.bl = or disjoint i64 %.146111, 3             ; 2 uses
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !201
  %i.bn = shl i64 %i.bl, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !20
  %i.br = getelementptr i8, ptr %i.z, i64 %i.bl
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !20
  %i.bt = add nuw i64 %.146111, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread99.loopexit.unr-lcssa, label %bb.h, !llvm.loop !720

bb.i:                                             ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !213
  %.not54 = icmp eq i32 %i.bv, 0
  br i1 %.not54, label %.thread103, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !68 ; 4 uses
  %.not.i62 = icmp ugt i64 %i.bx, -3
  br i1 %.not.i62, label %.thread103, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = add nuw i64 %i.bx, 14                   ; 3 uses
  %i.bz = icmp ult i64 %i.bx, -14
  br i1 %i.bz, label %bb.l, label %.thread103

bb.l:                                             ; preds = %bb.k
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !68
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !69 ; 2 uses
  %i.cc = icmp ugt i64 %i.by, %i.cb
  %.pre.i64 = load ptr, ptr %0, align 8, !tbaa !63 ; 2 uses
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cd = lshr i64 %i.cb, 1
  %i.ce = add i64 %i.cd, %i.by                    ; 2 uses
  %i.cf = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i64, i64 noundef %i.ce) #32 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i65, label %.thread103, label %.thread.i.i.i66

.thread.i.i.i66:                                  ; preds = %bb.m
  store i64 %i.ce, ptr %i.ca, align 8, !tbaa !69
  store ptr %i.cf, ptr %0, align 8, !tbaa !63
  br label %bb.n

bb.n:                                             ; preds = %.thread.i.i.i66, %bb.l
  %i.cg = phi ptr [ %i.cf, %.thread.i.i.i66 ], [ %.pre.i64, %bb.l ]
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.bx ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 2>, ptr %i.ch, align 1, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 1397641844, ptr %i.ci, align 1, !tbaa !20, !alias.scope !721
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !296
  %i.cl = lshr i32 %i.ck, 8
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !20
  %i.co = load i32, ptr %i.cj, align 4, !tbaa !296
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 9
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !20
  br label %.thread99

bb.o:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !213
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %.thread103, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !68 ; 4 uses
  %.not.i68 = icmp ugt i64 %i.cu, -7
  br i1 %.not.i68, label %.thread103, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = add nuw i64 %i.cu, 18                   ; 3 uses
  %i.cw = icmp ult i64 %i.cu, -18
  br i1 %i.cw, label %bb.r, label %.thread103

bb.r:                                             ; preds = %bb.q
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !68
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !69 ; 2 uses
  %i.cz = icmp ugt i64 %i.cv, %i.cy
  %.pre.i70 = load ptr, ptr %0, align 8, !tbaa !63 ; 2 uses
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.da = lshr i64 %i.cy, 1
  %i.db = add i64 %i.da, %i.cv                    ; 2 uses
  %i.dc = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i70, i64 noundef %i.db) #32 ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i71, label %.thread103, label %.thread.i.i.i72

.thread.i.i.i72:                                  ; preds = %bb.s
  store i64 %i.db, ptr %i.cx, align 8, !tbaa !69
  store ptr %i.dc, ptr %0, align 8, !tbaa !63
  br label %bb.t

bb.t:                                             ; preds = %.thread.i.i.i72, %bb.r
  %i.dd = phi ptr [ %i.dc, %.thread.i.i.i72 ], [ %.pre.i70, %bb.r ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cu ; 9 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 6>, ptr %i.de, align 1, !tbaa !20
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 1397641844, ptr %i.df, align 1, !tbaa !20, !alias.scope !725
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !296
  %i.di = lshr i32 %i.dh, 8
  %i.dj = trunc i32 %i.di to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !20
  %i.dl = load i32, ptr %i.dg, align 4, !tbaa !296
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 9
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !297
  %i.dq = lshr i32 %i.dp, 8
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 10
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !20
  %i.dt = load i32, ptr %i.do, align 8, !tbaa !297
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.de, i64 11
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !298
  %i.dy = lshr i32 %i.dx, 8
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !20
  %i.eb = load i32, ptr %i.dw, align 4, !tbaa !298
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.de, i64 13
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !20
  br label %.thread99

.thread99.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread99, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread99.loopexit.unr-lcssa, %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit
  %.146111.epil.init = phi i64 [ 0, %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit ], [ %i.bt, %.thread99.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %.146111.epil = phi i64 [ %.146111.epil.init, %.epil.preheader ], [ %i.el, %bb.u ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.ee = load ptr, ptr %i.al, align 8, !tbaa !201
  %i.ef = shl i64 %.146111.epil, 2
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !20
  %i.ej = getelementptr i8, ptr %i.z, i64 %.146111.epil
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  store i8 %i.ei, ptr %i.ek, align 1, !tbaa !20
  %i.el = add nuw i64 %.146111.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread99, label %bb.u, !llvm.loop !729

.thread99:                                        ; preds = %.thread99.loopexit.unr-lcssa, %bb.u, %bb.t, %bb.n
  %.1102 = phi ptr [ %i.ch, %bb.n ], [ %i.de, %bb.t ], [ %i.z, %bb.u ], [ %i.z, %.thread99.loopexit.unr-lcssa ]
  tail call void @_Z26lodepng_chunk_generate_crcPh(ptr noundef nonnull %.1102)
  br label %.thread103

.thread103:                                       ; preds = %bb.d, %bb.b, %bb.o, %bb.i, %bb.a, %bb.s, %bb.p, %bb.q, %bb.m, %bb.j, %bb.k, %bb.g, %._crit_edge, %bb.e, %.thread99
  %.5 = phi i32 [ 77, %bb.k ], [ 77, %bb.q ], [ 0, %bb.o ], [ 0, %.thread99 ], [ 83, %bb.g ], [ 77, %._crit_edge ], [ 77, %bb.e ], [ 83, %bb.m ], [ 77, %bb.j ], [ 83, %bb.s ], [ 77, %bb.p ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_bKGDP8ucvectorPK11LodePNGInfo(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !430
  switch i32 %i.b, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread [
    i32 0, label %bb.b
    i32 4, label %bb.b
    i32 2, label %bb.g
    i32 6, label %bb.g
    i32 3, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68   ; 4 uses
  %.not.i = icmp ugt i64 %i.d, -3
  br i1 %.not.i, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i64 %i.d, 14                     ; 3 uses
  %i.f = icmp ult i64 %i.d, -14
  br i1 %i.f, label %bb.d, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

bb.d:                                             ; preds = %bb.c
  store i64 %i.e, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %i.i = icmp ugt i64 %i.e, %i.h
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !63  ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = lshr i64 %i.h, 1
  %i.k = add i64 %i.j, %i.e                       ; 2 uses
  %i.l = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.k) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.e
  store i64 %i.k, ptr %i.g, align 8, !tbaa !69
  store ptr %i.l, ptr %0, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %.thread.i.i.i, %bb.d
  %i.m = phi ptr [ %i.l, %.thread.i.i.i ], [ %.pre.i, %bb.d ]
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.d ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 2>, ptr %i.n, align 1, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 1145523042, ptr %i.o, align 1, !tbaa !20, !alias.scope !730
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !446
  %i.r = lshr i32 %i.q, 8
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %i.s, ptr %i.t, align 1, !tbaa !20
  %i.u = load i32, ptr %i.p, align 4, !tbaa !446
  %i.v = trunc i32 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  store i8 %i.v, ptr %i.w, align 1, !tbaa !20
  br label %bb.q

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !68   ; 4 uses
  %.not.i36 = icmp ugt i64 %i.y, -7
  br i1 %.not.i36, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = add nuw i64 %i.y, 18                     ; 3 uses
  %i.aa = icmp ult i64 %i.y, -18
  br i1 %i.aa, label %bb.i, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

bb.i:                                             ; preds = %bb.h
  store i64 %i.z, ptr %i.x, align 8, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !69 ; 2 uses
  %i.ad = icmp ugt i64 %i.z, %i.ac
  %.pre.i38 = load ptr, ptr %0, align 8, !tbaa !63 ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = lshr i64 %i.ac, 1
  %i.af = add i64 %i.ae, %i.z                     ; 2 uses
  %i.ag = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i38, i64 noundef %i.af) #32 ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i39, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %.thread.i.i.i40

.thread.i.i.i40:                                  ; preds = %bb.j
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !69
  store ptr %i.ag, ptr %0, align 8, !tbaa !63
  br label %bb.k

bb.k:                                             ; preds = %.thread.i.i.i40, %bb.i
  %i.ah = phi ptr [ %i.ag, %.thread.i.i.i40 ], [ %.pre.i38, %bb.i ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.y ; 9 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 6>, ptr %i.ai, align 1, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 1145523042, ptr %i.aj, align 1, !tbaa !20, !alias.scope !734
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !446
  %i.am = lshr i32 %i.al, 8
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !20
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !446
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 9
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !445
  %i.au = lshr i32 %i.at, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !20
  %i.ax = load i32, ptr %i.as, align 8, !tbaa !445
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 11
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !444
  %i.bc = lshr i32 %i.bb, 8
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !20
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !444
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 13
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !20
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !68 ; 4 uses
  %.not.i42 = icmp eq i64 %i.bj, -1
  br i1 %.not.i42, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = add nuw i64 %i.bj, 13                   ; 3 uses
  %i.bl = icmp ult i64 %i.bj, -13
  br i1 %i.bl, label %bb.n, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

bb.n:                                             ; preds = %bb.m
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !68
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !69 ; 2 uses
  %i.bo = icmp ugt i64 %i.bk, %i.bn
  %.pre.i44 = load ptr, ptr %0, align 8, !tbaa !63 ; 2 uses
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = lshr i64 %i.bn, 1
  %i.bq = add i64 %i.bp, %i.bk                    ; 2 uses
  %i.br = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i44, i64 noundef %i.bq) #32 ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i45, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %.thread.i.i.i46

.thread.i.i.i46:                                  ; preds = %bb.o
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !69
  store ptr %i.br, ptr %0, align 8, !tbaa !63
  br label %bb.p

bb.p:                                             ; preds = %.thread.i.i.i46, %bb.n
  %i.bs = phi ptr [ %i.br, %.thread.i.i.i46 ], [ %.pre.i44, %bb.n ]
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bj ; 4 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.bt, align 1, !tbaa !20
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 1145523042, ptr %i.bu, align 1, !tbaa !20, !alias.scope !738
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !446
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !20
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %bb.k, %bb.p
  %.0.ph = phi ptr [ %i.bt, %bb.p ], [ %i.ai, %bb.k ], [ %i.n, %bb.f ]
  tail call void @_Z26lodepng_chunk_generate_crcPh(ptr noundef nonnull %.0.ph)
  br label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread: ; preds = %bb.o, %bb.l, %bb.m, %bb.j, %bb.g, %bb.h, %bb.e, %bb.b, %bb.c, %bb.a, %bb.q
  %.3 = phi i32 [ 77, %bb.h ], [ 0, %bb.a ], [ 77, %bb.c ], [ 0, %bb.q ], [ 83, %bb.e ], [ 77, %bb.b ], [ 83, %bb.j ], [ 77, %bb.g ], [ 83, %bb.o ], [ 77, %bb.l ], [ 77, %bb.m ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
end_hunk_10
begin_hunk_11_@_ZL25generateFixedDistanceTreeP11HuffmanTree:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.i, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 32, ptr %i.k, align 4, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 15, ptr %i.l, align 8, !tbaa !87
  %i.m = tail call fastcc noundef i32 @_ZL28HuffmanTree_makeFromLengths2P11HuffmanTree(ptr noundef nonnull %0)
  br label %_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj.exit

_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj.exit: ; preds = %.preheader.preheader, %.preheader.i.preheader
  %.015.i = phi i32 [ %i.m, %.preheader.i.preheader ], [ 83, %.preheader.preheader ]
  tail call void @free(ptr noundef nonnull %i.a) #31
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj.exit
  %.09 = phi i32 [ %.015.i, %_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj.exit ], [ 83, %bb.a ]
  ret i32 %.09
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj(ptr nofree noundef nonnull captures(none) initializes((8, 16)) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 19, 289) %2, i32 noundef range(i32 7, 16) %3) unnamed_addr #3 {
bb.a:
  %i.a = shl nuw nsw i64 %2, 2
  %i.b = tail call noalias noundef ptr @malloc(i64 noundef %i.a) #30 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !85
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %2, 504                        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x i32>, ptr %i.d, align 4, !tbaa !13
  %wide.load22 = load <4 x i32>, ptr %i.e, align 4, !tbaa !13
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> %wide.load, ptr %i.f, align 4, !tbaa !13
  store <4 x i32> %wide.load22, ptr %i.g, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !837

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %middle.block, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.j, ptr %i.k, align 4, !tbaa !13
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.l = and i64 %indvars.iv.next, 4294967295
  %.not18 = icmp eq i64 %2, %i.l
  br i1 %.not18, label %.loopexit, label %.preheader, !llvm.loop !838

.loopexit:                                        ; preds = %.preheader, %middle.block
  %i.m = trunc nuw nsw i64 %2 to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.m, ptr %i.n, align 4, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.o, align 8, !tbaa !87
  %i.p = tail call fastcc noundef i32 @_ZL28HuffmanTree_makeFromLengths2P11HuffmanTree(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.015 = phi i32 [ %i.p, %.loopexit ], [ 83, %bb.a ]
  ret i32 %.015
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL28HuffmanTree_makeFromLengths2P11HuffmanTree(ptr nofree noundef nonnull captures(none) initializes((0, 8)) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !86   ; 3 uses
  %i.c = zext i32 %i.b to i64                     ; 5 uses
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #30 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %i.h = add i32 %i.g, 1                          ; 3 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 4 uses
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef %i.j) #30 ; 14 uses
  %i.l = tail call noalias noundef ptr @malloc(i64 noundef %i.j) #30 ; 11 uses
  %i.m = icmp ne ptr %i.e, null
  %i.n = icmp ne ptr %i.k, null
  %or.cond = and i1 %i.m, %i.n
  %i.o = icmp ne ptr %i.l, null
  %or.cond3 = and i1 %or.cond, %i.o
  br i1 %or.cond3, label %.preheader66, label %.critedge

.preheader66:                                     ; preds = %bb.a
  %.not68 = icmp eq i32 %i.h, 0
  br i1 %.not68, label %.preheader65, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader66
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 0, i64 %i.j, i1 false), !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !13
  br label %.preheader65

.preheader65:                                     ; preds = %.lr.ph.preheader, %.preheader66
  %.not5670 = icmp eq i32 %i.b, 0                 ; 3 uses
  br i1 %.not5670, label %.preheader64, label %.lr.ph72

.lr.ph72:                                         ; preds = %.preheader65
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85   ; 5 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.r = icmp ult i32 %i.b, 4
  br i1 %i.r, label %.epil.preheader, label %.lr.ph72.new

.lr.ph72.new:                                     ; preds = %.lr.ph72
  %unroll_iter = and i64 %i.c, 4294967292
  br label %bb.c

.preheader64.loopexit.unr-lcssa:                  ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader64, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader64.loopexit.unr-lcssa, %.lr.ph72
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next.3, %.preheader64.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.epil
  %i.t = load i32, ptr %i.s, align 4, !tbaa !13
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !13
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !13
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader64, label %bb.b, !llvm.loop !839

.preheader64:                                     ; preds = %.preheader64.loopexit.unr-lcssa, %bb.b, %.preheader65
  %.not5773 = icmp eq i32 %i.g, 0
  br i1 %.not5773, label %.preheader, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %.preheader64
  %umax = tail call i32 @llvm.umax.i32(i32 %i.h, i32 2) ; 2 uses
  %wide.trip.count = zext i32 %umax to i64
  %.pre = load i32, ptr %i.l, align 4, !tbaa !13  ; 2 uses
  %i.y = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter120 = and i64 %i.y, 3                  ; 3 uses
  %i.z = add i32 %umax, -2
  %i.aa = icmp ult i32 %i.z, 3
  br i1 %i.aa, label %.lr.ph75.epil.preheader, label %.lr.ph75.preheader.new

.lr.ph75.preheader.new:                           ; preds = %.lr.ph75.preheader
  %unroll_iter124 = and i64 %i.y, -4
  br label %.lr.ph75

bb.c:                                             ; preds = %bb.c, %.lr.ph72.new
  %indvars.iv = phi i64 [ 0, %.lr.ph72.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph72.new ], [ %niter.next.3, %bb.c ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !13
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !13
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !13
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !13
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !13
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !13
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !13
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !13
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !13
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !13
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader64.loopexit.unr-lcssa, label %bb.c, !llvm.loop !840

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph75
  %lcmp.mod122.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod122.not, label %.preheader, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph75.preheader
  %.epil.init = phi i32 [ %.pre, %.lr.ph75.preheader ], [ %i.ci, %.preheader.loopexit.unr-lcssa ]
  %indvars.iv85.epil.init = phi i64 [ 1, %.lr.ph75.preheader ], [ %indvars.iv.next86.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter120, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph75.epil

.lr.ph75.epil:                                    ; preds = %.lr.ph75.epil, %.lr.ph75.epil.preheader
  %i.bc = phi i32 [ %.epil.init, %.lr.ph75.epil.preheader ], [ %i.bh, %.lr.ph75.epil ]
  %indvars.iv85.epil = phi i64 [ %indvars.iv85.epil.init, %.lr.ph75.epil.preheader ], [ %indvars.iv.next86.epil, %.lr.ph75.epil ] ; 3 uses
  %epil.iter121 = phi i64 [ 0, %.lr.ph75.epil.preheader ], [ %epil.iter121.next, %.lr.ph75.epil ]
  %i.bd = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv85.epil
  %i.be = getelementptr i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !13
  %i.bg = add i32 %i.bf, %i.bc
  %i.bh = shl i32 %i.bg, 1                        ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv85.epil
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !13
  %indvars.iv.next86.epil = add nuw nsw i64 %indvars.iv85.epil, 1
  %epil.iter121.next = add i64 %epil.iter121, 1   ; 2 uses
  %epil.iter121.cmp.not = icmp eq i64 %epil.iter121.next, %xtraiter120
  br i1 %epil.iter121.cmp.not, label %.preheader, label %.lr.ph75.epil, !llvm.loop !841

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph75.epil, %.preheader64
  br i1 %.not5670, label %._crit_edge, label %.lr.ph78

.lr.ph78:                                         ; preds = %.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !85
  br label %bb.d

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %i.bl = phi i32 [ %.pre, %.lr.ph75.preheader.new ], [ %i.ci, %.lr.ph75 ]
  %indvars.iv85 = phi i64 [ 1, %.lr.ph75.preheader.new ], [ %indvars.iv.next86.3, %.lr.ph75 ] ; 6 uses
  %niter125 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter125.next.3, %.lr.ph75 ]
  %i.bm = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv85
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !13
  %i.bp = add i32 %i.bo, %i.bl
  %i.bq = shl i32 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv85
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !13
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv.next86
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !13
  %i.bv = add i32 %i.bu, %i.bq
  %i.bw = shl i32 %i.bv, 1                        ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next86
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !13
  %indvars.iv.next86.1 = add nuw nsw i64 %indvars.iv85, 2 ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv.next86.1
  %i.bz = getelementptr i8, ptr %i.by, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.cb = add i32 %i.ca, %i.bw
  %i.cc = shl i32 %i.cb, 1                        ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next86.1
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !13
  %indvars.iv.next86.2 = add nuw nsw i64 %indvars.iv85, 3 ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv.next86.2
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !13
  %i.ch = add i32 %i.cg, %i.cc
  %i.ci = shl i32 %i.ch, 1                        ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next86.2
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !13
  %indvars.iv.next86.3 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %niter125.next.3 = add nuw i64 %niter125, 4     ; 2 uses
  %niter125.ncmp.3 = icmp eq i64 %niter125.next.3, %unroll_iter124
  br i1 %niter125.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph75, !llvm.loop !842

bb.d:                                             ; preds = %.lr.ph78, %bb.f
  %indvars.iv88 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next89, %bb.f ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv88 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !13 ; 2 uses
  %.not59 = icmp eq i32 %i.cl, 0
  br i1 %.not59, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !13 ; 3 uses
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !13
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv88 ; 2 uses
  store i32 %i.co, ptr %i.cq, align 4, !tbaa !13
  %i.cr = load i32, ptr %i.ck, align 4, !tbaa !13
  %notmask = shl nsw i32 -1, %i.cr
  %i.cs = xor i32 %notmask, -1
  %i.ct = and i32 %i.co, %i.cs
  store i32 %i.ct, ptr %i.cq, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %.not58 = icmp eq i64 %indvars.iv.next89, %i.c
  br i1 %.not58, label %._crit_edge, label %bb.d, !llvm.loop !843

._crit_edge:                                      ; preds = %bb.f, %.preheader
  tail call void @free(ptr noundef %i.k) #31
  tail call void @free(ptr noundef %i.l) #31
  %calloc.i = tail call dereferenceable_or_null(2048) ptr @calloc(i64 1, i64 2048) ; 6 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %_ZL21HuffmanTree_makeTableP11HuffmanTree.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  br i1 %.not5670, label %vector.body.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !85
  br label %bb.h

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.di, %vector.body ], [ <i64 512, i64 0>, %vector.body.preheader ]
  %vec.phi111 = phi <2 x i64> [ %i.dj, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %calloc.i, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %wide.load = load <2 x i32>, ptr %i.cw, align 4, !tbaa !13 ; 2 uses
  %wide.load112 = load <2 x i32>, ptr %i.cx, align 4, !tbaa !13 ; 2 uses
  %i.cy = icmp ugt <2 x i32> %wide.load, splat (i32 9)
  %i.cz = icmp ugt <2 x i32> %wide.load112, splat (i32 9)
  %i.da = add <2 x i32> %wide.load, splat (i32 -9)
  %i.db = add <2 x i32> %wide.load112, splat (i32 -9)
  %i.dc = zext nneg <2 x i32> %i.da to <2 x i64>
  %i.dd = zext nneg <2 x i32> %i.db to <2 x i64>
  %i.de = shl nuw <2 x i64> splat (i64 1), %i.dc
  %i.df = shl nuw <2 x i64> splat (i64 1), %i.dd
  %i.dg = select <2 x i1> %i.cy, <2 x i64> %i.de, <2 x i64> zeroinitializer
  %i.dh = select <2 x i1> %i.cz, <2 x i64> %i.df, <2 x i64> zeroinitializer
  %i.di = add <2 x i64> %i.dg, %vec.phi           ; 2 uses
  %i.dj = add <2 x i64> %i.dh, %vec.phi111        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dk = icmp eq i64 %index.next, 512
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !844

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dj, %i.di
  %i.dl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 11 uses
  %i.dm = tail call noalias noundef ptr @malloc(i64 noundef %i.dl) #30 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !77
  %i.do = shl i64 %i.dl, 1
  %i.dp = tail call noalias noundef ptr @malloc(i64 noundef %i.do) #30 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !81
  %.not151.i = icmp eq ptr %i.dm, null
  %.not152.i = icmp eq ptr %i.dp, null
  %or.cond.i = or i1 %.not151.i, %.not152.i
  br i1 %or.cond.i, label %_ZL21HuffmanTree_makeTableP11HuffmanTree.exit.sink.split, label %.preheader172.i

bb.h:                                             ; preds = %bb.i, %.lr.ph.i
  %.0126178.i = phi i64 [ 0, %.lr.ph.i ], [ %i.eb, %bb.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.0126178.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !13 ; 3 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %bb.i, label %_ZL11reverseBitsjj.exit.i

_ZL11reverseBitsjj.exit.i:                        ; preds = %bb.h
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0126178.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !13
  %i.dw = add i32 %i.ds, -9
  %i.dx = lshr i32 %i.dv, %i.dw
  %trunc.i = trunc i32 %i.dx to i9
  %rev.i = tail call i9 @llvm.bitreverse.i9(i9 %trunc.i)
  %i.dy = zext i9 %rev.i to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %calloc.i, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !13
  %..i = tail call i32 @llvm.umax.i32(i32 %i.ea, i32 %i.ds)
  store i32 %..i, ptr %i.dz, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %_ZL11reverseBitsjj.exit.i, %bb.h
  %i.eb = add nuw nsw i64 %.0126178.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eb, %i.c
  br i1 %exitcond.not.i, label %vector.body.preheader, label %bb.h, !llvm.loop !845

vector.body.preheader:                            ; preds = %bb.i, %bb.g
  br label %vector.body

.preheader172.i:                                  ; preds = %middle.block
  %.not198.i = icmp eq i64 %i.dl, 0               ; 3 uses
  br i1 %.not198.i, label %.preheader171.i.preheader, label %.lr.ph182.i.preheader

.lr.ph182.i.preheader:                            ; preds = %.preheader172.i
  %xtraiter126 = and i64 %i.dl, 3                 ; 3 uses
  %i.ec = icmp ult i64 %i.dl, 4
  br i1 %i.ec, label %.lr.ph182.i.epil.preheader, label %.lr.ph182.i.preheader.new

.lr.ph182.i.preheader.new:                        ; preds = %.lr.ph182.i.preheader
  %unroll_iter130 = and i64 %i.dl, -4
  br label %.lr.ph182.i

.lr.ph182.i:                                      ; preds = %.lr.ph182.i, %.lr.ph182.i.preheader.new
  %.2128181.i = phi i64 [ 0, %.lr.ph182.i.preheader.new ], [ %i.eo, %.lr.ph182.i ] ; 5 uses
  %niter131 = phi i64 [ 0, %.lr.ph182.i.preheader.new ], [ %niter131.next.3, %.lr.ph182.i ]
  %i.ed = load ptr, ptr %i.dn, align 8, !tbaa !77
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.2128181.i
  store i8 16, ptr %i.ee, align 1, !tbaa !20
  %i.ef = load ptr, ptr %i.dn, align 8, !tbaa !77
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.2128181.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store i8 16, ptr %i.eh, align 1, !tbaa !20
  %i.ei = load ptr, ptr %i.dn, align 8, !tbaa !77
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.2128181.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  store i8 16, ptr %i.ek, align 1, !tbaa !20
  %i.el = load ptr, ptr %i.dn, align 8, !tbaa !77
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %.2128181.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 3
  store i8 16, ptr %i.en, align 1, !tbaa !20
  %i.eo = add nuw i64 %.2128181.i, 4              ; 2 uses
  %niter131.next.3 = add nuw i64 %niter131, 4     ; 2 uses
  %niter131.ncmp.3 = icmp eq i64 %niter131.next.3, %unroll_iter130
  br i1 %niter131.ncmp.3, label %.preheader171.i.preheader.loopexit.unr-lcssa, label %.lr.ph182.i, !llvm.loop !846

.preheader171.i.preheader.loopexit.unr-lcssa:     ; preds = %.lr.ph182.i
  %lcmp.mod128.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod128.not, label %.preheader171.i.preheader, label %.lr.ph182.i.epil.preheader

.lr.ph182.i.epil.preheader:                       ; preds = %.preheader171.i.preheader.loopexit.unr-lcssa, %.lr.ph182.i.preheader
  %.2128181.i.epil.init = phi i64 [ 0, %.lr.ph182.i.preheader ], [ %i.eo, %.preheader171.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod129 = icmp ne i64 %xtraiter126, 0
  tail call void @llvm.assume(i1 %lcmp.mod129)
  br label %.lr.ph182.i.epil

.lr.ph182.i.epil:                                 ; preds = %.lr.ph182.i.epil, %.lr.ph182.i.epil.preheader
  %.2128181.i.epil = phi i64 [ %i.er, %.lr.ph182.i.epil ], [ %.2128181.i.epil.init, %.lr.ph182.i.epil.preheader ] ; 2 uses
  %epil.iter127 = phi i64 [ %epil.iter127.next, %.lr.ph182.i.epil ], [ 0, %.lr.ph182.i.epil.preheader ]
  %i.ep = load ptr, ptr %i.dn, align 8, !tbaa !77
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.2128181.i.epil
  store i8 16, ptr %i.eq, align 1, !tbaa !20
  %i.er = add nuw i64 %.2128181.i.epil, 1
  %epil.iter127.next = add i64 %epil.iter127, 1   ; 2 uses
  %epil.iter127.cmp.not = icmp eq i64 %epil.iter127.next, %xtraiter126
  br i1 %epil.iter127.cmp.not, label %.preheader171.i.preheader, label %.lr.ph182.i.epil, !llvm.loop !847

.preheader171.i.preheader:                        ; preds = %.preheader171.i.preheader.loopexit.unr-lcssa, %.lr.ph182.i.epil, %.preheader172.i
  br label %.preheader171.i

.preheader171.i:                                  ; preds = %.preheader171.i.preheader, %bb.k
  %.3129184.i = phi i64 [ %i.ff, %bb.k ], [ 0, %.preheader171.i.preheader ] ; 4 uses
  %.0141183.i = phi i64 [ %.1142.i, %bb.k ], [ 512, %.preheader171.i.preheader ] ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %calloc.i, i64 %.3129184.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !13 ; 3 uses
  %i.eu = icmp ult i32 %i.et, 10
  br i1 %i.eu, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader171.i
  %i.ev = trunc i32 %i.et to i8
  %i.ew = load ptr, ptr %i.dn, align 8, !tbaa !77
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.3129184.i
  store i8 %i.ev, ptr %i.ex, align 1, !tbaa !20
  %i.ey = trunc i64 %.0141183.i to i16
  %i.ez = load ptr, ptr %i.dq, align 8, !tbaa !81
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %.3129184.i
  store i16 %i.ey, ptr %i.fa, align 2, !tbaa !94
  %i.fb = add i32 %i.et, -9
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = shl nuw i64 1, %i.fc
  %i.fe = add i64 %i.fd, %.0141183.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader171.i
  %.1142.i = phi i64 [ %i.fe, %bb.j ], [ %.0141183.i, %.preheader171.i ]
  %i.ff = add nuw nsw i64 %.3129184.i, 1          ; 2 uses
  %exitcond209.not.i = icmp eq i64 %i.ff, 512
end_hunk_11
begin_hunk_12_@_ZL9writeBitsP16LodePNGBitWriterjm:bb.a
  %i.w = shl i32 %1, %i.v
  %i.x = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !68
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1     ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !20
  %i.ae = trunc i32 %i.w to i8
  %i.af = or i8 %i.ad, %i.ae
  store i8 %i.af, ptr %i.ac, align 1, !tbaa !20
  %i.ag = load i8, ptr %i.b, align 8, !tbaa !114
  %i.ah = add i8 %i.ag, 1
  store i8 %i.ah, ptr %i.b, align 8, !tbaa !114
  br label %_ZL15ucvector_resizeP8ucvectorm.exit

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %i.ai = phi i8 [ %.pre, %.lr.ph ], [ %i.bq, %bb.k ]
  %.036 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.k ] ; 2 uses
  %i.aj = and i8 %i.ai, 7                         ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %0, align 8, !tbaa !111   ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !68
  %i.ao = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !69 ; 2 uses
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = lshr i64 %i.aq, 1
  %i.at = add i64 %i.as, %i.ao                    ; 2 uses
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !63
  %i.av = tail call noalias noundef ptr @realloc(ptr noundef %i.au, i64 noundef %i.at) #32 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.av, null
  br i1 %.not.i.i28, label %_ZL15ucvector_resizeP8ucvectorm.exit, label %.thread.i.i29

.thread.i.i29:                                    ; preds = %bb.i
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !69
  store ptr %i.av, ptr %i.al, align 8, !tbaa !63
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !111 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre38, i64 8
  %.pre39 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !68
  br label %bb.j

bb.j:                                             ; preds = %.thread.i.i29, %bb.h
  %i.aw = phi i64 [ %.pre39, %.thread.i.i29 ], [ %i.ao, %bb.h ]
  %i.ax = phi ptr [ %.pre38, %.thread.i.i29 ], [ %i.al, %bb.h ]
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !63
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.aw
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  store i8 0, ptr %i.ba, align 1, !tbaa !20
  %.pre40 = load i8, ptr %i.a, align 8, !tbaa !114
  %.pre46 = and i8 %.pre40, 7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pre-phi47 = phi i8 [ %.pre46, %bb.j ], [ %i.aj, %bb.g ]
  %i.bb = trunc i64 %.036 to i32
  %i.bc = lshr i32 %1, %i.bb
  %i.bd = and i32 %i.bc, 1
  %i.be = zext nneg i8 %.pre-phi47 to i32
  %i.bf = shl nuw nsw i32 %i.bd, %i.be
  %i.bg = load ptr, ptr %0, align 8, !tbaa !111   ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !68
  %i.bk = getelementptr i8, ptr %i.bh, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -1     ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20
  %i.bn = trunc nuw i32 %i.bf to i8
  %i.bo = or i8 %i.bm, %i.bn
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !20
  %i.bp = load i8, ptr %i.a, align 8, !tbaa !114
  %i.bq = add i8 %i.bp, 1                         ; 2 uses
  store i8 %i.bq, ptr %i.a, align 8, !tbaa !114
  %i.br = add nuw nsw i64 %.036, 1                ; 2 uses
  %.not = icmp eq i64 %i.br, %2
  br i1 %.not, label %_ZL15ucvector_resizeP8ucvectorm.exit, label %bb.g, !llvm.loop !855

_ZL15ucvector_resizeP8ucvectorm.exit:             ; preds = %bb.k, %bb.i, %bb.a, %bb.d, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 91) i32 @_ZL10encodeLZ77P8uivectorP4HashPKhmmjjjj(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = icmp ugt i32 %5, 8191                    ; 2 uses
  %i.c = lshr i32 %5, 3
  %i.d = select i1 %i.b, i32 %5, i32 %i.c         ; 2 uses
  %i.e = select i1 %i.b, i32 258, i32 64
  %i.f = add i32 %5, -32769
  %or.cond = icmp ult i32 %i.f, -32768
  br i1 %or.cond, label %.thread283, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %5, -1
  %i.h = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %5)
  %.not = icmp samesign ult i32 %i.h, 2
  br i1 %.not, label %bb.c, label %.thread283

bb.c:                                             ; preds = %bb.b
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %7, i32 258)
  %i.i = icmp ult i64 %3, %4
  br i1 %i.i, label %.lr.ph333, label %.thread283

.lr.ph333:                                        ; preds = %bb.c
  %i.j = zext nneg i32 %i.g to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.not226298.not = icmp eq i32 %i.d, 0
  %i.q = zext nneg i32 %5 to i64
  %.not233 = icmp eq i32 %8, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.t = add i64 %4, -2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph333, %.loopexit
  %.0187331 = phi i32 [ 0, %.lr.ph333 ], [ %.1188, %.loopexit ] ; 3 uses
  %.0189330 = phi i32 [ 0, %.lr.ph333 ], [ %.1190, %.loopexit ] ; 4 uses
  %.0191329 = phi i32 [ 0, %.lr.ph333 ], [ %.2, %.loopexit ] ; 2 uses
  %.0200328 = phi i32 [ 0, %.lr.ph333 ], [ %.5, %.loopexit ] ; 4 uses
  %.0208327 = phi i64 [ %3, %.lr.ph333 ], [ %i.mz, %.loopexit ] ; 20 uses
  %i.u = and i64 %.0208327, %i.j                  ; 8 uses
  %i.v = add i64 %.0208327, 2                     ; 2 uses
  %i.w = icmp ult i64 %i.v, %4
  br i1 %i.w, label %bb.e, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.0208327 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = zext i8 %i.y to i32
  %i.aa = getelementptr i8, ptr %i.x, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !20
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 4
  %i.ae = xor i32 %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = xor i32 %i.ae, %i.ai
  br label %_ZL7getHashPKhmm.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.ak = sub nuw i64 %4, %.0208327               ; 2 uses
  %i.al = getelementptr i8, ptr %2, i64 %.0208327 ; 5 uses
  %xtraiter = and i64 %i.ak, 3                    ; 3 uses
  %i.am = sub i64 %.0208327, %4
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ak, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.02535.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bn, %bb.f ] ; 5 uses
  %.02634.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.bm, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.f ]
  %i.ao = getelementptr i8, ptr %i.al, i64 %.02535.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !20
  %i.aq = zext i8 %i.ap to i32
  %i.ar = xor i32 %.02634.i, %i.aq
  %i.as = or disjoint i64 %.02535.i, 1            ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20
  %i.av = zext i8 %i.au to i32
  %.025.tr.i.1 = trunc i64 %i.as to i32
  %i.aw = shl i32 %.025.tr.i.1, 3
  %i.ax = shl i32 %i.av, %i.aw
  %i.ay = xor i32 %i.ax, %i.ar
  %i.az = or disjoint i64 %.02535.i, 2            ; 2 uses
  %i.ba = getelementptr i8, ptr %i.al, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !20
  %i.bc = zext i8 %i.bb to i32
  %.025.tr.i.2 = trunc i64 %i.az to i32
  %i.bd = shl i32 %.025.tr.i.2, 3
  %i.be = shl i32 %i.bc, %i.bd
  %i.bf = xor i32 %i.be, %i.ay
  %i.bg = or disjoint i64 %.02535.i, 3            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.al, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.bj = zext i8 %i.bi to i32
  %.025.tr.i.3 = trunc i64 %i.bg to i32
  %i.bk = shl i32 %.025.tr.i.3, 3
  %i.bl = shl i32 %i.bj, %i.bk
  %i.bm = xor i32 %i.bl, %i.bf                    ; 3 uses
  %i.bn = add nuw i64 %.02535.i, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !856

_ZL7getHashPKhmm.exit.loopexit.unr-lcssa:         ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL7getHashPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.02535.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bn, %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa ]
  %.02634.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.bm, %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod396 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod396)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.02535.i.epil = phi i64 [ %.02535.i.epil.init, %.epil.preheader ], [ %i.bu, %bb.g ] ; 3 uses
  %.02634.i.epil = phi i32 [ %.02634.i.epil.init, %.epil.preheader ], [ %i.bt, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.bo = getelementptr i8, ptr %i.al, i64 %.02535.i.epil
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !20
  %i.bq = zext i8 %i.bp to i32
  %.025.tr.i.epil = trunc i64 %.02535.i.epil to i32
  %i.br = shl i32 %.025.tr.i.epil, 3
  %i.bs = shl i32 %i.bq, %i.br
  %i.bt = xor i32 %i.bs, %.02634.i.epil           ; 2 uses
  %i.bu = add nuw i64 %.02535.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL7getHashPKhmm.exit, label %bb.g, !llvm.loop !857

_ZL7getHashPKhmm.exit:                            ; preds = %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa, %bb.g, %bb.e
  %.2.i = phi i32 [ %i.aj, %bb.e ], [ %i.bm, %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa ], [ %i.bt, %bb.g ]
  %i.bv = and i32 %.2.i, 65535                    ; 4 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZL7getHashPKhmm.exit
  %i.bx = icmp eq i32 %.0200328, 0
  br i1 %i.bx, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %.0208327 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 258
  %i.ca = add nuw nsw i64 %.0208327, 258
  %i.cb = icmp samesign ugt i64 %i.ca, %4
  %spec.select.i = select i1 %i.cb, ptr %i.k, ptr %i.bz ; 3 uses
  %.not17.i = icmp eq ptr %i.by, %spec.select.i
  br i1 %.not17.i, label %_ZL10countZerosPKhmm.exit, label %.lr.ph.i241

.lr.ph.i241:                                      ; preds = %bb.i, %bb.j
  %.01418.i = phi ptr [ %i.ce, %bb.j ], [ %i.by, %bb.i ] ; 3 uses
  %i.cc = load i8, ptr %.01418.i, align 1, !tbaa !20
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.j, label %_ZL10countZerosPKhmm.exit

bb.j:                                             ; preds = %.lr.ph.i241
  %i.ce = getelementptr inbounds nuw i8, ptr %.01418.i, i64 1 ; 2 uses
  %.not.i242 = icmp eq ptr %i.ce, %spec.select.i
  br i1 %.not.i242, label %_ZL10countZerosPKhmm.exit, label %.lr.ph.i241, !llvm.loop !858

_ZL10countZerosPKhmm.exit:                        ; preds = %.lr.ph.i241, %bb.j, %bb.i
  %.014.lcssa.i = phi ptr [ %i.by, %bb.i ], [ %.01418.i, %.lr.ph.i241 ], [ %spec.select.i, %bb.j ]
  %i.cf = ptrtoint ptr %.014.lcssa.i to i64
  %i.cg = ptrtoint ptr %i.by to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.cj = zext i32 %.0200328 to i64
  %i.ck = add i64 %.0208327, %i.cj                ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, %4
  br i1 %i.cl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr i8, ptr %2, i64 %i.ck
  %i.cn = getelementptr i8, ptr %i.cm, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !20
  %.not225 = icmp eq i8 %i.co, 0
  br i1 %.not225, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cp = add i32 %.0200328, -1
  br label %bb.n

bb.n:                                             ; preds = %_ZL7getHashPKhmm.exit, %_ZL10countZerosPKhmm.exit, %bb.m, %bb.l
  %.1201 = phi i32 [ %i.ci, %_ZL10countZerosPKhmm.exit ], [ %i.cp, %bb.m ], [ %.0200328, %bb.l ], [ 0, %_ZL7getHashPKhmm.exit ] ; 10 uses
  %i.cq = trunc i32 %.1201 to i16
  %i.cr = load ptr, ptr %i.l, align 8, !tbaa !125 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.u
  store i32 %i.bv, ptr %i.cs, align 4, !tbaa !13
  %i.ct = load ptr, ptr %1, align 8, !tbaa !123
  %i.cu = zext nneg i32 %i.bv to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !13 ; 2 uses
  %.not.i243 = icmp eq i32 %i.cw, -1
  br i1 %.not.i243, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = load ptr, ptr %i.m, align 8, !tbaa !126
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.u
  store i16 %i.cx, ptr %i.cz, align 2, !tbaa !94
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.da = trunc nuw nsw i64 %i.u to i32           ; 2 uses
  store i32 %i.da, ptr %i.cv, align 4, !tbaa !13
  %i.db = load ptr, ptr %i.n, align 8, !tbaa !127 ; 3 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.u
  store i16 %i.cq, ptr %i.dc, align 2, !tbaa !94
  %i.dd = load ptr, ptr %i.o, align 8, !tbaa !128 ; 2 uses
  %.mask = and i32 %.1201, 65535
  %i.de = zext nneg i32 %.mask to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !13 ; 2 uses
  %.not24.i = icmp eq i32 %i.dg, -1
  br i1 %.not24.i, label %_ZL15updateHashChainP4Hashmjt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = trunc i32 %i.dg to i16
  %i.di = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.u
  store i16 %i.dh, ptr %i.dj, align 2, !tbaa !94
  br label %_ZL15updateHashChainP4Hashmjt.exit

_ZL15updateHashChainP4Hashmjt.exit:               ; preds = %bb.p, %bb.q
  store i32 %i.da, ptr %i.df, align 4, !tbaa !13
  %i.dk = load ptr, ptr %i.m, align 8, !tbaa !126 ; 2 uses
  %i.dl = add i64 %.0208327, 258
  %i.dm = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.dl) ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %i.dm ; 3 uses
  br i1 %.not226298.not, label %._crit_edge, label %.lr.ph303

.lr.ph303:                                        ; preds = %_ZL15updateHashChainP4Hashmjt.exit
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.u
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !94
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %.0208327 ; 3 uses
  %i.dr = icmp ugt i32 %.1201, 2                  ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph303, %bb.ac
  %i.dt = phi i32 [ 1, %.lr.ph303 ], [ %i.fh, %bb.ac ] ; 2 uses
  %.0181.in302 = phi i16 [ %i.dp, %.lr.ph303 ], [ %.1.in, %bb.ac ] ; 2 uses
  %.0186301 = phi i32 [ 0, %.lr.ph303 ], [ %i.dy, %bb.ac ]
  %.0193300 = phi i32 [ 0, %.lr.ph303 ], [ %.1194, %bb.ac ] ; 4 uses
  %.0196299 = phi i32 [ 0, %.lr.ph303 ], [ %.1197, %bb.ac ] ; 3 uses
  %i.du = zext i16 %.0181.in302 to i64            ; 5 uses
  %.not227 = icmp samesign ult i64 %i.u, %i.du
  %i.dv = sub nsw i64 %i.u, %i.du
  %i.dw = select i1 %.not227, i64 %i.q, i64 0
  %i.dx = add nsw i64 %i.dw, %i.dv                ; 3 uses
  %i.dy = trunc nsw i64 %i.dx to i32              ; 4 uses
  %i.dz = icmp ugt i32 %.0186301, %i.dy
  br i1 %i.dz, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not228 = icmp eq i64 %i.dx, 0
  br i1 %.not228, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ea = and i64 %i.dx, 4294967295
  %i.eb = sub i64 %.0208327, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %i.eb ; 2 uses
  br i1 %i.dr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.du
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !94
  %i.ef = zext i16 %i.ee to i32
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.1201, i32 %i.ef)
  %i.eg = zext nneg i32 %spec.select to i64       ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.eg
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0184 = phi ptr [ %i.ei, %bb.u ], [ %i.dq, %bb.t ] ; 4 uses
  %.0182 = phi ptr [ %i.eh, %bb.u ], [ %i.ec, %bb.t ]
  %.not229293 = icmp eq ptr %.0184, %i.dn
  br i1 %.not229293, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.v
  %.0184347 = ptrtoaddr ptr %.0184 to i64
  %scevgep = getelementptr i8, ptr %.0184, i64 %i.a
  %scevgep346 = getelementptr i8, ptr %scevgep, i64 %i.dm
  %i.ej = sub i64 0, %.0184347
  %scevgep348 = getelementptr i8, ptr %scevgep346, i64 %i.ej
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %.1183295 = phi ptr [ %i.en, %bb.w ], [ %.0182, %.lr.ph.preheader ] ; 2 uses
  %.1185294 = phi ptr [ %i.eo, %bb.w ], [ %.0184, %.lr.ph.preheader ] ; 3 uses
  %i.ek = load i8, ptr %.1183295, align 1, !tbaa !20
  %i.el = load i8, ptr %.1185294, align 1, !tbaa !20
  %i.em = icmp eq i8 %i.ek, %i.el
  br i1 %i.em, label %bb.w, label %.critedge

bb.w:                                             ; preds = %.lr.ph
end_hunk_12
begin_hunk_13_@_ZL10encodeLZ77P8uivectorP4HashPKhmmjjjj:bb.a
_ZL18uivector_push_backP8uivectorj.exit251:       ; preds = %bb.as, %bb.au
  %i.hj = phi ptr [ %i.hi, %bb.au ], [ %.pre.i248, %bb.as ]
  store i64 %i.hc, ptr %i.r, align 8, !tbaa !154
  %i.hk = getelementptr [4 x i8], ptr %i.hj, i64 %i.hc
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %bb.ar, %.preheader
  %.021.i.i = phi i64 [ %.1.i.i, %.preheader ], [ 28, %bb.ar ] ; 2 uses
  %.01620.i.i = phi i64 [ %.117.i.i, %.preheader ], [ 1, %bb.ar ] ; 2 uses
  %i.hl = add i64 %.01620.i.i, %.021.i.i
  %i.hm = lshr i64 %i.hl, 1                       ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr @_ZL10LENGTHBASE, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !13
  %.not19.i.i = icmp ugt i32 %.3, %i.ho           ; 2 uses
  %i.hp = add nsw i64 %i.hm, -1
  %i.hq = add nuw i64 %i.hm, 1
  %.117.i.i = select i1 %.not19.i.i, i64 %i.hq, i64 %.01620.i.i ; 6 uses
  %.1.i.i = select i1 %.not19.i.i, i64 %.021.i.i, i64 %i.hp ; 2 uses
  %.not.i.i = icmp ugt i64 %.117.i.i, %.1.i.i
  br i1 %.not.i.i, label %bb.av, label %.preheader, !llvm.loop !861

bb.av:                                            ; preds = %.preheader
  %.not18.i.i = icmp ult i64 %.117.i.i, 29
  br i1 %.not18.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr @_ZL10LENGTHBASE, i64 %.117.i.i
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !13
  %i.ht = icmp ult i32 %.3, %i.hs
  br i1 %i.ht, label %bb.ax, label %_ZL15searchCodeIndexPKjmm.exit.i

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hu = add i64 %.117.i.i, -1
  br label %_ZL15searchCodeIndexPKjmm.exit.i

_ZL15searchCodeIndexPKjmm.exit.i:                 ; preds = %bb.ax, %bb.aw
  %.2.i.i = phi i64 [ %i.hu, %bb.ax ], [ %.117.i.i, %bb.aw ] ; 2 uses
  %i.hv = and i64 %.2.i.i, 4294967295
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr @_ZL10LENGTHBASE, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !13
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %_ZL15searchCodeIndexPKjmm.exit.i
  %.021.i21.i = phi i64 [ 29, %_ZL15searchCodeIndexPKjmm.exit.i ], [ %.1.i25.i, %bb.ay ] ; 2 uses
  %.01620.i22.i = phi i64 [ 1, %_ZL15searchCodeIndexPKjmm.exit.i ], [ %.117.i24.i, %bb.ay ] ; 2 uses
  %i.hy = add i64 %.01620.i22.i, %.021.i21.i
  %i.hz = lshr i64 %i.hy, 1                       ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr @_ZL12DISTANCEBASE, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !13
  %.not19.i23.i = icmp ugt i32 %.3199, %i.ib      ; 2 uses
  %i.ic = add nsw i64 %i.hz, -1
  %i.id = add nuw i64 %i.hz, 1
  %.117.i24.i = select i1 %.not19.i23.i, i64 %i.id, i64 %.01620.i22.i ; 6 uses
  %.1.i25.i = select i1 %.not19.i23.i, i64 %.021.i21.i, i64 %i.ic ; 2 uses
  %.not.i26.i = icmp ugt i64 %.117.i24.i, %.1.i25.i
  br i1 %.not.i26.i, label %bb.az, label %bb.ay, !llvm.loop !861

bb.az:                                            ; preds = %bb.ay
  %.not18.i27.i = icmp ult i64 %.117.i24.i, 30
  br i1 %.not18.i27.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr @_ZL12DISTANCEBASE, i64 %.117.i24.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !13
  %i.ig = icmp ult i32 %.3199, %i.if
  br i1 %i.ig, label %bb.bb, label %_ZL15searchCodeIndexPKjmm.exit29.i

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ih = add i64 %.117.i24.i, -1
  br label %_ZL15searchCodeIndexPKjmm.exit29.i

_ZL15searchCodeIndexPKjmm.exit29.i:               ; preds = %bb.bb, %bb.ba
  %.2.i28.i = phi i64 [ %i.ih, %bb.bb ], [ %.117.i24.i, %bb.ba ] ; 2 uses
  %i.ii = and i64 %.2.i28.i, 4294967295
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr @_ZL12DISTANCEBASE, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !13
  %i.il = load i64, ptr %i.r, align 8, !tbaa !154 ; 2 uses
  %i.im = add i64 %i.il, 4                        ; 2 uses
  %i.in = shl i64 %i.im, 2                        ; 2 uses
  %i.io = load i64, ptr %i.s, align 8, !tbaa !155 ; 2 uses
  %i.ip = icmp ugt i64 %i.in, %i.io
  %.pre.i252 = load ptr, ptr %0, align 8, !tbaa !141 ; 2 uses
  br i1 %i.ip, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %_ZL15searchCodeIndexPKjmm.exit29.i
  %i.iq = lshr i64 %i.io, 1
  %i.ir = add i64 %i.iq, %i.in                    ; 2 uses
  %i.is = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i252, i64 noundef %i.ir) #32 ; 3 uses
  %.not.not.i.i253 = icmp eq ptr %i.is, null
  br i1 %.not.not.i.i253, label %.lr.ph324, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.ir, ptr %i.s, align 8, !tbaa !155
  store ptr %i.is, ptr %0, align 8, !tbaa !141
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZL15searchCodeIndexPKjmm.exit29.i
  %i.it = phi ptr [ %i.is, %bb.bd ], [ %.pre.i252, %_ZL15searchCodeIndexPKjmm.exit29.i ]
  store i64 %i.im, ptr %i.r, align 8, !tbaa !154
  %i.iu = sub i32 %.3199, %i.ik
  %i.iv = trunc i64 %.2.i28.i to i32
  %i.iw = sub i32 %.3, %i.hx
  %i.ix = trunc i64 %.2.i.i to i32
  %i.iy = add i32 %i.ix, 257
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.il ; 4 uses
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !13
  %i.ja = getelementptr i8, ptr %i.iz, i64 4
  store i32 %i.iw, ptr %i.ja, align 4, !tbaa !13
  %i.jb = getelementptr i8, ptr %i.iz, i64 8
  store i32 %i.iv, ptr %i.jb, align 4, !tbaa !13
  %i.jc = getelementptr i8, ptr %i.iz, i64 12
  store i32 %i.iu, ptr %i.jc, align 4, !tbaa !13
  br label %.lr.ph324

.lr.ph324:                                        ; preds = %bb.be, %bb.bc
  %i.jd = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.je = load ptr, ptr %1, align 8, !tbaa !123
  %i.jf = load ptr, ptr %i.n, align 8, !tbaa !127
  %i.jg = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.jh = xor i64 %.1209, -1
  %i.ji = add i64 %4, %i.jh
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph324, %_ZL15updateHashChainP4Hashmjt.exit273
  %indvar = phi i64 [ 0, %.lr.ph324 ], [ %indvar.next, %_ZL15updateHashChainP4Hashmjt.exit273 ] ; 3 uses
  %.2202323 = phi i32 [ %.1201, %.lr.ph324 ], [ %.3203, %_ZL15updateHashChainP4Hashmjt.exit273 ] ; 4 uses
  %.0207322 = phi i32 [ 1, %.lr.ph324 ], [ %i.mx, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.2210321 = phi i64 [ %.1209, %.lr.ph324 ], [ %i.jm, %_ZL15updateHashChainP4Hashmjt.exit273 ] ; 4 uses
  %i.jj = sub i64 %i.ji, %indvar                  ; 2 uses
  %i.jk = add i64 %.1209, %indvar
  %i.jl = sub i64 %i.t, %i.jk
  %i.jm = add i64 %.2210321, 1                    ; 8 uses
  %i.jn = and i64 %i.jm, %i.j                     ; 5 uses
  %i.jo = add i64 %.2210321, 3                    ; 2 uses
  %i.jp = icmp ult i64 %i.jo, %4
  br i1 %i.jp, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 %i.jm ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !20
  %i.js = zext i8 %i.jr to i32
  %i.jt = getelementptr i8, ptr %i.jq, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !20
  %i.jv = zext i8 %i.ju to i32
  %i.jw = shl nuw nsw i32 %i.jv, 4
  %i.jx = xor i32 %i.jw, %i.js
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 %i.jo
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !20
  %i.ka = zext i8 %i.jz to i32
  %i.kb = shl nuw nsw i32 %i.ka, 8
  %i.kc = xor i32 %i.jx, %i.kb
  br label %_ZL7getHashPKhmm.exit263

bb.bh:                                            ; preds = %bb.bf
  %.not.i254 = icmp ult i64 %i.jm, %4
  br i1 %.not.i254, label %.lr.ph.i256, label %_ZL7getHashPKhmm.exit263.thread

.lr.ph.i256:                                      ; preds = %bb.bh
  %i.kd = getelementptr i8, ptr %2, i64 %i.jm     ; 5 uses
  %xtraiter398 = and i64 %i.jj, 3                 ; 3 uses
  %i.ke = icmp ult i64 %i.jl, 3
  br i1 %i.ke, label %.epil.preheader397, label %.lr.ph.i256.new

.lr.ph.i256.new:                                  ; preds = %.lr.ph.i256
  %unroll_iter403 = and i64 %i.jj, -4
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i256.new
  %.02535.i257 = phi i64 [ 0, %.lr.ph.i256.new ], [ %i.le, %bb.bi ] ; 5 uses
  %.02634.i258 = phi i32 [ 0, %.lr.ph.i256.new ], [ %i.ld, %bb.bi ]
  %niter404 = phi i64 [ 0, %.lr.ph.i256.new ], [ %niter404.next.3, %bb.bi ]
  %i.kf = getelementptr i8, ptr %i.kd, i64 %.02535.i257
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !20
  %i.kh = zext i8 %i.kg to i32
  %i.ki = xor i32 %.02634.i258, %i.kh
  %i.kj = or disjoint i64 %.02535.i257, 1         ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kd, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !20
  %i.km = zext i8 %i.kl to i32
  %.025.tr.i259.1 = trunc i64 %i.kj to i32
  %i.kn = shl i32 %.025.tr.i259.1, 3
  %i.ko = shl i32 %i.km, %i.kn
  %i.kp = xor i32 %i.ko, %i.ki
  %i.kq = or disjoint i64 %.02535.i257, 2         ; 2 uses
  %i.kr = getelementptr i8, ptr %i.kd, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !20
  %i.kt = zext i8 %i.ks to i32
  %.025.tr.i259.2 = trunc i64 %i.kq to i32
  %i.ku = shl i32 %.025.tr.i259.2, 3
  %i.kv = shl i32 %i.kt, %i.ku
  %i.kw = xor i32 %i.kv, %i.kp
  %i.kx = or disjoint i64 %.02535.i257, 3         ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kd, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !20
  %i.la = zext i8 %i.kz to i32
  %.025.tr.i259.3 = trunc i64 %i.kx to i32
  %i.lb = shl i32 %.025.tr.i259.3, 3
  %i.lc = shl i32 %i.la, %i.lb
  %i.ld = xor i32 %i.lc, %i.kw                    ; 3 uses
  %i.le = add nuw i64 %.02535.i257, 4             ; 2 uses
  %niter404.next.3 = add nuw i64 %niter404, 4     ; 2 uses
  %niter404.ncmp.3 = icmp eq i64 %niter404.next.3, %unroll_iter403
  br i1 %niter404.ncmp.3, label %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa, label %bb.bi, !llvm.loop !856

_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa:      ; preds = %bb.bi
  %lcmp.mod400.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod400.not, label %_ZL7getHashPKhmm.exit263, label %.epil.preheader397

.epil.preheader397:                               ; preds = %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa, %.lr.ph.i256
  %.02535.i257.epil.init = phi i64 [ 0, %.lr.ph.i256 ], [ %i.le, %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa ]
  %.02634.i258.epil.init = phi i32 [ 0, %.lr.ph.i256 ], [ %i.ld, %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa ]
  %lcmp.mod402 = icmp ne i64 %xtraiter398, 0
  tail call void @llvm.assume(i1 %lcmp.mod402)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.epil.preheader397
  %.02535.i257.epil = phi i64 [ %.02535.i257.epil.init, %.epil.preheader397 ], [ %i.ll, %bb.bj ] ; 3 uses
  %.02634.i258.epil = phi i32 [ %.02634.i258.epil.init, %.epil.preheader397 ], [ %i.lk, %bb.bj ]
  %epil.iter399 = phi i64 [ 0, %.epil.preheader397 ], [ %epil.iter399.next, %bb.bj ]
  %i.lf = getelementptr i8, ptr %i.kd, i64 %.02535.i257.epil
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !20
  %i.lh = zext i8 %i.lg to i32
  %.025.tr.i259.epil = trunc i64 %.02535.i257.epil to i32
  %i.li = shl i32 %.025.tr.i259.epil, 3
  %i.lj = shl i32 %i.lh, %i.li
  %i.lk = xor i32 %i.lj, %.02634.i258.epil        ; 2 uses
  %i.ll = add nuw i64 %.02535.i257.epil, 1
  %epil.iter399.next = add i64 %epil.iter399, 1   ; 2 uses
  %epil.iter399.cmp.not = icmp eq i64 %epil.iter399.next, %xtraiter398
  br i1 %epil.iter399.cmp.not, label %_ZL7getHashPKhmm.exit263, label %bb.bj, !llvm.loop !862

_ZL7getHashPKhmm.exit263:                         ; preds = %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa, %bb.bj, %bb.bg
  %.2.i262 = phi i32 [ %i.kc, %bb.bg ], [ %i.ld, %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa ], [ %i.lk, %bb.bj ]
  %i.lm = and i32 %.2.i262, 65535                 ; 2 uses
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %_ZL7getHashPKhmm.exit263.thread, label %bb.bp

_ZL7getHashPKhmm.exit263.thread:                  ; preds = %bb.bh, %_ZL7getHashPKhmm.exit263
  %i.lo = icmp eq i32 %.2202323, 0
  br i1 %i.lo, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %_ZL7getHashPKhmm.exit263.thread
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 %i.jm ; 5 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 258
  %i.lr = add i64 %.2210321, 259
  %i.ls = icmp samesign ugt i64 %i.lr, %4
  %spec.select.i264 = select i1 %i.ls, ptr %i.k, ptr %i.lq ; 3 uses
  %.not17.i265 = icmp eq ptr %i.lp, %spec.select.i264
  br i1 %.not17.i265, label %_ZL10countZerosPKhmm.exit270, label %.lr.ph.i266

.lr.ph.i266:                                      ; preds = %bb.bk, %bb.bl
  %.01418.i267 = phi ptr [ %i.lv, %bb.bl ], [ %i.lp, %bb.bk ] ; 3 uses
  %i.lt = load i8, ptr %.01418.i267, align 1, !tbaa !20
  %i.lu = icmp eq i8 %i.lt, 0
  br i1 %i.lu, label %bb.bl, label %_ZL10countZerosPKhmm.exit270

bb.bl:                                            ; preds = %.lr.ph.i266
  %i.lv = getelementptr inbounds nuw i8, ptr %.01418.i267, i64 1 ; 2 uses
  %.not.i269 = icmp eq ptr %i.lv, %spec.select.i264
  br i1 %.not.i269, label %_ZL10countZerosPKhmm.exit270, label %.lr.ph.i266, !llvm.loop !858

_ZL10countZerosPKhmm.exit270:                     ; preds = %.lr.ph.i266, %bb.bl, %bb.bk
  %.014.lcssa.i268 = phi ptr [ %i.lp, %bb.bk ], [ %.01418.i267, %.lr.ph.i266 ], [ %spec.select.i264, %bb.bl ]
  %i.lw = ptrtoint ptr %.014.lcssa.i268 to i64
  %i.lx = ptrtoint ptr %i.lp to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = trunc i64 %i.ly to i32
  br label %bb.bp

bb.bm:                                            ; preds = %_ZL7getHashPKhmm.exit263.thread
  %i.ma = zext i32 %.2202323 to i64               ; 2 uses
  %i.mb = add i64 %i.jm, %i.ma
  %i.mc = icmp ugt i64 %i.mb, %4
  br i1 %i.mc, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.md = getelementptr i8, ptr %2, i64 %.2210321
  %i.me = getelementptr i8, ptr %i.md, i64 %i.ma
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !20
  %.not236 = icmp eq i8 %i.mf, 0
  br i1 %.not236, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.mg = add i32 %.2202323, -1
  br label %bb.bp

bb.bp:                                            ; preds = %_ZL7getHashPKhmm.exit263, %_ZL10countZerosPKhmm.exit270, %bb.bo, %bb.bn
  %.128.i255281 = phi i32 [ 0, %_ZL10countZerosPKhmm.exit270 ], [ 0, %bb.bo ], [ 0, %bb.bn ], [ %i.lm, %_ZL7getHashPKhmm.exit263 ] ; 2 uses
  %.3203 = phi i32 [ %i.lz, %_ZL10countZerosPKhmm.exit270 ], [ %i.mg, %bb.bo ], [ %.2202323, %bb.bn ], [ 0, %_ZL7getHashPKhmm.exit263 ] ; 4 uses
  %i.mh = trunc i32 %.3203 to i16
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.jn
  store i32 %.128.i255281, ptr %i.mi, align 4, !tbaa !13
  %i.mj = zext nneg i32 %.128.i255281 to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.mj ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !13 ; 2 uses
  %.not.i271 = icmp eq i32 %i.ml, -1
  br i1 %.not.i271, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mm = trunc i32 %i.ml to i16
  %i.mn = load ptr, ptr %i.m, align 8, !tbaa !126
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %i.jn
  store i16 %i.mm, ptr %i.mo, align 2, !tbaa !94
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.mp = trunc nuw nsw i64 %i.jn to i32          ; 2 uses
  store i32 %i.mp, ptr %i.mk, align 4, !tbaa !13
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %i.jn
  store i16 %i.mh, ptr %i.mq, align 2, !tbaa !94
  %.mask291 = and i32 %.3203, 65535
  %i.mr = zext nneg i32 %.mask291 to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.mr ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !13 ; 2 uses
  %.not24.i272 = icmp eq i32 %i.mt, -1
  br i1 %.not24.i272, label %_ZL15updateHashChainP4Hashmjt.exit273, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mu = trunc i32 %i.mt to i16
  %i.mv = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.mv, i64 %i.jn
  store i16 %i.mu, ptr %i.mw, align 2, !tbaa !94
  br label %_ZL15updateHashChainP4Hashmjt.exit273

_ZL15updateHashChainP4Hashmjt.exit273:            ; preds = %bb.br, %bb.bs
  store i32 %i.mp, ptr %i.ms, align 4, !tbaa !13
  %i.mx = add nuw i32 %.0207322, 1                ; 2 uses
  %exitcond349.not = icmp eq i32 %i.mx, %.3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond349.not, label %.loopexit, label %bb.bf, !llvm.loop !863

.loopexit.sink.split:                             ; preds = %_ZL18uivector_push_backP8uivectorj.exit247, %_ZL18uivector_push_backP8uivectorj.exit251
  %.sink390 = phi ptr [ %i.hk, %_ZL18uivector_push_backP8uivectorj.exit251 ], [ %i.gv, %_ZL18uivector_push_backP8uivectorj.exit247 ]
  %.sink.in = phi i8 [ %i.ha, %_ZL18uivector_push_backP8uivectorj.exit251 ], [ %i.gl, %_ZL18uivector_push_backP8uivectorj.exit247 ]
  %.sink = zext i8 %.sink.in to i32
  %i.my = getelementptr i8, ptr %.sink390, i64 -4
  store i32 %.sink, ptr %i.my, align 4, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL15updateHashChainP4Hashmjt.exit273, %.loopexit.sink.split, %bb.ae
  %.4212 = phi i64 [ %.1209, %.loopexit.sink.split ], [ %.0208327, %bb.ae ], [ %i.jm, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.5 = phi i32 [ %.1201, %.loopexit.sink.split ], [ %.1201, %bb.ae ], [ %.3203, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.2 = phi i32 [ %.1192, %.loopexit.sink.split ], [ 1, %bb.ae ], [ %.1192, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.1190 = phi i32 [ %.0189330, %.loopexit.sink.split ], [ %.2195, %bb.ae ], [ %.0189330, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.1188 = phi i32 [ %.0187331, %.loopexit.sink.split ], [ %.2198, %bb.ae ], [ %.0187331, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %i.mz = add i64 %.4212, 1                       ; 2 uses
  %i.na = icmp ult i64 %i.mz, %4
  br i1 %i.na, label %bb.d, label %.thread283, !llvm.loop !864

.thread283:                                       ; preds = %.loopexit, %bb.ag, %.thread, %bb.aj, %bb.ao, %bb.at, %bb.c, %bb.b, %bb.a
  %.0213 = phi i32 [ 90, %bb.b ], [ 60, %bb.a ], [ 0, %bb.c ], [ 83, %bb.ao ], [ 0, %.loopexit ], [ 83, %bb.aj ], [ 81, %bb.ag ], [ 86, %.thread ], [ 83, %bb.at ]
  ret i32 %.0213
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL13writeLZ77dataP16LodePNGBitWriterPK8uivectorPK11HuffmanTreeS6_(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !154
  %.not46 = icmp eq i64 %i.b, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.047 = phi i64 [ 0, %.lr.ph ], [ %i.do, %bb.n ] ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.047
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13   ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !98
  %i.j = zext i32 %i.h to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j
  %i.o = load i32, ptr %i.n, align 4, !tbaa !13   ; 3 uses
  %i.p = zext i32 %i.o to i64
  %.not18.i = icmp eq i32 %i.o, 0
  br i1 %.not18.i, label %_ZL17writeBitsReversedP16LodePNGBitWriterjm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.pre.i = load i8, ptr %i.d, align 8, !tbaa !114
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %i.q = phi i8 [ %.pre.i, %.lr.ph.i ], [ %i.ba, %bb.g ]
  %.019.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bb, %bb.g ] ; 2 uses
  %i.r = and i8 %i.q, 7                           ; 2 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !111    ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68
  %i.w = add i64 %i.v, 1                          ; 4 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !68
end_hunk_13
begin_hunk_14_@_ZL19Adam7_getpassvaluesPjS_PmS0_S0_jjj:bb.a
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !8
  %i.gu = load i64, ptr %i.ga, align 8, !tbaa !8
  %i.gv = mul i32 %i.gn, %.pre70
  %i.gw = add i32 %i.gv, 7
  %i.gx = lshr i32 %i.gw, 3
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = add i64 %i.gu, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !8
  %i.hb = load i64, ptr %i.gl, align 8, !tbaa !8
  %i.hc = load i32, ptr %i.ax, align 4, !tbaa !13 ; 3 uses
  %.not60.6 = icmp eq i32 %i.hc, 0
  %.pre71 = load i32, ptr %i.az, align 4, !tbaa !13 ; 4 uses
  %.not61.6 = icmp eq i32 %.pre71, 0
  %or.cond83 = select i1 %.not60.6, i1 true, i1 %.not61.6
  br i1 %or.cond83, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hd = mul i32 %i.hc, %7
  %i.he = add i32 %i.hd, 7
  %i.hf = lshr i32 %i.he, 3
  %i.hg = add nuw nsw i32 %i.hf, 1
  %i.hh = mul i32 %.pre71, %i.hg
  %i.hi = zext i32 %i.hh to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hj = phi i64 [ %i.hi, %bb.ab ], [ 0, %bb.aa ]
  %i.hk = add i64 %i.hj, %i.hb
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !8
  %i.hm = load i64, ptr %i.gt, align 8, !tbaa !8
  %i.hn = mul i32 %i.hc, %7                       ; 2 uses
  %i.ho = add i32 %i.hn, 7
  %i.hp = lshr i32 %i.ho, 3
  %i.hq = mul i32 %.pre71, %i.hp
  %i.hr = zext i32 %i.hq to i64
  %i.hs = add i64 %i.hm, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !8
  %i.hu = load i64, ptr %i.ha, align 8, !tbaa !8
  %i.hv = mul i32 %i.hn, %.pre71
  %i.hw = add i32 %i.hv, 7
  %i.hx = lshr i32 %i.hw, 3
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = add i64 %i.hu, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %i.hz, ptr %i.ia, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 0, -8589934583) %2, i64 noundef range(i64 0, -8589934590) %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = sub i64 %2, %3                           ; 4 uses
  %.not35 = icmp eq i32 %4, 0
  br i1 %.not35, label %._crit_edge39, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %.not40 = icmp eq i64 %3, 0
  %.not1530 = icmp eq i64 %2, %3                  ; 2 uses
  br i1 %.not40, label %.preheader25.lr.ph.split, label %.preheader25.lr.ph.split.us

.preheader25.lr.ph.split.us:                      ; preds = %.preheader25.lr.ph
  br i1 %.not1530, label %.preheader25.us.us, label %.preheader25.us.preheader

.preheader25.us.preheader:                        ; preds = %.preheader25.lr.ph.split.us
  %.neg = add nuw i64 %3, 1
  %xtraiter = and i64 %i.a, 1
  %i.b = icmp eq i64 %2, %.neg
  %unroll_iter = and i64 %i.a, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod70 = trunc i64 %i.a to i1
  br label %.preheader25.us

.preheader25.us.us:                               ; preds = %.preheader25.lr.ph.split.us, %..preheader_crit_edge.us.us
  %.038.us.us = phi i32 [ %i.aa, %..preheader_crit_edge.us.us ], [ 0, %.preheader25.lr.ph.split.us ]
  %.02137.us.us = phi i64 [ %i.z, %..preheader_crit_edge.us.us ], [ 0, %.preheader25.lr.ph.split.us ] ; 2 uses
  %.02336.us.us = phi i64 [ %i.c, %..preheader_crit_edge.us.us ], [ 0, %.preheader25.lr.ph.split.us ] ; 2 uses
  %i.c = add i64 %2, %.02336.us.us                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.us, %.preheader25.us.us
  %.12227.us.us = phi i64 [ %.02137.us.us, %.preheader25.us.us ], [ %i.i, %_ZL22setBitOfReversedStreamPmPhh.exit.us.us ] ; 3 uses
  %.12426.us.us = phi i64 [ %.02336.us.us, %.preheader25.us.us ], [ %i.y, %_ZL22setBitOfReversedStreamPmPhh.exit.us.us ] ; 4 uses
  %i.d = lshr i64 %.12227.us.us, 3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20
  %i.g = trunc i64 %.12227.us.us to i8
  %i.h = and i8 %i.g, 7
  %i.i = add i64 %.12227.us.us, 1
  %i.j = lshr exact i8 -128, %i.h
  %i.k = and i8 %i.f, %i.j
  %i.l = icmp eq i8 %i.k, 0
  %i.m = lshr i64 %.12426.us.us, 3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !20    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = trunc i64 %.12426.us.us to i8
  %i.q = and i8 %i.p, 7
  %i.r = lshr exact i8 -128, %i.q
  %i.s = or i8 %i.o, %i.r
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.us

bb.d:                                             ; preds = %bb.b
  %i.t = trunc i64 %.12426.us.us to i16
  %i.u = and i16 %i.t, 7
  %i.v = ashr i16 -129, %i.u
  %i.w = trunc i16 %i.v to i8
  %i.x = and i8 %i.o, %i.w
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.us

_ZL22setBitOfReversedStreamPmPhh.exit.us.us:      ; preds = %bb.d, %bb.c
  %.sink.i.us.us = phi i8 [ %i.s, %bb.c ], [ %i.x, %bb.d ]
  store i8 %.sink.i.us.us, ptr %i.n, align 1, !tbaa !20
  %i.y = add i64 %.12426.us.us, 1                 ; 2 uses
  %exitcond48.not = icmp eq i64 %i.y, %i.c
  br i1 %exitcond48.not, label %..preheader_crit_edge.us.us, label %bb.b, !llvm.loop !1000

..preheader_crit_edge.us.us:                      ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.us
  %i.z = add i64 %2, %.02137.us.us
  %i.aa = add nuw i32 %.038.us.us, 1              ; 2 uses
  %.not.us.us = icmp eq i32 %i.aa, %4
  br i1 %.not.us.us, label %._crit_edge39, label %.preheader25.us.us, !llvm.loop !1001

.preheader25.us:                                  ; preds = %.preheader25.us.preheader, %._crit_edge.us
  %.038.us = phi i32 [ %i.ca, %._crit_edge.us ], [ 0, %.preheader25.us.preheader ]
  %.02137.us = phi i64 [ %i.bz, %._crit_edge.us ], [ 0, %.preheader25.us.preheader ] ; 2 uses
  %.02336.us = phi i64 [ %.lcssa68, %._crit_edge.us ], [ 0, %.preheader25.us.preheader ]
  br label %bb.e

bb.e:                                             ; preds = %.preheader25.us, %_ZL22setBitOfReversedStreamPmPhh.exit.us
  %.01428.us = phi i64 [ 0, %.preheader25.us ], [ %i.ax, %_ZL22setBitOfReversedStreamPmPhh.exit.us ]
  %.12227.us = phi i64 [ %.02137.us, %.preheader25.us ], [ %i.ag, %_ZL22setBitOfReversedStreamPmPhh.exit.us ] ; 3 uses
  %.12426.us = phi i64 [ %.02336.us, %.preheader25.us ], [ %i.aw, %_ZL22setBitOfReversedStreamPmPhh.exit.us ] ; 4 uses
  %i.ab = lshr i64 %.12227.us, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !20
  %i.ae = trunc i64 %.12227.us to i8
  %i.af = and i8 %i.ae, 7
  %i.ag = add i64 %.12227.us, 1
  %i.ah = lshr exact i8 -128, %i.af
  %i.ai = and i8 %i.ad, %i.ah
  %i.aj = icmp eq i8 %i.ai, 0
  %i.ak = lshr i64 %.12426.us, 3
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20  ; 2 uses
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = trunc i64 %.12426.us to i8
  %i.ao = and i8 %i.an, 7
  %i.ap = lshr exact i8 -128, %i.ao
  %i.aq = or i8 %i.am, %i.ap
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us

bb.g:                                             ; preds = %bb.e
  %i.ar = trunc i64 %.12426.us to i16
  %i.as = and i16 %i.ar, 7
  %i.at = ashr i16 -129, %i.as
  %i.au = trunc i16 %i.at to i8
  %i.av = and i8 %i.am, %i.au
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us

_ZL22setBitOfReversedStreamPmPhh.exit.us:         ; preds = %bb.g, %bb.f
  %.sink.i.us = phi i8 [ %i.aq, %bb.f ], [ %i.av, %bb.g ]
  store i8 %.sink.i.us, ptr %i.al, align 1, !tbaa !20
  %i.aw = add i64 %.12426.us, 1                   ; 3 uses
  %i.ax = add nuw i64 %.01428.us, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %3
  br i1 %exitcond.not, label %..preheader_crit_edge.us.preheader, label %bb.e, !llvm.loop !1000

..preheader_crit_edge.us.preheader:               ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us
  br i1 %i.b, label %..preheader_crit_edge.us.epil.preheader, label %..preheader_crit_edge.us

..preheader_crit_edge.us:                         ; preds = %..preheader_crit_edge.us.preheader, %..preheader_crit_edge.us
  %.231.us = phi i64 [ %i.bp, %..preheader_crit_edge.us ], [ %i.aw, %..preheader_crit_edge.us.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %..preheader_crit_edge.us ], [ 0, %..preheader_crit_edge.us.preheader ]
  %i.ay = lshr i64 %.231.us, 3
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !20
  %i.bb = trunc i64 %.231.us to i16
  %i.bc = and i16 %i.bb, 7
  %i.bd = ashr i16 -129, %i.bc
  %i.be = trunc i16 %i.bd to i8
  %i.bf = and i8 %i.ba, %i.be
  store i8 %i.bf, ptr %i.az, align 1, !tbaa !20
  %i.bg = add i64 %.231.us, 1                     ; 2 uses
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !20
  %i.bk = trunc i64 %i.bg to i16
  %i.bl = and i16 %i.bk, 7
  %i.bm = ashr i16 -129, %i.bl
  %i.bn = trunc i16 %i.bm to i8
  %i.bo = and i8 %i.bj, %i.bn
  store i8 %i.bo, ptr %i.bi, align 1, !tbaa !20
  %i.bp = add i64 %.231.us, 2                     ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %..preheader_crit_edge.us, !llvm.loop !1002

._crit_edge.us.unr-lcssa:                         ; preds = %..preheader_crit_edge.us
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %..preheader_crit_edge.us.epil.preheader

..preheader_crit_edge.us.epil.preheader:          ; preds = %._crit_edge.us.unr-lcssa, %..preheader_crit_edge.us.preheader
  %.231.us.epil.init = phi i64 [ %i.aw, %..preheader_crit_edge.us.preheader ], [ %i.bp, %._crit_edge.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.bq = lshr i64 %.231.us.epil.init, 3
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !20
  %i.bt = trunc i64 %.231.us.epil.init to i16
  %i.bu = and i16 %i.bt, 7
  %i.bv = ashr i16 -129, %i.bu
  %i.bw = trunc i16 %i.bv to i8
  %i.bx = and i8 %i.bs, %i.bw
  store i8 %i.bx, ptr %i.br, align 1, !tbaa !20
  %i.by = add i64 %.231.us.epil.init, 1
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %..preheader_crit_edge.us.epil.preheader
  %.lcssa68 = phi i64 [ %i.bp, %._crit_edge.us.unr-lcssa ], [ %i.by, %..preheader_crit_edge.us.epil.preheader ]
  %i.bz = add i64 %3, %.02137.us
  %i.ca = add nuw i32 %.038.us, 1                 ; 2 uses
  %.not.us = icmp eq i32 %i.ca, %4
  br i1 %.not.us, label %._crit_edge39, label %.preheader25.us, !llvm.loop !1001

.preheader25.lr.ph.split:                         ; preds = %.preheader25.lr.ph
  br i1 %.not1530, label %._crit_edge39, label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %.preheader25.lr.ph.split
  %xtraiter71 = and i64 %2, 1                     ; 2 uses
  %i.cb = icmp eq i64 %2, 1
  %unroll_iter75 = sub i64 %i.a, %xtraiter71
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  %lcmp.mod74 = trunc i64 %2 to i1
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.preheader, %._crit_edge
  %.038 = phi i32 [ %i.dd, %._crit_edge ], [ 0, %.preheader25.preheader ]
  %.02336 = phi i64 [ %.lcssa, %._crit_edge ], [ 0, %.preheader25.preheader ] ; 2 uses
  br i1 %i.cb, label %.epil.preheader, label %.preheader25.new

.preheader25.new:                                 ; preds = %.preheader25, %.preheader25.new
  %.231 = phi i64 [ %i.ct, %.preheader25.new ], [ %.02336, %.preheader25 ] ; 4 uses
  %niter76 = phi i64 [ %niter76.next.1, %.preheader25.new ], [ 0, %.preheader25 ]
  %i.cc = lshr i64 %.231, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !20
  %i.cf = trunc i64 %.231 to i16
  %i.cg = and i16 %i.cf, 7
  %i.ch = ashr i16 -129, %i.cg
  %i.ci = trunc i16 %i.ch to i8
  %i.cj = and i8 %i.ce, %i.ci
  store i8 %i.cj, ptr %i.cd, align 1, !tbaa !20
  %i.ck = add i64 %.231, 1                        ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !20
  %i.co = trunc i64 %i.ck to i16
  %i.cp = and i16 %i.co, 7
  %i.cq = ashr i16 -129, %i.cp
  %i.cr = trunc i16 %i.cq to i8
  %i.cs = and i8 %i.cn, %i.cr
  store i8 %i.cs, ptr %i.cm, align 1, !tbaa !20
  %i.ct = add i64 %.231, 2                        ; 3 uses
  %niter76.next.1 = add nuw i64 %niter76, 2       ; 2 uses
  %niter76.ncmp.1 = icmp eq i64 %niter76.next.1, %unroll_iter75
  br i1 %niter76.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader25.new, !llvm.loop !1002

._crit_edge.unr-lcssa:                            ; preds = %.preheader25.new
  br i1 %lcmp.mod72.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader25
  %.231.epil.init = phi i64 [ %.02336, %.preheader25 ], [ %i.ct, %._crit_edge.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.cu = lshr i64 %.231.epil.init, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !20
  %i.cx = trunc i64 %.231.epil.init to i16
  %i.cy = and i16 %i.cx, 7
  %i.cz = ashr i16 -129, %i.cy
  %i.da = trunc i16 %i.cz to i8
  %i.db = and i8 %i.cw, %i.da
  store i8 %i.db, ptr %i.cv, align 1, !tbaa !20
  %i.dc = add i64 %.231.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ct, %._crit_edge.unr-lcssa ], [ %i.dc, %.epil.preheader ]
  %i.dd = add nuw i32 %.038, 1                    ; 2 uses
  %.not = icmp eq i32 %i.dd, %4
  br i1 %.not, label %._crit_edge39, label %.preheader25, !llvm.loop !1001

._crit_edge39:                                    ; preds = %._crit_edge.us, %..preheader_crit_edge.us.us, %._crit_edge, %.preheader25.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 89) i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, i32 %.0.val, i32 %.4.val, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = alloca [5 x ptr], align 16               ; 8 uses
  %i.c = alloca [5 x ptr], align 16               ; 9 uses
  %i.d = alloca [256 x i32], align 16             ; 6 uses
  %i.e = alloca [5 x i64], align 16               ; 10 uses
  %i.f = alloca [5 x ptr], align 16               ; 8 uses
  %i.g = alloca ptr, align 8                      ; 22 uses
  %5 = alloca %struct.LodePNGCompressSettings, align 8 ; 15 uses
  %i.h = icmp ult i32 %.0.val, 7
  br i1 %i.h, label %switch.lookup, label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit

switch.lookup:                                    ; preds = %bb.a
  %i.i = zext nneg i32 %.0.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings, i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.j = mul i32 %.4.val, %switch.ext
  br label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit

_Z15lodepng_get_bppPK16LodePNGColorMode.exit:     ; preds = %bb.a, %switch.lookup
  %.0.i.i.i = phi i32 [ %i.j, %switch.lookup ], [ 0, %bb.a ] ; 5 uses
  %i.k = lshr i32 %2, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = zext i32 %.0.i.i.i to i64
  %i.n = mul nuw nsw i64 %i.m, %i.l               ; 4 uses
  %i.o = and i32 %2, 7
  %i.p = mul i32 %.0.i.i.i, %i.o
  %i.q = add i32 %i.p, 7
  %i.r = lshr i32 %i.q, 3
  %i.s = zext nneg i32 %i.r to i64                ; 4 uses
  %i.t = add nuw nsw i64 %i.n, %i.s               ; 84 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 9 uses
  %i.v = add i32 %.0.i.i.i, 7
  %i.w = lshr i32 %i.v, 3
  %i.x = zext nneg i32 %i.w to i64                ; 14 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !593  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !592
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit
  %i.ac = icmp eq i32 %.0.val, 3
  %i.ad = icmp ult i32 %.4.val, 8
  %or.cond7 = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond7, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit
  %i.ae = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.ae, label %.loopexit, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.af = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.af, label %.loopexit, label %.thread3

bb.d:                                             ; preds = %bb.c
  %or.cond = icmp ult i32 %i.z, 5
  br i1 %or.cond, label %.thread3, label %bb.e

.thread3:                                         ; preds = %.thread, %bb.d
  %.025826 = phi i32 [ %i.z, %bb.d ], [ 0, %.thread ]
  %i.ag = trunc nuw nsw i32 %.025826 to i8        ; 2 uses
  %.not30487 = icmp eq i32 %3, 0
  br i1 %.not30487, label %.loopexit, label %.lr.ph90.preheader

.lr.ph90.preheader:                               ; preds = %.thread3
  %i.ah = zext i32 %3 to i64
  br label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %.lr.ph90
  %indvars.iv169 = phi i64 [ 0, %.lr.ph90.preheader ], [ %indvars.iv.next170, %.lr.ph90 ] ; 3 uses
  %.025089 = phi ptr [ null, %.lr.ph90.preheader ], [ %i.am, %.lr.ph90 ]
  %i.ai = mul i64 %i.u, %indvars.iv169
  %i.aj = mul i64 %i.t, %indvars.iv169
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai ; 2 uses
  store i8 %i.ag, ptr %i.ak, align 1, !tbaa !20
  %i.al = getelementptr i8, ptr %i.ak, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj ; 2 uses
  tail call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.al, ptr noundef %i.am, ptr noundef %.025089, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext %i.ag)
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %.not304 = icmp eq i64 %indvars.iv.next170, %i.ah
  br i1 %.not304, label %.loopexit, label %.lr.ph90, !llvm.loop !1003

bb.e:                                             ; preds = %bb.d
  switch i32 %i.z, label %.loopexit [
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 8, label %.preheader17
    i32 7, label %bb.n
  ]

.preheader17:                                     ; preds = %bb.e
  %.not28535 = icmp eq i32 %3, 0
  br i1 %.not28535, label %.loopexit, label %.lr.ph38

.lr.ph38:                                         ; preds = %.preheader17
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ao = zext i32 %3 to i64
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ap = tail call noalias noundef ptr @malloc(i64 noundef %i.t) #30 ; 6 uses
  store ptr %i.ap, ptr %i.b, align 16, !tbaa !10
  %i.aq = tail call noalias noundef ptr @malloc(i64 noundef %i.t) #30 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !10
  %i.as = tail call noalias noundef ptr @malloc(i64 noundef %i.t) #30 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.as, ptr %i.at, align 16, !tbaa !10
  %i.au = tail call noalias noundef ptr @malloc(i64 noundef %i.t) #30 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !10
  %i.aw = insertelement <4 x ptr> poison, ptr %i.ap, i64 0
  %i.ax = insertelement <4 x ptr> %i.aw, ptr %i.aq, i64 1
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %i.as, i64 2
  %i.az = insertelement <4 x ptr> %i.ay, ptr %i.au, i64 3
  %i.ba = icmp eq <4 x ptr> %i.az, splat (ptr null)
  %i.bb = tail call noalias noundef ptr @malloc(i64 noundef %i.t) #30 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.bb, ptr %i.bc, align 16, !tbaa !10
  %.not303.4 = icmp eq ptr %i.bb, null
  %i.bd = bitcast <4 x i1> %i.ba to i4
  %i.be = icmp ne i4 %i.bd, 0
  %op.rdx = or i1 %i.be, %.not303.4               ; 2 uses
  %spec.select.4 = select i1 %op.rdx, i32 83, i32 0
  %.not29781 = icmp eq i32 %3, 0
  %or.cond91 = or i1 %op.rdx, %.not29781
  br i1 %or.cond91, label %.loopexit13, label %.preheader11.lr.ph

.preheader11.lr.ph:                               ; preds = %bb.f
  %.not30064 = icmp eq i64 %i.t, 0                ; 4 uses
  %i.bf = zext i32 %3 to i64
  %i.bg = add nuw nsw i64 %i.n, %i.s
  %i.bh = add nsw i64 %i.bg, -1                   ; 12 uses
  %i.bi = add i64 %i.a, 1
  %min.iters.check349 = icmp samesign ult i64 %i.t, 10
  %i.bj = and i64 %i.bh, 4294967295
  %i.bk = icmp eq i64 %i.bj, 4294967295
  %i.bl = icmp ugt i64 %i.bh, 4294967295
  %i.bm = or i1 %i.bk, %i.bl
  %n.vec351 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %cmp.n361 = icmp eq i64 %i.t, %n.vec351
  %min.iters.check332 = icmp samesign ult i64 %i.t, 6
  %i.bn = and i64 %i.bh, 4294967295
  %i.bo = icmp eq i64 %i.bn, 4294967295
  %i.bp = icmp ugt i64 %i.bh, 4294967295
  %i.bq = or i1 %i.bo, %i.bp
  %n.vec334 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %cmp.n344 = icmp eq i64 %i.t, %n.vec334
  %min.iters.check315 = icmp samesign ult i64 %i.t, 6
  %i.br = and i64 %i.bh, 4294967295
  %i.bs = icmp eq i64 %i.br, 4294967295
  %i.bt = icmp ugt i64 %i.bh, 4294967295
  %i.bu = or i1 %i.bs, %i.bt
  %n.vec317 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %cmp.n327 = icmp eq i64 %i.t, %n.vec317
  %min.iters.check298 = icmp samesign ult i64 %i.t, 6
  %i.bv = and i64 %i.bh, 4294967295
  %i.bw = icmp eq i64 %i.bv, 4294967295
  %i.bx = icmp ugt i64 %i.bh, 4294967295
  %i.by = or i1 %i.bw, %i.bx
  %n.vec300 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %cmp.n310 = icmp eq i64 %i.t, %n.vec300
  %min.iters.check284 = icmp samesign ult i64 %i.t, 6
  %i.bz = and i64 %i.bh, 4294967295
  %i.ca = icmp eq i64 %i.bz, 4294967295
  %i.cb = icmp ugt i64 %i.bh, 4294967295
  %i.cc = or i1 %i.ca, %i.cb
  %n.vec286 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %cmp.n294 = icmp eq i64 %i.t, %n.vec286
  %min.iters.check257 = icmp samesign ult i64 %i.t, 4
  %i.cd = and i64 %i.bh, 4294967295
  %i.ce = icmp eq i64 %i.cd, 4294967295
  %i.cf = icmp ugt i64 %i.bh, 4294967295
  %i.cg = or i1 %i.ce, %i.cf
  %min.iters.check259 = icmp samesign ult i64 %i.t, 32
  %i.ch = and i64 %i.t, 28
  %n.vec261 = and i64 %i.t, 4611686018427387872   ; 4 uses
  %cmp.n268 = icmp eq i64 %i.t, %n.vec261
  %min.epilog.iters.check273 = icmp eq i64 %i.ch, 0
  %n.vec275 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %cmp.n281 = icmp eq i64 %i.t, %n.vec275
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge80, %.preheader11.lr.ph
  %indvars.iv161 = phi i64 [ 0, %.preheader11.lr.ph ], [ %indvars.iv.next162, %._crit_edge80 ] ; 5 uses
  %.125183 = phi ptr [ null, %.preheader11.lr.ph ], [ %i.cl, %._crit_edge80 ] ; 6 uses
  %i.ci = mul i64 %i.u, %indvars.iv161
  %i.cj = add i64 %i.bi, %i.ci
  %i.ck = mul i64 %i.t, %indvars.iv161
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck ; 7 uses
  tail call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.ap, ptr noundef %i.cl, ptr noundef %.125183, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 0)
  br i1 %.not30064, label %.preheader9.1.thread, label %.lr.ph71.preheader

.lr.ph71.preheader:                               ; preds = %.preheader
  %brmerge = select i1 %min.iters.check349, i1 true, i1 %i.bm
  br i1 %brmerge, label %.lr.ph71.preheader372, label %vector.body352

vector.body352:                                   ; preds = %.lr.ph71.preheader, %vector.body352
  %index353 = phi i64 [ %index.next358, %vector.body352 ], [ 0, %.lr.ph71.preheader ] ; 2 uses
  %vec.phi354 = phi <2 x i64> [ %i.cq, %vector.body352 ], [ zeroinitializer, %.lr.ph71.preheader ]
  %vec.phi355 = phi <2 x i64> [ %i.cr, %vector.body352 ], [ zeroinitializer, %.lr.ph71.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index353 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %wide.load356 = load <2 x i8>, ptr %i.cm, align 1, !tbaa !20
  %wide.load357 = load <2 x i8>, ptr %i.cn, align 1, !tbaa !20
  %i.co = zext <2 x i8> %wide.load356 to <2 x i64>
  %i.cp = zext <2 x i8> %wide.load357 to <2 x i64>
  %i.cq = add <2 x i64> %vec.phi354, %i.co        ; 2 uses
  %i.cr = add <2 x i64> %vec.phi355, %i.cp        ; 2 uses
  %index.next358 = add nuw i64 %index353, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next358, %n.vec351
  br i1 %i.cs, label %middle.block359, label %vector.body352, !llvm.loop !1004

middle.block359:                                  ; preds = %vector.body352
  %bin.rdx360 = add <2 x i64> %i.cr, %i.cq
  %i.ct = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx360) ; 2 uses
  br i1 %cmp.n361, label %.lr.ph67.preheader.1, label %.lr.ph71.preheader372

.lr.ph71.preheader372:                            ; preds = %.lr.ph71.preheader, %middle.block359
  %indvars.iv149.ph = phi i64 [ %n.vec351, %middle.block359 ], [ 0, %.lr.ph71.preheader ]
  %.023870.ph = phi i64 [ %i.ct, %middle.block359 ], [ 0, %.lr.ph71.preheader ]
  br label %.lr.ph71

.preheader9.1.thread:                             ; preds = %.preheader
  tail call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.aq, ptr noundef %i.cl, ptr noundef %.125183, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 1)
  br label %.preheader9.2

.lr.ph71:                                         ; preds = %.lr.ph71.preheader372, %.lr.ph71
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %.lr.ph71 ], [ %indvars.iv149.ph, %.lr.ph71.preheader372 ] ; 2 uses
  %.023870 = phi i64 [ %i.cx, %.lr.ph71 ], [ %.023870.ph, %.lr.ph71.preheader372 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv149
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !20
  %i.cw = zext i8 %i.cv to i64
  %i.cx = add i64 %.023870, %i.cw                 ; 2 uses
  %indvars.iv.next150 = add nuw i64 %indvars.iv149, 1 ; 2 uses
  %i.cy = and i64 %indvars.iv.next150, 4294967295
  %.not301 = icmp eq i64 %i.t, %i.cy
  br i1 %.not301, label %.lr.ph67.preheader.1, label %.lr.ph71, !llvm.loop !1005

.lr.ph67.preheader.1:                             ; preds = %.lr.ph71, %middle.block359
  %.lcssa = phi i64 [ %i.ct, %middle.block359 ], [ %i.cx, %.lr.ph71 ] ; 2 uses
  tail call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.aq, ptr noundef %i.cl, ptr noundef %.125183, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 1)
  %brmerge406 = select i1 %min.iters.check332, i1 true, i1 %i.bq
  br i1 %brmerge406, label %.lr.ph67.1.preheader, label %vector.body335

vector.body335:                                   ; preds = %.lr.ph67.preheader.1, %vector.body335
  %index336 = phi i64 [ %index.next341, %vector.body335 ], [ 0, %.lr.ph67.preheader.1 ] ; 2 uses
  %vec.phi337 = phi <2 x i64> [ %i.dl, %vector.body335 ], [ zeroinitializer, %.lr.ph67.preheader.1 ]
  %vec.phi338 = phi <2 x i64> [ %i.dm, %vector.body335 ], [ zeroinitializer, %.lr.ph67.preheader.1 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index336 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %wide.load339 = load <2 x i8>, ptr %i.cz, align 1, !tbaa !20 ; 2 uses
  %wide.load340 = load <2 x i8>, ptr %i.da, align 1, !tbaa !20 ; 2 uses
  %i.db = zext <2 x i8> %wide.load339 to <2 x i32> ; 2 uses
  %i.dc = zext <2 x i8> %wide.load340 to <2 x i32> ; 2 uses
  %i.dd = xor <2 x i32> %i.db, splat (i32 255)
  %i.de = xor <2 x i32> %i.dc, splat (i32 255)
  %i.df = icmp slt <2 x i8> %wide.load339, zeroinitializer
  %i.dg = icmp slt <2 x i8> %wide.load340, zeroinitializer
  %i.dh = select <2 x i1> %i.df, <2 x i32> %i.dd, <2 x i32> %i.db
  %i.di = select <2 x i1> %i.dg, <2 x i32> %i.de, <2 x i32> %i.dc
  %i.dj = zext nneg <2 x i32> %i.dh to <2 x i64>
  %i.dk = zext nneg <2 x i32> %i.di to <2 x i64>
  %i.dl = add <2 x i64> %vec.phi337, %i.dj        ; 2 uses
  %i.dm = add <2 x i64> %vec.phi338, %i.dk        ; 2 uses
  %index.next341 = add nuw i64 %index336, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next341, %n.vec334
  br i1 %i.dn, label %middle.block342, label %vector.body335, !llvm.loop !1006

middle.block342:                                  ; preds = %vector.body335
  %bin.rdx343 = add <2 x i64> %i.dm, %i.dl
  %i.do = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx343) ; 2 uses
  br i1 %cmp.n344, label %.preheader9.2, label %.lr.ph67.1.preheader

.lr.ph67.1.preheader:                             ; preds = %.lr.ph67.preheader.1, %middle.block342
  %indvars.iv145.1.ph = phi i64 [ %n.vec334, %middle.block342 ], [ 0, %.lr.ph67.preheader.1 ]
  %.123966.1.ph = phi i64 [ %i.do, %middle.block342 ], [ 0, %.lr.ph67.preheader.1 ]
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67.1.preheader, %.lr.ph67.1
  %indvars.iv145.1 = phi i64 [ %indvars.iv.next146.1, %.lr.ph67.1 ], [ %indvars.iv145.1.ph, %.lr.ph67.1.preheader ] ; 2 uses
  %.123966.1 = phi i64 [ %i.dw, %.lr.ph67.1 ], [ %.123966.1.ph, %.lr.ph67.1.preheader ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv145.1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !20  ; 2 uses
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  %i.ds = xor i32 %i.dr, 255
  %i.dt = icmp slt i8 %i.dq, 0
  %i.du = select i1 %i.dt, i32 %i.ds, i32 %i.dr
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = add i64 %.123966.1, %i.dv               ; 2 uses
  %indvars.iv.next146.1 = add i64 %indvars.iv145.1, 1 ; 2 uses
  %i.dx = and i64 %indvars.iv.next146.1, 4294967295
  %.not300.1 = icmp eq i64 %i.t, %i.dx
  br i1 %.not300.1, label %.preheader9.2, label %.lr.ph67.1, !llvm.loop !1007

.preheader9.2:                                    ; preds = %.lr.ph67.1, %middle.block342, %.preheader9.1.thread
  %.2240196 = phi i64 [ 0, %.preheader9.1.thread ], [ %.lcssa, %middle.block342 ], [ %.lcssa, %.lr.ph67.1 ] ; 2 uses
  %.2240.1 = phi i64 [ 0, %.preheader9.1.thread ], [ %i.do, %middle.block342 ], [ %i.dw, %.lr.ph67.1 ] ; 2 uses
  %i.dy = icmp ult i64 %.2240.1, %.2240196
  %.2249.1 = tail call i64 @llvm.umin.i64(i64 %.2240.1, i64 %.2240196) ; 2 uses
  %.2243.1 = zext i1 %i.dy to i8
  tail call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.as, ptr noundef %i.cl, ptr noundef %.125183, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 2)
  br i1 %.not30064, label %.preheader9.3, label %.lr.ph67.2.preheader

.lr.ph67.2.preheader:                             ; preds = %.preheader9.2
  %brmerge407 = select i1 %min.iters.check315, i1 true, i1 %i.bu
  br i1 %brmerge407, label %.lr.ph67.2.preheader371, label %vector.body318

vector.body318:                                   ; preds = %.lr.ph67.2.preheader, %vector.body318
  %index319 = phi i64 [ %index.next324, %vector.body318 ], [ 0, %.lr.ph67.2.preheader ] ; 2 uses
  %vec.phi320 = phi <2 x i64> [ %i.el, %vector.body318 ], [ zeroinitializer, %.lr.ph67.2.preheader ]
  %vec.phi321 = phi <2 x i64> [ %i.em, %vector.body318 ], [ zeroinitializer, %.lr.ph67.2.preheader ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.as, i64 %index319 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %wide.load322 = load <2 x i8>, ptr %i.dz, align 1, !tbaa !20 ; 2 uses
  %wide.load323 = load <2 x i8>, ptr %i.ea, align 1, !tbaa !20 ; 2 uses
  %i.eb = zext <2 x i8> %wide.load322 to <2 x i32> ; 2 uses
  %i.ec = zext <2 x i8> %wide.load323 to <2 x i32> ; 2 uses
  %i.ed = xor <2 x i32> %i.eb, splat (i32 255)
  %i.ee = xor <2 x i32> %i.ec, splat (i32 255)
  %i.ef = icmp slt <2 x i8> %wide.load322, zeroinitializer
  %i.eg = icmp slt <2 x i8> %wide.load323, zeroinitializer
  %i.eh = select <2 x i1> %i.ef, <2 x i32> %i.ed, <2 x i32> %i.eb
  %i.ei = select <2 x i1> %i.eg, <2 x i32> %i.ee, <2 x i32> %i.ec
  %i.ej = zext nneg <2 x i32> %i.eh to <2 x i64>
  %i.ek = zext nneg <2 x i32> %i.ei to <2 x i64>
  %i.el = add <2 x i64> %vec.phi320, %i.ej        ; 2 uses
  %i.em = add <2 x i64> %vec.phi321, %i.ek        ; 2 uses
  %index.next324 = add nuw i64 %index319, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next324, %n.vec317
  br i1 %i.en, label %middle.block325, label %vector.body318, !llvm.loop !1008

middle.block325:                                  ; preds = %vector.body318
  %bin.rdx326 = add <2 x i64> %i.em, %i.el
  %i.eo = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx326) ; 2 uses
  br i1 %cmp.n327, label %.preheader9.3, label %.lr.ph67.2.preheader371

.lr.ph67.2.preheader371:                          ; preds = %.lr.ph67.2.preheader, %middle.block325
  %indvars.iv145.2.ph = phi i64 [ %n.vec317, %middle.block325 ], [ 0, %.lr.ph67.2.preheader ]
  %.123966.2.ph = phi i64 [ %i.eo, %middle.block325 ], [ 0, %.lr.ph67.2.preheader ]
  br label %.lr.ph67.2

.lr.ph67.2:                                       ; preds = %.lr.ph67.2.preheader371, %.lr.ph67.2
  %indvars.iv145.2 = phi i64 [ %indvars.iv.next146.2, %.lr.ph67.2 ], [ %indvars.iv145.2.ph, %.lr.ph67.2.preheader371 ] ; 2 uses
  %.123966.2 = phi i64 [ %i.ew, %.lr.ph67.2 ], [ %.123966.2.ph, %.lr.ph67.2.preheader371 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv145.2
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !20  ; 2 uses
  %i.er = zext i8 %i.eq to i32                    ; 2 uses
  %i.es = xor i32 %i.er, 255
  %i.et = icmp slt i8 %i.eq, 0
  %i.eu = select i1 %i.et, i32 %i.es, i32 %i.er
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = add i64 %.123966.2, %i.ev               ; 2 uses
  %indvars.iv.next146.2 = add i64 %indvars.iv145.2, 1 ; 2 uses
  %i.ex = and i64 %indvars.iv.next146.2, 4294967295
  %.not300.2 = icmp eq i64 %i.t, %i.ex
  br i1 %.not300.2, label %.preheader9.3, label %.lr.ph67.2, !llvm.loop !1009

.preheader9.3:                                    ; preds = %.lr.ph67.2, %middle.block325, %.preheader9.2
  %.2240.2 = phi i64 [ 0, %.preheader9.2 ], [ %i.eo, %middle.block325 ], [ %i.ew, %.lr.ph67.2 ] ; 2 uses
  %i.ey = icmp ult i64 %.2240.2, %.2249.1
  %.2249.2 = tail call i64 @llvm.umin.i64(i64 %.2240.2, i64 %.2249.1) ; 2 uses
  %.2243.2 = select i1 %i.ey, i8 2, i8 %.2243.1
  tail call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.au, ptr noundef %i.cl, ptr noundef %.125183, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 3)
  br i1 %.not30064, label %.preheader9.4, label %.lr.ph67.3.preheader

.lr.ph67.3.preheader:                             ; preds = %.preheader9.3
  %brmerge408 = select i1 %min.iters.check298, i1 true, i1 %i.by
  br i1 %brmerge408, label %.lr.ph67.3.preheader370, label %vector.body301

vector.body301:                                   ; preds = %.lr.ph67.3.preheader, %vector.body301
  %index302 = phi i64 [ %index.next307, %vector.body301 ], [ 0, %.lr.ph67.3.preheader ] ; 2 uses
  %vec.phi303 = phi <2 x i64> [ %i.fl, %vector.body301 ], [ zeroinitializer, %.lr.ph67.3.preheader ]
  %vec.phi304 = phi <2 x i64> [ %i.fm, %vector.body301 ], [ zeroinitializer, %.lr.ph67.3.preheader ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.au, i64 %index302 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %wide.load305 = load <2 x i8>, ptr %i.ez, align 1, !tbaa !20 ; 2 uses
  %wide.load306 = load <2 x i8>, ptr %i.fa, align 1, !tbaa !20 ; 2 uses
  %i.fb = zext <2 x i8> %wide.load305 to <2 x i32> ; 2 uses
  %i.fc = zext <2 x i8> %wide.load306 to <2 x i32> ; 2 uses
  %i.fd = xor <2 x i32> %i.fb, splat (i32 255)
  %i.fe = xor <2 x i32> %i.fc, splat (i32 255)
  %i.ff = icmp slt <2 x i8> %wide.load305, zeroinitializer
  %i.fg = icmp slt <2 x i8> %wide.load306, zeroinitializer
  %i.fh = select <2 x i1> %i.ff, <2 x i32> %i.fd, <2 x i32> %i.fb
  %i.fi = select <2 x i1> %i.fg, <2 x i32> %i.fe, <2 x i32> %i.fc
  %i.fj = zext nneg <2 x i32> %i.fh to <2 x i64>
  %i.fk = zext nneg <2 x i32> %i.fi to <2 x i64>
  %i.fl = add <2 x i64> %vec.phi303, %i.fj        ; 2 uses
  %i.fm = add <2 x i64> %vec.phi304, %i.fk        ; 2 uses
  %index.next307 = add nuw i64 %index302, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next307, %n.vec300
  br i1 %i.fn, label %middle.block308, label %vector.body301, !llvm.loop !1010

middle.block308:                                  ; preds = %vector.body301
  %bin.rdx309 = add <2 x i64> %i.fm, %i.fl
  %i.fo = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx309) ; 2 uses
  br i1 %cmp.n310, label %.preheader9.4, label %.lr.ph67.3.preheader370

.lr.ph67.3.preheader370:                          ; preds = %.lr.ph67.3.preheader, %middle.block308
  %indvars.iv145.3.ph = phi i64 [ %n.vec300, %middle.block308 ], [ 0, %.lr.ph67.3.preheader ]
  %.123966.3.ph = phi i64 [ %i.fo, %middle.block308 ], [ 0, %.lr.ph67.3.preheader ]
  br label %.lr.ph67.3

.lr.ph67.3:                                       ; preds = %.lr.ph67.3.preheader370, %.lr.ph67.3
  %indvars.iv145.3 = phi i64 [ %indvars.iv.next146.3, %.lr.ph67.3 ], [ %indvars.iv145.3.ph, %.lr.ph67.3.preheader370 ] ; 2 uses
  %.123966.3 = phi i64 [ %i.fw, %.lr.ph67.3 ], [ %.123966.3.ph, %.lr.ph67.3.preheader370 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv145.3
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !20  ; 2 uses
  %i.fr = zext i8 %i.fq to i32                    ; 2 uses
  %i.fs = xor i32 %i.fr, 255
  %i.ft = icmp slt i8 %i.fq, 0
  %i.fu = select i1 %i.ft, i32 %i.fs, i32 %i.fr
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = add i64 %.123966.3, %i.fv               ; 2 uses
  %indvars.iv.next146.3 = add i64 %indvars.iv145.3, 1 ; 2 uses
  %i.fx = and i64 %indvars.iv.next146.3, 4294967295
  %.not300.3 = icmp eq i64 %i.t, %i.fx
  br i1 %.not300.3, label %.preheader9.4, label %.lr.ph67.3, !llvm.loop !1011

.preheader9.4:                                    ; preds = %.lr.ph67.3, %middle.block308, %.preheader9.3
  %.2240.3 = phi i64 [ 0, %.preheader9.3 ], [ %i.fo, %middle.block308 ], [ %i.fw, %.lr.ph67.3 ] ; 2 uses
  %i.fy = icmp ult i64 %.2240.3, %.2249.2
  %.2249.3 = tail call i64 @llvm.umin.i64(i64 %.2240.3, i64 %.2249.2) ; 2 uses
  %.2243.3 = select i1 %i.fy, i8 3, i8 %.2243.2   ; 2 uses
  tail call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.bb, ptr noundef %i.cl, ptr noundef %.125183, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 4)
  br i1 %.not30064, label %.loopexit8.4.thread, label %.lr.ph67.4.preheader

.lr.ph67.4.preheader:                             ; preds = %.preheader9.4
  %brmerge409 = select i1 %min.iters.check284, i1 true, i1 %i.cc
  br i1 %brmerge409, label %.lr.ph67.4.preheader369, label %vector.body287

vector.body287:                                   ; preds = %.lr.ph67.4.preheader, %vector.body287
  %index288 = phi i64 [ %index.next292, %vector.body287 ], [ 0, %.lr.ph67.4.preheader ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.gl, %vector.body287 ], [ zeroinitializer, %.lr.ph67.4.preheader ]
end_hunk_14
