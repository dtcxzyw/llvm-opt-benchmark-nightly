inline.NumInlined: 721
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv3Mat7reserveEm:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !23
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !23
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !23
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !23
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul i64 %i.ci, %i.cm                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa, label %bb.p, !llvm.loop !50

_ZNK2cv8MatShape5totalEv.exit.unr-lcssa:          ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8MatShape5totalEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa ]
  %.068.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %i.cn, %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod63)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.q ] ; 2 uses
  %.068.i.epil = phi i64 [ %.068.i.epil.init, %.epil.preheader ], [ %i.cr, %bb.q ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.epil
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !23
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul i64 %.068.i.epil, %i.cq             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv8MatShape5totalEv.exit, label %bb.q, !llvm.loop !185

_ZNK2cv8MatShape5totalEv.exit:                    ; preds = %bb.q, %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa
  %.lcssa61 = phi i64 [ %i.cn, %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa ], [ %i.cr, %bb.q ]
  %i.cs = mul i64 %.lcssa61, %i.ai
  %i.ct = icmp ult i64 %i.cs, 64
  br i1 %i.ct, label %.lr.ph.i39, label %bb.t

.lr.ph.i39:                                       ; preds = %_ZNK2cv8MatShape5totalEv.exit
  store i32 1, ptr %i.az, align 4, !tbaa !23
  %xtraiter65 = and i64 %wide.trip.count.i, 7     ; 3 uses
  %i.cu = icmp slt i32 %i.aj, 8
  br i1 %i.cu, label %.epil.preheader64, label %.lr.ph.i39.new

.lr.ph.i39.new:                                   ; preds = %.lr.ph.i39
  %unroll_iter70 = and i64 %wide.trip.count.i, 2147483640
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i39.new
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i39.new ], [ %indvars.iv.next.i43.7, %bb.r ] ; 9 uses
  %.068.i42 = phi i64 [ 1, %.lr.ph.i39.new ], [ %i.eh, %bb.r ]
  %niter71 = phi i64 [ 0, %.lr.ph.i39.new ], [ %niter71.next.7, %bb.r ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !23
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul i64 %.068.i42, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !23
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul i64 %i.cy, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !23
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul i64 %i.dd, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !23
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul i64 %i.di, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !23
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul i64 %i.dn, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !23
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %i.ds, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !23
  %i.eb = sext i32 %i.ea to i64
  %i.ec = mul i64 %i.dx, %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 28
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !23
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul i64 %i.ec, %i.eg                    ; 3 uses
  %indvars.iv.next.i43.7 = add nuw nsw i64 %indvars.iv.i41, 8 ; 2 uses
  %niter71.next.7 = add i64 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i64 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa, label %bb.r, !llvm.loop !50

_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa:        ; preds = %bb.r
  %lcmp.mod67.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod67.not, label %_ZNK2cv8MatShape5totalEv.exit46, label %.epil.preheader64

.epil.preheader64:                                ; preds = %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa, %.lr.ph.i39
  %indvars.iv.i41.epil.init = phi i64 [ 0, %.lr.ph.i39 ], [ %indvars.iv.next.i43.7, %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa ]
  %.068.i42.epil.init = phi i64 [ 1, %.lr.ph.i39 ], [ %i.eh, %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter65, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader64
  %indvars.iv.i41.epil = phi i64 [ %indvars.iv.i41.epil.init, %.epil.preheader64 ], [ %indvars.iv.next.i43.epil, %bb.s ] ; 2 uses
  %.068.i42.epil = phi i64 [ %.068.i42.epil.init, %.epil.preheader64 ], [ %i.el, %bb.s ]
  %epil.iter66 = phi i64 [ 0, %.epil.preheader64 ], [ %epil.iter66.next, %bb.s ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41.epil
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !23
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul i64 %.068.i42.epil, %i.ek           ; 2 uses
  %indvars.iv.next.i43.epil = add nuw nsw i64 %indvars.iv.i41.epil, 1
  %epil.iter66.next = add i64 %epil.iter66, 1     ; 2 uses
  %epil.iter66.cmp.not = icmp eq i64 %epil.iter66.next, %xtraiter65
  br i1 %epil.iter66.cmp.not, label %_ZNK2cv8MatShape5totalEv.exit46, label %bb.s, !llvm.loop !186

_ZNK2cv8MatShape5totalEv.exit46:                  ; preds = %bb.s, %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa
  %.lcssa = phi i64 [ %i.eh, %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa ], [ %i.el, %bb.s ]
  %i.em = udiv i64 64, %.lcssa
  %.lhs.trunc = trunc nuw nsw i64 %i.em to i16
  %.rhs.trunc = trunc nuw nsw i32 %i.ah to i16
  %i.en = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.eo = zext nneg i16 %i.en to i32
  store i32 %i.eo, ptr %i.az, align 4, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %_ZNK2cv8MatShape5totalEv.exit46, %_ZNK2cv8MatShape5totalEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ep = and i32 %i.x, 4095
  call void @_ZN2cv3MatC1ERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(52) %6, i32 noundef %i.ep)
  %i.eq = icmp sgt i32 %i.u, 0
  br i1 %i.eq, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !187
  store i32 0, ptr %2, align 4, !tbaa !163, !noalias !187
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.u, ptr %i.er, align 4, !tbaa !182, !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !187
  store i64 9223372034707292160, ptr %3, align 8, !noalias !187
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.et, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !154
  store ptr %8, ptr %i.es, align 8, !tbaa !157
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn31.pn = phi { ptr, i32 } [ %i.ev, %bb.y ], [ %i.eu, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ai

bb.aa:                                            ; preds = %bb.w, %bb.t
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 16, !tbaa !132 ; 2 uses
  %.not18.i = icmp eq ptr %i.ex, null
  br i1 %.not18.i, label %.loopexit.loopexit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.ez = atomicrmw add ptr %i.ey, i32 1 acq_rel, align 4 ; 0 uses
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ab, %bb.aa
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %.loopexit.loopexit.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.fb = load <4 x i32>, ptr %7, align 16, !tbaa !23
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !123
  store <4 x i32> %i.fb, ptr %0, align 8, !tbaa !23
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.fe = load <2 x i32>, ptr %i.fd, align 8, !tbaa !16
  store <2 x i32> %i.fe, ptr %i.w, align 8, !tbaa !16
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.fg = load i32, ptr %i.ff, align 16, !tbaa !22
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.fg, ptr %i.fh, align 8, !tbaa !22
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fk = load <4 x i32>, ptr %i.fi, align 8, !tbaa !23
  store <4 x i32> %i.fk, ptr %i.fj, align 8, !tbaa !23
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fn = load <4 x i32>, ptr %i.fl, align 8, !tbaa !23
  store <4 x i32> %i.fn, ptr %i.fm, align 8, !tbaa !23
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !23
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !23
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fs, ptr noundef nonnull readonly align 16 dereferenceable(80) %i.fr, i64 80, i1 false), !tbaa.struct !147
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 24
  %10 = load ptr, ptr %i.ft, align 8, !tbaa !133  ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %10, ptr %11, align 8, !tbaa !133
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fw = load <2 x ptr>, ptr %12, align 16, !tbaa !111
  store <2 x ptr> %i.fw, ptr %i.fu, align 8, !tbaa !111
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fz = load <2 x ptr>, ptr %i.fx, align 16, !tbaa !146
  store <2 x ptr> %i.fz, ptr %i.fy, align 8, !tbaa !146
  %13 = load ptr, ptr %i.ew, align 16, !tbaa !132
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %13, ptr %14, align 8, !tbaa !132
  store i32 %i.u, ptr %i.t, align 4, !tbaa !23
  switch i32 %i.fc, label %bb.ag [
    i32 2, label %bb.ad
    i32 1, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.u, ptr %i.ga, align 8, !tbaa !129
  br label %bb.ag

bb.ae:                                            ; preds = %.loopexit.loopexit.i.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %bb.ac
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.u, ptr %i.gc, align 4, !tbaa !128
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.af, %bb.ad
  %i.gd = load i64, ptr %i.fs, align 8, !tbaa !12
  %i.ge = mul i64 %i.gd, %i.v
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 %i.ge
  store ptr %i.gf, ptr %i.fv, align 8, !tbaa !136
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.j, %bb.i
  ret void

bb.ai:                                            ; preds = %bb.ae, %bb.z
  %.pn34 = phi { ptr, i32 } [ %i.gb, %bb.ae ], [ %.pn31.pn, %bb.z ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.ai ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat13reserveBufferEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !126    ; 4 uses
  %i.d = and i32 %i.c, 32768
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136
  %.not = icmp ugt ptr %i.g, %i.i
  br i1 %.not, label %bb.d, label %_ZN2cv3Mat6createEiii.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = lshr i32 %i.c, 5
  %i.k = and i32 %i.j, 127
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = shl i32 %i.c, 2
  %i.n = and i32 %i.m, 124
  %i.o = zext nneg i32 %i.n to i64
  %i.p = lshr i64 1275511473185297, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 15
  %i.s = mul nuw nsw i32 %i.r, %i.l
  %i.t = zext nneg i32 %i.s to i64
  %i.u = and i32 %i.c, 4095
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ %i.u, %bb.d ]   ; 2 uses
  %.0 = phi i64 [ 1, %bb.a ], [ %i.t, %bb.d ]
  %i.v = add i64 %1, -1
  %i.w = udiv i64 %i.v, %.0                       ; 2 uses
  %i.x = add i64 %i.w, 1                          ; 5 uses
  %i.y = icmp ult i64 %i.x, 4611686014132420610
  br i1 %i.y, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv3Mat13reserveBufferEm, ptr noundef nonnull @.str.10, i32 noundef 1530) #25
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.z

bb.i:                                             ; preds = %bb.e
  %i.af = icmp samesign ugt i64 %i.x, 2147483647
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp samesign ugt i64 %i.x, 2199023254528
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp samesign ugt i64 %i.x, 2251799812636672
  %i.ai = icmp samesign ugt i64 %i.x, 2305843008139952128
  %i.aj = select i1 %i.ai, i32 2147483647, i32 1073741824
  %i.ak = select i1 %i.ah, i32 %i.aj, i32 1048576
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %i.al = phi i32 [ 1024, %bb.j ], [ %i.ak, %bb.k ], [ 1, %bb.i ] ; 3 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = udiv i64 %i.w, %i.am
  %i.ao = trunc i64 %i.an to i32
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !123
  %i.as = icmp slt i32 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i32, ptr %i.at, align 8
  %i.av = icmp eq i32 %i.au, %i.al
  %or.cond.i = select i1 %i.as, i1 %i.av, i1 false
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.ax, %i.ap
  %or.cond11.i = select i1 %or.cond.i, i1 %i.ay, i1 false
  br i1 %or.cond11.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = load i32, ptr %0, align 8, !tbaa !126
  %i.ba = and i32 %i.az, 4095
  %i.bb = icmp ne i32 %i.ba, %.017
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %.not.i = icmp eq ptr %i.bd, null
  %or.cond13.i = select i1 %i.bb, i1 true, i1 %.not.i
  br i1 %or.cond13.i, label %bb.n, label %_ZN2cv3Mat6createEiii.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.al, ptr %i.a, align 4, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ap, ptr %i.be, align 4, !tbaa !23
  call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %.017)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN2cv3Mat6createEiii.exit

_ZN2cv3Mat6createEiii.exit:                       ; preds = %bb.n, %bb.m, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %i.c = trunc i64 %1 to i32                      ; 6 uses
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %i.c, -1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv8MatShape6resizeEmi, ptr noundef nonnull @.str.10, i32 noundef 1547) #25
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.b
end_hunk_0
