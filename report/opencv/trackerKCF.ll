Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/trackerKCF?download=true
inline.NumInlined: 1275
inline.NumDeleted: 443
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN2cv8tracking4impl14TrackerKCFImpl22updateProjectionMatrixENS_3MatERS3_S4_fiRSt6vectorIS3_SaIS3_EERS5_INS_7Scalar_IdEESaISA_EES3_S3_S3_S3_S3_:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !103
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.m, label %bb.v

bb.m:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %28, ptr noundef nonnull align 8 dereferenceable(208) %9)
  %i.ce = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %28)
          to label %bb.n unwind label %bb.u       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.v

bb.o:                                             ; preds = %bb.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.bl

bb.p:                                             ; preds = %bb.j
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.l
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %25) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn65 = phi { ptr, i32 } [ %i.ci, %bb.r ], [ %i.ch, %bb.q ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %26) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %bb.s ], [ %i.cg, %bb.p ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.bl

bb.u:                                             ; preds = %bb.m
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.bl

bb.v:                                             ; preds = %bb.n, %_ZN2cv3MataSERKNS_7MatExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.ck = fpext float %4 to double                ; 3 uses
  %i.cl = fsub double 1.000000e+00, %i.ck         ; 2 uses
  call void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %31, double noundef %i.cl, ptr noundef nonnull align 8 dereferenceable(208) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  invoke void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %32, double noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cvplERKNS_7MatExprES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %30, ptr noundef nonnull align 8 dereferenceable(688) %31, ptr noundef nonnull align 8 dereferenceable(688) %32)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(688) %30)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  %i.cm = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i64 0, ptr %i.cn, align 8
  store i32 33619968, ptr %33, align 8, !tbaa !67
  store ptr %10, ptr %i.cm, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  %i.co = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i64 0, ptr %i.cp, align 8
  store i32 33619968, ptr %34, align 8, !tbaa !67
  store ptr %11, ptr %i.co, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  %i.cq = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 0, ptr %i.cr, align 8
  store i32 33619968, ptr %35, align 8, !tbaa !67
  store ptr %12, ptr %i.cq, align 8, !tbaa !68
  invoke void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayES6_S6_i(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35, i32 noundef 0)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  %i.cs = getelementptr inbounds nuw i8, ptr %30, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cs) #25
  %i.ct = getelementptr inbounds nuw i8, ptr %30, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ct) #25
  %i.cu = getelementptr inbounds nuw i8, ptr %30, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cu) #25
  %i.cv = getelementptr inbounds nuw i8, ptr %32, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cv) #25
  %i.cw = getelementptr inbounds nuw i8, ptr %32, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cw) #25
  %i.cx = getelementptr inbounds nuw i8, ptr %32, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cx) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  %i.cy = getelementptr inbounds nuw i8, ptr %31, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cy) #25
  %i.cz = getelementptr inbounds nuw i8, ptr %31, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cz) #25
  %i.da = getelementptr inbounds nuw i8, ptr %31, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.da) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  %i.db = load i32, ptr %1, align 8, !tbaa !105
  %i.dc = lshr i32 %i.db, 5
  %i.dd = and i32 %i.dc, 127
  %i.de = add nuw nsw i32 %i.dd, 1
  store i32 0, ptr %38, align 4, !tbaa !117
  %i.df = getelementptr inbounds nuw i8, ptr %38, i64 4
  store i32 0, ptr %i.df, align 4, !tbaa !119
  %i.dg = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %5, ptr %i.dg, align 4, !tbaa !118
  %i.dh = getelementptr inbounds nuw i8, ptr %38, i64 12
  store i32 %i.de, ptr %i.dh, align 4, !tbaa !120
  call void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %37, ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 4 dereferenceable(16) %38)
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %36, ptr noundef nonnull align 8 dereferenceable(208) %37)
          to label %bb.aa unwind label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.di = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %36)
          to label %bb.ab unwind label %bb.ak     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #25
  %i.dj = load i32, ptr %3, align 8, !tbaa !105
  %i.dk = and i32 %i.dj, 4095
  call void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %40, i32 noundef %5, i32 noundef %5, i32 noundef %i.dk)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %39) #25
  %i.dl = load ptr, ptr %40, align 8, !tbaa !76, !noalias !231 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull align 8 dereferenceable(688) %40, ptr noundef nonnull align 8 dereferenceable(208) %39, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.ab
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #25
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %40) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  br label %bb.bk

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %40, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dq) #25
  %i.dr = getelementptr inbounds nuw i8, ptr %40, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dr) #25
  %i.ds = getelementptr inbounds nuw i8, ptr %40, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ds) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  %i.dt = icmp sgt i32 %5, 0
  br i1 %i.dt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !77
  %i.dw = icmp slt i32 %i.dv, 2
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 84
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %39, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !77
  %.fr101 = freeze i32 %i.ed
  %i.ee = icmp slt i32 %.fr101, 2                 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !78 ; 24 uses
  %47 = ptrtoaddr ptr %i.eg to i64                ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %39, i64 128 ; 11 uses
  br i1 %i.dw, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ei = load ptr, ptr %i.ea, align 8, !tbaa !78 ; 12 uses
  %wide.trip.count128 = zext nneg i32 %5 to i64   ; 7 uses
  br i1 %i.ee, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %xtraiter165 = and i64 %wide.trip.count128, 3   ; 3 uses
  %i.ej = icmp ult i32 %5, 4
  br i1 %i.ej, label %.lr.ph.split.us.split.epil.preheader, label %.lr.ph.split.us.split.preheader.new

.lr.ph.split.us.split.preheader.new:              ; preds = %.lr.ph.split.us.split.preheader
  %unroll_iter169 = and i64 %wide.trip.count128, 2147483644
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %i.ek = ptrtoaddr ptr %i.ei to i64
  %min.iters.check144 = icmp ult i32 %5, 8
  %i.el = sub i64 %i.ek, %47
  %diff.check142 = icmp ugt i64 %i.el, -32
  %or.cond = select i1 %min.iters.check144, i1 true, i1 %diff.check142
  br i1 %or.cond, label %.lr.ph.split.us.split.us.preheader156, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph.split.us.split.us.preheader
  %n.vec146 = and i64 %wide.trip.count128, 2147483640 ; 3 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next151, %vector.body147 ] ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index148 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load149 = load <4 x float>, ptr %i.em, align 4, !tbaa !15
  %wide.load150 = load <4 x float>, ptr %i.en, align 4, !tbaa !15
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index148 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <4 x float> %wide.load149, ptr %i.eo, align 4, !tbaa !15
  store <4 x float> %wide.load150, ptr %i.ep, align 4, !tbaa !15
  %index.next151 = add nuw i64 %index148, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next151, %n.vec146
  br i1 %i.eq, label %middle.block152, label %vector.body147, !llvm.loop !222

middle.block152:                                  ; preds = %vector.body147
  %cmp.n153 = icmp eq i64 %n.vec146, %wide.trip.count128
  br i1 %cmp.n153, label %._crit_edge, label %.lr.ph.split.us.split.us.preheader156

.lr.ph.split.us.split.us.preheader156:            ; preds = %.lr.ph.split.us.split.us.preheader, %middle.block152
  %indvars.iv125.ph = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %n.vec146, %middle.block152 ] ; 3 uses
  %xtraiter171 = and i64 %wide.trip.count128, 3   ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.split.us.split.us.prol.loopexit, label %.lr.ph.split.us.split.us.prol

.lr.ph.split.us.split.us.prol:                    ; preds = %.lr.ph.split.us.split.us.preheader156, %.lr.ph.split.us.split.us.prol
  %indvars.iv125.prol = phi i64 [ %indvars.iv.next126.prol, %.lr.ph.split.us.split.us.prol ], [ %indvars.iv125.ph, %.lr.ph.split.us.split.us.preheader156 ] ; 3 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph.split.us.split.us.prol ], [ 0, %.lr.ph.split.us.split.us.preheader156 ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv125.prol
  %i.es = load float, ptr %i.er, align 4, !tbaa !15
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv125.prol
  store float %i.es, ptr %i.et, align 4, !tbaa !15
  %indvars.iv.next126.prol = add nuw nsw i64 %indvars.iv125.prol, 1 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %.lr.ph.split.us.split.us.prol.loopexit, label %.lr.ph.split.us.split.us.prol, !llvm.loop !223

.lr.ph.split.us.split.us.prol.loopexit:           ; preds = %.lr.ph.split.us.split.us.prol, %.lr.ph.split.us.split.us.preheader156
  %indvars.iv125.unr = phi i64 [ %indvars.iv125.ph, %.lr.ph.split.us.split.us.preheader156 ], [ %indvars.iv.next126.prol, %.lr.ph.split.us.split.us.prol ]
  %i.eu = sub nsw i64 %indvars.iv125.ph, %wide.trip.count128
  %i.ev = icmp ugt i64 %i.eu, -4
  br i1 %i.ev, label %._crit_edge, label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.prol.loopexit, %.lr.ph.split.us.split.us
  %indvars.iv125 = phi i64 [ %indvars.iv.next126.3, %.lr.ph.split.us.split.us ], [ %indvars.iv125.unr, %.lr.ph.split.us.split.us.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv125
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !15
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv125
  store float %i.ex, ptr %i.ey, align 4, !tbaa !15
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next126
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !15
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next126
  store float %i.fa, ptr %i.fb, align 4, !tbaa !15
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next126.1
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !15
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next126.1
  store float %i.fd, ptr %i.fe, align 4, !tbaa !15
  %indvars.iv.next126.2 = add nuw nsw i64 %indvars.iv125, 3 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next126.2
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !15
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next126.2
  store float %i.fg, ptr %i.fh, align 4, !tbaa !15
  %indvars.iv.next126.3 = add nuw nsw i64 %indvars.iv125, 4 ; 2 uses
  %exitcond129.not.3 = icmp eq i64 %indvars.iv.next126.3, %wide.trip.count128
  br i1 %exitcond129.not.3, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !224

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split, %.lr.ph.split.us.split.preheader.new
  %indvars.iv120 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %indvars.iv.next121.3, %.lr.ph.split.us.split ] ; 7 uses
  %niter170 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %niter170.next.3, %.lr.ph.split.us.split ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv120
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !15
  %i.fk = load i64, ptr %i.eh, align 8
  %i.fl = mul i64 %i.fk, %indvars.iv120
  %.sink.i.us = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.fl
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us, i64 %indvars.iv120
  store float %i.fj, ptr %i.fm, align 4, !tbaa !15
  %indvars.iv.next121 = or disjoint i64 %indvars.iv120, 1 ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next121
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !15
  %i.fp = load i64, ptr %i.eh, align 8
  %i.fq = mul i64 %i.fp, %indvars.iv.next121
  %.sink.i.us.1 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.fq
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us.1, i64 %indvars.iv.next121
  store float %i.fo, ptr %i.fr, align 4, !tbaa !15
  %indvars.iv.next121.1 = or disjoint i64 %indvars.iv120, 2 ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next121.1
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !15
  %i.fu = load i64, ptr %i.eh, align 8
  %i.fv = mul i64 %i.fu, %indvars.iv.next121.1
  %.sink.i.us.2 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.fv
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us.2, i64 %indvars.iv.next121.1
  store float %i.ft, ptr %i.fw, align 4, !tbaa !15
  %indvars.iv.next121.2 = or disjoint i64 %indvars.iv120, 3 ; 3 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next121.2
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !15
  %i.fz = load i64, ptr %i.eh, align 8
  %i.ga = mul i64 %i.fz, %indvars.iv.next121.2
  %.sink.i.us.3 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ga
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us.3, i64 %indvars.iv.next121.2
  store float %i.fy, ptr %i.gb, align 4, !tbaa !15
  %indvars.iv.next121.3 = add nuw nsw i64 %indvars.iv120, 4 ; 2 uses
  %niter170.next.3 = add i64 %niter170, 4         ; 2 uses
  %niter170.ncmp.3 = icmp eq i64 %niter170.next.3, %unroll_iter169
  br i1 %niter170.ncmp.3, label %._crit_edge.loopexit157.unr-lcssa, label %.lr.ph.split.us.split, !llvm.loop !225

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.gc = load i32, ptr %10, align 8, !tbaa !105
  %.fr = freeze i32 %i.gc
  %i.gd = and i32 %.fr, 16384
  %.not100 = icmp eq i32 %i.gd, 0
  br i1 %.not100, label %.lr.ph.split.split.preheader, label %.lr.ph.split.split.us

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count118 = zext nneg i32 %5 to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ge = load ptr, ptr %i.ea, align 8, !tbaa !78 ; 12 uses
  %wide.trip.count113 = zext nneg i32 %5 to i64   ; 7 uses
  br i1 %i.ee, label %.lr.ph.split.split.us.split.us.preheader, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %xtraiter = and i64 %wide.trip.count113, 3      ; 3 uses
  %i.gf = icmp ult i32 %5, 4
  br i1 %i.gf, label %.lr.ph.split.split.us.split.epil.preheader, label %.lr.ph.split.split.us.split.preheader.new

.lr.ph.split.split.us.split.preheader.new:        ; preds = %.lr.ph.split.split.us.split.preheader
  %unroll_iter = and i64 %wide.trip.count113, 2147483644
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %i.gg = ptrtoaddr ptr %i.ge to i64
  %min.iters.check = icmp ult i32 %5, 8
  %i.gh = sub i64 %i.gg, %47
  %diff.check = icmp ugt i64 %i.gh, -32
  %or.cond155 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond155, label %.lr.ph.split.split.us.split.us.preheader159, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.split.us.split.us.preheader
  %n.vec = and i64 %wide.trip.count113, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load = load <4 x float>, ptr %i.gi, align 4, !tbaa !15
  %wide.load140 = load <4 x float>, ptr %i.gj, align 4, !tbaa !15
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store <4 x float> %wide.load, ptr %i.gk, align 4, !tbaa !15
  store <4 x float> %wide.load140, ptr %i.gl, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count113
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.split.us.split.us.preheader159

.lr.ph.split.split.us.split.us.preheader159:      ; preds = %.lr.ph.split.split.us.split.us.preheader, %middle.block
  %indvars.iv110.ph = phi i64 [ 0, %.lr.ph.split.split.us.split.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter163 = and i64 %wide.trip.count113, 3   ; 2 uses
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader159, %.lr.ph.split.split.us.split.us.prol
  %indvars.iv110.prol = phi i64 [ %indvars.iv.next111.prol, %.lr.ph.split.split.us.split.us.prol ], [ %indvars.iv110.ph, %.lr.ph.split.split.us.split.us.preheader159 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.split.us.split.us.prol ], [ 0, %.lr.ph.split.split.us.split.us.preheader159 ]
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv110.prol
  %i.go = load float, ptr %i.gn, align 4, !tbaa !15
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv110.prol
  store float %i.go, ptr %i.gp, align 4, !tbaa !15
  %indvars.iv.next111.prol = add nuw nsw i64 %indvars.iv110.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter163
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol, !llvm.loop !227

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %.lr.ph.split.split.us.split.us.prol, %.lr.ph.split.split.us.split.us.preheader159
  %indvars.iv110.unr = phi i64 [ %indvars.iv110.ph, %.lr.ph.split.split.us.split.us.preheader159 ], [ %indvars.iv.next111.prol, %.lr.ph.split.split.us.split.us.prol ]
  %i.gq = sub nsw i64 %indvars.iv110.ph, %wide.trip.count113
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %._crit_edge, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %.lr.ph.split.split.us.split.us
  %indvars.iv110 = phi i64 [ %indvars.iv.next111.3, %.lr.ph.split.split.us.split.us ], [ %indvars.iv110.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 6 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv110
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !15
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv110
  store float %i.gt, ptr %i.gu, align 4, !tbaa !15
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.next111
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !15
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next111
  store float %i.gw, ptr %i.gx, align 4, !tbaa !15
  %indvars.iv.next111.1 = add nuw nsw i64 %indvars.iv110, 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.next111.1
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !15
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next111.1
  store float %i.gz, ptr %i.ha, align 4, !tbaa !15
  %indvars.iv.next111.2 = add nuw nsw i64 %indvars.iv110, 3 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.next111.2
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !15
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next111.2
  store float %i.hc, ptr %i.hd, align 4, !tbaa !15
  %indvars.iv.next111.3 = add nuw nsw i64 %indvars.iv110, 4 ; 2 uses
  %exitcond114.not.3 = icmp eq i64 %indvars.iv.next111.3, %wide.trip.count113
  br i1 %exitcond114.not.3, label %._crit_edge, label %.lr.ph.split.split.us.split.us, !llvm.loop !228

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split, %.lr.ph.split.split.us.split.preheader.new
  %indvars.iv107 = phi i64 [ 0, %.lr.ph.split.split.us.split.preheader.new ], [ %indvars.iv.next108.3, %.lr.ph.split.split.us.split ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.us.split.preheader.new ], [ %niter.next.3, %.lr.ph.split.split.us.split ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv107
  %i.hf = load float, ptr %i.he, align 4, !tbaa !15
  %i.hg = load i64, ptr %i.eh, align 8
  %i.hh = mul i64 %i.hg, %indvars.iv107
  %.sink.i.us96 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hh
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us96, i64 %indvars.iv107
  store float %i.hf, ptr %i.hi, align 4, !tbaa !15
  %indvars.iv.next108 = or disjoint i64 %indvars.iv107, 1 ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.next108
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !15
  %i.hl = load i64, ptr %i.eh, align 8
  %i.hm = mul i64 %i.hl, %indvars.iv.next108
  %.sink.i.us96.1 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hm
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us96.1, i64 %indvars.iv.next108
  store float %i.hk, ptr %i.hn, align 4, !tbaa !15
  %indvars.iv.next108.1 = or disjoint i64 %indvars.iv107, 2 ; 3 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.next108.1
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !15
  %i.hq = load i64, ptr %i.eh, align 8
  %i.hr = mul i64 %i.hq, %indvars.iv.next108.1
  %.sink.i.us96.2 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hr
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us96.2, i64 %indvars.iv.next108.1
  store float %i.hp, ptr %i.hs, align 4, !tbaa !15
  %indvars.iv.next108.2 = or disjoint i64 %indvars.iv107, 3 ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.next108.2
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !15
  %i.hv = load i64, ptr %i.eh, align 8
  %i.hw = mul i64 %i.hv, %indvars.iv.next108.2
  %.sink.i.us96.3 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hw
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us96.3, i64 %indvars.iv.next108.2
  store float %i.hu, ptr %i.hx, align 4, !tbaa !15
  %indvars.iv.next108.3 = add nuw nsw i64 %indvars.iv107, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit161.unr-lcssa, label %.lr.ph.split.split.us.split, !llvm.loop !225

._crit_edge.loopexit157.unr-lcssa:                ; preds = %.lr.ph.split.us.split
  %lcmp.mod167.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod167.not, label %._crit_edge, label %.lr.ph.split.us.split.epil.preheader

.lr.ph.split.us.split.epil.preheader:             ; preds = %._crit_edge.loopexit157.unr-lcssa, %.lr.ph.split.us.split.preheader
  %indvars.iv120.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next121.3, %._crit_edge.loopexit157.unr-lcssa ]
  %lcmp.mod168.a = icmp ne i64 %xtraiter165, 0
  call void @llvm.assume(i1 %lcmp.mod168.a)
  br label %.lr.ph.split.us.split.epil

.lr.ph.split.us.split.epil:                       ; preds = %.lr.ph.split.us.split.epil, %.lr.ph.split.us.split.epil.preheader
  %indvars.iv120.epil = phi i64 [ %indvars.iv.next121.epil, %.lr.ph.split.us.split.epil ], [ %indvars.iv120.epil.init, %.lr.ph.split.us.split.epil.preheader ] ; 4 uses
  %epil.iter166 = phi i64 [ %epil.iter166.next, %.lr.ph.split.us.split.epil ], [ 0, %.lr.ph.split.us.split.epil.preheader ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv120.epil
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !15
  %i.ia = load i64, ptr %i.eh, align 8
  %i.ib = mul i64 %i.ia, %indvars.iv120.epil
  %.sink.i.us.epil = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ib
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us.epil, i64 %indvars.iv120.epil
  store float %i.hz, ptr %i.ic, align 4, !tbaa !15
  %indvars.iv.next121.epil = add nuw nsw i64 %indvars.iv120.epil, 1
  %epil.iter166.next = add i64 %epil.iter166, 1   ; 2 uses
  %epil.iter166.cmp.not = icmp eq i64 %epil.iter166.next, %xtraiter165
  br i1 %epil.iter166.cmp.not, label %._crit_edge, label %.lr.ph.split.us.split.epil, !llvm.loop !229

._crit_edge.loopexit161.unr-lcssa:                ; preds = %.lr.ph.split.split.us.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.split.us.split.epil.preheader

.lr.ph.split.split.us.split.epil.preheader:       ; preds = %._crit_edge.loopexit161.unr-lcssa, %.lr.ph.split.split.us.split.preheader
  %indvars.iv107.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.split.preheader ], [ %indvars.iv.next108.3, %._crit_edge.loopexit161.unr-lcssa ]
  %lcmp.mod162 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod162)
  br label %.lr.ph.split.split.us.split.epil

.lr.ph.split.split.us.split.epil:                 ; preds = %.lr.ph.split.split.us.split.epil, %.lr.ph.split.split.us.split.epil.preheader
  %indvars.iv107.epil = phi i64 [ %indvars.iv.next108.epil, %.lr.ph.split.split.us.split.epil ], [ %indvars.iv107.epil.init, %.lr.ph.split.split.us.split.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.split.us.split.epil ], [ 0, %.lr.ph.split.split.us.split.epil.preheader ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv107.epil
  %i.ie = load float, ptr %i.id, align 4, !tbaa !15
  %i.if = load i64, ptr %i.eh, align 8
  %i.ig = mul i64 %i.if, %indvars.iv107.epil
  %.sink.i.us96.epil = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ig
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us96.epil, i64 %indvars.iv107.epil
  store float %i.ie, ptr %i.ih, align 4, !tbaa !15
  %indvars.iv.next108.epil = add nuw nsw i64 %indvars.iv107.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.split.us.split.epil, !llvm.loop !230

._crit_edge:                                      ; preds = %._crit_edge.loopexit161.unr-lcssa, %.lr.ph.split.split.us.split.epil, %.lr.ph.split.split.us.split.us.prol.loopexit, %.lr.ph.split.split.us.split.us, %bb.aq, %._crit_edge.loopexit157.unr-lcssa, %.lr.ph.split.us.split.epil, %.lr.ph.split.us.split.us.prol.loopexit, %.lr.ph.split.us.split.us, %middle.block, %middle.block152, %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25
  invoke void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %42, double noundef %i.cl, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.ar unwind label %bb.ax

bb.ac:                                            ; preds = %bb.v
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ad:                                            ; preds = %bb.w
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %bb.x
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.y
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %i.il, %bb.af ], [ %i.ik, %bb.ae ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %30) #25
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn, %bb.ag ], [ %i.ij, %bb.ad ]
end_hunk_0
