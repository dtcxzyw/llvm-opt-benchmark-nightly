Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dxt?download=true
inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_:_ZNKSt9type_infoeqERKS_.exit733.thread791
  %i.el = zext nneg i32 %i.dz to i64              ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.el ; 3 uses
  %i.en = load i64, ptr %i.em, align 4
  store i64 %i.en, ptr %i.ej, align 4
  store i64 %i.ek, ptr %i.em, align 4
  %i.eo = icmp samesign ult i64 %indvars.iv939, %i.el
  br i1 %i.eo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv939 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 4
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.el ; 2 uses
  %i.es = load i64, ptr %i.er, align 4
  store i64 %i.es, ptr %i.ep, align 4
  store i64 %i.eq, ptr %i.er, align 4
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 4
  %i.ev = getelementptr i8, ptr %i.em, i64 8      ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 4
  store i64 %i.ew, ptr %i.et, align 4
  store i64 %i.eu, ptr %i.ev, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %indvars.iv.next940 = add nuw nsw i64 %indvars.iv939, 2 ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %.2821, i64 %i.dy
  %i.ey = icmp slt i64 %indvars.iv.next940, %i.du
  br i1 %i.ey, label %bb.ak, label %.loopexit801, !llvm.loop !426

bb.at:                                            ; preds = %.lr.ph819, %bb.bb
  %indvars.iv936 = phi i64 [ 0, %.lr.ph819 ], [ %indvars.iv.next937, %bb.bb ] ; 3 uses
  %.3818 = phi ptr [ %i.d, %.lr.ph819 ], [ %i.fo, %bb.bb ] ; 2 uses
  %i.ez = load i32, ptr %.3818, align 4, !tbaa !41 ; 2 uses
  %i.fa = icmp ult i32 %i.ez, %i.f
  br i1 %i.fa, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 958) #22
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754

bb.ay:                                            ; preds = %bb.av
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %15, align 8, !tbaa !52   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752: ; preds = %bb.ay
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !55
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752, %bb.ax
  %.pn705 = phi { ptr, i32 } [ %i.fb, %bb.ax ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752 ], [ %i.fc, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.bx

bb.az:                                            ; preds = %bb.at
  %i.fi = zext nneg i32 %i.ez to i64              ; 2 uses
  %i.fj = icmp samesign ult i64 %indvars.iv936, %i.fi
  br i1 %i.fj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv936 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 4
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fi ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 4
  store i64 %i.fn, ptr %i.fk, align 4
  store i64 %i.fl, ptr %i.fm, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %indvars.iv.next937 = add nuw nsw i64 %indvars.iv936, 1 ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %.3818, i64 %i.dq
  %exitcond.not = icmp eq i64 %indvars.iv.next937, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit801, label %bb.at, !llvm.loop !427

.loopexit801:                                     ; preds = %bb.bb, %bb.as, %.preheader802, %bb.aj, %bb.ai, %bb.aa
  br i1 %i.i, label %.preheader800, label %bb.bd

.preheader800:                                    ; preds = %.loopexit801
  %.not709824 = icmp slt i32 %i.f, 2
  br i1 %.not709824, label %._crit_edge827, label %.lr.ph826.preheader

.lr.ph826.preheader:                              ; preds = %.preheader800
  %i.fp = add nsw i32 %i.f, -2
  %i.fq = lshr i32 %i.fp, 1                       ; 2 uses
  %narrow = add nuw i32 %i.fq, 1                  ; 2 uses
  %i.fr = zext i32 %narrow to i64                 ; 2 uses
  %xtraiter = and i64 %i.fr, 1
  %i.fs = icmp eq i32 %i.fq, 0
  br i1 %i.fs, label %.lr.ph826.epil.preheader, label %.lr.ph826.preheader.new

.lr.ph826.preheader.new:                          ; preds = %.lr.ph826.preheader
  %unroll_iter = and i64 %i.fr, 4294967294
  br label %.lr.ph826

.lr.ph826:                                        ; preds = %.lr.ph826, %.lr.ph826.preheader.new
  %indvars.iv942 = phi i64 [ 0, %.lr.ph826.preheader.new ], [ %indvars.iv.next943.1, %.lr.ph826 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph826.preheader.new ], [ %niter.next.1, %.lr.ph826 ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv942 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !414
  %i.fw = fneg float %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 12 ; 2 uses
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !414
  %i.fz = fneg float %i.fy
  store float %i.fw, ptr %i.fu, align 4, !tbaa !414
  store float %i.fz, ptr %i.fx, align 4, !tbaa !414
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv942 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 20 ; 2 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !414
  %i.gd = fneg float %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 28 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !414
  %i.gg = fneg float %i.gf
  store float %i.gd, ptr %i.gb, align 4, !tbaa !414
  store float %i.gg, ptr %i.ge, align 4, !tbaa !414
  %indvars.iv.next943.1 = add nuw nsw i64 %indvars.iv942, 4 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge827.loopexit.unr-lcssa, label %.lr.ph826, !llvm.loop !428

._crit_edge827.loopexit.unr-lcssa:                ; preds = %.lr.ph826
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge827.loopexit, label %.lr.ph826.epil.preheader

.lr.ph826.epil.preheader:                         ; preds = %._crit_edge827.loopexit.unr-lcssa, %.lr.ph826.preheader
  %indvars.iv942.epil.init = phi i64 [ 0, %.lr.ph826.preheader ], [ %indvars.iv.next943.1, %._crit_edge827.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1509 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod1509)
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv942.epil.init ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !414
  %i.gk = fneg float %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 12 ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !414
  %i.gn = fneg float %i.gm
  store float %i.gk, ptr %i.gi, align 4, !tbaa !414
  store float %i.gn, ptr %i.gl, align 4, !tbaa !414
  %indvars.iv.next943.epil = add nuw nsw i64 %indvars.iv942.epil.init, 2
  br label %._crit_edge827.loopexit

._crit_edge827.loopexit:                          ; preds = %._crit_edge827.loopexit.unr-lcssa, %.lr.ph826.epil.preheader
  %indvars.iv.next943.lcssa = phi i64 [ %indvars.iv.next943.1, %._crit_edge827.loopexit.unr-lcssa ], [ %indvars.iv.next943.epil, %.lr.ph826.epil.preheader ]
  %i.go = trunc nuw nsw i64 %indvars.iv.next943.lcssa to i32
  br label %._crit_edge827

._crit_edge827:                                   ; preds = %._crit_edge827.loopexit, %.preheader800
  %.4645.lcssa = phi i32 [ 0, %.preheader800 ], [ %i.go, %._crit_edge827.loopexit ]
  %i.gp = icmp slt i32 %.4645.lcssa, %i.f
  br i1 %i.gp, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %._crit_edge827
  %i.gq = zext nneg i32 %i.f to i64
  %i.gr = getelementptr [8 x i8], ptr %2, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 -4     ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !414
  %i.gu = fneg float %i.gt
  store float %i.gu, ptr %i.gs, align 4, !tbaa !414
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit801, %bb.bc, %._crit_edge827, %bb.r, %._crit_edge, %bb.z, %._crit_edge815
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !425
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !41 ; 7 uses
  %i.gy = and i32 %i.gx, 1
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %.preheader799, label %.loopexit797

.preheader799:                                    ; preds = %bb.bd
  %.not714837 = icmp slt i32 %i.gx, 4
  br i1 %.not714837, label %.preheader796, label %.lr.ph840

.lr.ph840:                                        ; preds = %.preheader799
  %i.ha = load i32, ptr %i.e, align 4, !tbaa !418 ; 2 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %.lr.ph836.us.preheader, label %.loopexit798

.lr.ph836.us.preheader:                           ; preds = %.lr.ph840
  %i.hc = zext nneg i32 %i.ha to i64              ; 3 uses
  %scevgep = getelementptr i8, ptr %2, i64 8      ; 3 uses
  %scevgep1100 = getelementptr i8, ptr %2, i64 -4
  %scevgep1103.a = getelementptr i8, ptr %2, i64 8
  %scevgep1105.a = getelementptr i8, ptr %2, i64 -4
  %scevgep1107.a = getelementptr i8, ptr %2, i64 8
  %scevgep1109.a = getelementptr i8, ptr %2, i64 -4
  %scevgep1111.a = getelementptr i8, ptr %2, i64 8
  %scevgep1113.a = getelementptr i8, ptr %2, i64 -4
  %scevgep1115.a = getelementptr i8, ptr %i.b, i64 24 ; 4 uses
  %scevgep1116.a = getelementptr i8, ptr %i.b, i64 -20
  %scevgep1118.a = getelementptr i8, ptr %i.b, i64 8 ; 4 uses
  %scevgep1119.a = getelementptr i8, ptr %i.b, i64 -4
  %scevgep1121.a = getelementptr i8, ptr %i.b, i64 16 ; 4 uses
  %scevgep1122.a = getelementptr i8, ptr %i.b, i64 -12
  %scevgep1124.a = getelementptr i8, ptr %2, i64 12 ; 3 uses
  %scevgep1126.a = getelementptr i8, ptr %2, i64 12
  %scevgep1129.a = getelementptr i8, ptr %2, i64 12
  %scevgep1132.a = getelementptr i8, ptr %2, i64 12
  %scevgep1135.a = getelementptr i8, ptr %i.b, i64 28 ; 4 uses
  %scevgep1136.a = getelementptr i8, ptr %i.b, i64 -16
  %scevgep1138.a = getelementptr i8, ptr %i.b, i64 12 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.b, <2 x i64> <i64 12, i64 20> ; 2 uses
  %scevgep1140.a = getelementptr i8, ptr %i.b, i64 20 ; 3 uses
  %scevgep1141.a = getelementptr i8, ptr %i.b, i64 -8
  %i.he = insertelement <2 x ptr> poison, ptr %scevgep1135.a, i64 0
  %i.hf = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.hg = shufflevector <4 x ptr> %i.hf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hh = insertelement <4 x ptr> poison, ptr %scevgep1115.a, i64 3
  %i.hi = insertelement <4 x ptr> poison, ptr %scevgep1124.a, i64 0
  %i.hj = shufflevector <4 x ptr> %i.hi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hk = insertelement <4 x ptr> poison, ptr %scevgep1135.a, i64 3
  %i.hl = shufflevector <2 x ptr> %i.hd, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hm = shufflevector <2 x ptr> %i.he, <2 x ptr> %i.hd, <2 x i32> <i32 0, i32 2>
  br label %.lr.ph836.us

.lr.ph836.us:                                     ; preds = %.lr.ph836.us.preheader, %..loopexit798_crit_edge.us
  %i.hn = phi i32 [ %i.kf, %..loopexit798_crit_edge.us ], [ 4, %.lr.ph836.us.preheader ] ; 7 uses
  %.1634839.us = phi i32 [ %i.hn, %..loopexit798_crit_edge.us ], [ 1, %.lr.ph836.us.preheader ] ; 5 uses
  %.0786838.us = phi i32 [ %i.ho, %..loopexit798_crit_edge.us ], [ %i.k, %.lr.ph836.us.preheader ] ; 2 uses
  %i.ho = sdiv i32 %.0786838.us, 4                ; 3 uses
  %i.hp = shl i32 %.1634839.us, 1
  %i.hq = sext i32 %i.hp to i64                   ; 5 uses
  %i.hr = sext i32 %.1634839.us to i64            ; 9 uses
  %i.hs = icmp sgt i32 %.1634839.us, 1
  br i1 %i.hs, label %.lr.ph832.us.us.preheader, label %.lr.ph836.split.us845.preheader

.lr.ph836.split.us845.preheader:                  ; preds = %.lr.ph836.us
  %i.ht = sext i32 %i.hn to i64
  br label %.lr.ph836.split.us845

.lr.ph832.us.us.preheader:                        ; preds = %.lr.ph836.us
  %i.hu = sext i32 %i.ho to i64                   ; 3 uses
  %i.hv = sext i32 %i.hn to i64                   ; 4 uses
  %wide.trip.count955 = zext nneg i32 %.1634839.us to i64 ; 5 uses
  %smax1101 = tail call i64 @llvm.smax.i64(i64 %i.hv, i64 %i.hc)
  %21 = add nsw i64 %smax1101, -1
  %i.hw = shl nuw nsw i64 %wide.trip.count955, 3  ; 6 uses
  %i.hx = shl nuw nsw i64 %i.hq, 3                ; 5 uses
  %scevgep1104 = getelementptr i8, ptr %scevgep1103.a, i64 %i.hx ; 6 uses
  %i.hy = shl nuw nsw i64 %i.hr, 3                ; 4 uses
  %scevgep1108 = getelementptr i8, ptr %scevgep1107.a, i64 %i.hy ; 6 uses
  %i.hz = add nuw nsw i64 %i.hy, %i.hx            ; 2 uses
  %scevgep1112 = getelementptr i8, ptr %scevgep1111.a, i64 %i.hz ; 6 uses
  %i.ia = mul nuw nsw i64 %wide.trip.count955, 24 ; 2 uses
  %scevgep1117 = getelementptr i8, ptr %scevgep1116.a, i64 %i.ia ; 4 uses
  %scevgep1120 = getelementptr i8, ptr %scevgep1119.a, i64 %i.hw ; 4 uses
  %i.ib = shl nuw nsw i64 %wide.trip.count955, 4  ; 2 uses
  %scevgep1123 = getelementptr i8, ptr %scevgep1122.a, i64 %i.ib ; 4 uses
  %scevgep1127.a = getelementptr i8, ptr %scevgep1126.a, i64 %i.hx ; 6 uses
  %scevgep1130.a = getelementptr i8, ptr %scevgep1129.a, i64 %i.hy ; 3 uses
  %scevgep1133.a = getelementptr i8, ptr %scevgep1132.a, i64 %i.hz ; 4 uses
  %scevgep1137 = getelementptr i8, ptr %scevgep1136.a, i64 %i.ia ; 3 uses
  %scevgep1139 = getelementptr i8, ptr %i.b, i64 %i.hw ; 4 uses
  %scevgep1142 = getelementptr i8, ptr %scevgep1141.a, i64 %i.ib ; 4 uses
  %i.ic = insertelement <4 x ptr> poison, ptr %scevgep1130.a, i64 0
  %i.id = shufflevector <4 x ptr> %i.ic, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ie = insertelement <2 x ptr> poison, ptr %scevgep1133.a, i64 0 ; 2 uses
  %i.if = shufflevector <2 x ptr> %i.ie, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ig = insertelement <2 x ptr> poison, ptr %scevgep1137, i64 0 ; 2 uses
  %i.ih = insertelement <2 x ptr> %i.ig, ptr %scevgep1139, i64 1
  %i.ii = shufflevector <2 x ptr> %i.ie, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ij = insertelement <4 x ptr> %i.ii, ptr %scevgep1135.a, i64 1
  %i.ik = shufflevector <2 x ptr> %i.ig, <2 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.il = insertelement <4 x i32> poison, i32 %i.hn, i64 0
  %i.im = insertelement <4 x ptr> %i.hh, ptr %scevgep1108, i64 0
  %i.in = insertelement <4 x ptr> %i.im, ptr %scevgep1104, i64 1
  %i.io = insertelement <4 x ptr> %i.in, ptr %scevgep1112, i64 2
  %i.ip = insertelement <4 x ptr> %i.hk, ptr %scevgep1127.a, i64 0
  %i.iq = insertelement <4 x ptr> %i.ip, ptr %scevgep1130.a, i64 1
  %i.ir = insertelement <4 x ptr> %i.iq, ptr %scevgep1133.a, i64 2
  %i.is = shufflevector <4 x ptr> %i.ij, <4 x ptr> %i.hl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.it = add nsw i64 %wide.trip.count955, -1     ; 2 uses
  %min.iters.check = icmp ugt i32 %.1634839.us, 17
  %i.iu = and i32 %.0786838.us, -4
  %ident.check.not = icmp eq i32 %i.iu, 4
  %or.cond1436 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %invariant.op = add i64 %i.hx, %i.hw
  %invariant.op1529 = add i64 %i.hx, %i.hw
  %i.iv = insertelement <4 x ptr> poison, ptr %scevgep1117, i64 3
  %bound01160 = icmp ult ptr %scevgep, %scevgep1120
  %bound01165 = icmp ult ptr %scevgep, %scevgep1123
  %bound01182 = icmp ult ptr %scevgep1104, %scevgep1117
  %bound01187 = icmp ult ptr %scevgep1104, %scevgep1120
  %bound01192 = icmp ult ptr %scevgep1104, %scevgep1123
  %bound01203 = icmp ult ptr %scevgep1108, %scevgep1117
  %bound01208 = icmp ult ptr %scevgep1108, %scevgep1120
  %bound01213 = icmp ult ptr %scevgep1108, %scevgep1123
  %bound01218 = icmp ult ptr %scevgep1112, %scevgep1117
  %bound01223 = icmp ult ptr %scevgep1112, %scevgep1120
  %bound01228 = icmp ult ptr %scevgep1112, %scevgep1123
  %i.iw = insertelement <4 x ptr> poison, ptr %scevgep1137, i64 3
  %bound01256 = icmp ult ptr %scevgep1124.a, %scevgep1139
  %bound01261 = icmp ult ptr %scevgep1124.a, %scevgep1142
  %bound01278 = icmp ult ptr %scevgep1127.a, %scevgep1137
  %bound01283 = icmp ult ptr %scevgep1127.a, %scevgep1139
  %bound01288 = icmp ult ptr %scevgep1127.a, %scevgep1142
  %i.ix = icmp ult <2 x ptr> %i.if, %i.ih
  %bound01324 = icmp ult ptr %scevgep1133.a, %scevgep1142
  %stride.check1147 = icmp slt i32 %i.hn, 0
  %i.iy = insertelement <8 x i1> poison, i1 %bound01324, i64 6
  %i.iz = insertelement <8 x i1> %i.iy, i1 %stride.check1147, i64 7
  %i.ja = shufflevector <2 x i1> %i.ix, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jb = shufflevector <4 x i32> %i.il, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jc = icmp slt <8 x i32> %i.jb, <i32 0, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef>
  %i.jd = and i64 %i.it, 3                        ; 2 uses
  %i.je = icmp eq i64 %i.jd, 0
  %i.jf = select i1 %i.je, i64 4, i64 %i.jd
  %n.vec = sub nsw i64 %i.it, %i.jf               ; 2 uses
  %i.jg = add nsw i64 %n.vec, 1                   ; 2 uses
  br label %.lr.ph832.us.us

.lr.ph836.split.us845:                            ; preds = %.lr.ph836.split.us845.preheader, %.lr.ph836.split.us845
  %indvars.iv945 = phi i64 [ 0, %.lr.ph836.split.us845.preheader ], [ %indvars.iv.next946, %.lr.ph836.split.us845 ] ; 2 uses
  %i.jh = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv945 ; 4 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.hq ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.hr ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.hr ; 2 uses
  %i.jn = load <2 x float>, ptr %i.ji, align 4, !tbaa !143 ; 3 uses
  %i.jo = load float, ptr %i.jj, align 4, !tbaa !414
  %i.jp = load <2 x float>, ptr %i.jk, align 4, !tbaa !143 ; 3 uses
  %i.jq = load float, ptr %i.jl, align 4, !tbaa !414
  %i.jr = shufflevector <2 x float> %i.jn, <2 x float> %i.jp, <2 x i32> <i32 1, i32 2>
  %i.js = shufflevector <2 x float> %i.jp, <2 x float> %i.jn, <2 x i32> <i32 1, i32 2>
  %i.jt = fsub <2 x float> %i.jr, %i.js           ; 2 uses
  %i.ju = load <2 x float>, ptr %i.jh, align 4, !tbaa !143 ; 2 uses
  %i.jv = load <2 x float>, ptr %i.jm, align 4, !tbaa !143 ; 2 uses
  %i.jw = fsub <2 x float> %i.ju, %i.jv           ; 2 uses
  %i.jx = fadd <2 x float> %i.ju, %i.jv           ; 2 uses
  %i.jy = fadd float %i.jo, %i.jq
  %foldExtExtBinop = fadd <2 x float> %i.jn, %i.jp
  %i.jz = insertelement <2 x float> %foldExtExtBinop, float %i.jy, i64 1 ; 2 uses
  %i.ka = fadd <2 x float> %i.jz, %i.jx
  store <2 x float> %i.ka, ptr %i.jh, align 4, !tbaa !143
  %i.kb = fsub <2 x float> %i.jx, %i.jz
  store <2 x float> %i.kb, ptr %i.ji, align 4, !tbaa !143
  %i.kc = fadd <2 x float> %i.jt, %i.jw
  store <2 x float> %i.kc, ptr %i.jm, align 4, !tbaa !143
  %i.kd = fsub <2 x float> %i.jw, %i.jt
  store <2 x float> %i.kd, ptr %i.jk, align 4, !tbaa !143
  %indvars.iv.next946 = add nsw i64 %indvars.iv945, %i.ht ; 2 uses
  %i.ke = icmp slt i64 %indvars.iv.next946, %i.hc
  br i1 %i.ke, label %.lr.ph836.split.us845, label %..loopexit798_crit_edge.us, !llvm.loop !429

..loopexit798_crit_edge.us:                       ; preds = %.lr.ph836.split.us845, %._crit_edge833.us.us
  %i.kf = shl nsw i32 %i.hn, 2                    ; 2 uses
  %.not714.us = icmp sgt i32 %i.kf, %i.gx
  br i1 %.not714.us, label %.preheader796, label %.lr.ph836.us, !llvm.loop !430

.lr.ph832.us.us:                                  ; preds = %.lr.ph832.us.us.preheader, %._crit_edge833.us.us
  %indvars.iv957 = phi i64 [ 0, %.lr.ph832.us.us.preheader ], [ %indvars.iv.next958, %._crit_edge833.us.us ] ; 2 uses
  %i.kg = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv957 ; 6 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.hq ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.hr ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.hr ; 2 uses
  %i.km = load <2 x float>, ptr %i.kh, align 4, !tbaa !143 ; 3 uses
  %i.kn = load float, ptr %i.ki, align 4, !tbaa !414
  %i.ko = load <2 x float>, ptr %i.kj, align 4, !tbaa !143 ; 3 uses
  %i.kp = load float, ptr %i.kk, align 4, !tbaa !414
  %i.kq = shufflevector <2 x float> %i.km, <2 x float> %i.ko, <2 x i32> <i32 1, i32 2>
  %i.kr = shufflevector <2 x float> %i.ko, <2 x float> %i.km, <2 x i32> <i32 1, i32 2>
  %i.ks = fsub <2 x float> %i.kq, %i.kr           ; 2 uses
  %i.kt = load <2 x float>, ptr %i.kg, align 4, !tbaa !143 ; 2 uses
  %i.ku = load <2 x float>, ptr %i.kl, align 4, !tbaa !143 ; 2 uses
  %i.kv = fsub <2 x float> %i.kt, %i.ku           ; 2 uses
  %i.kw = fadd <2 x float> %i.kt, %i.ku           ; 2 uses
  %i.kx = fadd float %i.kn, %i.kp
  %foldExtExtBinop1489 = fadd <2 x float> %i.km, %i.ko
  %i.ky = insertelement <2 x float> %foldExtExtBinop1489, float %i.kx, i64 1 ; 2 uses
  %i.kz = fadd <2 x float> %i.ky, %i.kw
  store <2 x float> %i.kz, ptr %i.kg, align 4, !tbaa !143
  %i.la = fsub <2 x float> %i.kw, %i.ky
  store <2 x float> %i.la, ptr %i.kh, align 4, !tbaa !143
  %i.lb = fadd <2 x float> %i.ks, %i.kv
  store <2 x float> %i.lb, ptr %i.kl, align 4, !tbaa !143
  %i.lc = fsub <2 x float> %i.kv, %i.ks
  store <2 x float> %i.lc, ptr %i.kj, align 4, !tbaa !143
  br i1 %or.cond1436, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph832.us.us
  %i.ld = udiv i64 %21, %i.hv
  %i.le = shl i64 %i.ld, 3
  %i.lf = mul i64 %i.le, %i.hv                    ; 3 uses
  %i.lg = add i64 %i.lf, %i.hw                    ; 2 uses
  %scevgep1102 = getelementptr i8, ptr %scevgep1100, i64 %i.lg ; 3 uses
  %.reass = add i64 %i.lf, %invariant.op          ; 2 uses
  %scevgep1106 = getelementptr i8, ptr %scevgep1105.a, i64 %.reass ; 6 uses
  %i.lh = add i64 %i.lf, %i.hy                    ; 2 uses
  %i.li = add i64 %i.lh, %i.hw                    ; 2 uses
  %scevgep1110 = getelementptr i8, ptr %scevgep1109.a, i64 %i.li ; 6 uses
  %.reass1530 = add i64 %i.lh, %invariant.op1529  ; 2 uses
  %scevgep1114 = getelementptr i8, ptr %scevgep1113.a, i64 %.reass1530 ; 6 uses
  %scevgep1125 = getelementptr i8, ptr %2, i64 %i.lg ; 3 uses
  %scevgep1128 = getelementptr i8, ptr %2, i64 %.reass ; 6 uses
  %scevgep1131 = getelementptr i8, ptr %2, i64 %i.li ; 3 uses
  %scevgep1134 = getelementptr i8, ptr %2, i64 %.reass1530 ; 4 uses
  %i.lj = insertelement <4 x ptr> %i.iv, ptr %scevgep1110, i64 0
  %i.lk = insertelement <4 x ptr> %i.lj, ptr %scevgep1106, i64 1
  %i.ll = insertelement <4 x ptr> %i.lk, ptr %scevgep1114, i64 2
  %i.lm = icmp ult <4 x ptr> %i.hg, %i.ll
  %i.ln = insertelement <4 x ptr> poison, ptr %scevgep1102, i64 0
  %i.lo = shufflevector <4 x ptr> %i.ln, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lp = icmp ult <4 x ptr> %i.io, %i.lo
  %i.lq = and <4 x i1> %i.lm, %i.lp
  %bound11161 = icmp ult ptr %scevgep1118.a, %scevgep1102
  %found.conflict1162 = and i1 %bound01160, %bound11161
  %bound11166 = icmp ult ptr %scevgep1121.a, %scevgep1102
  %found.conflict1167 = and i1 %bound01165, %bound11166
  %bound01170 = icmp ult ptr %scevgep1104, %scevgep1110
  %bound11171 = icmp ult ptr %scevgep1108, %scevgep1106
  %found.conflict1172 = and i1 %bound01170, %bound11171
  %bound01176 = icmp ult ptr %scevgep1104, %scevgep1114
  %bound11177 = icmp ult ptr %scevgep1112, %scevgep1106
  %found.conflict1178 = and i1 %bound01176, %bound11177
  %bound11183 = icmp ult ptr %scevgep1115.a, %scevgep1106
  %found.conflict1184 = and i1 %bound01182, %bound11183
  %bound11188 = icmp ult ptr %scevgep1118.a, %scevgep1106
  %found.conflict1189 = and i1 %bound01187, %bound11188
  %bound11193 = icmp ult ptr %scevgep1121.a, %scevgep1106
  %found.conflict1194 = and i1 %bound01192, %bound11193
  %bound01197 = icmp ult ptr %scevgep1108, %scevgep1114
  %bound11198 = icmp ult ptr %scevgep1112, %scevgep1110
  %found.conflict1199 = and i1 %bound01197, %bound11198
  %bound11204 = icmp ult ptr %scevgep1115.a, %scevgep1110
  %found.conflict1205 = and i1 %bound01203, %bound11204
  %bound11209 = icmp ult ptr %scevgep1118.a, %scevgep1110
  %found.conflict1210 = and i1 %bound01208, %bound11209
  %bound11214 = icmp ult ptr %scevgep1121.a, %scevgep1110
  %found.conflict1215 = and i1 %bound01213, %bound11214
  %bound11219 = icmp ult ptr %scevgep1115.a, %scevgep1114
  %found.conflict1220 = and i1 %bound01218, %bound11219
  %bound11224 = icmp ult ptr %scevgep1118.a, %scevgep1114
  %found.conflict1225 = and i1 %bound01223, %bound11224
end_hunk_0
begin_hunk_1_@_ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_:_ZNKSt9type_infoeqERKS_.exit733.thread791
  %i.yu = getelementptr inbounds [8 x i8], ptr %i.uw, i64 %i.yt
  store <2 x float> %i.yk, ptr %i.yu, align 4, !tbaa !143
  %i.yv = add nuw nsw i32 %.2674884.us, 1
  %indvars.iv.next992 = add nuw nsw i64 %indvars.iv991, %i.up
  %exitcond994.not = icmp eq i32 %.2674884.us, %smax
  br i1 %exitcond994.not, label %._crit_edge888.split.us, label %.lr.ph877.us, !llvm.loop !450

._crit_edge888.split.us:                          ; preds = %._crit_edge878.us, %.preheader793, %bb.bq
  %indvars.iv.next996 = add nuw nsw i64 %indvars.iv995, 1 ; 2 uses
  %indvars.iv.next963 = add nsw i64 %indvars.iv962, %i.ur
  %exitcond1001.not = icmp eq i64 %indvars.iv.next996, %wide.trip.count1000
  br i1 %exitcond1001.not, label %._crit_edge893, label %bb.bp, !llvm.loop !451

._crit_edge893:                                   ; preds = %._crit_edge888.split.us
  %indvars.iv.next1003 = add nsw i64 %indvars.iv1002, %i.uq ; 2 uses
  %i.yw = icmp slt i64 %indvars.iv.next1003, %i.uu
  br i1 %i.yw, label %.preheader795, label %._crit_edge895.split, !llvm.loop !452

._crit_edge895.split:                             ; preds = %._crit_edge893, %.preheader795.lr.ph, %_ZN2cv10AutoBufferINS_7ComplexIfEELm136EEC2Em.exit
  %.not.i.i755 = icmp eq ptr %i.uj, %scevgep.i
  br i1 %.not.i.i755, label %_ZN2cv10AutoBufferINS_7ComplexIfEELm136EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge895.split
  call void @_ZdaPv(ptr noundef nonnull %i.uj) #20
  br label %_ZN2cv10AutoBufferINS_7ComplexIfEELm136EED2Ev.exit

_ZN2cv10AutoBufferINS_7ComplexIfEELm136EED2Ev.exit: ; preds = %._crit_edge895.split, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bm, %_ZN2cv10AutoBufferINS_7ComplexIfEELm136EED2Ev.exit, %bb.bk, %bb.bl
  %indvars.iv.next1006 = add nuw nsw i64 %indvars.iv1005, 1 ; 2 uses
  %i.yx = load i32, ptr %0, align 8, !tbaa !10
  %i.yy = trunc nuw i64 %indvars.iv.next1006 to i32
  %i.yz = icmp sgt i32 %i.yx, %i.yy
  br i1 %i.yz, label %bb.bi, label %._crit_edge901, !llvm.loop !453

._crit_edge901:                                   ; preds = %bb.bt, %.loopexit797
  %i.za = fcmp une float %i.n, 1.000000e+00
  br i1 %i.za, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %._crit_edge901
  %i.zb = fneg float %i.n
  %.0638 = select i1 %i.i, float %i.zb, float %i.n ; 2 uses
  %i.zc = load i32, ptr %i.e, align 4, !tbaa !418 ; 3 uses
  %i.zd = icmp sgt i32 %i.zc, 0
  br i1 %i.zd, label %.lr.ph910.preheader, label %.critedge

.lr.ph910.preheader:                              ; preds = %bb.bu
  %wide.trip.count1014 = zext nneg i32 %i.zc to i64 ; 3 uses
  %min.iters.check1422 = icmp eq i32 %i.zc, 1
  br i1 %min.iters.check1422, label %.lr.ph910.preheader1491, label %vector.ph1423

vector.ph1423:                                    ; preds = %.lr.ph910.preheader
  %n.vec1424 = and i64 %wide.trip.count1014, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.n, i64 0
  %broadcast.splatinsert1425 = insertelement <2 x float> poison, float %.0638, i64 0
  br label %vector.body1427

vector.body1427:                                  ; preds = %vector.body1427, %vector.ph1423
  %index1428 = phi i64 [ 0, %vector.ph1423 ], [ %index.next1433, %vector.body1427 ] ; 2 uses
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index1428 ; 2 uses
  %wide.vec1429 = load <4 x float>, ptr %i.ze, align 4, !tbaa !143 ; 2 uses
  %strided.vec1430 = shufflevector <4 x float> %wide.vec1429, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1431 = shufflevector <4 x float> %wide.vec1429, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.zf = shufflevector <2 x float> %strided.vec1430, <2 x float> %broadcast.splatinsert1425, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %i.zg = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> %strided.vec1431, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %interleaved.vec1432 = fmul <4 x float> %i.zf, %i.zg
  store <4 x float> %interleaved.vec1432, ptr %i.ze, align 4, !tbaa !143
  %index.next1433 = add nuw i64 %index1428, 2     ; 2 uses
  %i.zh = icmp eq i64 %index.next1433, %n.vec1424
  br i1 %i.zh, label %middle.block1434, label %vector.body1427, !llvm.loop !454

middle.block1434:                                 ; preds = %vector.body1427
  %cmp.n = icmp eq i64 %n.vec1424, %wide.trip.count1014
  br i1 %cmp.n, label %.critedge, label %.lr.ph910.preheader1491

.lr.ph910.preheader1491:                          ; preds = %.lr.ph910.preheader, %middle.block1434
  %indvars.iv1011.ph = phi i64 [ 0, %.lr.ph910.preheader ], [ %n.vec1424, %middle.block1434 ]
  %i.zi = insertelement <2 x float> poison, float %i.n, i64 0
  %i.zj = insertelement <2 x float> %i.zi, float %.0638, i64 1
  br label %.lr.ph910

.lr.ph910:                                        ; preds = %.lr.ph910.preheader1491, %.lr.ph910
  %indvars.iv1011 = phi i64 [ %indvars.iv.next1012, %.lr.ph910 ], [ %indvars.iv1011.ph, %.lr.ph910.preheader1491 ] ; 2 uses
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv1011 ; 2 uses
  %i.zl = load <2 x float>, ptr %i.zk, align 4, !tbaa !143
  %i.zm = fmul <2 x float> %i.zl, %i.zj
  store <2 x float> %i.zm, ptr %i.zk, align 4, !tbaa !143
  %indvars.iv.next1012 = add nuw nsw i64 %indvars.iv1011, 1 ; 2 uses
  %exitcond1015.not = icmp eq i64 %indvars.iv.next1012, %wide.trip.count1014
  br i1 %exitcond1015.not, label %.critedge, label %.lr.ph910, !llvm.loop !455

bb.bv:                                            ; preds = %._crit_edge901
  br i1 %i.i, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.bv
  %i.zn = load i32, ptr %i.e, align 4, !tbaa !418 ; 4 uses
  %.not716902 = icmp slt i32 %i.zn, 2
  br i1 %.not716902, label %._crit_edge905, label %.lr.ph904.preheader

.lr.ph904.preheader:                              ; preds = %.preheader
  %i.zo = add nsw i32 %i.zn, -2
  %i.zp = lshr i32 %i.zo, 1                       ; 2 uses
  %narrow1516 = add nuw i32 %i.zp, 1              ; 2 uses
  %i.zq = zext i32 %narrow1516 to i64             ; 2 uses
  %xtraiter1510 = and i64 %i.zq, 1
  %i.zr = icmp eq i32 %i.zp, 0
  br i1 %i.zr, label %.lr.ph904.epil.preheader, label %.lr.ph904.preheader.new

.lr.ph904.preheader.new:                          ; preds = %.lr.ph904.preheader
  %unroll_iter1514 = and i64 %i.zq, 4294967294
  br label %.lr.ph904

.lr.ph904:                                        ; preds = %.lr.ph904, %.lr.ph904.preheader.new
  %indvars.iv1008 = phi i64 [ 0, %.lr.ph904.preheader.new ], [ %indvars.iv.next1009.1, %.lr.ph904 ] ; 3 uses
  %niter1515 = phi i64 [ 0, %.lr.ph904.preheader.new ], [ %niter1515.next.1, %.lr.ph904 ]
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv1008 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 4 ; 2 uses
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !414
  %i.zv = fneg float %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zs, i64 12 ; 2 uses
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !414
  %i.zy = fneg float %i.zx
  store float %i.zv, ptr %i.zt, align 4, !tbaa !414
  store float %i.zy, ptr %i.zw, align 4, !tbaa !414
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv1008 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 20 ; 2 uses
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !414
  %i.aac = fneg float %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zz, i64 28 ; 2 uses
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !414
  %i.aaf = fneg float %i.aae
  store float %i.aac, ptr %i.aaa, align 4, !tbaa !414
  store float %i.aaf, ptr %i.aad, align 4, !tbaa !414
  %indvars.iv.next1009.1 = add nuw nsw i64 %indvars.iv1008, 4 ; 3 uses
  %niter1515.next.1 = add nuw nsw i64 %niter1515, 2 ; 2 uses
  %niter1515.ncmp.1 = icmp eq i64 %niter1515.next.1, %unroll_iter1514
  br i1 %niter1515.ncmp.1, label %._crit_edge905.loopexit.unr-lcssa, label %.lr.ph904, !llvm.loop !456

._crit_edge905.loopexit.unr-lcssa:                ; preds = %.lr.ph904
  %lcmp.mod1511.not = icmp eq i64 %xtraiter1510, 0
  br i1 %lcmp.mod1511.not, label %._crit_edge905.loopexit, label %.lr.ph904.epil.preheader

.lr.ph904.epil.preheader:                         ; preds = %._crit_edge905.loopexit.unr-lcssa, %.lr.ph904.preheader
  %indvars.iv1008.epil.init = phi i64 [ 0, %.lr.ph904.preheader ], [ %indvars.iv.next1009.1, %._crit_edge905.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1513 = trunc i32 %narrow1516 to i1
  call void @llvm.assume(i1 %lcmp.mod1513)
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv1008.epil.init ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 4 ; 2 uses
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !414
  %i.aaj = fneg float %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aag, i64 12 ; 2 uses
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !414
  %i.aam = fneg float %i.aal
  store float %i.aaj, ptr %i.aah, align 4, !tbaa !414
  store float %i.aam, ptr %i.aak, align 4, !tbaa !414
  %indvars.iv.next1009.epil = add nuw nsw i64 %indvars.iv1008.epil.init, 2
  br label %._crit_edge905.loopexit

._crit_edge905.loopexit:                          ; preds = %._crit_edge905.loopexit.unr-lcssa, %.lr.ph904.epil.preheader
  %indvars.iv.next1009.lcssa = phi i64 [ %indvars.iv.next1009.1, %._crit_edge905.loopexit.unr-lcssa ], [ %indvars.iv.next1009.epil, %.lr.ph904.epil.preheader ]
  %i.aan = trunc nuw nsw i64 %indvars.iv.next1009.lcssa to i32
  br label %._crit_edge905

._crit_edge905:                                   ; preds = %._crit_edge905.loopexit, %.preheader
  %.8.lcssa = phi i32 [ 0, %.preheader ], [ %i.aan, %._crit_edge905.loopexit ]
  %i.aao = icmp slt i32 %.8.lcssa, %i.zn
  br i1 %i.aao, label %bb.bw, label %.critedge

bb.bw:                                            ; preds = %._crit_edge905
  %i.aap = zext nneg i32 %i.zn to i64
  %i.aaq = getelementptr [8 x i8], ptr %2, i64 %i.aap
  %i.aar = getelementptr i8, ptr %i.aaq, i64 -4   ; 2 uses
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !414
  %i.aat = fneg float %i.aas
  store float %i.aat, ptr %i.aar, align 4, !tbaa !414
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph910, %middle.block1434, %bb.bu, %._crit_edge905, %bb.bw, %bb.bv
  ret void

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754
  %.pn723.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748 ], [ %.pn705, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754 ], [ %.pn723, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739 ], [ %.pn721, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745 ], [ %.pn711, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742 ], [ %.pn707, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751 ]
  resume { ptr, i32 } %.pn723.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R2IfEclEPNS_7ComplexIfEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 2                           ; 2 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %bb.a
  %i.c = sext i32 %i.a to i64                     ; 6 uses
  %i.d = icmp sgt i32 %3, 3
  br i1 %i.d, label %.lr.ph.us.preheader, label %.lr.ph75.split.preheader

.lr.ph75.split.preheader:                         ; preds = %.lr.ph75
  %i.e = sext i32 %3 to i64                       ; 2 uses
  %i.f = zext nneg i32 %2 to i64                  ; 4 uses
  %min.iters.check = icmp ugt i32 %2, 11
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph75.split.preheader168

vector.memcheck:                                  ; preds = %.lr.ph75.split.preheader
  %smax92 = tail call i64 @llvm.smax.i64(i64 %i.e, i64 %i.f)
  %i.g = shl nuw nsw i64 %smax92, 3               ; 4 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.h, i64 -4
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %scevgep94.a = getelementptr i8, ptr %i.i, i64 -4
  %scevgep95.a = getelementptr i8, ptr %1, i64 4
  %scevgep96.a = getelementptr i8, ptr %1, i64 %i.g
  %scevgep97.a = getelementptr i8, ptr %1, i64 4
  %scevgep98 = getelementptr i8, ptr %1, i64 %i.g
  %bound0 = icmp ult ptr %1, %scevgep94.a
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound099 = icmp ult ptr %scevgep95.a, %scevgep98
  %bound1100 = icmp ult ptr %scevgep97.a, %scevgep96.a
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx = or i1 %found.conflict, %found.conflict101
  br i1 %conflict.rdx, label %.lr.ph75.split.preheader168, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 2147483646               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %1, i64 %index ; 3 uses
  %wide.vec = load <4 x float>, ptr %i.j, align 4, !tbaa !143 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.c ; 2 uses
  %wide.vec103 = load <4 x float>, ptr %i.k, align 4, !tbaa !143 ; 2 uses
  %interleaved.vec = fadd <4 x float> %wide.vec, %wide.vec103
  store <4 x float> %interleaved.vec, ptr %i.j, align 4, !tbaa !143
  %interleaved.vec106 = fsub <4 x float> %wide.vec, %wide.vec103
  store <4 x float> %interleaved.vec106, ptr %i.k, align 4, !tbaa !143
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !457

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge76, label %.lr.ph75.split.preheader168

.lr.ph75.split.preheader168:                      ; preds = %vector.memcheck, %.lr.ph75.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph75.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph75.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph75
  %i.m = sext i32 %4 to i64                       ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2)
  %i.n = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = shl nuw nsw i64 %wide.trip.count, 3      ; 4 uses
  %i.q = add nsw i64 %i.p, -4                     ; 2 uses
  %i.r = shl nuw nsw i64 %i.c, 3                  ; 3 uses
  %i.s = add nuw nsw i64 %i.r, %i.p               ; 2 uses
  %scevgep114.a = getelementptr i8, ptr %5, i64 8 ; 2 uses
  %scevgep115.a = getelementptr i8, ptr %5, i64 %i.q ; 2 uses
  %scevgep120.a = getelementptr i8, ptr %5, i64 12 ; 2 uses
  %scevgep121 = getelementptr i8, ptr %5, i64 %i.p ; 2 uses
  %i.t = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check146 = icmp sgt i32 %3, 9
  %ident.check108.not = icmp eq i32 %4, 1
  %or.cond167 = and i1 %min.iters.check146, %ident.check108.not
  %i.u = getelementptr i8, ptr %1, i64 %i.s
  %i.v = getelementptr i8, ptr %1, i64 %i.r
  %i.w = getelementptr i8, ptr %i.v, i64 12
  %i.x = getelementptr i8, ptr %1, i64 %i.p
  %i.y = getelementptr i8, ptr %1, i64 %i.s
  %i.z = getelementptr i8, ptr %i.y, i64 -4
  %i.aa = getelementptr i8, ptr %1, i64 %i.r
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = getelementptr i8, ptr %1, i64 %i.q
  %n.vec148 = and i64 %i.t, -4                    ; 3 uses
  %i.ad = or disjoint i64 %n.vec148, 1            ; 2 uses
  %cmp.n164 = icmp eq i64 %i.t, %n.vec148
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %indvars.iv86 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next87, %._crit_edge.us ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv86 ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.c ; 2 uses
  %i.ag = load <2 x float>, ptr %i.ae, align 4, !tbaa !143 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !143 ; 2 uses
  %i.ai = fadd <2 x float> %i.ag, %i.ah
  store <2 x float> %i.ai, ptr %i.ae, align 4, !tbaa !143
  %i.aj = fsub <2 x float> %i.ag, %i.ah
  store <2 x float> %i.aj, ptr %i.af, align 4, !tbaa !143
  br i1 %or.cond167, label %vector.memcheck109, label %scalar.ph145.preheader

vector.memcheck109:                               ; preds = %.lr.ph.us
  %i.ak = mul i64 %i.o, %indvar                   ; 8 uses
  %scevgep119 = getelementptr i8, ptr %i.u, i64 %i.ak ; 2 uses
  %scevgep118 = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %scevgep117 = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %1, i64 %i.ak
  %scevgep116 = getelementptr i8, ptr %i.al, i64 12 ; 2 uses
  %scevgep113 = getelementptr i8, ptr %i.z, i64 %i.ak ; 2 uses
  %scevgep112 = getelementptr i8, ptr %i.ab, i64 %i.ak ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.ac, i64 %i.ak ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 %i.ak
  %scevgep110 = getelementptr i8, ptr %i.am, i64 8 ; 2 uses
  %bound0122 = icmp ult ptr %scevgep110, %scevgep113
  %bound1123 = icmp ult ptr %scevgep112, %scevgep111
  %found.conflict124 = and i1 %bound0122, %bound1123
  %bound0125 = icmp ult ptr %scevgep110, %scevgep115.a
  %bound1126 = icmp ult ptr %scevgep114.a, %scevgep111
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %found.conflict124, %found.conflict127
  %bound0129 = icmp ult ptr %scevgep112, %scevgep115.a
  %bound1130 = icmp ult ptr %scevgep114.a, %scevgep113
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  %bound0133 = icmp ult ptr %scevgep116, %scevgep119
  %bound1134 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx136 = or i1 %conflict.rdx132, %found.conflict135
  %bound0137 = icmp ult ptr %scevgep116, %scevgep121
  %bound1138 = icmp ult ptr %scevgep120.a, %scevgep117
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %conflict.rdx136, %found.conflict139
  %bound0141 = icmp ult ptr %scevgep118, %scevgep121
  %bound1142 = icmp ult ptr %scevgep120.a, %scevgep119
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx144 = or i1 %conflict.rdx140, %found.conflict143
  br i1 %conflict.rdx144, label %scalar.ph145.preheader, label %vector.body149

vector.body149:                                   ; preds = %vector.memcheck109, %vector.body149
  %index150 = phi i64 [ %index.next162, %vector.body149 ], [ 0, %vector.memcheck109 ] ; 2 uses
  %i.an = or disjoint i64 %index150, 1            ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.c ; 2 uses
  %wide.vec151 = load <8 x float>, ptr %i.ap, align 4, !tbaa !143 ; 2 uses
  %strided.vec152.a = shufflevector <8 x float> %wide.vec151, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec153 = shufflevector <8 x float> %wide.vec151, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %5, i64 %i.an
  %wide.vec154 = load <8 x float>, ptr %i.aq, align 4, !tbaa !143 ; 2 uses
  %strided.vec155.a = shufflevector <8 x float> %wide.vec154, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec156 = shufflevector <8 x float> %wide.vec154, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ar = fneg <4 x float> %strided.vec156
  %i.as = fmul <4 x float> %strided.vec153, %i.ar
  %i.at = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec152.a, <4 x float> %strided.vec155.a, <4 x float> %i.as) ; 2 uses
  %i.au = fmul <4 x float> %strided.vec152.a, %strided.vec156
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec153, <4 x float> %strided.vec155.a, <4 x float> %i.au) ; 2 uses
  %wide.vec157 = load <8 x float>, ptr %i.ao, align 4, !tbaa !143 ; 2 uses
  %strided.vec158.a = shufflevector <8 x float> %wide.vec157, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec159 = shufflevector <8 x float> %wide.vec157, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.aw = fadd <4 x float> %strided.vec158.a, %i.at
  %i.ax = fadd <4 x float> %strided.vec159, %i.av
  %interleaved.vec160.a = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec160.a, ptr %i.ao, align 4, !tbaa !143
  %i.ay = fsub <4 x float> %strided.vec158.a, %i.at
  %i.az = fsub <4 x float> %strided.vec159, %i.av
  %interleaved.vec161 = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec161, ptr %i.ap, align 4, !tbaa !143
  %index.next162 = add nuw i64 %index150, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next162, %n.vec148
  br i1 %i.ba, label %middle.block163, label %vector.body149, !llvm.loop !458

middle.block163:                                  ; preds = %vector.body149
  br i1 %cmp.n164, label %._crit_edge.us, label %scalar.ph145.preheader

scalar.ph145.preheader:                           ; preds = %vector.memcheck109, %.lr.ph.us, %middle.block163
  %indvars.iv81.ph = phi i64 [ 1, %vector.memcheck109 ], [ 1, %.lr.ph.us ], [ %i.ad, %middle.block163 ]
  %indvars.iv79.ph = phi i64 [ %i.m, %vector.memcheck109 ], [ %i.m, %.lr.ph.us ], [ %i.ad, %middle.block163 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %scalar.ph145
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %scalar.ph145 ], [ %indvars.iv81.ph, %scalar.ph145.preheader ] ; 2 uses
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %scalar.ph145 ], [ %indvars.iv79.ph, %scalar.ph145.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv81 ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.c ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv79 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !412
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !414 ; 2 uses
  %i.bh = fneg float %i.bg
  %i.bi = load <2 x float>, ptr %i.bc, align 4, !tbaa !143 ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bh, i64 1
  %i.bl = fmul <2 x float> %i.bi, %i.bk
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bn = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bo, <2 x float> %i.bm) ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bb, align 4, !tbaa !143 ; 2 uses
  %i.br = fadd <2 x float> %i.bq, %i.bp
  store <2 x float> %i.br, ptr %i.bb, align 4, !tbaa !143
  %i.bs = fsub <2 x float> %i.bq, %i.bp
  store <2 x float> %i.bs, ptr %i.bc, align 4, !tbaa !143
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, %i.m
  %exitcond.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph145, !llvm.loop !459

._crit_edge.us:                                   ; preds = %scalar.ph145, %middle.block163
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, %i.n ; 2 uses
  %i.bt = trunc nuw i64 %indvars.iv.next87 to i32
  %i.bu = icmp sgt i32 %2, %i.bt
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bu, label %.lr.ph.us, label %._crit_edge76, !llvm.loop !460

._crit_edge76:                                    ; preds = %.lr.ph75.split, %._crit_edge.us, %middle.block, %bb.a
  ret void

.lr.ph75.split:                                   ; preds = %.lr.ph75.split.preheader168, %.lr.ph75.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph75.split ], [ %indvars.iv.ph, %.lr.ph75.split.preheader168 ] ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.c ; 2 uses
  %i.bx = load <2 x float>, ptr %i.bv, align 4, !tbaa !143 ; 2 uses
  %i.by = load <2 x float>, ptr %i.bw, align 4, !tbaa !143 ; 2 uses
  %i.bz = fadd <2 x float> %i.bx, %i.by
  store <2 x float> %i.bz, ptr %i.bv, align 4, !tbaa !143
  %i.ca = fsub <2 x float> %i.bx, %i.by
  store <2 x float> %i.ca, ptr %i.bw, align 4, !tbaa !143
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.e ; 2 uses
  %i.cb = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.cb, label %.lr.ph75.split, label %._crit_edge76, !llvm.loop !461
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R3IfEclEPNS_7ComplexIfEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 3                           ; 3 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %bb.a
  %i.c = sext i32 %i.a to i64                     ; 6 uses
  %i.d = shl nsw i32 %i.a, 1
  %i.e = sext i32 %i.d to i64                     ; 6 uses
  %i.f = icmp sgt i32 %3, 5
  br i1 %i.f, label %.lr.ph.us.preheader, label %.lr.ph133.split.preheader

.lr.ph133.split.preheader:                        ; preds = %.lr.ph133
  %i.g = sext i32 %3 to i64                       ; 2 uses
  %i.h = zext nneg i32 %2 to i64                  ; 4 uses
  %min.iters.check = icmp ugt i32 %2, 11
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph133.split.preheader309

vector.memcheck:                                  ; preds = %.lr.ph133.split.preheader
  %smax150 = tail call i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = shl nuw nsw i64 %smax150, 3              ; 6 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %scevgep = getelementptr i8, ptr %i.j, i64 -4   ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.i
  %scevgep152 = getelementptr i8, ptr %i.k, i64 -4 ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 %i.i
  %scevgep154.a = getelementptr i8, ptr %i.l, i64 -4 ; 2 uses
  %scevgep155.a = getelementptr i8, ptr %1, i64 4 ; 2 uses
  %scevgep156.a = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %scevgep157.a = getelementptr i8, ptr %1, i64 4 ; 2 uses
  %scevgep158.a = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %scevgep159.a = getelementptr i8, ptr %1, i64 4 ; 2 uses
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %bound0 = icmp ult ptr %1, %scevgep152
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0161 = icmp ult ptr %1, %scevgep154.a
  %bound1162 = icmp ult ptr %1, %scevgep
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx = or i1 %found.conflict, %found.conflict163
  %bound0164 = icmp ult ptr %1, %scevgep154.a
  %bound1165 = icmp ult ptr %1, %scevgep152
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx, %found.conflict166
  %bound0168 = icmp ult ptr %scevgep155.a, %scevgep158.a
  %bound1169 = icmp ult ptr %scevgep157.a, %scevgep156.a
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %scevgep155.a, %scevgep160
  %bound1173 = icmp ult ptr %scevgep159.a, %scevgep156.a
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  %bound0176 = icmp ult ptr %scevgep157.a, %scevgep160
  %bound1177 = icmp ult ptr %scevgep159.a, %scevgep158.a
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  br i1 %conflict.rdx179, label %.lr.ph133.split.preheader309, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %1, i64 %index ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.c ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.n, align 4, !tbaa !143 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec180 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.e ; 2 uses
  %wide.vec181 = load <8 x float>, ptr %i.o, align 4, !tbaa !143 ; 2 uses
  %strided.vec182.a = shufflevector <8 x float> %wide.vec181, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec183 = shufflevector <8 x float> %wide.vec181, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.p = fadd <4 x float> %strided.vec, %strided.vec182.a ; 2 uses
  %i.q = fadd <4 x float> %strided.vec180, %strided.vec183 ; 2 uses
  %wide.vec184 = load <8 x float>, ptr %i.m, align 4, !tbaa !143 ; 2 uses
  %strided.vec185.a = shufflevector <8 x float> %wide.vec184, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec186 = shufflevector <8 x float> %wide.vec184, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.r = fsub <4 x float> %strided.vec180, %strided.vec183
  %i.s = fmul <4 x float> %i.r, splat (float f0x3F5DB3D7) ; 2 uses
  %i.t = fsub <4 x float> %strided.vec182.a, %strided.vec
  %i.u = fmul <4 x float> %i.t, splat (float f0x3F5DB3D7) ; 2 uses
  %i.v = fadd <4 x float> %i.p, %strided.vec185.a
  %i.w = fadd <4 x float> %i.q, %strided.vec186
  %interleaved.vec = shufflevector <4 x float> %i.v, <4 x float> %i.w, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.m, align 4, !tbaa !143
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> splat (float -5.000000e-01), <4 x float> %strided.vec185.a) ; 2 uses
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> splat (float -5.000000e-01), <4 x float> %strided.vec186) ; 2 uses
  %i.z = fadd <4 x float> %i.x, %i.s
  %i.aa = fadd <4 x float> %i.u, %i.y
  %interleaved.vec187.a = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec187.a, ptr %i.n, align 4, !tbaa !143
  %i.ab = fsub <4 x float> %i.x, %i.s
  %i.ac = fsub <4 x float> %i.y, %i.u
  %interleaved.vec188 = shufflevector <4 x float> %i.ab, <4 x float> %i.ac, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec188, ptr %i.o, align 4, !tbaa !143
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !462

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge134, label %.lr.ph133.split.preheader309

.lr.ph133.split.preheader309:                     ; preds = %vector.memcheck, %.lr.ph133.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph133.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph133.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph133
  %i.ae = sext i32 %4 to i64                      ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2)
  %i.af = zext nneg i32 %3 to i64                 ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = shl nuw nsw i64 %wide.trip.count, 3     ; 7 uses
  %i.ai = add nsw i64 %i.ah, -4                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.c, 3                 ; 4 uses
  %i.ak = shl nuw nsw i64 %i.e, 3                 ; 4 uses
  %scevgep198.a = getelementptr i8, ptr %5, i64 16 ; 3 uses
  %i.al = shl nuw nsw i64 %wide.trip.count, 4     ; 2 uses
  %i.am = getelementptr i8, ptr %5, i64 %i.al
  %scevgep199.a = getelementptr i8, ptr %i.am, i64 -12 ; 3 uses
  %scevgep200.a = getelementptr i8, ptr %5, i64 8 ; 3 uses
  %scevgep201.a = getelementptr i8, ptr %5, i64 %i.ai ; 3 uses
  %scevgep208.a = getelementptr i8, ptr %5, i64 20 ; 3 uses
  %i.an = getelementptr i8, ptr %5, i64 %i.al
  %scevgep209.a = getelementptr i8, ptr %i.an, i64 -8 ; 3 uses
  %scevgep210.a = getelementptr i8, ptr %5, i64 12 ; 3 uses
  %scevgep211 = getelementptr i8, ptr %5, i64 %i.ah ; 3 uses
  %i.ao = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check284 = icmp sgt i32 %3, 29
  %ident.check190.not = icmp eq i32 %4, 1
  %or.cond308 = and i1 %min.iters.check284, %ident.check190.not
  %i.ap = getelementptr i8, ptr %1, i64 %i.ak
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ah
  %i.ar = getelementptr i8, ptr %1, i64 %i.ak
  %i.as = getelementptr i8, ptr %i.ar, i64 12
  %i.at = getelementptr i8, ptr %1, i64 %i.aj
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ah
  %i.av = getelementptr i8, ptr %1, i64 %i.aj
  %i.aw = getelementptr i8, ptr %i.av, i64 12
  %i.ax = getelementptr i8, ptr %1, i64 %i.ah
  %i.ay = getelementptr i8, ptr %1, i64 %i.ak
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ah
  %i.ba = getelementptr i8, ptr %i.az, i64 -4
  %i.bb = getelementptr i8, ptr %1, i64 %i.ak
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = getelementptr i8, ptr %1, i64 %i.aj
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.ah
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = getelementptr i8, ptr %1, i64 %i.aj
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %i.bi = getelementptr i8, ptr %1, i64 %i.ai
  %i.bj = and i64 %i.ao, 3                        ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = select i1 %i.bk, i64 4, i64 %i.bj
  %n.vec286 = sub nsw i64 %i.ao, %i.bl            ; 2 uses
  %i.bm = add nsw i64 %n.vec286, 1                ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %indvars.iv144 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next145, %._crit_edge.us ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv144 ; 6 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.c ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.e ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bo, align 4, !tbaa !143 ; 3 uses
  %i.br = load <2 x float>, ptr %i.bp, align 4, !tbaa !143 ; 3 uses
  %i.bs = fadd <2 x float> %i.bq, %i.br           ; 2 uses
  %i.bt = load <2 x float>, ptr %i.bn, align 4, !tbaa !143 ; 2 uses
  %i.bu = shufflevector <2 x float> %i.bq, <2 x float> %i.br, <2 x i32> <i32 1, i32 2>
  %i.bv = shufflevector <2 x float> %i.br, <2 x float> %i.bq, <2 x i32> <i32 1, i32 2>
  %i.bw = fsub <2 x float> %i.bu, %i.bv
  %i.bx = fmul <2 x float> %i.bw, splat (float f0x3F5DB3D7) ; 2 uses
  %i.by = fadd <2 x float> %i.bs, %i.bt
  store <2 x float> %i.by, ptr %i.bn, align 4, !tbaa !143
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> splat (float -5.000000e-01), <2 x float> %i.bt) ; 2 uses
  %i.ca = fadd <2 x float> %i.bz, %i.bx
  store <2 x float> %i.ca, ptr %i.bo, align 4, !tbaa !143
  %i.cb = fsub <2 x float> %i.bz, %i.bx
  store <2 x float> %i.cb, ptr %i.bp, align 4, !tbaa !143
  br i1 %or.cond308, label %vector.memcheck191, label %scalar.ph283.preheader

vector.memcheck191:                               ; preds = %.lr.ph.us
  %i.cc = mul i64 %i.ag, %indvar                  ; 12 uses
  %scevgep207 = getelementptr i8, ptr %i.aq, i64 %i.cc ; 4 uses
  %scevgep206 = getelementptr i8, ptr %i.as, i64 %i.cc ; 4 uses
  %scevgep205 = getelementptr i8, ptr %i.au, i64 %i.cc ; 4 uses
  %scevgep204 = getelementptr i8, ptr %i.aw, i64 %i.cc ; 4 uses
  %scevgep203 = getelementptr i8, ptr %i.ax, i64 %i.cc ; 4 uses
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  %scevgep202 = getelementptr i8, ptr %i.cd, i64 12 ; 4 uses
  %scevgep197 = getelementptr i8, ptr %i.ba, i64 %i.cc ; 4 uses
  %scevgep196 = getelementptr i8, ptr %i.bc, i64 %i.cc ; 4 uses
  %scevgep195 = getelementptr i8, ptr %i.bf, i64 %i.cc ; 4 uses
  %scevgep194 = getelementptr i8, ptr %i.bh, i64 %i.cc ; 4 uses
  %scevgep193 = getelementptr i8, ptr %i.bi, i64 %i.cc ; 4 uses
  %i.ce = getelementptr i8, ptr %1, i64 %i.cc
  %scevgep192 = getelementptr i8, ptr %i.ce, i64 8 ; 4 uses
  %bound0212 = icmp ult ptr %scevgep192, %scevgep195
  %bound1213 = icmp ult ptr %scevgep194, %scevgep193
  %found.conflict214 = and i1 %bound0212, %bound1213
  %bound0215 = icmp ult ptr %scevgep192, %scevgep197
  %bound1216 = icmp ult ptr %scevgep196, %scevgep193
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %found.conflict214, %found.conflict217
  %bound0219 = icmp ult ptr %scevgep192, %scevgep199.a
  %bound1220 = icmp ult ptr %scevgep198.a, %scevgep193
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx222 = or i1 %conflict.rdx218, %found.conflict221
  %bound0223 = icmp ult ptr %scevgep192, %scevgep201.a
  %bound1224 = icmp ult ptr %scevgep200.a, %scevgep193
  %found.conflict225 = and i1 %bound0223, %bound1224
  %conflict.rdx226 = or i1 %conflict.rdx222, %found.conflict225
  %bound0227 = icmp ult ptr %scevgep194, %scevgep197
  %bound1228 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict229 = and i1 %bound0227, %bound1228
  %conflict.rdx230 = or i1 %conflict.rdx226, %found.conflict229
  %bound0231 = icmp ult ptr %scevgep194, %scevgep199.a
  %bound1232 = icmp ult ptr %scevgep198.a, %scevgep195
  %found.conflict233 = and i1 %bound0231, %bound1232
end_hunk_1
begin_hunk_2_@_ZN2cvL3DFTIdEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_:_ZNKSt9type_infoeqERKS_.exit.thread804
bb.aq:                                            ; preds = %bb.ak
  %i.ee = or disjoint i64 %indvars.iv952, 1       ; 2 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ee ; 2 uses
  %i.eg = zext nneg i32 %i.dv to i64              ; 3 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.eg ; 3 uses
  %i.ei = load <2 x double>, ptr %i.ef, align 8, !tbaa !228
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false), !tbaa.struct !499
  store <2 x double> %i.ei, ptr %i.eh, align 8, !tbaa !228
  %i.ej = icmp samesign ult i64 %indvars.iv952, %i.eg
  br i1 %i.ej, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv952 ; 2 uses
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.eg ; 2 uses
  %i.em = load <2 x double>, ptr %i.ek, align 8, !tbaa !228
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !tbaa.struct !499
  store <2 x double> %i.em, ptr %i.el, align 8, !tbaa !228
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.ee ; 2 uses
  %i.eo = getelementptr i8, ptr %i.eh, i64 16     ; 2 uses
  %i.ep = load <2 x double>, ptr %i.en, align 8, !tbaa !228
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !tbaa.struct !499
  store <2 x double> %i.ep, ptr %i.eo, align 8, !tbaa !228
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %indvars.iv.next953 = add nuw nsw i64 %indvars.iv952, 2 ; 2 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %.2834, i64 %i.du
  %i.er = icmp slt i64 %indvars.iv.next953, %i.dq
  br i1 %i.er, label %bb.ak, label %.loopexit814, !llvm.loop !502

bb.at:                                            ; preds = %.lr.ph832, %bb.bb
  %indvars.iv949 = phi i64 [ 0, %.lr.ph832 ], [ %indvars.iv.next950, %bb.bb ] ; 3 uses
  %.3831 = phi ptr [ %i.d, %.lr.ph832 ], [ %i.fg, %bb.bb ] ; 2 uses
  %i.es = load i32, ptr %.3831, align 4, !tbaa !41 ; 2 uses
  %i.et = icmp ult i32 %i.es, %i.f
  br i1 %i.et, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 958) #22
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754

bb.ay:                                            ; preds = %bb.av
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %15, align 8, !tbaa !52   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752: ; preds = %bb.ay
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !55
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752, %bb.ax
  %.pn705 = phi { ptr, i32 } [ %i.eu, %bb.ax ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752 ], [ %i.ev, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.bx

bb.az:                                            ; preds = %bb.at
  %i.fb = zext nneg i32 %i.es to i64              ; 2 uses
  %i.fc = icmp samesign ult i64 %indvars.iv949, %i.fb
  br i1 %i.fc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv949 ; 2 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.fb ; 2 uses
  %i.ff = load <2 x double>, ptr %i.fd, align 8, !tbaa !228
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 16, i1 false), !tbaa.struct !499
  store <2 x double> %i.ff, ptr %i.fe, align 8, !tbaa !228
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %indvars.iv.next950 = add nuw nsw i64 %indvars.iv949, 1 ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %.3831, i64 %i.dm
  %exitcond.not = icmp eq i64 %indvars.iv.next950, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit814, label %bb.at, !llvm.loop !503

.loopexit814:                                     ; preds = %bb.bb, %bb.as, %.preheader815, %bb.aj, %bb.ai, %bb.aa
  br i1 %i.i, label %.preheader813, label %bb.bd

.preheader813:                                    ; preds = %.loopexit814
  %.not709837 = icmp slt i32 %i.f, 2
  br i1 %.not709837, label %._crit_edge840, label %.lr.ph839.preheader

.lr.ph839.preheader:                              ; preds = %.preheader813
  %i.fh = add nsw i32 %i.f, -2
  %i.fi = lshr i32 %i.fh, 1                       ; 2 uses
  %narrow = add nuw i32 %i.fi, 1                  ; 2 uses
  %i.fj = zext i32 %narrow to i64                 ; 2 uses
  %xtraiter = and i64 %i.fj, 1
  %i.fk = icmp eq i32 %i.fi, 0
  br i1 %i.fk, label %.lr.ph839.epil.preheader, label %.lr.ph839.preheader.new

.lr.ph839.preheader.new:                          ; preds = %.lr.ph839.preheader
  %unroll_iter = and i64 %i.fj, 4294967294
  br label %.lr.ph839

.lr.ph839:                                        ; preds = %.lr.ph839, %.lr.ph839.preheader.new
  %indvars.iv955 = phi i64 [ 0, %.lr.ph839.preheader.new ], [ %indvars.iv.next956.1, %.lr.ph839 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph839.preheader.new ], [ %niter.next.1, %.lr.ph839 ]
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv955 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !410
  %i.fo = fneg double %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 24 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !410
  %i.fr = fneg double %i.fq
  store double %i.fo, ptr %i.fm, align 8, !tbaa !410
  store double %i.fr, ptr %i.fp, align 8, !tbaa !410
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv955 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40 ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !410
  %i.fv = fneg double %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 56 ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !410
  %i.fy = fneg double %i.fx
  store double %i.fv, ptr %i.ft, align 8, !tbaa !410
  store double %i.fy, ptr %i.fw, align 8, !tbaa !410
  %indvars.iv.next956.1 = add nuw nsw i64 %indvars.iv955, 4 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge840.loopexit.unr-lcssa, label %.lr.ph839, !llvm.loop !504

._crit_edge840.loopexit.unr-lcssa:                ; preds = %.lr.ph839
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge840.loopexit, label %.lr.ph839.epil.preheader

.lr.ph839.epil.preheader:                         ; preds = %._crit_edge840.loopexit.unr-lcssa, %.lr.ph839.preheader
  %indvars.iv955.epil.init = phi i64 [ 0, %.lr.ph839.preheader ], [ %indvars.iv.next956.1, %._crit_edge840.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1515 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod1515)
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv955.epil.init ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !410
  %i.gc = fneg double %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 24 ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !410
  %i.gf = fneg double %i.ge
  store double %i.gc, ptr %i.ga, align 8, !tbaa !410
  store double %i.gf, ptr %i.gd, align 8, !tbaa !410
  %indvars.iv.next956.epil = add nuw nsw i64 %indvars.iv955.epil.init, 2
  br label %._crit_edge840.loopexit

._crit_edge840.loopexit:                          ; preds = %._crit_edge840.loopexit.unr-lcssa, %.lr.ph839.epil.preheader
  %indvars.iv.next956.lcssa = phi i64 [ %indvars.iv.next956.1, %._crit_edge840.loopexit.unr-lcssa ], [ %indvars.iv.next956.epil, %.lr.ph839.epil.preheader ]
  %i.gg = trunc nuw nsw i64 %indvars.iv.next956.lcssa to i32
  br label %._crit_edge840

._crit_edge840:                                   ; preds = %._crit_edge840.loopexit, %.preheader813
  %.4645.lcssa = phi i32 [ 0, %.preheader813 ], [ %i.gg, %._crit_edge840.loopexit ]
  %i.gh = icmp slt i32 %.4645.lcssa, %i.f
  br i1 %i.gh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %._crit_edge840
  %i.gi = zext nneg i32 %i.f to i64
  %i.gj = getelementptr [16 x i8], ptr %2, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8     ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !410
  %i.gm = fneg double %i.gl
  store double %i.gm, ptr %i.gk, align 8, !tbaa !410
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit814, %bb.bc, %._crit_edge840, %bb.r, %._crit_edge, %bb.z, %._crit_edge828
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !425
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !41 ; 7 uses
  %i.gq = and i32 %i.gp, 1
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %.preheader812, label %.loopexit810

.preheader812:                                    ; preds = %bb.bd
  %.not714850 = icmp slt i32 %i.gp, 4
  br i1 %.not714850, label %.preheader809, label %.lr.ph853

.lr.ph853:                                        ; preds = %.preheader812
  %i.gs = load i32, ptr %i.e, align 4, !tbaa !418 ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %.lr.ph849.us.preheader, label %.loopexit811

.lr.ph849.us.preheader:                           ; preds = %.lr.ph853
  %i.gu = zext nneg i32 %i.gs to i64              ; 3 uses
  %scevgep = getelementptr i8, ptr %2, i64 16     ; 3 uses
  %scevgep1114 = getelementptr i8, ptr %2, i64 -8
  %scevgep1117.a = getelementptr i8, ptr %2, i64 16
  %scevgep1119.a = getelementptr i8, ptr %2, i64 -8
  %scevgep1121.a = getelementptr i8, ptr %2, i64 16
  %scevgep1123.a = getelementptr i8, ptr %2, i64 -8
  %scevgep1125.a = getelementptr i8, ptr %2, i64 16
  %scevgep1127.a = getelementptr i8, ptr %2, i64 -8
  %scevgep1129.a = getelementptr i8, ptr %i.b, i64 48 ; 4 uses
  %scevgep1130.a = getelementptr i8, ptr %i.b, i64 -40
  %scevgep1132.a = getelementptr i8, ptr %i.b, i64 16 ; 4 uses
  %scevgep1133.a = getelementptr i8, ptr %i.b, i64 -8
  %scevgep1135.a = getelementptr i8, ptr %i.b, i64 32 ; 4 uses
  %scevgep1136.a = getelementptr i8, ptr %i.b, i64 -24
  %scevgep1138.a = getelementptr i8, ptr %2, i64 24 ; 3 uses
  %scevgep1140.a = getelementptr i8, ptr %2, i64 24
  %scevgep1143.a = getelementptr i8, ptr %2, i64 24
  %scevgep1146.a = getelementptr i8, ptr %2, i64 24
  %scevgep1149.a = getelementptr i8, ptr %i.b, i64 56 ; 4 uses
  %scevgep1150.a = getelementptr i8, ptr %i.b, i64 -32
  %scevgep1152.a = getelementptr i8, ptr %i.b, i64 24 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.b, <2 x i64> <i64 24, i64 40> ; 2 uses
  %scevgep1154.a = getelementptr i8, ptr %i.b, i64 40 ; 3 uses
  %scevgep1155.a = getelementptr i8, ptr %i.b, i64 -16
  %i.gw = insertelement <2 x ptr> poison, ptr %scevgep1149.a, i64 0
  %i.gx = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.gy = shufflevector <4 x ptr> %i.gx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gz = insertelement <4 x ptr> poison, ptr %scevgep1129.a, i64 3
  %i.ha = insertelement <4 x ptr> poison, ptr %scevgep1138.a, i64 0
  %i.hb = shufflevector <4 x ptr> %i.ha, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hc = insertelement <4 x ptr> poison, ptr %scevgep1149.a, i64 3
  %i.hd = shufflevector <2 x ptr> %i.gv, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.he = shufflevector <2 x ptr> %i.gw, <2 x ptr> %i.gv, <2 x i32> <i32 0, i32 2>
  br label %.lr.ph849.us

.lr.ph849.us:                                     ; preds = %.lr.ph849.us.preheader, %..loopexit811_crit_edge.us
  %i.hf = phi i32 [ %i.jv, %..loopexit811_crit_edge.us ], [ 4, %.lr.ph849.us.preheader ] ; 7 uses
  %.1634852.us = phi i32 [ %i.hf, %..loopexit811_crit_edge.us ], [ 1, %.lr.ph849.us.preheader ] ; 5 uses
  %.0799851.us = phi i32 [ %i.hg, %..loopexit811_crit_edge.us ], [ %i.k, %.lr.ph849.us.preheader ] ; 2 uses
  %i.hg = sdiv i32 %.0799851.us, 4                ; 3 uses
  %i.hh = shl i32 %.1634852.us, 1
  %i.hi = sext i32 %i.hh to i64                   ; 5 uses
  %i.hj = sext i32 %.1634852.us to i64            ; 9 uses
  %i.hk = icmp sgt i32 %.1634852.us, 1
  br i1 %i.hk, label %.lr.ph845.us.us.preheader, label %.lr.ph849.split.us858.preheader

.lr.ph849.split.us858.preheader:                  ; preds = %.lr.ph849.us
  %i.hl = sext i32 %i.hf to i64
  br label %.lr.ph849.split.us858

.lr.ph845.us.us.preheader:                        ; preds = %.lr.ph849.us
  %i.hm = sext i32 %i.hg to i64                   ; 3 uses
  %i.hn = sext i32 %i.hf to i64                   ; 4 uses
  %wide.trip.count968 = zext nneg i32 %.1634852.us to i64 ; 6 uses
  %smax1115 = tail call i64 @llvm.smax.i64(i64 %i.hn, i64 %i.gu)
  %21 = add nsw i64 %smax1115, -1
  %i.ho = shl nuw nsw i64 %wide.trip.count968, 4  ; 6 uses
  %i.hp = shl nuw nsw i64 %i.hi, 4                ; 5 uses
  %scevgep1118 = getelementptr i8, ptr %scevgep1117.a, i64 %i.hp ; 6 uses
  %i.hq = shl nuw nsw i64 %i.hj, 4                ; 4 uses
  %scevgep1122 = getelementptr i8, ptr %scevgep1121.a, i64 %i.hq ; 6 uses
  %i.hr = add nuw nsw i64 %i.hq, %i.hp            ; 2 uses
  %scevgep1126 = getelementptr i8, ptr %scevgep1125.a, i64 %i.hr ; 6 uses
  %i.hs = mul nuw nsw i64 %wide.trip.count968, 48 ; 2 uses
  %scevgep1131 = getelementptr i8, ptr %scevgep1130.a, i64 %i.hs ; 4 uses
  %scevgep1134 = getelementptr i8, ptr %scevgep1133.a, i64 %i.ho ; 4 uses
  %i.ht = shl nuw nsw i64 %wide.trip.count968, 5  ; 2 uses
  %scevgep1137 = getelementptr i8, ptr %scevgep1136.a, i64 %i.ht ; 4 uses
  %scevgep1141.a = getelementptr i8, ptr %scevgep1140.a, i64 %i.hp ; 6 uses
  %scevgep1144.a = getelementptr i8, ptr %scevgep1143.a, i64 %i.hq ; 3 uses
  %scevgep1147.a = getelementptr i8, ptr %scevgep1146.a, i64 %i.hr ; 4 uses
  %scevgep1151 = getelementptr i8, ptr %scevgep1150.a, i64 %i.hs ; 3 uses
  %scevgep1153 = getelementptr i8, ptr %i.b, i64 %i.ho ; 4 uses
  %scevgep1156 = getelementptr i8, ptr %scevgep1155.a, i64 %i.ht ; 4 uses
  %i.hu = insertelement <4 x ptr> poison, ptr %scevgep1144.a, i64 0
  %i.hv = shufflevector <4 x ptr> %i.hu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hw = insertelement <2 x ptr> poison, ptr %scevgep1147.a, i64 0 ; 2 uses
  %i.hx = shufflevector <2 x ptr> %i.hw, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.hy = insertelement <2 x ptr> poison, ptr %scevgep1151, i64 0 ; 2 uses
  %i.hz = insertelement <2 x ptr> %i.hy, ptr %scevgep1153, i64 1
  %i.ia = shufflevector <2 x ptr> %i.hw, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ib = insertelement <4 x ptr> %i.ia, ptr %scevgep1149.a, i64 1
  %i.ic = shufflevector <2 x ptr> %i.hy, <2 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.id = insertelement <4 x i32> poison, i32 %i.hf, i64 0
  %i.ie = insertelement <4 x ptr> %i.gz, ptr %scevgep1122, i64 0
  %i.if = insertelement <4 x ptr> %i.ie, ptr %scevgep1118, i64 1
  %i.ig = insertelement <4 x ptr> %i.if, ptr %scevgep1126, i64 2
  %i.ih = insertelement <4 x ptr> %i.hc, ptr %scevgep1141.a, i64 0
  %i.ii = insertelement <4 x ptr> %i.ih, ptr %scevgep1144.a, i64 1
  %i.ij = insertelement <4 x ptr> %i.ii, ptr %scevgep1147.a, i64 2
  %i.ik = shufflevector <4 x ptr> %i.ib, <4 x ptr> %i.hd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.il = add nsw i64 %wide.trip.count968, -1     ; 2 uses
  %min.iters.check = icmp ugt i32 %.1634852.us, 15
  %i.im = and i32 %.0799851.us, -4
  %ident.check.not = icmp eq i32 %i.im, 4
  %or.cond1445 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %invariant.op = add i64 %i.hp, %i.ho
  %invariant.op1535 = add i64 %i.hp, %i.ho
  %i.in = insertelement <4 x ptr> poison, ptr %scevgep1131, i64 3
  %bound01174 = icmp ult ptr %scevgep, %scevgep1134
  %bound01179 = icmp ult ptr %scevgep, %scevgep1137
  %bound01196 = icmp ult ptr %scevgep1118, %scevgep1131
  %bound01201 = icmp ult ptr %scevgep1118, %scevgep1134
  %bound01206 = icmp ult ptr %scevgep1118, %scevgep1137
  %bound01217 = icmp ult ptr %scevgep1122, %scevgep1131
  %bound01222 = icmp ult ptr %scevgep1122, %scevgep1134
  %bound01227 = icmp ult ptr %scevgep1122, %scevgep1137
  %bound01232 = icmp ult ptr %scevgep1126, %scevgep1131
  %bound01237 = icmp ult ptr %scevgep1126, %scevgep1134
  %bound01242 = icmp ult ptr %scevgep1126, %scevgep1137
  %i.io = insertelement <4 x ptr> poison, ptr %scevgep1151, i64 3
  %bound01270 = icmp ult ptr %scevgep1138.a, %scevgep1153
  %bound01275 = icmp ult ptr %scevgep1138.a, %scevgep1156
  %bound01292 = icmp ult ptr %scevgep1141.a, %scevgep1151
  %bound01297 = icmp ult ptr %scevgep1141.a, %scevgep1153
  %bound01302 = icmp ult ptr %scevgep1141.a, %scevgep1156
  %i.ip = icmp ult <2 x ptr> %i.hx, %i.hz
  %bound01338 = icmp ult ptr %scevgep1147.a, %scevgep1156
  %stride.check1161 = icmp slt i32 %i.hf, 0
  %i.iq = insertelement <8 x i1> poison, i1 %bound01338, i64 6
  %i.ir = insertelement <8 x i1> %i.iq, i1 %stride.check1161, i64 7
  %i.is = shufflevector <2 x i1> %i.ip, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.it = shufflevector <4 x i32> %i.id, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iu = icmp slt <8 x i32> %i.it, <i32 0, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef>
  %.neg = or i64 %i.il, -2                        ; 2 uses
  %n.vec = add nsw i64 %.neg, %i.il
  %i.iv = add nsw i64 %.neg, %wide.trip.count968  ; 2 uses
  br label %.lr.ph845.us.us

.lr.ph849.split.us858:                            ; preds = %.lr.ph849.split.us858.preheader, %.lr.ph849.split.us858
  %indvars.iv958 = phi i64 [ 0, %.lr.ph849.split.us858.preheader ], [ %indvars.iv.next959, %.lr.ph849.split.us858 ] ; 2 uses
  %i.iw = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv958 ; 4 uses
  %i.ix = getelementptr inbounds [16 x i8], ptr %i.iw, i64 %i.hi ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = getelementptr inbounds [16 x i8], ptr %i.ix, i64 %i.hj ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = getelementptr inbounds [16 x i8], ptr %i.iw, i64 %i.hj ; 2 uses
  %i.jc = load <2 x double>, ptr %i.ix, align 8, !tbaa !228 ; 3 uses
  %i.jd = load double, ptr %i.iy, align 8, !tbaa !410
  %i.je = load <2 x double>, ptr %i.iz, align 8, !tbaa !228 ; 3 uses
  %i.jf = load double, ptr %i.ja, align 8, !tbaa !410
  %i.jg = shufflevector <2 x double> %i.jc, <2 x double> %i.je, <2 x i32> <i32 1, i32 2>
  %i.jh = shufflevector <2 x double> %i.je, <2 x double> %i.jc, <2 x i32> <i32 1, i32 2>
  %i.ji = fsub <2 x double> %i.jg, %i.jh          ; 2 uses
  %i.jj = load <2 x double>, ptr %i.iw, align 8, !tbaa !228 ; 2 uses
  %i.jk = load <2 x double>, ptr %i.jb, align 8, !tbaa !228 ; 2 uses
  %i.jl = fsub <2 x double> %i.jj, %i.jk          ; 2 uses
  %i.jm = insertelement <2 x double> %i.jc, double %i.jd, i64 1
  %i.jn = insertelement <2 x double> %i.je, double %i.jf, i64 1
  %i.jo = fadd <2 x double> %i.jm, %i.jn          ; 2 uses
  %i.jp = fadd <2 x double> %i.jj, %i.jk          ; 2 uses
  %i.jq = fadd <2 x double> %i.jo, %i.jp
  store <2 x double> %i.jq, ptr %i.iw, align 8, !tbaa !228
  %i.jr = fsub <2 x double> %i.jp, %i.jo
  store <2 x double> %i.jr, ptr %i.ix, align 8, !tbaa !228
  %i.js = fadd <2 x double> %i.ji, %i.jl
  store <2 x double> %i.js, ptr %i.jb, align 8, !tbaa !228
  %i.jt = fsub <2 x double> %i.jl, %i.ji
  store <2 x double> %i.jt, ptr %i.iz, align 8, !tbaa !228
  %indvars.iv.next959 = add nsw i64 %indvars.iv958, %i.hl ; 2 uses
  %i.ju = icmp slt i64 %indvars.iv.next959, %i.gu
  br i1 %i.ju, label %.lr.ph849.split.us858, label %..loopexit811_crit_edge.us, !llvm.loop !505

..loopexit811_crit_edge.us:                       ; preds = %.lr.ph849.split.us858, %._crit_edge846.us.us
  %i.jv = shl nsw i32 %i.hf, 2                    ; 2 uses
  %.not714.us = icmp sgt i32 %i.jv, %i.gp
  br i1 %.not714.us, label %.preheader809, label %.lr.ph849.us, !llvm.loop !506

.lr.ph845.us.us:                                  ; preds = %.lr.ph845.us.us.preheader, %._crit_edge846.us.us
  %indvars.iv970 = phi i64 [ 0, %.lr.ph845.us.us.preheader ], [ %indvars.iv.next971, %._crit_edge846.us.us ] ; 2 uses
  %i.jw = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv970 ; 6 uses
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %i.jw, i64 %i.hi ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.jx, i64 %i.hj ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.jw, i64 %i.hj ; 2 uses
  %i.kc = load <2 x double>, ptr %i.jx, align 8, !tbaa !228 ; 3 uses
  %i.kd = load double, ptr %i.jy, align 8, !tbaa !410
  %i.ke = load <2 x double>, ptr %i.jz, align 8, !tbaa !228 ; 3 uses
  %i.kf = load double, ptr %i.ka, align 8, !tbaa !410
  %i.kg = shufflevector <2 x double> %i.kc, <2 x double> %i.ke, <2 x i32> <i32 1, i32 2>
  %i.kh = shufflevector <2 x double> %i.ke, <2 x double> %i.kc, <2 x i32> <i32 1, i32 2>
  %i.ki = fsub <2 x double> %i.kg, %i.kh          ; 2 uses
  %i.kj = load <2 x double>, ptr %i.jw, align 8, !tbaa !228 ; 2 uses
  %i.kk = load <2 x double>, ptr %i.kb, align 8, !tbaa !228 ; 2 uses
  %i.kl = fsub <2 x double> %i.kj, %i.kk          ; 2 uses
  %i.km = insertelement <2 x double> %i.kc, double %i.kd, i64 1
  %i.kn = insertelement <2 x double> %i.ke, double %i.kf, i64 1
  %i.ko = fadd <2 x double> %i.km, %i.kn          ; 2 uses
  %i.kp = fadd <2 x double> %i.kj, %i.kk          ; 2 uses
  %i.kq = fadd <2 x double> %i.ko, %i.kp
  store <2 x double> %i.kq, ptr %i.jw, align 8, !tbaa !228
  %i.kr = fsub <2 x double> %i.kp, %i.ko
  store <2 x double> %i.kr, ptr %i.jx, align 8, !tbaa !228
  %i.ks = fadd <2 x double> %i.ki, %i.kl
  store <2 x double> %i.ks, ptr %i.kb, align 8, !tbaa !228
  %i.kt = fsub <2 x double> %i.kl, %i.ki
  store <2 x double> %i.kt, ptr %i.jz, align 8, !tbaa !228
  br i1 %or.cond1445, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph845.us.us
  %i.ku = udiv i64 %21, %i.hn
  %i.kv = shl i64 %i.ku, 4
  %i.kw = mul i64 %i.kv, %i.hn                    ; 3 uses
  %i.kx = add i64 %i.kw, %i.ho                    ; 2 uses
  %scevgep1116 = getelementptr i8, ptr %scevgep1114, i64 %i.kx ; 3 uses
  %.reass = add i64 %i.kw, %invariant.op          ; 2 uses
  %scevgep1120 = getelementptr i8, ptr %scevgep1119.a, i64 %.reass ; 6 uses
  %i.ky = add i64 %i.kw, %i.hq                    ; 2 uses
  %i.kz = add i64 %i.ky, %i.ho                    ; 2 uses
  %scevgep1124 = getelementptr i8, ptr %scevgep1123.a, i64 %i.kz ; 6 uses
  %.reass1536 = add i64 %i.ky, %invariant.op1535  ; 2 uses
  %scevgep1128 = getelementptr i8, ptr %scevgep1127.a, i64 %.reass1536 ; 6 uses
  %scevgep1139 = getelementptr i8, ptr %2, i64 %i.kx ; 3 uses
  %scevgep1142 = getelementptr i8, ptr %2, i64 %.reass ; 6 uses
  %scevgep1145 = getelementptr i8, ptr %2, i64 %i.kz ; 3 uses
  %scevgep1148 = getelementptr i8, ptr %2, i64 %.reass1536 ; 4 uses
  %i.la = insertelement <4 x ptr> %i.in, ptr %scevgep1124, i64 0
  %i.lb = insertelement <4 x ptr> %i.la, ptr %scevgep1120, i64 1
  %i.lc = insertelement <4 x ptr> %i.lb, ptr %scevgep1128, i64 2
  %i.ld = icmp ult <4 x ptr> %i.gy, %i.lc
  %i.le = insertelement <4 x ptr> poison, ptr %scevgep1116, i64 0
  %i.lf = shufflevector <4 x ptr> %i.le, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lg = icmp ult <4 x ptr> %i.ig, %i.lf
  %i.lh = and <4 x i1> %i.ld, %i.lg
  %bound11175 = icmp ult ptr %scevgep1132.a, %scevgep1116
  %found.conflict1176 = and i1 %bound01174, %bound11175
  %bound11180 = icmp ult ptr %scevgep1135.a, %scevgep1116
  %found.conflict1181 = and i1 %bound01179, %bound11180
  %bound01184 = icmp ult ptr %scevgep1118, %scevgep1124
  %bound11185 = icmp ult ptr %scevgep1122, %scevgep1120
  %found.conflict1186 = and i1 %bound01184, %bound11185
  %bound01190 = icmp ult ptr %scevgep1118, %scevgep1128
  %bound11191 = icmp ult ptr %scevgep1126, %scevgep1120
  %found.conflict1192 = and i1 %bound01190, %bound11191
  %bound11197 = icmp ult ptr %scevgep1129.a, %scevgep1120
  %found.conflict1198 = and i1 %bound01196, %bound11197
  %bound11202 = icmp ult ptr %scevgep1132.a, %scevgep1120
  %found.conflict1203 = and i1 %bound01201, %bound11202
  %bound11207 = icmp ult ptr %scevgep1135.a, %scevgep1120
  %found.conflict1208 = and i1 %bound01206, %bound11207
  %bound01211 = icmp ult ptr %scevgep1122, %scevgep1128
  %bound11212 = icmp ult ptr %scevgep1126, %scevgep1124
  %found.conflict1213 = and i1 %bound01211, %bound11212
  %bound11218 = icmp ult ptr %scevgep1129.a, %scevgep1124
  %found.conflict1219 = and i1 %bound01217, %bound11218
  %bound11223 = icmp ult ptr %scevgep1132.a, %scevgep1124
  %found.conflict1224 = and i1 %bound01222, %bound11223
  %bound11228 = icmp ult ptr %scevgep1135.a, %scevgep1124
  %found.conflict1229 = and i1 %bound01227, %bound11228
  %bound11233 = icmp ult ptr %scevgep1129.a, %scevgep1128
  %found.conflict1234 = and i1 %bound01232, %bound11233
  %bound11238 = icmp ult ptr %scevgep1132.a, %scevgep1128
  %found.conflict1239 = and i1 %bound01237, %bound11238
  %bound11243 = icmp ult ptr %scevgep1135.a, %scevgep1128
  %found.conflict1244 = and i1 %bound01242, %bound11243
end_hunk_2
begin_hunk_3_@_ZN2cvL3DFTIdEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_:_ZNKSt9type_infoeqERKS_.exit.thread804
  store double %i.xi, ptr %.sroa.6.0..sroa_idx17, align 8, !tbaa !228
  %i.xj = add nuw nsw i32 %.2674897, 1
  %indvars.iv.next1005 = add nuw nsw i64 %indvars.iv1004, %i.tc
  %exitcond1007.not = icmp eq i32 %.2674897, %smax
  br i1 %exitcond1007.not, label %._crit_edge901, label %.lr.ph900, !llvm.loop !526

._crit_edge901:                                   ; preds = %._crit_edge891, %.preheader806, %bb.bq
  %indvars.iv.next1009 = add nuw nsw i64 %indvars.iv1008, 1 ; 2 uses
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, %i.te
  %exitcond1014.not = icmp eq i64 %indvars.iv.next1009, %wide.trip.count1013
  br i1 %exitcond1014.not, label %._crit_edge906, label %bb.bp, !llvm.loop !527

._crit_edge906:                                   ; preds = %._crit_edge901
  %indvars.iv.next1016 = add nsw i64 %indvars.iv1015, %i.td ; 2 uses
  %i.xk = icmp slt i64 %indvars.iv.next1016, %i.th
  br i1 %i.xk, label %.preheader808, label %._crit_edge908.split, !llvm.loop !528

._crit_edge908.split:                             ; preds = %._crit_edge906, %.preheader808.lr.ph, %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EEC2Em.exit
  %.not.i.i755 = icmp eq ptr %i.sw, %scevgep.i
  br i1 %.not.i.i755, label %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge908.split
  call void @_ZdaPv(ptr noundef nonnull %i.sw) #20
  br label %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit

_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit: ; preds = %._crit_edge908.split, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bm, %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit, %bb.bk, %bb.bl
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 1 ; 2 uses
  %i.xl = load i32, ptr %0, align 8, !tbaa !10
  %i.xm = trunc nuw i64 %indvars.iv.next1019 to i32
  %i.xn = icmp sgt i32 %i.xl, %i.xm
  br i1 %i.xn, label %bb.bi, label %._crit_edge914, !llvm.loop !529

._crit_edge914:                                   ; preds = %bb.bt, %.loopexit810
  %i.xo = fcmp une double %i.m, 1.000000e+00
  br i1 %i.xo, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %._crit_edge914
  %i.xp = fneg double %i.m
  %.0638 = select i1 %i.i, double %i.xp, double %i.m ; 2 uses
  %i.xq = load i32, ptr %i.e, align 4, !tbaa !418 ; 3 uses
  %i.xr = icmp sgt i32 %i.xq, 0
  br i1 %i.xr, label %.lr.ph923.preheader, label %.critedge

.lr.ph923.preheader:                              ; preds = %bb.bu
  %wide.trip.count1027 = zext nneg i32 %i.xq to i64 ; 3 uses
  %min.iters.check1436 = icmp ult i32 %i.xq, 4
  br i1 %min.iters.check1436, label %.lr.ph923.preheader1497, label %vector.ph1437

vector.ph1437:                                    ; preds = %.lr.ph923.preheader
  %n.vec1438 = and i64 %wide.trip.count1027, 2147483646 ; 3 uses
  %i.xs = insertelement <2 x double> poison, double %i.m, i64 0
  %i.xt = insertelement <2 x double> %i.xs, double %.0638, i64 1 ; 2 uses
  br label %vector.body1439

vector.body1439:                                  ; preds = %vector.body1439, %vector.ph1437
  %index1440 = phi i64 [ 0, %vector.ph1437 ], [ %index.next1442, %vector.body1439 ] ; 3 uses
  %i.xu = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index1440 ; 2 uses
  %i.xv = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index1440
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.xu, align 8
  %wide.load1441 = load <2 x double>, ptr %i.xw, align 8
  %i.xx = fmul <2 x double> %i.xt, %wide.load
  %i.xy = fmul <2 x double> %i.xt, %wide.load1441
  store <2 x double> %i.xx, ptr %i.xu, align 8
  store <2 x double> %i.xy, ptr %i.xw, align 8
  %index.next1442 = add nuw i64 %index1440, 2     ; 2 uses
  %i.xz = icmp eq i64 %index.next1442, %n.vec1438
  br i1 %i.xz, label %middle.block1443, label %vector.body1439, !llvm.loop !530

middle.block1443:                                 ; preds = %vector.body1439
  %cmp.n = icmp eq i64 %n.vec1438, %wide.trip.count1027
  br i1 %cmp.n, label %.critedge, label %.lr.ph923.preheader1497

.lr.ph923.preheader1497:                          ; preds = %.lr.ph923.preheader, %middle.block1443
  %indvars.iv1024.ph = phi i64 [ 0, %.lr.ph923.preheader ], [ %n.vec1438, %middle.block1443 ]
  %i.ya = insertelement <2 x double> poison, double %i.m, i64 0
  %i.yb = insertelement <2 x double> %i.ya, double %.0638, i64 1
  br label %.lr.ph923

.lr.ph923:                                        ; preds = %.lr.ph923.preheader1497, %.lr.ph923
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025, %.lr.ph923 ], [ %indvars.iv1024.ph, %.lr.ph923.preheader1497 ] ; 2 uses
  %i.yc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1024 ; 2 uses
  %i.yd = load <2 x double>, ptr %i.yc, align 8, !tbaa !228
  %i.ye = fmul <2 x double> %i.yb, %i.yd
  store <2 x double> %i.ye, ptr %i.yc, align 8, !tbaa !228
  %indvars.iv.next1025 = add nuw nsw i64 %indvars.iv1024, 1 ; 2 uses
  %exitcond1028.not = icmp eq i64 %indvars.iv.next1025, %wide.trip.count1027
  br i1 %exitcond1028.not, label %.critedge, label %.lr.ph923, !llvm.loop !531

bb.bv:                                            ; preds = %._crit_edge914
  br i1 %i.i, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.bv
  %i.yf = load i32, ptr %i.e, align 4, !tbaa !418 ; 4 uses
  %.not716915 = icmp slt i32 %i.yf, 2
  br i1 %.not716915, label %._crit_edge918, label %.lr.ph917.preheader

.lr.ph917.preheader:                              ; preds = %.preheader
  %i.yg = add nsw i32 %i.yf, -2
  %i.yh = lshr i32 %i.yg, 1                       ; 2 uses
  %narrow1522 = add nuw i32 %i.yh, 1              ; 2 uses
  %i.yi = zext i32 %narrow1522 to i64             ; 2 uses
  %xtraiter1516 = and i64 %i.yi, 1
  %i.yj = icmp eq i32 %i.yh, 0
  br i1 %i.yj, label %.lr.ph917.epil.preheader, label %.lr.ph917.preheader.new

.lr.ph917.preheader.new:                          ; preds = %.lr.ph917.preheader
  %unroll_iter1520 = and i64 %i.yi, 4294967294
  br label %.lr.ph917

.lr.ph917:                                        ; preds = %.lr.ph917, %.lr.ph917.preheader.new
  %indvars.iv1021 = phi i64 [ 0, %.lr.ph917.preheader.new ], [ %indvars.iv.next1022.1, %.lr.ph917 ] ; 3 uses
  %niter1521 = phi i64 [ 0, %.lr.ph917.preheader.new ], [ %niter1521.next.1, %.lr.ph917 ]
  %i.yk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1021 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 2 uses
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !410
  %i.yn = fneg double %i.ym
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yk, i64 24 ; 2 uses
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !410
  %i.yq = fneg double %i.yp
  store double %i.yn, ptr %i.yl, align 8, !tbaa !410
  store double %i.yq, ptr %i.yo, align 8, !tbaa !410
  %i.yr = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1021 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 40 ; 2 uses
  %i.yt = load double, ptr %i.ys, align 8, !tbaa !410
  %i.yu = fneg double %i.yt
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 56 ; 2 uses
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !410
  %i.yx = fneg double %i.yw
  store double %i.yu, ptr %i.ys, align 8, !tbaa !410
  store double %i.yx, ptr %i.yv, align 8, !tbaa !410
  %indvars.iv.next1022.1 = add nuw nsw i64 %indvars.iv1021, 4 ; 3 uses
  %niter1521.next.1 = add nuw nsw i64 %niter1521, 2 ; 2 uses
  %niter1521.ncmp.1 = icmp eq i64 %niter1521.next.1, %unroll_iter1520
  br i1 %niter1521.ncmp.1, label %._crit_edge918.loopexit.unr-lcssa, label %.lr.ph917, !llvm.loop !532

._crit_edge918.loopexit.unr-lcssa:                ; preds = %.lr.ph917
  %lcmp.mod1517.not = icmp eq i64 %xtraiter1516, 0
  br i1 %lcmp.mod1517.not, label %._crit_edge918.loopexit, label %.lr.ph917.epil.preheader

.lr.ph917.epil.preheader:                         ; preds = %._crit_edge918.loopexit.unr-lcssa, %.lr.ph917.preheader
  %indvars.iv1021.epil.init = phi i64 [ 0, %.lr.ph917.preheader ], [ %indvars.iv.next1022.1, %._crit_edge918.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1519 = trunc i32 %narrow1522 to i1
  call void @llvm.assume(i1 %lcmp.mod1519)
  %i.yy = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1021.epil.init ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8 ; 2 uses
  %i.za = load double, ptr %i.yz, align 8, !tbaa !410
  %i.zb = fneg double %i.za
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yy, i64 24 ; 2 uses
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !410
  %i.ze = fneg double %i.zd
  store double %i.zb, ptr %i.yz, align 8, !tbaa !410
  store double %i.ze, ptr %i.zc, align 8, !tbaa !410
  %indvars.iv.next1022.epil = add nuw nsw i64 %indvars.iv1021.epil.init, 2
  br label %._crit_edge918.loopexit

._crit_edge918.loopexit:                          ; preds = %._crit_edge918.loopexit.unr-lcssa, %.lr.ph917.epil.preheader
  %indvars.iv.next1022.lcssa = phi i64 [ %indvars.iv.next1022.1, %._crit_edge918.loopexit.unr-lcssa ], [ %indvars.iv.next1022.epil, %.lr.ph917.epil.preheader ]
  %i.zf = trunc nuw nsw i64 %indvars.iv.next1022.lcssa to i32
  br label %._crit_edge918

._crit_edge918:                                   ; preds = %._crit_edge918.loopexit, %.preheader
  %.8.lcssa = phi i32 [ 0, %.preheader ], [ %i.zf, %._crit_edge918.loopexit ]
  %i.zg = icmp slt i32 %.8.lcssa, %i.yf
  br i1 %i.zg, label %bb.bw, label %.critedge

bb.bw:                                            ; preds = %._crit_edge918
  %i.zh = zext nneg i32 %i.yf to i64
  %i.zi = getelementptr [16 x i8], ptr %2, i64 %i.zh
  %i.zj = getelementptr i8, ptr %i.zi, i64 -8     ; 2 uses
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !410
  %i.zl = fneg double %i.zk
  store double %i.zl, ptr %i.zj, align 8, !tbaa !410
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph923, %middle.block1443, %bb.bu, %._crit_edge918, %bb.bw, %bb.bv
  ret void

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754
  %.pn723.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748 ], [ %.pn705, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754 ], [ %.pn723, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739 ], [ %.pn721, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745 ], [ %.pn711, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742 ], [ %.pn707, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751 ]
  resume { ptr, i32 } %.pn723.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R2IdEclEPNS_7ComplexIdEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 2                           ; 2 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %bb.a
  %i.c = sext i32 %i.a to i64                     ; 6 uses
  %i.d = icmp sgt i32 %3, 3
  br i1 %i.d, label %.lr.ph.us.preheader, label %.lr.ph75.split.preheader

.lr.ph75.split.preheader:                         ; preds = %.lr.ph75
  %i.e = sext i32 %3 to i64                       ; 2 uses
  %i.f = zext nneg i32 %2 to i64                  ; 3 uses
  %min.iters.check = icmp ugt i32 %2, 11
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph75.split.preheader163

.lr.ph75.split.preheader163:                      ; preds = %vector.memcheck, %.lr.ph75.split.preheader
  br label %.lr.ph75.split

vector.memcheck:                                  ; preds = %.lr.ph75.split.preheader
  %smax92 = tail call i64 @llvm.smax.i64(i64 %i.e, i64 %i.f)
  %i.g = shl nuw nsw i64 %smax92, 4               ; 4 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.h, i64 -8
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %scevgep94.a = getelementptr i8, ptr %i.i, i64 -8
  %scevgep95.a = getelementptr i8, ptr %1, i64 8
  %scevgep96.a = getelementptr i8, ptr %1, i64 %i.g
  %scevgep97.a = getelementptr i8, ptr %1, i64 8
  %scevgep98 = getelementptr i8, ptr %1, i64 %i.g
  %bound0 = icmp ult ptr %1, %scevgep94.a
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound099 = icmp ult ptr %scevgep95.a, %scevgep98
  %bound1100 = icmp ult ptr %scevgep97.a, %scevgep96.a
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx = or i1 %found.conflict, %found.conflict101
  br i1 %conflict.rdx, label %.lr.ph75.split.preheader163, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.j = getelementptr inbounds [16 x i8], ptr %1, i64 %index ; 3 uses
  %wide.load = load <2 x double>, ptr %i.j, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.c ; 2 uses
  %wide.load103 = load <2 x double>, ptr %i.k, align 8 ; 2 uses
  %i.l = fadd <2 x double> %wide.load, %wide.load103
  %i.m = fsub <2 x double> %wide.load, %wide.load103
  store <2 x double> %i.l, ptr %i.j, align 8
  store <2 x double> %i.m, ptr %i.k, align 8
  %index.next = add nuw i64 %index, 1             ; 2 uses
  %i.n = icmp eq i64 %index.next, %i.f
  br i1 %i.n, label %._crit_edge76, label %vector.body, !llvm.loop !533

.lr.ph.us.preheader:                              ; preds = %.lr.ph75
  %i.o = sext i32 %4 to i64                       ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2)
  %i.p = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = shl nuw nsw i64 %wide.trip.count, 4      ; 4 uses
  %i.s = add nsw i64 %i.r, -8                     ; 2 uses
  %i.t = shl nuw nsw i64 %i.c, 4                  ; 3 uses
  %i.u = add nuw nsw i64 %i.t, %i.r               ; 2 uses
  %scevgep112.a = getelementptr i8, ptr %5, i64 16 ; 2 uses
  %scevgep113.a = getelementptr i8, ptr %5, i64 %i.s ; 2 uses
  %scevgep118.a = getelementptr i8, ptr %5, i64 24 ; 2 uses
  %scevgep119 = getelementptr i8, ptr %5, i64 %i.r ; 2 uses
  %i.v = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %min.iters.check144 = icmp sgt i32 %3, 9
  %ident.check106.not = icmp eq i32 %4, 1
  %or.cond162 = and i1 %min.iters.check144, %ident.check106.not
  %i.w = getelementptr i8, ptr %1, i64 %i.u
  %i.x = getelementptr i8, ptr %1, i64 %i.t
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %i.z = getelementptr i8, ptr %1, i64 %i.r
  %i.aa = getelementptr i8, ptr %1, i64 %i.u
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = getelementptr i8, ptr %1, i64 %i.t
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = getelementptr i8, ptr %1, i64 %i.s
  %n.vec146 = and i64 %i.v, -2                    ; 2 uses
  %i.af = or i64 %i.v, 1                          ; 2 uses
  %cmp.n159 = icmp eq i64 %i.v, %n.vec146
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %indvars.iv86 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next87, %._crit_edge.us ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv86 ; 5 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.c ; 2 uses
  %i.ai = load <2 x double>, ptr %i.ag, align 8, !tbaa !228 ; 2 uses
  %i.aj = load <2 x double>, ptr %i.ah, align 8, !tbaa !228 ; 2 uses
  %i.ak = fadd <2 x double> %i.ai, %i.aj
  store <2 x double> %i.ak, ptr %i.ag, align 8, !tbaa !228
  %i.al = fsub <2 x double> %i.ai, %i.aj
  store <2 x double> %i.al, ptr %i.ah, align 8, !tbaa !228
  br i1 %or.cond162, label %vector.memcheck107, label %scalar.ph143.preheader

vector.memcheck107:                               ; preds = %.lr.ph.us
  %i.am = mul i64 %i.q, %indvar                   ; 8 uses
  %scevgep117 = getelementptr i8, ptr %i.w, i64 %i.am ; 2 uses
  %scevgep116 = getelementptr i8, ptr %i.y, i64 %i.am ; 2 uses
  %scevgep115 = getelementptr i8, ptr %i.z, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 %i.am
  %scevgep114 = getelementptr i8, ptr %i.an, i64 24 ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.ab, i64 %i.am ; 2 uses
  %scevgep110 = getelementptr i8, ptr %i.ad, i64 %i.am ; 2 uses
  %scevgep109 = getelementptr i8, ptr %i.ae, i64 %i.am ; 2 uses
  %i.ao = getelementptr i8, ptr %1, i64 %i.am
  %scevgep108 = getelementptr i8, ptr %i.ao, i64 16 ; 2 uses
  %bound0120 = icmp ult ptr %scevgep108, %scevgep111
  %bound1121 = icmp ult ptr %scevgep110, %scevgep109
  %found.conflict122 = and i1 %bound0120, %bound1121
  %bound0123 = icmp ult ptr %scevgep108, %scevgep113.a
  %bound1124 = icmp ult ptr %scevgep112.a, %scevgep109
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %found.conflict122, %found.conflict125
  %bound0127 = icmp ult ptr %scevgep110, %scevgep113.a
  %bound1128 = icmp ult ptr %scevgep112.a, %scevgep111
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx126, %found.conflict129
  %bound0131 = icmp ult ptr %scevgep114, %scevgep117
  %bound1132 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx130, %found.conflict133
  %bound0135 = icmp ult ptr %scevgep114, %scevgep119
  %bound1136 = icmp ult ptr %scevgep118.a, %scevgep115
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  %bound0139 = icmp ult ptr %scevgep116, %scevgep119
  %bound1140 = icmp ult ptr %scevgep118.a, %scevgep117
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %conflict.rdx138, %found.conflict141
  br i1 %conflict.rdx142, label %scalar.ph143.preheader, label %vector.body147

vector.body147:                                   ; preds = %vector.memcheck107, %vector.body147
  %index148 = phi i64 [ %index.next157, %vector.body147 ], [ 0, %vector.memcheck107 ] ; 2 uses
  %i.ap = or disjoint i64 %index148, 1            ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.c ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.ar, align 8, !tbaa !228 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec149.a = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.as = getelementptr inbounds [16 x i8], ptr %5, i64 %i.ap
  %wide.vec150 = load <4 x double>, ptr %i.as, align 8, !tbaa !228 ; 2 uses
  %strided.vec151 = shufflevector <4 x double> %wide.vec150, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec152.a = shufflevector <4 x double> %wide.vec150, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.at = fneg <2 x double> %strided.vec152.a
  %i.au = fmul <2 x double> %strided.vec149.a, %i.at
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec151, <2 x double> %i.au) ; 2 uses
  %i.aw = fmul <2 x double> %strided.vec, %strided.vec152.a
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec149.a, <2 x double> %strided.vec151, <2 x double> %i.aw) ; 2 uses
  %wide.vec153 = load <4 x double>, ptr %i.aq, align 8, !tbaa !228 ; 2 uses
  %strided.vec154 = shufflevector <4 x double> %wide.vec153, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec155 = shufflevector <4 x double> %wide.vec153, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ay = fadd <2 x double> %strided.vec154, %i.av
  %i.az = fadd <2 x double> %strided.vec155, %i.ax
  %interleaved.vec = shufflevector <2 x double> %i.ay, <2 x double> %i.az, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.aq, align 8, !tbaa !228
  %i.ba = fsub <2 x double> %strided.vec154, %i.av
  %i.bb = fsub <2 x double> %strided.vec155, %i.ax
  %interleaved.vec156 = shufflevector <2 x double> %i.ba, <2 x double> %i.bb, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec156, ptr %i.ar, align 8, !tbaa !228
  %index.next157 = add nuw i64 %index148, 2       ; 2 uses
  %i.bc = icmp eq i64 %index.next157, %n.vec146
  br i1 %i.bc, label %middle.block158, label %vector.body147, !llvm.loop !534

middle.block158:                                  ; preds = %vector.body147
  br i1 %cmp.n159, label %._crit_edge.us, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %vector.memcheck107, %.lr.ph.us, %middle.block158
  %indvars.iv81.ph = phi i64 [ 1, %vector.memcheck107 ], [ 1, %.lr.ph.us ], [ %i.af, %middle.block158 ]
  %indvars.iv79.ph = phi i64 [ %i.o, %vector.memcheck107 ], [ %i.o, %.lr.ph.us ], [ %i.af, %middle.block158 ]
  br label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %scalar.ph143 ], [ %indvars.iv81.ph, %scalar.ph143.preheader ] ; 2 uses
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %scalar.ph143 ], [ %indvars.iv79.ph, %scalar.ph143.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv81 ; 3 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.c ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %5, i64 %indvars.iv79 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !408
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !410 ; 2 uses
  %i.bj = fneg double %i.bi
  %i.bk = load <2 x double>, ptr %i.be, align 8, !tbaa !228 ; 2 uses
  %i.bl = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bj, i64 1
  %i.bn = fmul <2 x double> %i.bk, %i.bm
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bp = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bq, <2 x double> %i.bo) ; 2 uses
  %i.bs = load <2 x double>, ptr %i.bd, align 8, !tbaa !228 ; 2 uses
  %i.bt = fadd <2 x double> %i.bs, %i.br
  store <2 x double> %i.bt, ptr %i.bd, align 8, !tbaa !228
  %i.bu = fsub <2 x double> %i.bs, %i.br
  store <2 x double> %i.bu, ptr %i.be, align 8, !tbaa !228
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, %i.o
  %exitcond.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph143, !llvm.loop !535

._crit_edge.us:                                   ; preds = %scalar.ph143, %middle.block158
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, %i.p ; 2 uses
  %i.bv = trunc nuw i64 %indvars.iv.next87 to i32
  %i.bw = icmp sgt i32 %2, %i.bv
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bw, label %.lr.ph.us, label %._crit_edge76, !llvm.loop !536

._crit_edge76:                                    ; preds = %vector.body, %.lr.ph75.split, %._crit_edge.us, %bb.a
  ret void

.lr.ph75.split:                                   ; preds = %.lr.ph75.split.preheader163, %.lr.ph75.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph75.split ], [ 0, %.lr.ph75.split.preheader163 ] ; 2 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.by = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.c ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bx, align 8, !tbaa !228 ; 2 uses
  %i.ca = load <2 x double>, ptr %i.by, align 8, !tbaa !228 ; 2 uses
  %i.cb = fadd <2 x double> %i.bz, %i.ca
  store <2 x double> %i.cb, ptr %i.bx, align 8, !tbaa !228
  %i.cc = fsub <2 x double> %i.bz, %i.ca
  store <2 x double> %i.cc, ptr %i.by, align 8, !tbaa !228
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.e ; 2 uses
  %i.cd = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.cd, label %.lr.ph75.split, label %._crit_edge76, !llvm.loop !537
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R3IdEclEPNS_7ComplexIdEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 3                           ; 3 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %bb.a
  %i.c = sext i32 %i.a to i64                     ; 6 uses
  %i.d = shl nsw i32 %i.a, 1
  %i.e = sext i32 %i.d to i64                     ; 6 uses
  %i.f = icmp sgt i32 %3, 5
  br i1 %i.f, label %.lr.ph.us.preheader, label %.lr.ph133.split.preheader

.lr.ph133.split.preheader:                        ; preds = %.lr.ph133
  %i.g = sext i32 %3 to i64                       ; 2 uses
  %i.h = zext nneg i32 %2 to i64                  ; 4 uses
  %min.iters.check = icmp ugt i32 %2, 9
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph133.split.preheader309

vector.memcheck:                                  ; preds = %.lr.ph133.split.preheader
  %smax150 = tail call i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = shl nuw nsw i64 %smax150, 4              ; 6 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %scevgep = getelementptr i8, ptr %i.j, i64 -8   ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.i
  %scevgep152 = getelementptr i8, ptr %i.k, i64 -8 ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 %i.i
  %scevgep154.a = getelementptr i8, ptr %i.l, i64 -8 ; 2 uses
  %scevgep155.a = getelementptr i8, ptr %1, i64 8 ; 2 uses
  %scevgep156.a = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %scevgep157.a = getelementptr i8, ptr %1, i64 8 ; 2 uses
  %scevgep158.a = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %scevgep159.a = getelementptr i8, ptr %1, i64 8 ; 2 uses
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %bound0 = icmp ult ptr %1, %scevgep152
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0161 = icmp ult ptr %1, %scevgep154.a
  %bound1162 = icmp ult ptr %1, %scevgep
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx = or i1 %found.conflict, %found.conflict163
  %bound0164 = icmp ult ptr %1, %scevgep154.a
  %bound1165 = icmp ult ptr %1, %scevgep152
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx, %found.conflict166
  %bound0168 = icmp ult ptr %scevgep155.a, %scevgep158.a
  %bound1169 = icmp ult ptr %scevgep157.a, %scevgep156.a
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %scevgep155.a, %scevgep160
  %bound1173 = icmp ult ptr %scevgep159.a, %scevgep156.a
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  %bound0176 = icmp ult ptr %scevgep157.a, %scevgep160
  %bound1177 = icmp ult ptr %scevgep159.a, %scevgep158.a
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  br i1 %conflict.rdx179, label %.lr.ph133.split.preheader309, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483646               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %1, i64 %index ; 4 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.c ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.n, align 8, !tbaa !228 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec180 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.e ; 2 uses
  %wide.vec181 = load <4 x double>, ptr %i.o, align 8, !tbaa !228 ; 2 uses
  %strided.vec182.a = shufflevector <4 x double> %wide.vec181, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec183 = shufflevector <4 x double> %wide.vec181, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.p = fadd <2 x double> %strided.vec, %strided.vec182.a ; 2 uses
  %i.q = fadd <2 x double> %strided.vec180, %strided.vec183 ; 2 uses
  %wide.vec184 = load <4 x double>, ptr %i.m, align 8, !tbaa !228 ; 2 uses
  %strided.vec185.a = shufflevector <4 x double> %wide.vec184, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec186 = shufflevector <4 x double> %wide.vec184, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.r = fsub <2 x double> %strided.vec180, %strided.vec183
  %i.s = fmul <2 x double> %i.r, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.t = fsub <2 x double> %strided.vec182.a, %strided.vec
  %i.u = fmul <2 x double> %i.t, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.v = fadd <2 x double> %i.p, %strided.vec185.a
  %i.w = fadd <2 x double> %i.q, %strided.vec186
  %interleaved.vec = shufflevector <2 x double> %i.v, <2 x double> %i.w, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.m, align 8, !tbaa !228
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> splat (double -5.000000e-01), <2 x double> %strided.vec185.a) ; 2 uses
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> splat (double -5.000000e-01), <2 x double> %strided.vec186) ; 2 uses
  %i.z = fadd <2 x double> %i.x, %i.s
  %i.aa = fadd <2 x double> %i.u, %i.y
  %interleaved.vec187.a = shufflevector <2 x double> %i.z, <2 x double> %i.aa, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec187.a, ptr %i.n, align 8, !tbaa !228
  %i.ab = fsub <2 x double> %i.x, %i.s
  %i.ac = fsub <2 x double> %i.y, %i.u
  %interleaved.vec188 = shufflevector <2 x double> %i.ab, <2 x double> %i.ac, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec188, ptr %i.o, align 8, !tbaa !228
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !538

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge134, label %.lr.ph133.split.preheader309

.lr.ph133.split.preheader309:                     ; preds = %vector.memcheck, %.lr.ph133.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph133.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph133.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph133
  %i.ae = sext i32 %4 to i64                      ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2)
  %i.af = zext nneg i32 %3 to i64                 ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %i.ag = shl nuw nsw i64 %i.af, 4
  %i.ah = shl nuw nsw i64 %wide.trip.count, 4     ; 7 uses
  %i.ai = add nsw i64 %i.ah, -8                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.c, 4                 ; 4 uses
  %i.ak = shl nuw nsw i64 %i.e, 4                 ; 4 uses
  %scevgep198.a = getelementptr i8, ptr %5, i64 32 ; 3 uses
  %i.al = shl nuw nsw i64 %wide.trip.count, 5     ; 2 uses
  %i.am = getelementptr i8, ptr %5, i64 %i.al
  %scevgep199.a = getelementptr i8, ptr %i.am, i64 -24 ; 3 uses
  %scevgep200.a = getelementptr i8, ptr %5, i64 16 ; 3 uses
  %scevgep201.a = getelementptr i8, ptr %5, i64 %i.ai ; 3 uses
  %scevgep208.a = getelementptr i8, ptr %5, i64 40 ; 3 uses
  %i.an = getelementptr i8, ptr %5, i64 %i.al
  %scevgep209.a = getelementptr i8, ptr %i.an, i64 -16 ; 3 uses
  %scevgep210.a = getelementptr i8, ptr %5, i64 24 ; 3 uses
  %scevgep211 = getelementptr i8, ptr %5, i64 %i.ah ; 3 uses
  %i.ao = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check284 = icmp sgt i32 %3, 23
  %ident.check190.not = icmp eq i32 %4, 1
  %or.cond308 = and i1 %min.iters.check284, %ident.check190.not
  %i.ap = getelementptr i8, ptr %1, i64 %i.ak
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ah
  %i.ar = getelementptr i8, ptr %1, i64 %i.ak
  %i.as = getelementptr i8, ptr %i.ar, i64 24
  %i.at = getelementptr i8, ptr %1, i64 %i.aj
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ah
  %i.av = getelementptr i8, ptr %1, i64 %i.aj
  %i.aw = getelementptr i8, ptr %i.av, i64 24
  %i.ax = getelementptr i8, ptr %1, i64 %i.ah
  %i.ay = getelementptr i8, ptr %1, i64 %i.ak
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ah
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = getelementptr i8, ptr %1, i64 %i.ak
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = getelementptr i8, ptr %1, i64 %i.aj
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.ah
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  %i.bg = getelementptr i8, ptr %1, i64 %i.aj
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %i.bi = getelementptr i8, ptr %1, i64 %i.ai
  %.neg = or i64 %i.ao, -2                        ; 2 uses
  %n.vec286 = add nsw i64 %.neg, %i.ao
  %i.bj = add nsw i64 %.neg, %wide.trip.count     ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %indvars.iv144 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next145, %._crit_edge.us ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv144 ; 6 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.c ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.e ; 2 uses
  %i.bn = load <2 x double>, ptr %i.bl, align 8, !tbaa !228 ; 3 uses
  %i.bo = load <2 x double>, ptr %i.bm, align 8, !tbaa !228 ; 3 uses
  %i.bp = fadd <2 x double> %i.bn, %i.bo          ; 2 uses
  %i.bq = load <2 x double>, ptr %i.bk, align 8, !tbaa !228 ; 2 uses
  %i.br = shufflevector <2 x double> %i.bn, <2 x double> %i.bo, <2 x i32> <i32 1, i32 2>
  %i.bs = shufflevector <2 x double> %i.bo, <2 x double> %i.bn, <2 x i32> <i32 1, i32 2>
  %i.bt = fsub <2 x double> %i.br, %i.bs
  %i.bu = fmul <2 x double> %i.bt, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.bv = fadd <2 x double> %i.bp, %i.bq
  store <2 x double> %i.bv, ptr %i.bk, align 8, !tbaa !228
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> splat (double -5.000000e-01), <2 x double> %i.bq) ; 2 uses
  %i.bx = fadd <2 x double> %i.bw, %i.bu
  store <2 x double> %i.bx, ptr %i.bl, align 8, !tbaa !228
  %i.by = fsub <2 x double> %i.bw, %i.bu
  store <2 x double> %i.by, ptr %i.bm, align 8, !tbaa !228
  br i1 %or.cond308, label %vector.memcheck191, label %scalar.ph283.preheader

vector.memcheck191:                               ; preds = %.lr.ph.us
  %i.bz = mul i64 %i.ag, %indvar                  ; 12 uses
  %scevgep207 = getelementptr i8, ptr %i.aq, i64 %i.bz ; 4 uses
  %scevgep206 = getelementptr i8, ptr %i.as, i64 %i.bz ; 4 uses
  %scevgep205 = getelementptr i8, ptr %i.au, i64 %i.bz ; 4 uses
  %scevgep204 = getelementptr i8, ptr %i.aw, i64 %i.bz ; 4 uses
  %scevgep203 = getelementptr i8, ptr %i.ax, i64 %i.bz ; 4 uses
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz
  %scevgep202 = getelementptr i8, ptr %i.ca, i64 24 ; 4 uses
  %scevgep197 = getelementptr i8, ptr %i.ba, i64 %i.bz ; 4 uses
  %scevgep196 = getelementptr i8, ptr %i.bc, i64 %i.bz ; 4 uses
  %scevgep195 = getelementptr i8, ptr %i.bf, i64 %i.bz ; 4 uses
  %scevgep194 = getelementptr i8, ptr %i.bh, i64 %i.bz ; 4 uses
  %scevgep193 = getelementptr i8, ptr %i.bi, i64 %i.bz ; 4 uses
  %i.cb = getelementptr i8, ptr %1, i64 %i.bz
  %scevgep192 = getelementptr i8, ptr %i.cb, i64 16 ; 4 uses
  %bound0212 = icmp ult ptr %scevgep192, %scevgep195
  %bound1213 = icmp ult ptr %scevgep194, %scevgep193
  %found.conflict214 = and i1 %bound0212, %bound1213
  %bound0215 = icmp ult ptr %scevgep192, %scevgep197
  %bound1216 = icmp ult ptr %scevgep196, %scevgep193
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %found.conflict214, %found.conflict217
  %bound0219 = icmp ult ptr %scevgep192, %scevgep199.a
  %bound1220 = icmp ult ptr %scevgep198.a, %scevgep193
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx222 = or i1 %conflict.rdx218, %found.conflict221
  %bound0223 = icmp ult ptr %scevgep192, %scevgep201.a
  %bound1224 = icmp ult ptr %scevgep200.a, %scevgep193
  %found.conflict225 = and i1 %bound0223, %bound1224
  %conflict.rdx226 = or i1 %conflict.rdx222, %found.conflict225
  %bound0227 = icmp ult ptr %scevgep194, %scevgep197
  %bound1228 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict229 = and i1 %bound0227, %bound1228
  %conflict.rdx230 = or i1 %conflict.rdx226, %found.conflict229
  %bound0231 = icmp ult ptr %scevgep194, %scevgep199.a
  %bound1232 = icmp ult ptr %scevgep198.a, %scevgep195
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %conflict.rdx230, %found.conflict233
  %bound0235 = icmp ult ptr %scevgep194, %scevgep201.a
end_hunk_3
begin_hunk_4_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv10OcvDftImplEEET_:bb.a
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #23
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv10OcvDftImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv10OcvDftImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !658  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv10OcvDftImplD2Ev(ptr noundef nonnull align 8 dead_on_return(4312) dereferenceable(4312) %i.b) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 4312) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv10OcvDftImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv10OcvDftImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv10OcvDctImplEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !98
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !94
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv10OcvDctImplELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !661
  store ptr %i.a, ptr %0, align 8, !tbaa !98
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #21 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv10OcvDctImplD2Ev(ptr noundef nonnull align 8 dead_on_return(2392) dereferenceable(2392) %1) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 2392) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #22
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #23
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv10OcvDctImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv10OcvDctImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !661  ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1288
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1304
  %.not.i.i.i = icmp eq ptr %i.e, %i.f
  %i.g = icmp eq ptr %i.e, null
  %or.cond.i.i = or i1 %.not.i.i.i, %i.g
  br i1 %or.cond.i.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #20
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i

_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i:           ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !365  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %.not.i.i1.i = icmp eq ptr %i.i, %i.j
  %i.k = icmp eq ptr %i.i, null
  %or.cond.i2.i = or i1 %.not.i.i1.i, %i.k
  br i1 %or.cond.i2.i, label %_ZN2cv10OcvDctImplD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #20
  br label %_ZN2cv10OcvDctImplD2Ev.exit

_ZN2cv10OcvDctImplD2Ev.exit:                      ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 2392) #20
  br label %bb.e

bb.e:                                             ; preds = %_ZN2cv10OcvDctImplD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv10OcvDctImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv10OcvDctImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { noreturn nounwind }

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
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"_ZTSN2cv13OcvDftOptionsE", !5, i64 0, !12, i64 8, !14, i64 16, !12, i64 24, !13, i64 32, !5, i64 40, !5, i64 44, !15, i64 48, !15, i64 49, !15, i64 50, !15, i64 51, !13, i64 56, !15, i64 64}
!12 = !{!"p1 int", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!11, !15, i64 64}
!17 = !{!11, !13, i64 56}
!18 = !{!11, !15, i64 51}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSN2cv10AutoBufferIhLm1032EEE", !21, i64 0, !22, i64 8, !6, i64 16}
!21 = !{!"p1 omnipotent char", !13, i64 0}
!22 = !{!"long", !6, i64 0}
!23 = !{!20, !22, i64 8}
!24 = !{!25, !12, i64 0}
!25 = !{!"_ZTSN2cv10AutoBufferIiLm264EEE", !12, i64 0, !22, i64 8, !6, i64 16}
!26 = !{!25, !22, i64 8}
!27 = !{!28, !12, i64 16}
!28 = !{!"_ZTSN2cv15OcvDftBasicImplE", !29, i64 0, !11, i64 8, !6, i64 80, !20, i64 216, !25, i64 1264}
!29 = !{!"_ZTSN2cv3hal5DFT1DE"}
!30 = !{!31, !32, i64 0}
!31 = !{!"_ZTSSt12__shared_ptrIN2cv3hal5DFT1DELN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0, !33, i64 8}
!32 = !{!"p1 _ZTSN2cv3hal5DFT1DE", !13, i64 0}
!33 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0}
!34 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!35 = !{!28, !5, i64 52}
!36 = !{!28, !15, i64 56}
!37 = !{!28, !15, i64 58}
!38 = !{!28, !14, i64 24}
!39 = !{!28, !5, i64 48}
!40 = !{!28, !15, i64 72}
!41 = !{!5, !5, i64 0}
!42 = !{!28, !5, i64 8}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!28, !13, i64 40}
!46 = !{!28, !12, i64 32}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!15, !15, i64 0}
!50 = !{!13, !13, i64 0}
!51 = !{!28, !13, i64 64}
!52 = !{!53, !21, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !54, i64 0, !22, i64 8, !6, i64 16}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!55 = !{!6, !6, i64 0}
!56 = !{!57, !15, i64 40}
!57 = !{!"_ZTSN2cv10OcvDftImplE", !58, i64 0, !59, i64 8, !59, i64 24, !15, i64 40, !15, i64 41, !15, i64 42, !5, i64 44, !5, i64 48, !61, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !15, i64 68, !5, i64 72, !15, i64 76, !15, i64 77, !62, i64 80, !15, i64 104, !5, i64 108, !5, i64 112, !20, i64 120, !20, i64 1168, !20, i64 2216, !20, i64 3264}
!58 = !{!"_ZTSN2cv3hal5DFT2DE"}
!59 = !{!"_ZTSN2cv3PtrINS_3hal5DFT1DEEE", !60, i64 0}
!60 = !{!"_ZTSSt10shared_ptrIN2cv3hal5DFT1DEE", !31, i64 0}
!61 = !{!"_ZTSN2cv7DftModeE", !6, i64 0}
!62 = !{!"_ZTSSt6vectorIiSaIiEE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!66 = !{!57, !15, i64 41}
!67 = !{!57, !15, i64 42}
!68 = !{!57, !5, i64 72}
!69 = !{!57, !15, i64 76}
!70 = !{!57, !15, i64 77}
!71 = !{!57, !15, i64 104}
!72 = !{!57, !5, i64 108}
!73 = !{!57, !5, i64 112}
!74 = !{!75, !76, i64 0}
!75 = !{!"_ZTSSt12__shared_ptrIN2cv3hal5DFT2DELN9__gnu_cxx12_Lock_policyE2EE", !76, i64 0, !33, i64 8}
!76 = !{!"p1 _ZTSN2cv3hal5DFT2DE", !13, i64 0}
!77 = !{!54, !21, i64 0}
!78 = !{!22, !22, i64 0}
!79 = !{!53, !22, i64 8}
!80 = !{!57, !5, i64 44}
!81 = !{!57, !5, i64 48}
!82 = !{!57, !5, i64 64}
!83 = !{!57, !61, i64 52}
!84 = !{!57, !15, i64 68}
!85 = !{!57, !5, i64 56}
!86 = !{!57, !5, i64 60}
!87 = !{!65, !12, i64 8}
!88 = !{!65, !12, i64 0}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN2cv3hal5DFT1D6createEiiiiPb: argument 0"}
!91 = distinct !{!91, !"_ZN2cv3hal5DFT1D6createEiiiiPb"}
!92 = !{!93, !5, i64 8}
!93 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!94 = !{!93, !5, i64 12}
!95 = !{!96, !97, i64 16}
!96 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv15OcvDftBasicImplELN9__gnu_cxx12_Lock_policyE2EE", !93, i64 0, !97, i64 16}
!97 = !{!"p1 _ZTSN2cv15OcvDftBasicImplE", !13, i64 0}
!98 = !{!33, !34, i64 0}
!99 = distinct !{null, null, null, null, null}
!100 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!101 = distinct !{null, null, null}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN2cv3hal5DFT1D6createEiiiiPb: argument 0"}
!104 = distinct !{!104, !"_ZN2cv3hal5DFT1D6createEiiiiPb"}
!105 = distinct !{!105, !44}
!106 = !{!107, !13, i64 8}
!107 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !13, i64 8, !108, i64 16}
!108 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!111 = distinct !{!111, !"_ZNK2cv11_InputArray6getMatEi"}
!112 = !{!113, !5, i64 0}
!113 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !114, i64 56, !115, i64 64, !116, i64 72, !118, i64 128}
!114 = !{!"p1 _ZTSN2cv12MatAllocatorE", !13, i64 0}
!115 = !{!"p1 _ZTSN2cv8UMatDataE", !13, i64 0}
!116 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !117, i64 4, !5, i64 8, !6, i64 12}
!117 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!118 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!119 = !{!108, !5, i64 0}
!120 = !{!108, !5, i64 4}
!121 = !{!107, !5, i64 0}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!124 = distinct !{!124, !"_ZNK2cv11_InputArray6getMatEi"}
!125 = !{!113, !21, i64 24}
!126 = !{!113, !5, i64 12}
!127 = !{!113, !5, i64 8}
!128 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv3hal5DFT2DELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!129 = !{!130, !5, i64 8}
!130 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !131, i64 0, !5, i64 8}
!131 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !13, i64 0}
!132 = distinct !{null, null}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!135 = distinct !{!135, !"_ZNK2cv11_InputArray6getMatEi"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!138 = distinct !{!138, !"_ZNK2cv11_InputArray6getMatEi"}
!139 = !{!116, !5, i64 0}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!142 = distinct !{!142, !"_ZNK2cv11_InputArray6getMatEi"}
!143 = !{!144, !144, i64 0}
!144 = !{!"float", !6, i64 0}
!145 = distinct !{!145, !44}
!146 = !{!147}
!147 = distinct !{!147, !148}
!148 = distinct !{!148, !"LVerDomain"}
!149 = !{!150}
!150 = distinct !{!150, !148}
!151 = distinct !{!151, !44, !152, !153}
!152 = !{!"llvm.loop.isvectorized", i32 1}
!153 = !{!"llvm.loop.unroll.runtime.disable"}
!154 = distinct !{!154, !44, !152}
!155 = distinct !{!155, !44}
!156 = distinct !{!156, !157}
!157 = !{!"llvm.loop.unroll.disable"}
!158 = !{!159}
!159 = distinct !{!159, !160}
!160 = distinct !{!160, !"LVerDomain"}
!161 = !{!162}
!162 = distinct !{!162, !160}
!163 = distinct !{!163, !44, !152, !153}
!164 = distinct !{!164, !44, !152}
!165 = distinct !{!165, !44}
end_hunk_4
