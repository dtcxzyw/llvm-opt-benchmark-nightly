Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/recurrent_layers?download=true
inline.NumInlined: 1415
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK2cv3dnn13LSTMLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76 ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn52.pn.pn, %bb.bl ], [ %i.ij, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i118 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !107 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 280
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !106
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %_ZNK2cv8MatShapeixEm.exit65, label %bb.s

bb.s:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.59, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.50, i32 noundef 103) #25
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %9, align 8, !tbaa !47    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62: ; preds = %bb.u
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !46
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit65:                      ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 296
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !107 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 172
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %17, ptr noundef nonnull align 4 dereferenceable(52) %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %18)
  %i.bj = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %17)
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit65
  %i.bl = load i32, ptr %17, align 4, !tbaa !106  ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit

.lr.ph.i:                                         ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 9 uses
  %i.bo = zext nneg i32 %i.bl to i64              ; 2 uses
  %xtraiter = and i64 %i.bo, 7                    ; 3 uses
  %i.bp = icmp ult i32 %i.bl, 8
  br i1 %i.bp, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bo, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.02128.i = phi i64 [ 1, %.lr.ph.i.new ], [ %i.dc, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !107
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul i64 %.02128.i, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !107
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !107
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !107
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !107
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul i64 %i.ci, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !107
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul i64 %i.cn, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !107
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 28
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !107
  %i.db = sext i32 %i.da to i64
  %i.dc = mul i64 %i.cx, %i.db                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !2

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %.02128.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %i.dc, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod191)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.02128.i.epil = phi i64 [ %i.dg, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.02128.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i.epil
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !107
  %i.df = sext i32 %i.de to i64
  %i.dg = mul i64 %.02128.i.epil, %i.df           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !270

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.v
  %.021.lcssa.i = phi i64 [ 1, %bb.v ], [ %i.dc, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ], [ %i.dg, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.dh = sext i32 %i.aw to i64
  %i.di = icmp eq i64 %.021.lcssa.i, %i.dh
  br i1 %i.di, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.76, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZNK2cv3dnn13LSTMLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.6, i32 noundef 306) #25
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.aa:                                            ; preds = %bb.x
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %19, align 8, !tbaa !47   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.aa
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !46
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.z
  %.pn48 = phi { ptr, i32 } [ %i.dj, %bb.z ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.dk, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.bl

bb.ab:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit65
  call void @_ZN2cv8MatShape6assignEii(ptr noundef nonnull align 4 dereferenceable(52) %17, i32 noundef 1, i32 noundef %i.aw)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !65, !range !59, !noundef !60
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = load i32, ptr %i.aa, align 4, !tbaa !106 ; 5 uses
  %narrow.i69 = call i32 @llvm.smax.i32(i32 %i.dt, i32 0) ; 5 uses
  %spec.select.i70 = zext nneg i32 %narrow.i69 to i64 ; 2 uses
  %30 = icmp sgt i32 %i.dt, 1                     ; 2 uses
  br i1 %i.ds, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %bb.ac
  br i1 %30, label %.preheader.i, label %bb.ah

.preheader.i:                                     ; preds = %bb.ad
  %.not = icmp eq i32 %i.dt, 2
  br i1 %.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit83, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.preheader.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.aa, i64 12 ; 9 uses
  %i.dv = add nsw i32 %i.dt, -2
  %i.dw = add nsw i32 %narrow.i69, -3
  %.not33.not.i74 = icmp ugt i32 %i.dv, %i.dw
  br i1 %.not33.not.i74, label %_ZNK2cv8MatShapeixEm.exit.i79.preheader, label %bb.ae

_ZNK2cv8MatShapeixEm.exit.i79.preheader:          ; preds = %.lr.ph.i73
  %i.dx = add nsw i64 %spec.select.i70, -2        ; 2 uses
  %xtraiter199 = and i64 %i.dx, 7                 ; 3 uses
  %i.dy = add nsw i32 %narrow.i69, -3
  %i.dz = icmp ult i32 %i.dy, 7
  br i1 %i.dz, label %_ZNK2cv8MatShapeixEm.exit.i79.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i79.preheader.new

_ZNK2cv8MatShapeixEm.exit.i79.preheader.new:      ; preds = %_ZNK2cv8MatShapeixEm.exit.i79.preheader
  %unroll_iter204 = and i64 %i.dx, -8
  br label %_ZNK2cv8MatShapeixEm.exit.i79

_ZNK2cv8MatShapeixEm.exit.i79:                    ; preds = %_ZNK2cv8MatShapeixEm.exit.i79, %_ZNK2cv8MatShapeixEm.exit.i79.preheader.new
  %indvars.iv.i80 = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit.i79.preheader.new ], [ %indvars.iv.next.i82.7, %_ZNK2cv8MatShapeixEm.exit.i79 ] ; 9 uses
  %.02128.i81 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i79.preheader.new ], [ %i.fm, %_ZNK2cv8MatShapeixEm.exit.i79 ]
  %niter205 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i79.preheader.new ], [ %niter205.next.7, %_ZNK2cv8MatShapeixEm.exit.i79 ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i80
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !107
  %i.ec = sext i32 %i.eb to i64
  %i.ed = mul i64 %.02128.i81, %i.ec
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i80
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !107
  %i.eh = sext i32 %i.eg to i64
  %i.ei = mul i64 %i.ed, %i.eh
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i80
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !107
  %i.em = sext i32 %i.el to i64
  %i.en = mul i64 %i.ei, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i80
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !107
  %i.er = sext i32 %i.eq to i64
  %i.es = mul i64 %i.en, %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i80
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !107
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul i64 %i.es, %i.ew
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i80
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 20
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !107
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul i64 %i.ex, %i.fb
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i80
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !107
  %i.fg = sext i32 %i.ff to i64
  %i.fh = mul i64 %i.fc, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i80
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 28
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !107
  %i.fl = sext i32 %i.fk to i64
  %i.fm = mul i64 %i.fh, %i.fl                    ; 3 uses
  %indvars.iv.next.i82.7 = add nuw nsw i64 %indvars.iv.i80, 8 ; 2 uses
  %niter205.next.7 = add i64 %niter205, 8         ; 2 uses
  %niter205.ncmp.7 = icmp eq i64 %niter205.next.7, %unroll_iter204
  br i1 %niter205.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit83.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i79, !llvm.loop !2

bb.ae:                                            ; preds = %.lr.ph.i73
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.59, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.50, i32 noundef 103) #25
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75: ; preds = %bb.ag
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !46
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit83.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i79
  %lcmp.mod201.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod201.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit83, label %_ZNK2cv8MatShapeixEm.exit.i79.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i79.epil.preheader:     ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit83.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i79.preheader
  %indvars.iv.i80.epil.init = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit.i79.preheader ], [ %indvars.iv.next.i82.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit83.loopexit.unr-lcssa ]
  %.02128.i81.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i79.preheader ], [ %i.fm, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit83.loopexit.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter199, 0
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %_ZNK2cv8MatShapeixEm.exit.i79.epil

_ZNK2cv8MatShapeixEm.exit.i79.epil:               ; preds = %_ZNK2cv8MatShapeixEm.exit.i79.epil, %_ZNK2cv8MatShapeixEm.exit.i79.epil.preheader
  %indvars.iv.i80.epil = phi i64 [ %indvars.iv.next.i82.epil, %_ZNK2cv8MatShapeixEm.exit.i79.epil ], [ %indvars.iv.i80.epil.init, %_ZNK2cv8MatShapeixEm.exit.i79.epil.preheader ] ; 2 uses
  %.02128.i81.epil = phi i64 [ %i.fw, %_ZNK2cv8MatShapeixEm.exit.i79.epil ], [ %.02128.i81.epil.init, %_ZNK2cv8MatShapeixEm.exit.i79.epil.preheader ]
  %epil.iter200 = phi i64 [ %epil.iter200.next, %_ZNK2cv8MatShapeixEm.exit.i79.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i79.epil.preheader ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i80.epil
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !107
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul i64 %.02128.i81.epil, %i.fv         ; 2 uses
  %indvars.iv.next.i82.epil = add nuw nsw i64 %indvars.iv.i80.epil, 1
  %epil.iter200.next = add i64 %epil.iter200, 1   ; 2 uses
  %epil.iter200.cmp.not = icmp eq i64 %epil.iter200.next, %xtraiter199
  br i1 %epil.iter200.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit83, label %_ZNK2cv8MatShapeixEm.exit.i79.epil, !llvm.loop !271

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit83: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit83.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i79.epil, %.preheader.i
  %.021.lcssa.i72 = phi i64 [ 1, %.preheader.i ], [ %i.fm, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit83.loopexit.unr-lcssa ], [ %i.fw, %_ZNK2cv8MatShapeixEm.exit.i79.epil ]
  %i.fx = sext i32 %i.bh to i64
  %i.fy = icmp eq i64 %.021.lcssa.i72, %i.fx
  br i1 %i.fy, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit83, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.77, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZNK2cv3dnn13LSTMLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.6, i32 noundef 313) #25
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.al:                                            ; preds = %bb.ai
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load ptr, ptr %21, align 8, !tbaa !47   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.al
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !46
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.ak
  %.pn52 = phi { ptr, i32 } [ %i.fz, %bb.ak ], [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.ga, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.bl

bb.am:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit83
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !63
  %i.gi = icmp eq i32 %i.gh, 0
  %i.gj = getelementptr inbounds nuw i8, ptr %i.aa, i64 12 ; 2 uses
  br i1 %i.gi, label %_ZNK2cv8MatShapeixEm.exit92, label %_ZNK2cv8MatShapeixEm.exit108

_ZNK2cv8MatShapeixEm.exit92:                      ; preds = %bb.am
  %i.gk = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !107
  %i.gm = load i32, ptr %i.gj, align 4, !tbaa !107
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %18, i32 noundef %i.gm)
  br label %bb.ax

_ZNK2cv8MatShapeixEm.exit108:                     ; preds = %bb.am
  %i.gn = load i32, ptr %i.gj, align 4, !tbaa !107
  %i.go = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !107
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %18, i32 noundef %i.gp)
  br label %bb.ax

bb.an:                                            ; preds = %bb.ac
  br i1 %30, label %.lr.ph.i115, label %bb.ar

.lr.ph.i115:                                      ; preds = %bb.an
  %i.gq = getelementptr inbounds nuw i8, ptr %i.aa, i64 12 ; 10 uses
  %i.gr = add nsw i32 %i.dt, -1
  %i.gs = add nsw i32 %narrow.i69, -2
  %.not33.not.i116 = icmp ugt i32 %i.gr, %i.gs
  br i1 %.not33.not.i116, label %_ZNK2cv8MatShapeixEm.exit.i121.preheader, label %bb.ao

_ZNK2cv8MatShapeixEm.exit.i121.preheader:         ; preds = %.lr.ph.i115
  %i.gt = add nsw i64 %spec.select.i70, -1        ; 2 uses
  %xtraiter192 = and i64 %i.gt, 7                 ; 3 uses
  %i.gu = add nsw i32 %narrow.i69, -2
  %i.gv = icmp ult i32 %i.gu, 7
  br i1 %i.gv, label %_ZNK2cv8MatShapeixEm.exit.i121.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i121.preheader.new

_ZNK2cv8MatShapeixEm.exit.i121.preheader.new:     ; preds = %_ZNK2cv8MatShapeixEm.exit.i121.preheader
  %unroll_iter197 = and i64 %i.gt, -8
  br label %_ZNK2cv8MatShapeixEm.exit.i121

_ZNK2cv8MatShapeixEm.exit.i121:                   ; preds = %_ZNK2cv8MatShapeixEm.exit.i121, %_ZNK2cv8MatShapeixEm.exit.i121.preheader.new
  %indvars.iv.i122 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i121.preheader.new ], [ %indvars.iv.next.i124.7, %_ZNK2cv8MatShapeixEm.exit.i121 ] ; 9 uses
  %.02128.i123 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i121.preheader.new ], [ %i.ii, %_ZNK2cv8MatShapeixEm.exit.i121 ]
  %niter198 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i121.preheader.new ], [ %niter198.next.7, %_ZNK2cv8MatShapeixEm.exit.i121 ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.i122
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !107
  %i.gy = sext i32 %i.gx to i64
  %i.gz = mul i64 %.02128.i123, %i.gy
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.i122
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !107
  %i.hd = sext i32 %i.hc to i64
  %i.he = mul i64 %i.gz, %i.hd
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.i122
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !107
  %i.hi = sext i32 %i.hh to i64
  %i.hj = mul i64 %i.he, %i.hi
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.i122
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !107
  %i.hn = sext i32 %i.hm to i64
  %i.ho = mul i64 %i.hj, %i.hn
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.i122
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !107
  %i.hs = sext i32 %i.hr to i64
  %i.ht = mul i64 %i.ho, %i.hs
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.i122
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 20
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !107
  %i.hx = sext i32 %i.hw to i64
  %i.hy = mul i64 %i.ht, %i.hx
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.i122
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !107
  %i.ic = sext i32 %i.ib to i64
  %i.id = mul i64 %i.hy, %i.ic
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.i122
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 28
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !107
  %i.ih = sext i32 %i.ig to i64
  %i.ii = mul i64 %i.id, %i.ih                    ; 3 uses
  %indvars.iv.next.i124.7 = add nuw nsw i64 %indvars.iv.i122, 8 ; 2 uses
  %niter198.next.7 = add i64 %niter198, 8         ; 2 uses
  %niter198.ncmp.7 = icmp eq i64 %niter198.next.7, %unroll_iter197
  br i1 %niter198.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit125.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i121, !llvm.loop !2

bb.ao:                                            ; preds = %.lr.ph.i115
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.59, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.50, i32 noundef 103) #25
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ij = landingpad { ptr, i32 }
          cleanup
  %i.ik = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i117: ; preds = %bb.aq
  %i.in = load i64, ptr %i.il, align 8, !tbaa !46
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i118: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit125.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i121
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit125, label %_ZNK2cv8MatShapeixEm.exit.i121.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i121.epil.preheader:    ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit125.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i121.preheader
  %indvars.iv.i122.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i121.preheader ], [ %indvars.iv.next.i124.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit125.unr-lcssa ]
  %.02128.i123.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i121.preheader ], [ %i.ii, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit125.unr-lcssa ]
  %lcmp.mod196 = icmp ne i64 %xtraiter192, 0
  call void @llvm.assume(i1 %lcmp.mod196)
  br label %_ZNK2cv8MatShapeixEm.exit.i121.epil

_ZNK2cv8MatShapeixEm.exit.i121.epil:              ; preds = %_ZNK2cv8MatShapeixEm.exit.i121.epil, %_ZNK2cv8MatShapeixEm.exit.i121.epil.preheader
  %indvars.iv.i122.epil = phi i64 [ %indvars.iv.next.i124.epil, %_ZNK2cv8MatShapeixEm.exit.i121.epil ], [ %indvars.iv.i122.epil.init, %_ZNK2cv8MatShapeixEm.exit.i121.epil.preheader ] ; 2 uses
  %.02128.i123.epil = phi i64 [ %i.is, %_ZNK2cv8MatShapeixEm.exit.i121.epil ], [ %.02128.i123.epil.init, %_ZNK2cv8MatShapeixEm.exit.i121.epil.preheader ]
  %epil.iter193 = phi i64 [ %epil.iter193.next, %_ZNK2cv8MatShapeixEm.exit.i121.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i121.epil.preheader ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.i122.epil
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !107
  %i.ir = sext i32 %i.iq to i64
  %i.is = mul i64 %.02128.i123.epil, %i.ir        ; 2 uses
  %indvars.iv.next.i124.epil = add nuw nsw i64 %indvars.iv.i122.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit125, label %_ZNK2cv8MatShapeixEm.exit.i121.epil, !llvm.loop !272

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit125: ; preds = %_ZNK2cv8MatShapeixEm.exit.i121.epil, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit125.unr-lcssa
  %.lcssa188 = phi i64 [ %i.ii, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit125.unr-lcssa ], [ %i.is, %_ZNK2cv8MatShapeixEm.exit.i121.epil ]
  %i.it = sext i32 %i.bh to i64
  %i.iu = icmp eq i64 %.lcssa188, %i.it
  br i1 %i.iu, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit125, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZNK2cv3dnn13LSTMLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.6, i32 noundef 324) #25
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %bb.ar
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.av:                                            ; preds = %bb.as
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = load ptr, ptr %23, align 8, !tbaa !47   ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.av
  %i.ja = load i64, ptr %i.iy, align 8, !tbaa !46
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.jb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.au
  %.pn50 = phi { ptr, i32 } [ %i.iv, %bb.au ], [ %i.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %i.iw, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.bl

bb.aw:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit125
  %i.jc = load i32, ptr %i.gq, align 4, !tbaa !107
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit92, %_ZNK2cv8MatShapeixEm.exit108, %bb.aw
  %.0 = phi i32 [ %i.gl, %_ZNK2cv8MatShapeixEm.exit92 ], [ %i.gn, %_ZNK2cv8MatShapeixEm.exit108 ], [ %i.jc, %bb.aw ] ; 6 uses
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %18, i32 noundef %.0)
  %i.jd = call noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %18)
  %i.je = call noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %17)
  %i.jf = call noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %17)
  call void @_ZN2cv8MatShape6insertIPiEEvS2_T_S3_(ptr noundef nonnull align 4 dereferenceable(52) %18, ptr noundef %i.jd, ptr noundef %i.je, ptr noundef %i.jf)
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 291 ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !51, !range !59, !noundef !60
  %i.ji = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52) %18) ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !107
  %i.jk = zext nneg i8 %i.jh to i32
  %i.jl = shl i32 %i.jj, %i.jk
  store i32 %i.jl, ptr %i.ji, align 4, !tbaa !107
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %18)
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 277
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !66, !range !59, !noundef !60
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.ay, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit140

bb.ay:                                            ; preds = %bb.ax
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !49
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !49
  %i.jt = icmp eq ptr %i.jq, %i.js
  br i1 %i.jt, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ju = load i8, ptr %i.jg, align 1, !tbaa !51, !range !59, !noundef !60
  %narrow = add nuw nsw i8 %i.ju, 1
  %i.jv = zext nneg i8 %narrow to i32
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i32 %i.jv, ptr %i.e, align 16, !tbaa !107
  %i.jy = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.0, ptr %i.jy, align 4, !tbaa !107
  %i.jz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.jx, ptr %i.jz, align 8, !tbaa !107
  call void @_ZN2cv8MatShape5clearEv(ptr noundef nonnull align 4 dereferenceable(52) %25)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  call void @_ZN2cv8MatShape7assign_EPKiS2_(ptr noundef nonnull align 4 dereferenceable(52) %25, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ka)
end_hunk_0
