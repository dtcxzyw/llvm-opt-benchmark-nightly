begin_hunk_0_@_ZN2cv7inRangeERKNS_11_InputArrayES2_S2_RKNS_12_OutputArrayE:bb.a

_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us.us.us.us.us: ; preds = %.preheader.us.us.us.us.us
  %i.gu = mul nuw nsw i64 %i.gt, %i.cl
  %i.gv = load ptr, ptr %i.c, align 16, !tbaa !65
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gu ; 2 uses
  store ptr %i.gw, ptr %i.c, align 16, !tbaa !65
  %i.gx = load ptr, ptr %i.gk, align 8, !tbaa !65
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gt ; 2 uses
  store ptr %i.gy, ptr %i.gk, align 8, !tbaa !65
  %i.gz = add i64 %.0190313.us.us.us.us.us.us.us.us.us, %.sroa.speculated ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %.fr343
  br i1 %i.ha, label %.preheader.us.us.us.us.us, label %._crit_edge314.split.us.us.us.split.us.us.split.us.us.split.us.us, !llvm.loop !145

._crit_edge314.split.us.us.us.split.us.us.split.us.us.split.us.us: ; preds = %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us.us.us.us.us
  %i.hb = add nuw i64 %.0191.us.us.us.us.us, 1
  %i.hc = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %.critedge.split.us.split.us.split.us.split.us.split.us unwind label %.split325.us.split.us.split.us.split.us.split.us, !llvm.loop !146 ; 0 uses

.split325.us.split.us.split.us.split.us.split.us: ; preds = %._crit_edge314.split.us.us.us.split.us.us.split.us.us.split.us.us
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.split.us.split.us.split.us.split.us.split.us.split.us.split.us.split.us.split.us: ; preds = %.preheader.us.us.us.us.us
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.critedge.split.us.split.us.split.us.split:       ; preds = %.critedge.split.us.split.us.split.us, %._crit_edge314.split.us.us.us.split.us.us.split
  %.0191.us.us.us = phi i64 [ %i.hu, %._crit_edge314.split.us.us.us.split.us.us.split ], [ 0, %.critedge.split.us.split.us.split.us ] ; 2 uses
  %i.hf = load i64, ptr %i.gi, align 8, !tbaa !64
  %i.hg = icmp ult i64 %.0191.us.us.us, %i.hf
  br i1 %i.hg, label %.preheader.us.us.us.preheader, label %.critedge255

.preheader.us.us.us.preheader:                    ; preds = %.critedge.split.us.split.us.split.us.split
  %.pre361 = load ptr, ptr %i.c, align 16, !tbaa !65
  %.pre362 = load ptr, ptr %i.gk, align 8
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us
  %i.hh = phi ptr [ %i.hr, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us ], [ %.pre362, %.preheader.us.us.us.preheader ]
  %i.hi = phi ptr [ %i.hp, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us ], [ %.pre361, %.preheader.us.us.us.preheader ]
  %.0190313.us.us.us.us.us = phi i64 [ %i.hs, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us ], [ 0, %.preheader.us.us.us.preheader ] ; 2 uses
  %i.hj = sub nuw i64 %.fr343, %.0190313.us.us.us.us.us
  %i.hk = call i64 @llvm.umin.i64(i64 %i.hj, i64 %.sroa.speculated) ; 3 uses
  %i.hl = mul nuw nsw i64 %i.hk, %i.cl            ; 2 uses
  %i.hm = load ptr, ptr %i.gj, align 16, !tbaa !65 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hl
  store ptr %i.hn, ptr %i.gj, align 16, !tbaa !65
  %.sroa.0.0.insert.insert.us.us.us.us.us = or disjoint i64 %i.hk, 4294967296
  invoke void %i.cu(ptr noundef %i.hi, i64 noundef 0, ptr noundef %i.hm, i64 noundef 0, ptr noundef %.0197, i64 noundef 0, ptr noundef %i.hh, i64 noundef 0, i64 %.sroa.0.0.insert.insert.us.us.us.us.us)
          to label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us unwind label %.split.us.split.us.split.us.split.us.split.us.split

_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us: ; preds = %.preheader.us.us.us
  %i.ho = load ptr, ptr %i.c, align 16, !tbaa !65
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hl ; 2 uses
  store ptr %i.hp, ptr %i.c, align 16, !tbaa !65
  %i.hq = load ptr, ptr %i.gk, align 8, !tbaa !65
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hk ; 2 uses
  store ptr %i.hr, ptr %i.gk, align 8, !tbaa !65
  %i.hs = add i64 %.0190313.us.us.us.us.us, %.sroa.speculated ; 2 uses
  %i.ht = icmp ult i64 %i.hs, %.fr343
  br i1 %i.ht, label %.preheader.us.us.us, label %._crit_edge314.split.us.us.us.split.us.us.split, !llvm.loop !145

._crit_edge314.split.us.us.us.split.us.us.split:  ; preds = %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us
  %i.hu = add nuw i64 %.0191.us.us.us, 1
  %i.hv = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %.critedge.split.us.split.us.split.us.split unwind label %.split325.us.split.us.split.us.split, !llvm.loop !146 ; 0 uses

.split325.us.split.us.split.us.split:             ; preds = %._crit_edge314.split.us.us.us.split.us.us.split
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.split.us.split.us.split.us.split.us.split.us.split: ; preds = %.preheader.us.us.us
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.critedge.split.us.split.us.split:                ; preds = %.critedge.split.us.split.us, %._crit_edge314.split.us.us.us.split
  %.0191.us.us = phi i64 [ %i.ip, %._crit_edge314.split.us.us.us.split ], [ 0, %.critedge.split.us.split.us ] ; 2 uses
  %i.hy = load i64, ptr %i.gi, align 8, !tbaa !64
  %i.hz = icmp ult i64 %.0191.us.us, %i.hy
  br i1 %i.hz, label %.preheader.us.us, label %.critedge255

.preheader.us.us:                                 ; preds = %.critedge.split.us.split.us.split, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us
  %.0190313.us.us.us = phi i64 [ %i.in, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us ], [ 0, %.critedge.split.us.split.us.split ] ; 2 uses
  %i.ia = sub nuw i64 %.fr343, %.0190313.us.us.us
  %i.ib = call i64 @llvm.umin.i64(i64 %i.ia, i64 %.sroa.speculated) ; 3 uses
  %i.ic = mul nuw nsw i64 %i.ib, %i.cl            ; 3 uses
  br i1 %.0189, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.preheader.us.us
  %i.id = load ptr, ptr %i.gj, align 16, !tbaa !65 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ic
  store ptr %i.ie, ptr %i.gj, align 16, !tbaa !65
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.preheader.us.us
  %.0161.us.us.us = phi ptr [ %.0193, %.preheader.us.us ], [ %i.id, %bb.cn ]
  %i.if = load ptr, ptr %.sroa.sel.v.sroa.sel, align 8, !tbaa !65 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ic
  store ptr %i.ig, ptr %.sroa.sel.v.sroa.sel, align 8, !tbaa !65
  %i.ih = load ptr, ptr %i.c, align 16, !tbaa !65
  %i.ii = load ptr, ptr %i.gk, align 8
  %.sroa.0.0.insert.insert.us.us.us = or disjoint i64 %i.ib, 4294967296
  invoke void %i.cu(ptr noundef %i.ih, i64 noundef 0, ptr noundef %.0161.us.us.us, i64 noundef 0, ptr noundef %i.if, i64 noundef 0, ptr noundef %i.ii, i64 noundef 0, i64 %.sroa.0.0.insert.insert.us.us.us)
          to label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us unwind label %.split.us.split.us.split.us.split

_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us:     ; preds = %bb.co
  %i.ij = load ptr, ptr %i.c, align 16, !tbaa !65
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ic
  store ptr %i.ik, ptr %i.c, align 16, !tbaa !65
  %i.il = load ptr, ptr %i.gk, align 8, !tbaa !65
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ib
  store ptr %i.im, ptr %i.gk, align 8, !tbaa !65
  %i.in = add i64 %.0190313.us.us.us, %.sroa.speculated ; 2 uses
  %i.io = icmp ult i64 %i.in, %.fr343
  br i1 %i.io, label %.preheader.us.us, label %._crit_edge314.split.us.us.us.split, !llvm.loop !145

._crit_edge314.split.us.us.us.split:              ; preds = %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us
  %i.ip = add nuw i64 %.0191.us.us, 1
  %i.iq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %.critedge.split.us.split.us.split unwind label %.split325.us.split.us.split, !llvm.loop !146 ; 0 uses

.split325.us.split.us.split:                      ; preds = %._crit_edge314.split.us.us.us.split
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.split.us.split.us.split.us.split:                ; preds = %bb.co
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.critedge.split.us.split:                         ; preds = %.critedge.split.us.split.preheader, %._crit_edge314.split.us321
  %.0191.us = phi i64 [ %i.si, %._crit_edge314.split.us321 ], [ 0, %.critedge.split.us.split.preheader ] ; 2 uses
  %i.it = load i64, ptr %i.gi, align 8, !tbaa !64
  %i.iu = icmp ult i64 %.0191.us, %i.it
  br i1 %i.iu, label %.preheader.us, label %.critedge255

.preheader.us:                                    ; preds = %.critedge.split.us.split, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us320
  %.0190313.us315 = phi i64 [ %i.sg, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us320 ], [ 0, %.critedge.split.us.split ] ; 2 uses
  %i.iv = sub i64 %.fr343, %.0190313.us315
  %i.iw = call i64 @llvm.umin.i64(i64 %i.iv, i64 %.sroa.speculated) ; 32 uses
  %i.ix = trunc nuw nsw i64 %i.iw to i32
  %i.iy = mul nuw nsw i64 %i.iw, %i.cl            ; 3 uses
  br i1 %.0189, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.preheader.us
  %i.iz = load ptr, ptr %i.gj, align 16, !tbaa !65 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.iy
  store ptr %i.ja, ptr %i.gj, align 16, !tbaa !65
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.preheader.us
  %.0161.us316 = phi ptr [ %.0193, %.preheader.us ], [ %i.iz, %bb.cp ]
  br i1 %.0192304, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jb = load ptr, ptr %.sroa.sel.v.sroa.sel, align 8, !tbaa !65 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.iy
  store ptr %i.jc, ptr %.sroa.sel.v.sroa.sel, align 8, !tbaa !65
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.0160.us317 = phi ptr [ %.0197, %bb.cq ], [ %i.jb, %bb.cr ]
  %i.jd = load ptr, ptr %i.c, align 16, !tbaa !65
  %i.je = mul nuw nsw i32 %i.cc, %i.ix
  %.sroa.0.0.insert.ext.us318 = zext nneg i32 %i.je to i64
  %.sroa.0.0.insert.insert.us319 = or disjoint i64 %.sroa.0.0.insert.ext.us318, 4294967296
  invoke void %i.cu(ptr noundef %i.jd, i64 noundef 0, ptr noundef %.0161.us316, i64 noundef 0, ptr noundef %.0160.us317, i64 noundef 0, ptr noundef nonnull %i.dp, i64 noundef 0, i64 %.sroa.0.0.insert.insert.us319)
          to label %bb.ct unwind label %.split.split.us

bb.ct:                                            ; preds = %bb.cs
  %i.jf = load ptr, ptr %i.gk, align 8, !tbaa !65 ; 21 uses
  %.not107.i.us = icmp eq i64 %i.iw, 0            ; 5 uses
  switch i32 %i.gl, label %default.unreachable [
    i32 1, label %.preheader.i.us
    i32 2, label %.preheader80.i.us
    i32 3, label %.preheader82.i.us
    i32 0, label %.preheader84.i.us
  ]

.preheader84.i.us:                                ; preds = %bb.ct
  br i1 %.not107.i.us, label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us320, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.preheader84.i.us
  %xtraiter = and i64 %i.iw, 1
  %i.jg = icmp eq i64 %i.iw, 1
  br i1 %i.jg, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us.preheader.new

.lr.ph.i.us.preheader.new:                        ; preds = %.lr.ph.i.us.preheader
  %unroll_iter = and i64 %i.iw, 32766
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %.lr.ph.i.us.preheader.new
  %.387.i.us = phi i64 [ 0, %.lr.ph.i.us.preheader.new ], [ %i.jo, %.lr.ph.i.us ] ; 2 uses
  %.37486.i.us = phi i64 [ 0, %.lr.ph.i.us.preheader.new ], [ %i.jn, %.lr.ph.i.us ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.us.preheader.new ], [ %niter.next.1, %.lr.ph.i.us ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.387.i.us
  %23 = load <4 x i8>, ptr %i.jh, align 1, !tbaa !18
  %24 = call i8 @llvm.vector.reduce.and.v4i8(<4 x i8> %23)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.37486.i.us
  store i8 %24, ptr %i.ji, align 1, !tbaa !18
  %i.jj = add nuw nsw i64 %.387.i.us, %i.df       ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.jj
  %25 = load <4 x i8>, ptr %i.jk, align 1, !tbaa !18
  %26 = call i8 @llvm.vector.reduce.and.v4i8(<4 x i8> %25)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.37486.i.us
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  store i8 %26, ptr %i.jm, align 1, !tbaa !18
  %i.jn = add nuw nsw i64 %.37486.i.us, 2         ; 2 uses
  %i.jo = add nuw nsw i64 %i.jj, %i.df            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.us.loopexit413.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !147

.preheader82.i.us:                                ; preds = %bb.ct
  br i1 %.not107.i.us, label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us320, label %.lr.ph90.i.us.preheader

.lr.ph90.i.us.preheader:                          ; preds = %.preheader82.i.us
  %xtraiter416 = and i64 %i.iw, 1
  %i.jp = icmp eq i64 %i.iw, 1
  br i1 %i.jp, label %.lr.ph90.i.us.epil.preheader, label %.lr.ph90.i.us.preheader.new

.lr.ph90.i.us.preheader.new:                      ; preds = %.lr.ph90.i.us.preheader
  %unroll_iter419 = and i64 %i.iw, 32766
  br label %.lr.ph90.i.us

.lr.ph90.i.us:                                    ; preds = %.lr.ph90.i.us, %.lr.ph90.i.us.preheader.new
  %.289.i.us = phi i64 [ 0, %.lr.ph90.i.us.preheader.new ], [ %i.kl, %.lr.ph90.i.us ] ; 2 uses
  %.27388.i.us = phi i64 [ 0, %.lr.ph90.i.us.preheader.new ], [ %i.kk, %.lr.ph90.i.us ] ; 3 uses
  %niter420 = phi i64 [ 0, %.lr.ph90.i.us.preheader.new ], [ %niter420.next.1, %.lr.ph90.i.us ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.289.i.us ; 3 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !18
  %i.js = getelementptr i8, ptr %i.jq, i64 1
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !18
  %i.ju = and i8 %i.jt, %i.jr
  %i.jv = getelementptr i8, ptr %i.jq, i64 2
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !18
  %i.jx = and i8 %i.ju, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.27388.i.us
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !18
  %i.jz = add nuw nsw i64 %.289.i.us, %i.df       ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.jz ; 3 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !18
  %i.kc = getelementptr i8, ptr %i.ka, i64 1
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !18
  %i.ke = and i8 %i.kd, %i.kb
  %i.kf = getelementptr i8, ptr %i.ka, i64 2
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !18
  %i.kh = and i8 %i.ke, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.27388.i.us
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  store i8 %i.kh, ptr %i.kj, align 1, !tbaa !18
  %i.kk = add nuw nsw i64 %.27388.i.us, 2         ; 2 uses
  %i.kl = add nuw nsw i64 %i.jz, %i.df            ; 2 uses
  %niter420.next.1 = add i64 %niter420, 2         ; 2 uses
  %niter420.ncmp.1 = icmp eq i64 %niter420.next.1, %unroll_iter419
  br i1 %niter420.ncmp.1, label %.loopexit.i.us.loopexit412.unr-lcssa.a, label %.lr.ph90.i.us, !llvm.loop !148

.preheader80.i.us:                                ; preds = %bb.ct
  br i1 %.not107.i.us, label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us320, label %.lr.ph93.i.us.preheader

.lr.ph93.i.us.preheader:                          ; preds = %.preheader80.i.us
  %xtraiter421 = and i64 %i.iw, 1
  %i.km = icmp eq i64 %i.iw, 1
  br i1 %i.km, label %.lr.ph93.i.us.epil.preheader, label %.lr.ph93.i.us.preheader.new

.lr.ph93.i.us.preheader.new:                      ; preds = %.lr.ph93.i.us.preheader
  %unroll_iter424 = and i64 %i.iw, 32766
  br label %.lr.ph93.i.us

.lr.ph93.i.us:                                    ; preds = %.lr.ph93.i.us, %.lr.ph93.i.us.preheader.new
  %.192.i.us = phi i64 [ 0, %.lr.ph93.i.us.preheader.new ], [ %i.lc, %.lr.ph93.i.us ] ; 2 uses
  %.17291.i.us = phi i64 [ 0, %.lr.ph93.i.us.preheader.new ], [ %i.lb, %.lr.ph93.i.us ] ; 3 uses
  %niter425 = phi i64 [ 0, %.lr.ph93.i.us.preheader.new ], [ %niter425.next.1, %.lr.ph93.i.us ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.192.i.us ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !18
  %i.kp = getelementptr i8, ptr %i.kn, i64 1
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !18
  %i.kr = and i8 %i.kq, %i.ko
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.17291.i.us
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !18
  %i.kt = add nuw nsw i64 %.192.i.us, %i.df       ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.kt ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !18
  %i.kw = getelementptr i8, ptr %i.ku, i64 1
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !18
  %i.ky = and i8 %i.kx, %i.kv
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.17291.i.us
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  store i8 %i.ky, ptr %i.la, align 1, !tbaa !18
  %i.lb = add nuw nsw i64 %.17291.i.us, 2         ; 2 uses
  %i.lc = add nuw nsw i64 %i.kt, %i.df            ; 2 uses
  %niter425.next.1 = add i64 %niter425, 2         ; 2 uses
  %niter425.ncmp.1 = icmp eq i64 %niter425.next.1, %unroll_iter424
  br i1 %niter425.ncmp.1, label %.loopexit.i.us.loopexit411.unr-lcssa.a, label %.lr.ph93.i.us, !llvm.loop !149

.preheader.i.us:                                  ; preds = %bb.ct
  br i1 %.not107.i.us, label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us320, label %iter.check

iter.check:                                       ; preds = %.preheader.i.us
  %min.iters.check = icmp samesign ult i64 %i.iw, 8
  br i1 %min.iters.check, label %.lr.ph96.i.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.jf, i64 %i.iw
  %i.ld = add nsw i64 %i.iw, -1
  %i.le = mul nsw i64 %i.ld, %i.df
  %scevgep398 = getelementptr i8, ptr %i.dp, i64 %i.le ; 4 uses
  %i.lf = icmp ult ptr %i.dp, %scevgep398
  %umin = select i1 %i.lf, ptr %i.dp, ptr %scevgep398
  %i.lg = icmp ugt ptr %i.dp, %scevgep398
  %umax.sroa.sel.v = select i1 %i.lg, ptr %i.dp, ptr %scevgep398
  %umax.sroa.sel = getelementptr i8, ptr %umax.sroa.sel.v, i64 1
  %bound0 = icmp ult ptr %i.jf, %umax.sroa.sel
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph96.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check400 = icmp samesign ult i64 %i.iw, 16
  br i1 %min.iters.check400, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.iw, 8
  %n.vec = and i64 %i.iw, 32752                   ; 5 uses
  %i.lh = mul nuw nsw i64 %n.vec, %i.df
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %i.li = mul i64 %index, %i.df                   ; 2 uses
  %i.lj = or disjoint i64 %index, 2
  %i.lk = mul i64 %i.lj, %i.df
  %i.ll = or disjoint i64 %index, 3
  %i.lm = mul i64 %i.ll, %i.df
  %i.ln = or disjoint i64 %index, 4
  %i.lo = mul i64 %i.ln, %i.df
  %i.lp = or disjoint i64 %index, 5
  %i.lq = mul i64 %i.lp, %i.df
  %i.lr = or disjoint i64 %index, 6
  %i.ls = mul i64 %i.lr, %i.df
  %i.lt = or disjoint i64 %index, 7
  %i.lu = mul i64 %i.lt, %i.df
  %i.lv = or disjoint i64 %index, 8
  %i.lw = mul i64 %i.lv, %i.df
  %i.lx = or disjoint i64 %index, 9
  %i.ly = mul i64 %i.lx, %i.df
  %i.lz = or disjoint i64 %index, 10
  %i.ma = mul i64 %i.lz, %i.df
  %i.mb = or disjoint i64 %index, 11
  %i.mc = mul i64 %i.mb, %i.df
  %i.md = or disjoint i64 %index, 12
  %i.me = mul i64 %i.md, %i.df
  %i.mf = or disjoint i64 %index, 13
  %i.mg = mul i64 %i.mf, %i.df
  %i.mh = or disjoint i64 %index, 14
  %i.mi = mul i64 %i.mh, %i.df
  %i.mj = or disjoint i64 %index, 15
  %i.mk = mul i64 %i.mj, %i.df
  %i.ml = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.li
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.li
  %i.mm = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.lk
  %i.mn = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.lm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.lo
  %i.mp = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.lq
  %i.mq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ls
  %i.mr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.lu
  %i.ms = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.lw
  %i.mt = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ly
  %i.mu = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ma
  %i.mv = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mc
  %i.mw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.me
  %i.mx = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mg
  %i.my = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mi
  %i.mz = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mk
  %i.na = load i8, ptr %i.ml, align 1, !tbaa !18, !alias.scope !150
  %i.nb = load i8, ptr %gep, align 1, !tbaa !18, !alias.scope !150
  %i.nc = load i8, ptr %i.mm, align 1, !tbaa !18, !alias.scope !150
  %i.nd = load i8, ptr %i.mn, align 1, !tbaa !18, !alias.scope !150
  %i.ne = load i8, ptr %i.mo, align 1, !tbaa !18, !alias.scope !150
  %i.nf = load i8, ptr %i.mp, align 1, !tbaa !18, !alias.scope !150
  %i.ng = load i8, ptr %i.mq, align 1, !tbaa !18, !alias.scope !150
  %i.nh = load i8, ptr %i.mr, align 1, !tbaa !18, !alias.scope !150
  %i.ni = load i8, ptr %i.ms, align 1, !tbaa !18, !alias.scope !150
  %i.nj = load i8, ptr %i.mt, align 1, !tbaa !18, !alias.scope !150
  %i.nk = load i8, ptr %i.mu, align 1, !tbaa !18, !alias.scope !150
  %i.nl = load i8, ptr %i.mv, align 1, !tbaa !18, !alias.scope !150
  %i.nm = load i8, ptr %i.mw, align 1, !tbaa !18, !alias.scope !150
  %i.nn = load i8, ptr %i.mx, align 1, !tbaa !18, !alias.scope !150
  %i.no = load i8, ptr %i.my, align 1, !tbaa !18, !alias.scope !150
  %i.np = load i8, ptr %i.mz, align 1, !tbaa !18, !alias.scope !150
  %i.nq = insertelement <16 x i8> poison, i8 %i.na, i64 0
  %i.nr = insertelement <16 x i8> %i.nq, i8 %i.nb, i64 1
  %i.ns = insertelement <16 x i8> %i.nr, i8 %i.nc, i64 2
  %i.nt = insertelement <16 x i8> %i.ns, i8 %i.nd, i64 3
  %i.nu = insertelement <16 x i8> %i.nt, i8 %i.ne, i64 4
  %i.nv = insertelement <16 x i8> %i.nu, i8 %i.nf, i64 5
  %i.nw = insertelement <16 x i8> %i.nv, i8 %i.ng, i64 6
  %i.nx = insertelement <16 x i8> %i.nw, i8 %i.nh, i64 7
  %i.ny = insertelement <16 x i8> %i.nx, i8 %i.ni, i64 8
  %i.nz = insertelement <16 x i8> %i.ny, i8 %i.nj, i64 9
  %i.oa = insertelement <16 x i8> %i.nz, i8 %i.nk, i64 10
  %i.ob = insertelement <16 x i8> %i.oa, i8 %i.nl, i64 11
  %i.oc = insertelement <16 x i8> %i.ob, i8 %i.nm, i64 12
  %i.od = insertelement <16 x i8> %i.oc, i8 %i.nn, i64 13
  %i.oe = insertelement <16 x i8> %i.od, i8 %i.no, i64 14
  %i.of = insertelement <16 x i8> %i.oe, i8 %i.np, i64 15
  %i.og = getelementptr inbounds nuw i8, ptr %i.jf, i64 %index
  store <16 x i8> %i.of, ptr %i.og, align 1, !tbaa !18, !alias.scope !153, !noalias !150
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.oh = icmp eq i64 %index.next, %n.vec
  br i1 %i.oh, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iw, %n.vec
  br i1 %cmp.n, label %.loopexit.i.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph96.i.us.preheader, label %vec.epilog.ph, !prof !158

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec402 = and i64 %i.iw, 32760                ; 4 uses
  %i.oi = mul nuw nsw i64 %n.vec402, %i.df
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index403 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next404, %vec.epilog.vector.body ] ; 9 uses
  %i.oj = mul i64 %index403, %i.df                ; 2 uses
  %i.ok = or disjoint i64 %index403, 2
  %i.ol = mul i64 %i.ok, %i.df
  %i.om = or disjoint i64 %index403, 3
  %i.on = mul i64 %i.om, %i.df
  %i.oo = or disjoint i64 %index403, 4
  %i.op = mul i64 %i.oo, %i.df
  %i.oq = or disjoint i64 %index403, 5
  %i.or = mul i64 %i.oq, %i.df
  %i.os = or disjoint i64 %index403, 6
  %i.ot = mul i64 %i.os, %i.df
  %i.ou = or disjoint i64 %index403, 7
  %i.ov = mul i64 %i.ou, %i.df
  %i.ow = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.oj
  %gep443 = getelementptr i8, ptr %invariant.gep442, i64 %i.oj
  %i.ox = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ol
  %i.oy = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.on
  %i.oz = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.op
  %i.pa = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.or
  %i.pb = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ot
  %i.pc = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ov
  %i.pd = load i8, ptr %i.ow, align 1, !tbaa !18, !alias.scope !150
  %i.pe = load i8, ptr %gep443, align 1, !tbaa !18, !alias.scope !150
  %i.pf = load i8, ptr %i.ox, align 1, !tbaa !18, !alias.scope !150
  %i.pg = load i8, ptr %i.oy, align 1, !tbaa !18, !alias.scope !150
  %i.ph = load i8, ptr %i.oz, align 1, !tbaa !18, !alias.scope !150
  %i.pi = load i8, ptr %i.pa, align 1, !tbaa !18, !alias.scope !150
  %i.pj = load i8, ptr %i.pb, align 1, !tbaa !18, !alias.scope !150
  %i.pk = load i8, ptr %i.pc, align 1, !tbaa !18, !alias.scope !150
  %i.pl = insertelement <8 x i8> poison, i8 %i.pd, i64 0
  %i.pm = insertelement <8 x i8> %i.pl, i8 %i.pe, i64 1
  %i.pn = insertelement <8 x i8> %i.pm, i8 %i.pf, i64 2
  %i.po = insertelement <8 x i8> %i.pn, i8 %i.pg, i64 3
  %i.pp = insertelement <8 x i8> %i.po, i8 %i.ph, i64 4
  %i.pq = insertelement <8 x i8> %i.pp, i8 %i.pi, i64 5
  %i.pr = insertelement <8 x i8> %i.pq, i8 %i.pj, i64 6
  %i.ps = insertelement <8 x i8> %i.pr, i8 %i.pk, i64 7
  %i.pt = getelementptr inbounds nuw i8, ptr %i.jf, i64 %index403
  store <8 x i8> %i.ps, ptr %i.pt, align 1, !tbaa !18, !alias.scope !153, !noalias !150
  %index.next404 = add nuw i64 %index403, 8       ; 2 uses
  %i.pu = icmp eq i64 %index.next404, %n.vec402
  br i1 %i.pu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n405 = icmp eq i64 %i.iw, %n.vec402
  br i1 %cmp.n405, label %.loopexit.i.us, label %.lr.ph96.i.us.preheader

.lr.ph96.i.us.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.095.i.us.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.lh, %vec.epilog.iter.check ], [ %i.oi, %vec.epilog.middle.block ] ; 2 uses
  %.07194.i.us.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec402, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter426 = and i64 %i.iw, 3                 ; 2 uses
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  br i1 %lcmp.mod427.not, label %.lr.ph96.i.us.prol.loopexit, label %.lr.ph96.i.us.prol

.lr.ph96.i.us.prol:                               ; preds = %.lr.ph96.i.us.preheader, %.lr.ph96.i.us.prol
  %.095.i.us.prol = phi i64 [ %i.pz, %.lr.ph96.i.us.prol ], [ %.095.i.us.ph, %.lr.ph96.i.us.preheader ] ; 2 uses
  %.07194.i.us.prol = phi i64 [ %i.py, %.lr.ph96.i.us.prol ], [ %.07194.i.us.ph, %.lr.ph96.i.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.us.prol ], [ 0, %.lr.ph96.i.us.preheader ]
  %i.pv = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.095.i.us.prol
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !18
  %i.px = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.07194.i.us.prol
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !18
  %i.py = add nuw nsw i64 %.07194.i.us.prol, 1    ; 2 uses
  %i.pz = add nuw nsw i64 %.095.i.us.prol, %i.df  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter426
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.us.prol.loopexit, label %.lr.ph96.i.us.prol, !llvm.loop !160

.lr.ph96.i.us.prol.loopexit:                      ; preds = %.lr.ph96.i.us.prol, %.lr.ph96.i.us.preheader
  %.095.i.us.unr = phi i64 [ %.095.i.us.ph, %.lr.ph96.i.us.preheader ], [ %i.pz, %.lr.ph96.i.us.prol ]
  %.07194.i.us.unr = phi i64 [ %.07194.i.us.ph, %.lr.ph96.i.us.preheader ], [ %i.py, %.lr.ph96.i.us.prol ]
  %i.qa = sub nsw i64 %.07194.i.us.ph, %i.iw
  %i.qb = icmp ugt i64 %i.qa, -4
  br i1 %i.qb, label %.loopexit.i.us, label %.lr.ph96.i.us

.lr.ph96.i.us:                                    ; preds = %.lr.ph96.i.us.prol.loopexit, %.lr.ph96.i.us
  %.095.i.us = phi i64 [ %i.qv, %.lr.ph96.i.us ], [ %.095.i.us.unr, %.lr.ph96.i.us.prol.loopexit ] ; 2 uses
  %.07194.i.us = phi i64 [ %i.qu, %.lr.ph96.i.us ], [ %.07194.i.us.unr, %.lr.ph96.i.us.prol.loopexit ] ; 5 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.095.i.us
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !18
  %i.qe = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.07194.i.us
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !18
  %i.qf = add nuw nsw i64 %.095.i.us, %i.df       ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !18
  %i.qi = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.07194.i.us
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 1
  store i8 %i.qh, ptr %i.qj, align 1, !tbaa !18
  %i.qk = add nuw nsw i64 %i.qf, %i.df            ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !18
  %i.qn = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.07194.i.us
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 2
  store i8 %i.qm, ptr %i.qo, align 1, !tbaa !18
  %i.qp = add nuw nsw i64 %i.qk, %i.df            ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !18
  %i.qs = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.07194.i.us
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 3
  store i8 %i.qr, ptr %i.qt, align 1, !tbaa !18
  %i.qu = add nuw nsw i64 %.07194.i.us, 4         ; 2 uses
  %i.qv = add nuw nsw i64 %i.qp, %i.df
  %exitcond114.not.i.us.3 = icmp eq i64 %i.qu, %i.iw
  br i1 %exitcond114.not.i.us.3, label %.loopexit.i.us, label %.lr.ph96.i.us, !llvm.loop !162

.loopexit.i.us.loopexit411.unr-lcssa.a:           ; preds = %.lr.ph93.i.us
  %lcmp.mod422.not = icmp eq i64 %xtraiter421, 0
  br i1 %lcmp.mod422.not, label %.loopexit.i.us, label %.lr.ph93.i.us.epil.preheader

.lr.ph93.i.us.epil.preheader:                     ; preds = %.loopexit.i.us.loopexit411.unr-lcssa.a, %.lr.ph93.i.us.preheader
  %.192.i.us.epil.init = phi i64 [ 0, %.lr.ph93.i.us.preheader ], [ %i.lc, %.loopexit.i.us.loopexit411.unr-lcssa.a ]
  %.17291.i.us.epil.init = phi i64 [ 0, %.lr.ph93.i.us.preheader ], [ %i.lb, %.loopexit.i.us.loopexit411.unr-lcssa.a ]
  %lcmp.mod423 = trunc i64 %i.iw to i1
  call void @llvm.assume(i1 %lcmp.mod423)
  %i.qw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.192.i.us.epil.init ; 2 uses
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !18
  %i.qy = getelementptr i8, ptr %i.qw, i64 1
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !18
  %i.ra = and i8 %i.qz, %i.qx
  %i.rb = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.17291.i.us.epil.init
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !18
  br label %.loopexit.i.us

.loopexit.i.us.loopexit412.unr-lcssa.a:           ; preds = %.lr.ph90.i.us
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %.loopexit.i.us, label %.lr.ph90.i.us.epil.preheader

.lr.ph90.i.us.epil.preheader:                     ; preds = %.loopexit.i.us.loopexit412.unr-lcssa.a, %.lr.ph90.i.us.preheader
  %.289.i.us.epil.init = phi i64 [ 0, %.lr.ph90.i.us.preheader ], [ %i.kl, %.loopexit.i.us.loopexit412.unr-lcssa.a ]
  %.27388.i.us.epil.init = phi i64 [ 0, %.lr.ph90.i.us.preheader ], [ %i.kk, %.loopexit.i.us.loopexit412.unr-lcssa.a ]
  %lcmp.mod418 = trunc i64 %i.iw to i1
  call void @llvm.assume(i1 %lcmp.mod418)
  %i.rc = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.289.i.us.epil.init ; 3 uses
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !18
  %i.re = getelementptr i8, ptr %i.rc, i64 1
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !18
  %i.rg = and i8 %i.rf, %i.rd
  %i.rh = getelementptr i8, ptr %i.rc, i64 2
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !18
  %i.rj = and i8 %i.rg, %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.27388.i.us.epil.init
  store i8 %i.rj, ptr %i.rk, align 1, !tbaa !18
  br label %.loopexit.i.us

.loopexit.i.us.loopexit413.unr-lcssa:             ; preds = %.lr.ph.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %.loopexit.i.us.loopexit413.unr-lcssa, %.lr.ph.i.us.preheader
  %.387.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.preheader ], [ %i.jo, %.loopexit.i.us.loopexit413.unr-lcssa ]
  %.37486.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.preheader ], [ %i.jn, %.loopexit.i.us.loopexit413.unr-lcssa ]
  %lcmp.mod415 = trunc i64 %i.iw to i1
  call void @llvm.assume(i1 %lcmp.mod415)
  %i.rl = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.387.i.us.epil.init
  %27 = load <4 x i8>, ptr %i.rl, align 1, !tbaa !18
  %28 = call i8 @llvm.vector.reduce.and.v4i8(<4 x i8> %27)
  %i.rm = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.37486.i.us.epil.init
  store i8 %28, ptr %i.rm, align 1, !tbaa !18
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.us.epil.preheader, %.loopexit.i.us.loopexit413.unr-lcssa, %.lr.ph90.i.us.epil.preheader, %.loopexit.i.us.loopexit412.unr-lcssa.a, %.lr.ph93.i.us.epil.preheader, %.loopexit.i.us.loopexit411.unr-lcssa.a, %.lr.ph96.i.us.prol.loopexit, %.lr.ph96.i.us, %middle.block, %vec.epilog.middle.block
  %brmerge = or i1 %.not307, %.not107.i.us
  br i1 %brmerge, label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us320, label %.lr.ph99.i.us.preheader

.lr.ph99.i.us.preheader:                          ; preds = %.loopexit.i.us
  %xtraiter428 = and i64 %i.iw, 1
  %i.rn = icmp eq i64 %i.iw, 1
  %unroll_iter431 = and i64 %i.iw, 32766
  %lcmp.mod429.not = icmp eq i64 %xtraiter428, 0
  %lcmp.mod430 = trunc i64 %i.iw to i1
  br label %.lr.ph99.i.us

.lr.ph99.i.us:                                    ; preds = %.lr.ph99.i.us.preheader, %._crit_edge.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %._crit_edge.i.us ], [ %i.gm, %.lr.ph99.i.us.preheader ] ; 3 uses
  br i1 %i.rn, label %.epil.preheader, label %.lr.ph99.i.us.new

.lr.ph99.i.us.new:                                ; preds = %.lr.ph99.i.us, %.lr.ph99.i.us.new
  %.498.i.us = phi i64 [ %i.rx, %.lr.ph99.i.us.new ], [ %indvars.iv.i.us, %.lr.ph99.i.us ] ; 2 uses
  %.47597.i.us = phi i64 [ %i.rw, %.lr.ph99.i.us.new ], [ 0, %.lr.ph99.i.us ] ; 3 uses
  %niter432 = phi i64 [ %niter432.next.1, %.lr.ph99.i.us.new ], [ 0, %.lr.ph99.i.us ]
  %i.ro = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.498.i.us
  %29 = load <4 x i8>, ptr %i.ro, align 1, !tbaa !18
  %i.rp = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.47597.i.us ; 2 uses
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !18
  %30 = call i8 @llvm.vector.reduce.and.v4i8(<4 x i8> %29)
  %op.rdx = and i8 %30, %i.rq
  store i8 %op.rdx, ptr %i.rp, align 1, !tbaa !18
  %i.rr = add i64 %.498.i.us, %i.df               ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.rr
  %31 = load <4 x i8>, ptr %i.rs, align 1, !tbaa !18
  %i.rt = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.47597.i.us
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 1 ; 2 uses
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !18
  %32 = call i8 @llvm.vector.reduce.and.v4i8(<4 x i8> %31)
  %op.rdx.1 = and i8 %32, %i.rv
  store i8 %op.rdx.1, ptr %i.ru, align 1, !tbaa !18
  %i.rw = add nuw nsw i64 %.47597.i.us, 2         ; 2 uses
  %i.rx = add i64 %i.rr, %i.df                    ; 2 uses
  %niter432.next.1 = add i64 %niter432, 2         ; 2 uses
  %niter432.ncmp.1 = icmp eq i64 %niter432.next.1, %unroll_iter431
  br i1 %niter432.ncmp.1, label %._crit_edge.i.us.unr-lcssa, label %.lr.ph99.i.us.new, !llvm.loop !163

._crit_edge.i.us.unr-lcssa:                       ; preds = %.lr.ph99.i.us.new
  br i1 %lcmp.mod429.not, label %._crit_edge.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.us.unr-lcssa, %.lr.ph99.i.us
  %.498.i.us.epil.init = phi i64 [ %indvars.iv.i.us, %.lr.ph99.i.us ], [ %i.rx, %._crit_edge.i.us.unr-lcssa ]
  %.47597.i.us.epil.init = phi i64 [ 0, %.lr.ph99.i.us ], [ %i.rw, %._crit_edge.i.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod430)
  %i.ry = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.498.i.us.epil.init
  %33 = load <4 x i8>, ptr %i.ry, align 1, !tbaa !18
  %i.rz = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.47597.i.us.epil.init ; 2 uses
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !18
  %34 = call i8 @llvm.vector.reduce.and.v4i8(<4 x i8> %33)
  %op.rdx.epil = and i8 %34, %i.sa
  store i8 %op.rdx.epil, ptr %i.rz, align 1, !tbaa !18
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %i.sb = icmp samesign ult i64 %indvars.iv.next.i.us, %i.df
  br i1 %i.sb, label %.lr.ph99.i.us, label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us320, !llvm.loop !164

_ZN2cvL13inRangeReduceEPKhPhmi.exit.us320:        ; preds = %._crit_edge.i.us, %.preheader84.i.us, %.preheader82.i.us, %.preheader80.i.us, %.preheader.i.us, %.loopexit.i.us
  %i.sc = load ptr, ptr %i.c, align 16, !tbaa !65
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.iy
  store ptr %i.sd, ptr %i.c, align 16, !tbaa !65
  %i.se = load ptr, ptr %i.gk, align 8, !tbaa !65
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.iw
  store ptr %i.sf, ptr %i.gk, align 8, !tbaa !65
  %i.sg = add i64 %.0190313.us315, %.sroa.speculated ; 2 uses
  %i.sh = icmp ult i64 %i.sg, %.fr343
  br i1 %i.sh, label %.preheader.us, label %._crit_edge314.split.us321, !llvm.loop !145

._crit_edge314.split.us321:                       ; preds = %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us320
  %i.si = add nuw i64 %.0191.us, 1
  %i.sj = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %.critedge.split.us.split unwind label %.split325.us.split, !llvm.loop !146 ; 0 uses

.split.split.us:                                  ; preds = %bb.cs
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

default.unreachable:                              ; preds = %bb.ct
  unreachable

.split325.us.split:                               ; preds = %._crit_edge314.split.us321
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.critedge.split:                                  ; preds = %.critedge, %.preheader
  %.0191 = phi i64 [ %i.so, %.preheader ], [ 0, %.critedge ] ; 2 uses
  %i.sm = load i64, ptr %i.gi, align 8, !tbaa !64
  %i.sn = icmp ult i64 %.0191, %i.sm
  br i1 %i.sn, label %.preheader, label %.critedge255

.preheader:                                       ; preds = %.critedge.split
  %i.so = add nuw i64 %.0191, 1
  %i.sp = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %.critedge.split unwind label %.split325, !llvm.loop !146 ; 0 uses

.split325:                                        ; preds = %.preheader
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.critedge255:                                     ; preds = %.critedge.split.us.split, %.critedge.split.us.split.us.split, %.critedge.split.us.split.us.split.us.split, %.critedge.split.us.split.us.split.us.split.us.split.us, %.critedge.split
  %i.sr = load ptr, ptr %18, align 8, !tbaa !39   ; 3 uses
  %.not.i.i289 = icmp eq ptr %i.sr, %i.dm
  %i.ss = icmp eq ptr %i.sr, null
  %or.cond.i = or i1 %.not.i.i289, %i.ss
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %.critedge255
  call void @_ZdaPv(ptr noundef nonnull %i.sr) #22
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %.critedge255, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.st = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.su = load i32, ptr %i.st, align 8, !tbaa !10
  %.not.i290 = icmp eq i32 %i.su, 0
  br i1 %.not.i290, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.sv = landingpad { ptr, i32 }
          catch ptr null
  %i.sw = extractvalue { ptr, i32 } %i.sv, 0
  call void @__clang_call_terminate(ptr %i.sw) #20
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

.split.us:                                        ; preds = %.split325, %.split325.us.split.us.split, %.split325.us.split.us.split.us.split.us.split.us, %.split325.us.split.us.split.us.split, %.split325.us.split, %.split.split.us, %.split.us.split.us.split.us.split.us.split.us.split.us.split.us.split.us.split.us, %.split.us.split.us.split.us.split.us.split.us.split, %.split.us.split.us.split.us.split, %bb.bw, %bb.ck, %bb.ch, %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282
  %.pn234.pn = phi { ptr, i32 } [ %.pn220, %bb.ck ], [ %.pn216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %i.he, %.split.us.split.us.split.us.split.us.split.us.split.us.split.us.split.us.split.us ], [ %.pn218, %bb.ch ], [ %i.fp, %bb.bw ], [ %i.fq, %bb.bx ], [ %i.sk, %.split.split.us ], [ %i.is, %.split.us.split.us.split.us.split ], [ %i.hx, %.split.us.split.us.split.us.split.us.split.us.split ], [ %i.hd, %.split325.us.split.us.split.us.split.us.split.us ], [ %i.sq, %.split325 ], [ %i.sl, %.split325.us.split ], [ %i.ir, %.split325.us.split.us.split ], [ %i.hw, %.split325.us.split.us.split.us.split ] ; 2 uses
  %i.sx = load ptr, ptr %18, align 8, !tbaa !39   ; 3 uses
  %.not.i.i291 = icmp eq ptr %i.sx, %i.dm
  %i.sy = icmp eq ptr %i.sx, null
  %or.cond.i292 = or i1 %.not.i.i291, %i.sy
  br i1 %or.cond.i292, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit293, label %bb.cx

bb.cx:                                            ; preds = %.split.us
  call void @_ZdaPv(ptr noundef nonnull %i.sx) #22
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit293

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit293:         ; preds = %bb.cx, %.split.us, %bb.bk
  %.pn234.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.bk ], [ %.pn234.pn, %.split.us ], [ %.pn234.pn, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit293, %bb.bj
  %.pn234.pn.pn.pn = phi { ptr, i32 } [ %.pn234.pn.pn, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit293 ], [ %i.ej, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.bi
  %.pn234.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn234.pn.pn.pn, %bb.cy ], [ %i.ei, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.da

bb.da:                                            ; preds = %bb.bh, %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %bb.ag
  %.pn234.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ], [ %.pn214, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %.pn212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271 ], [ %i.as, %bb.ag ], [ %.pn234.pn.pn.pn.pn, %bb.cz ], [ %i.eh, %bb.bh ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.af
  %.pn234.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn234.pn.pn.pn.pn.pn.pn, %bb.da ], [ %i.ar, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.ae
  %.pn234.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn234.pn.pn.pn.pn.pn.pn.pn, %bb.db ], [ %i.aq, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.ad
  %.pn234.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn234.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dc ], [ %i.ap, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.de

bb.de:                                            ; preds = %bb.aa, %bb.ac, %bb.dd, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn248.pn = phi { ptr, i32 } [ %.pn248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %bb.c ], [ %i.am, %bb.aa ], [ %i.an, %bb.ab ], [ %.pn234.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dd ], [ %i.ao, %bb.ac ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn248.pn
}

declare noundef zeroext i1 @_ZN2cvneERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv11checkScalarERKNS_3MatEiNS_11_InputArray8KindFlagES4_(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !165
  %i.c = icmp sgt i32 %i.b, 2
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.e = and i32 %i.d, 16384
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !113  ; 6 uses
  %i.h = icmp slt i32 %i.g, 3
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.49, i32 noundef 109) #21
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8, !tbaa !13     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZN2cvL10inRange32uEPKjmS1_mS1_mPhmNS_5Size_IiEE:bb.a
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK2cv12InRange_SIMDIjEclEPKjS3_S3_Phi.exit.loopexit.i.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.02937.i, i64 %indvars.iv.i.i.epil.init
  %i.y = load i32, ptr %i.x, align 4, !tbaa !106
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.03036.i, i64 %indvars.iv.i.i.epil.init
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !106 ; 2 uses
  %.not.i.i.epil = icmp ugt i32 %i.y, %i.aa
  br i1 %.not.i.i.epil, label %_ZNK2cv12InRange_SIMDIjEclEPKjS3_S3_Phi.exit.loopexit.i.epilog-lcssa, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.02838.i, i64 %indvars.iv.i.i.epil.init
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !106
  %.not15.i.i.epil = icmp ule i32 %i.aa, %i.ac
  %i.ad = sext i1 %.not15.i.i.epil to i8
  br label %_ZNK2cv12InRange_SIMDIjEclEPKjS3_S3_Phi.exit.loopexit.i.epilog-lcssa

_ZNK2cv12InRange_SIMDIjEclEPKjS3_S3_Phi.exit.loopexit.i.epilog-lcssa: ; preds = %bb.e, %.lr.ph.i.i.epil.preheader
  %i.ae = phi i8 [ 0, %.lr.ph.i.i.epil.preheader ], [ %i.ad, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %.02739.i, i64 %indvars.iv.i.i.epil.init
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !18
  br label %_ZNK2cv12InRange_SIMDIjEclEPKjS3_S3_Phi.exit.loopexit.i

_ZNK2cv12InRange_SIMDIjEclEPKjS3_S3_Phi.exit.loopexit.i: ; preds = %_ZNK2cv12InRange_SIMDIjEclEPKjS3_S3_Phi.exit.loopexit.i.unr-lcssa, %_ZNK2cv12InRange_SIMDIjEclEPKjS3_S3_Phi.exit.loopexit.i.epilog-lcssa
  %i.ag = add nsw i32 %.in.i, -1                  ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.03036.i, i64 %i.a
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.02937.i, i64 %i.b
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.02838.i, i64 %i.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.02739.i, i64 %7
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %_ZN2cvL8inRange_IjEEvPKT_mS3_mS3_mPhmNS_5Size_IiEE.exit, label %.lr.ph.preheader.i.i, !llvm.loop !197

_ZN2cvL8inRange_IjEEvPKT_mS3_mS3_mPhmNS_5Size_IiEE.exit: ; preds = %_ZNK2cv12InRange_SIMDIjEclEPKjS3_S3_Phi.exit.loopexit.i, %bb.a, %.lr.ph.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv12InRange_SIMDINS_6hfloatEEclEPKS1_S4_S4_Phi(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %bb.a
  ret i32 %5

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.c = load i16, ptr %i.b, align 2, !tbaa !184  ; 2 uses
  %i.d = zext i16 %i.c to i32                     ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 13                 ; 2 uses
  %i.f = and i32 %i.e, 268427264                  ; 2 uses
  %i.g = add nuw nsw i32 %i.f, 939524096
  %i.h = and i32 %i.d, 31744
  switch i32 %i.h, label %_ZNK2cv6hfloatcvfEv.exit [
    i32 31744, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.i = or i32 %i.e, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i32 %i.f, 947912704
  %i.k = bitcast i32 %i.j to float
  %i.l = fadd float %i.k, f0xB8800000
  %i.m = bitcast float %i.l to i32
  br label %_ZNK2cv6hfloatcvfEv.exit

_ZNK2cv6hfloatcvfEv.exit:                         ; preds = %.lr.ph, %bb.b, %bb.c
  %i.n = phi i32 [ %i.i, %bb.b ], [ %i.m, %bb.c ], [ %i.g, %.lr.ph ]
  %.signext.i = sext i16 %i.c to i32
  %i.o = and i32 %.signext.i, -2147483648
  %i.p = or i32 %i.n, %i.o
  %i.q = bitcast i32 %i.p to float
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.s = load i16, ptr %i.r, align 2, !tbaa !184  ; 2 uses
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = shl nuw nsw i32 %i.t, 13                 ; 3 uses
  %i.v = and i32 %i.u, 268427264                  ; 3 uses
  %i.w = add nuw nsw i32 %i.v, 939524096          ; 2 uses
  %i.x = and i32 %i.t, 31744                      ; 2 uses
  switch i32 %i.x, label %_ZNK2cv6hfloatcvfEv.exit15 [
    i32 31744, label %bb.d
    i32 0, label %bb.e
  ]

bb.d:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit
  %i.y = or i32 %i.u, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit15

bb.e:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit
  %i.z = add nuw nsw i32 %i.v, 947912704
  %i.aa = bitcast i32 %i.z to float
  %i.ab = fadd float %i.aa, f0xB8800000
  %i.ac = bitcast float %i.ab to i32
  br label %_ZNK2cv6hfloatcvfEv.exit15

_ZNK2cv6hfloatcvfEv.exit15:                       ; preds = %_ZNK2cv6hfloatcvfEv.exit, %bb.d, %bb.e
  %i.ad = phi i32 [ %i.y, %bb.d ], [ %i.ac, %bb.e ], [ %i.w, %_ZNK2cv6hfloatcvfEv.exit ]
  %.signext.i14 = sext i16 %i.s to i32
  %i.ae = and i32 %.signext.i14, -2147483648      ; 2 uses
  %i.af = or i32 %i.ad, %i.ae
  %i.ag = bitcast i32 %i.af to float
  %i.ah = fcmp ugt float %i.q, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit15
  switch i32 %i.x, label %_ZNK2cv6hfloatcvfEv.exit17 [
    i32 31744, label %bb.g
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ai = or i32 %i.u, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit17

bb.h:                                             ; preds = %bb.f
  %i.aj = add nuw nsw i32 %i.v, 947912704
  %i.ak = bitcast i32 %i.aj to float
  %i.al = fadd float %i.ak, f0xB8800000
  %i.am = bitcast float %i.al to i32
  br label %_ZNK2cv6hfloatcvfEv.exit17

_ZNK2cv6hfloatcvfEv.exit17:                       ; preds = %bb.f, %bb.g, %bb.h
  %i.an = phi i32 [ %i.ai, %bb.g ], [ %i.am, %bb.h ], [ %i.w, %bb.f ]
  %i.ao = or i32 %i.an, %i.ae
  %i.ap = bitcast i32 %i.ao to float
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !184 ; 2 uses
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = shl nuw nsw i32 %i.as, 13               ; 2 uses
  %i.au = and i32 %i.at, 268427264                ; 2 uses
  %i.av = add nuw nsw i32 %i.au, 939524096
  %i.aw = and i32 %i.as, 31744
  switch i32 %i.aw, label %_ZNK2cv6hfloatcvfEv.exit19 [
    i32 31744, label %bb.i
    i32 0, label %bb.j
  ]

bb.i:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit17
  %i.ax = or i32 %i.at, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit19

bb.j:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit17
  %i.ay = add nuw nsw i32 %i.au, 947912704
  %i.az = bitcast i32 %i.ay to float
  %i.ba = fadd float %i.az, f0xB8800000
  %i.bb = bitcast float %i.ba to i32
  br label %_ZNK2cv6hfloatcvfEv.exit19

_ZNK2cv6hfloatcvfEv.exit19:                       ; preds = %_ZNK2cv6hfloatcvfEv.exit17, %bb.i, %bb.j
  %i.bc = phi i32 [ %i.ax, %bb.i ], [ %i.bb, %bb.j ], [ %i.av, %_ZNK2cv6hfloatcvfEv.exit17 ]
  %.signext.i18 = sext i16 %i.ar to i32
  %i.bd = and i32 %.signext.i18, -2147483648
  %i.be = or i32 %i.bc, %i.bd
  %i.bf = bitcast i32 %i.be to float
  %i.bg = fcmp ole float %i.ap, %i.bf
  %i.bh = sext i1 %i.bg to i8
  br label %bb.k

bb.k:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit19, %_ZNK2cv6hfloatcvfEv.exit15
  %i.bi = phi i8 [ 0, %_ZNK2cv6hfloatcvfEv.exit15 ], [ %i.bh, %_ZNK2cv6hfloatcvfEv.exit19 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !198
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #16

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.and.v4i8(<4 x i8>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 8}
!11 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !12, i64 0, !5, i64 8}
!12 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !9, i64 0}
!13 = !{!14, !16, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !6, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !9, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!21 = distinct !{!21, !"_ZNK2cv11_InputArray6getMatEi"}
!22 = !{!23, !9, i64 8}
!23 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !9, i64 8, !24, i64 16}
!24 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!27 = distinct !{!27, !"_ZNK2cv11_InputArray6getMatEi"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!30 = distinct !{!30, !"_ZNK2cv11_InputArray6getMatEi"}
!31 = !{!32, !16, i64 24}
!32 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !33, i64 56, !34, i64 64, !35, i64 72, !37, i64 128}
!33 = !{!"p1 _ZTSN2cv12MatAllocatorE", !9, i64 0}
!34 = !{!"p1 _ZTSN2cv8UMatDataE", !9, i64 0}
!35 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !36, i64 4, !5, i64 8, !6, i64 12}
!36 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!37 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!38 = !{!17, !17, i64 0}
!39 = !{!40, !16, i64 0}
!40 = !{!"_ZTSN2cv10AutoBufferIhLm1032EEE", !16, i64 0, !17, i64 8, !6, i64 16}
!41 = !{!40, !17, i64 8}
!42 = !{!43, !43, i64 0}
!43 = !{!"double", !6, i64 0}
!44 = !{!23, !5, i64 0}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!47 = distinct !{!47, !"_ZNK2cv11_InputArray6getMatEi"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!50 = distinct !{!50, !"_ZNK2cv11_InputArray6getMatEi"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!53 = distinct !{!53, !"_ZNK2cv11_InputArray6getMatEi"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!56 = distinct !{!56, !"_ZNK2cv11_InputArray6getMatEi"}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTSN2cv3MatE", !9, i64 0}
!59 = !{!60, !17, i64 40}
!60 = !{!"_ZTSN2cv15NAryMatIteratorE", !61, i64 0, !58, i64 8, !63, i64 16, !5, i64 24, !17, i64 32, !17, i64 40, !5, i64 48, !17, i64 56}
!61 = !{!"p2 _ZTSN2cv3MatE", !62, i64 0}
!62 = !{!"any p2 pointer", !9, i64 0}
!63 = !{!"p2 omnipotent char", !62, i64 0}
!64 = !{!60, !17, i64 32}
!65 = !{!16, !16, i64 0}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = distinct !{!68, !67}
!69 = !{!32, !5, i64 0}
!70 = distinct !{!70, !67}
!71 = distinct !{!71, !67}
!72 = !{!24, !5, i64 0}
!73 = !{!24, !5, i64 4}
!74 = !{!15, !16, i64 0}
!75 = !{!14, !17, i64 8}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!78 = distinct !{!78, !"_ZNK2cv11_InputArray6getMatEi"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!81 = distinct !{!81, !"_ZNK2cv11_InputArray6getMatEi"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!84 = distinct !{!84, !"_ZNK2cv11_InputArray6getMatEi"}
!85 = !{ptr @_ZN2cvL15mul8s16sWrapperEPKhmS1_mPhmiiPv, ptr @_ZN2cvL15mul8u16uWrapperEPKhmS1_mPhmiiPv, ptr @_ZN2cvL15sub8s32fWrapperEPKhmS1_mPhmiiPv, ptr @_ZN2cvL15sub8u32fWrapperEPKhmS1_mPhmiiPv}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!88 = distinct !{!88, !"_ZNK2cv11_InputArray6getMatEi"}
!89 = distinct !{!89, !67}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!92 = distinct !{!92, !"_ZNK2cv11_InputArray6getMatEi"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!95 = distinct !{!95, !"_ZNK2cv11_InputArray6getMatEi"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!98 = distinct !{!98, !"_ZNK2cv11_InputArray6getMatEi"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!101 = distinct !{!101, !"_ZNK2cv11_InputArray6getMatEi"}
!102 = distinct !{!102, !67}
!103 = distinct !{!103, !67}
!104 = distinct !{!104, !67}
!105 = distinct !{!105, !67}
!106 = !{!5, !5, i64 0}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!109 = distinct !{!109, !"_ZNK2cv11_InputArray6getMatEi"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!112 = distinct !{!112, !"_ZNK2cv11_InputArray6getMatEi"}
!113 = !{!35, !5, i64 0}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!116 = distinct !{!116, !"_ZNK2cv11_InputArray6getMatEi"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!119 = distinct !{!119, !"_ZNK2cv11_InputArray6getMatEi"}
!120 = distinct !{!120, !67}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!123 = distinct !{!123, !"_ZN2cv7Scalar_IdE3allEd"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!126 = distinct !{!126, !"_ZN2cv7Scalar_IdE3allEd"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!129 = distinct !{!129, !"_ZN2cv7Scalar_IdE3allEd"}
!130 = distinct !{!130, !67}
!131 = distinct !{!131, !67}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!134 = distinct !{!134, !"_ZNK2cv11_InputArray6getMatEi"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!137 = distinct !{!137, !"_ZNK2cv11_InputArray6getMatEi"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!140 = distinct !{!140, !"_ZNK2cv11_InputArray6getMatEi"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!143 = distinct !{!143, !"_ZNK2cv11_InputArray6getMatEi"}
!144 = distinct !{!144, !67}
!145 = distinct !{!145, !67}
!146 = distinct !{!146, !67}
!147 = distinct !{!147, !67}
!148 = distinct !{!148, !67}
!149 = distinct !{!149, !67}
!150 = !{!151}
!151 = distinct !{!151, !152}
!152 = distinct !{!152, !"LVerDomain"}
!153 = !{!154}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !67, !156, !157}
!156 = !{!"llvm.loop.isvectorized", i32 1}
!157 = !{!"llvm.loop.unroll.runtime.disable"}
!158 = !{!"branch_weights", i32 8, i32 8}
!159 = distinct !{!159, !67, !156, !157}
!160 = distinct !{!160, !161}
!161 = !{!"llvm.loop.unroll.disable"}
!162 = distinct !{!162, !67, !156}
!163 = distinct !{!163, !67}
!164 = distinct !{!164, !67}
!165 = !{!32, !5, i64 4}
!166 = distinct !{!166, !67}
!167 = distinct !{!167, !67}
!168 = distinct !{!168, !67}
!169 = distinct !{!169, !67}
!170 = !{!171, !171, i64 0}
end_hunk_1
