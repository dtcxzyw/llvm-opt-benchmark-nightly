inline.NumInlined: 1023
inline.NumDeleted: 321
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK2cv3dnn12GRULayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !84
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 116
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 124
  %i.av = load i32, ptr %i.au, align 4, !tbaa !84 ; 2 uses
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !84 ; 2 uses
  %i.ax = load i32, ptr %i.at, align 4, !tbaa !84
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %_ZNK2cv8MatShapeixEm.exit132, label %bb.p

_ZNK2cv8MatShapeixEm.exit132:                     ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !84 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !84
  %i.bd = icmp eq i32 %i.ba, %i.bc
  %i.be = mul nsw i32 %i.av, 3
  %i.bf = icmp eq i32 %i.ba, %i.be
  %or.cond = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond, label %bb.u, label %bb.p

bb.p:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit132, %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZNK2cv3dnn12GRULayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.6, i32 noundef 148) #22
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.t:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %19, align 8, !tbaa !43   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.t
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !42
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.s
  %.pn91 = phi { ptr, i32 } [ %i.bg, %bb.s ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %i.bh, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %common.resume

bb.u:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit132
  %i.bn = icmp sgt i32 %i.aw, 1
  br label %bb.ah

_ZN2cv3dnn12GRULayerImpl17hasRuntimeWeightsINS_8MatShapeEEEbRKSt6vectorIT_SaIS5_EE.exit.thread: ; preds = %bb.g, %bb.h, %_ZN2cv3dnn12GRULayerImpl17hasRuntimeWeightsINS_8MatShapeEEEbRKSt6vectorIT_SaIS5_EE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !57 ; 5 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 208
  %i.bw = icmp ugt i64 %i.bv, 1
  br i1 %i.bw, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %_ZN2cv3dnn12GRULayerImpl17hasRuntimeWeightsINS_8MatShapeEEEbRKSt6vectorIT_SaIS5_EE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZNK2cv3dnn12GRULayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.6, i32 noundef 153) #22
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

bb.z:                                             ; preds = %bb.w
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %21, align 8, !tbaa !43   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.z
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !42
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %bb.y
  %.pn87 = phi { ptr, i32 } [ %i.bx, %bb.y ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %i.by, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %common.resume

bb.aa:                                            ; preds = %_ZN2cv3dnn12GRULayerImpl17hasRuntimeWeightsINS_8MatShapeEEEbRKSt6vectorIT_SaIS5_EE.exit.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !83
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %_ZNK2cv8MatShapeixEm.exit155, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.59, i32 noundef 103) #22
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %13, align 8, !tbaa !43   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i152: ; preds = %bb.ad
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !42
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i153: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit155:                     ; preds = %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %i.br, i64 280
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !83
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %_ZNK2cv8MatShapeixEm.exit161, label %bb.ae

bb.ae:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit155
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.59, i32 noundef 103) #22
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !43   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158: ; preds = %bb.ag
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !42
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i159: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit161:                     ; preds = %_ZNK2cv8MatShapeixEm.exit155
  %i.cw = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !84
  %i.cy = getelementptr inbounds nuw i8, ptr %i.br, i64 296
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !84
  %i.da = trunc nuw i8 %i.u to i1
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit161, %bb.u
  %i.db = phi i1 [ true, %bb.u ], [ false, %_ZNK2cv8MatShapeixEm.exit161 ] ; 2 uses
  %.084 = phi i1 [ %i.bn, %bb.u ], [ %i.da, %_ZNK2cv8MatShapeixEm.exit161 ] ; 4 uses
  %.083 = phi i32 [ %i.ar, %bb.u ], [ %i.cz, %_ZNK2cv8MatShapeixEm.exit161 ]
  %.082 = phi i32 [ %i.av, %bb.u ], [ %i.cx, %_ZNK2cv8MatShapeixEm.exit161 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %23)
  %i.dc = load i32, ptr %i.h, align 4, !tbaa !83  ; 6 uses
  %narrow.i162 = call i32 @llvm.smax.i32(i32 %i.dc, i32 0)
  %i.dd = icmp sgt i32 %i.dc, 1
  br i1 %i.dd, label %.preheader.i, label %bb.al

.preheader.i:                                     ; preds = %bb.ah
  %.not218 = icmp eq i32 %i.dc, 2
  br i1 %.not218, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 9 uses
  %i.df = add nsw i32 %i.dc, -2
  %i.dg = add nsw i32 %narrow.i162, -3
  %.not33.not.i = icmp ugt i32 %i.df, %i.dg
  br i1 %.not33.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.ai

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.lr.ph.i
  %umax = zext nneg i32 %i.dc to i64
  %i.dh = add nsw i64 %umax, -2                   ; 2 uses
  %xtraiter = and i64 %i.dh, 7                    ; 3 uses
  %i.di = add nsw i32 %i.dc, -3
  %i.dj = icmp ult i32 %i.di, 7
  br i1 %i.dj, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.dh, -8
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.02128.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.ew, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !84
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul i64 %.02128.i, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !84
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul i64 %i.dn, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !84
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %i.ds, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !84
  %i.eb = sext i32 %i.ea to i64
  %i.ec = mul i64 %i.dx, %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !84
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul i64 %i.ec, %i.eg
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 20
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !84
  %i.el = sext i32 %i.ek to i64
  %i.em = mul i64 %i.eh, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !84
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul i64 %i.em, %i.eq
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 28
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !84
  %i.ev = sext i32 %i.eu to i64
  %i.ew = mul i64 %i.er, %i.ev                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !195

bb.ai:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.59, i32 noundef 103) #22
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ex = landingpad { ptr, i32 }
          cleanup
  %i.ey = load ptr, ptr %9, align 8, !tbaa !43    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ak
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !42
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %common.resume

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %.02128.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.ew, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod262 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod262)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.02128.i.epil = phi i64 [ %i.fg, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.02128.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.epil
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !84
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul i64 %.02128.i.epil, %i.ff           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !196

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %.preheader.i
  %.021.lcssa.i = phi i64 [ 1, %.preheader.i ], [ %i.ew, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ], [ %i.fg, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.fh = sext i32 %.083 to i64
  %i.fi = icmp eq i64 %.021.lcssa.i, %i.fh
  br i1 %i.fi, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.71, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZNK2cv3dnn12GRULayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.6, i32 noundef 161) #22
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.ap:                                            ; preds = %bb.am
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load ptr, ptr %24, align 8, !tbaa !43   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.ap
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !42
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.ao
  %.pn94 = phi { ptr, i32 } [ %i.fj, %bb.ao ], [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.fk, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %common.resume

bb.aq:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 4 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !55
  %i.fs = icmp eq i32 %i.fr, 1
  %.in.v = select i1 %i.fs, i64 12, i64 16
  %.in = getelementptr inbounds nuw i8, ptr %i.h, i64 %.in.v
  %i.ft = load i32, ptr %.in, align 4, !tbaa !84  ; 11 uses
  call void @_ZN2cv8MatShape5clearEv(ptr noundef nonnull align 4 dereferenceable(52) %23)
  %i.fu = load i32, ptr %i.fq, align 4, !tbaa !55
  %i.fv = icmp eq i32 %i.fu, 1
  br i1 %i.fv, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %23, i32 noundef %i.ft)
  %i.fw = load i32, ptr %i.h, align 4, !tbaa !83
  %i.fx = icmp sgt i32 %i.fw, 1
  br i1 %i.fx, label %_ZNK2cv8MatShapeixEm.exit183, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.59, i32 noundef 103) #22
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.fy = landingpad { ptr, i32 }
          cleanup
  %i.fz = load ptr, ptr %7, align 8, !tbaa !43    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180: ; preds = %bb.au
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !42
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #20
end_hunk_0
