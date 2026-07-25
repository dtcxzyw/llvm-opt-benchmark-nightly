inline.NumInlined: 1083
inline.NumDeleted: 539
begin_hunk_0_@_ZN5arrow8internal29MakeSparseCSFTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE:bb.a

bb.q:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.r:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !51, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20, !noalias !23
  %i.bh = sext i32 %i.aa to i64                   ; 5 uses
  %i.bi = mul nsw i64 %i.bg, %i.bh
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.27") align 8 %15, i64 noundef %i.bi, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %15, align 8, !tbaa !26, !noalias !23
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.w, label %bb.t, !prof !50

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %30, align 8, !tbaa !26, !alias.scope !23
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %_ZN5arrow6StatusC2ERKS0_.exit236.i unwind label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.v:                                             ; preds = %bb.t
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20, !noalias !23
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !59, !noalias !60 ; 2 uses
  store i64 %i.bo, ptr %16, align 8, !tbaa !59, !alias.scope !61, !noalias !23
  store ptr null, ptr %i.bn, align 8, !tbaa !59, !noalias !60
  %.cast.i = inttoptr i64 %i.bo to ptr            ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.cast.i, i64 9
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !62, !range !70, !noundef !71
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %.cast.i, i64 8
  %i.bt = load i8, ptr %i.bs, align 8, !range !70
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = select i1 %i.br, i1 %i.bu, i1 false, !prof !50
  %i.bw = getelementptr inbounds nuw i8, ptr %.cast.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = select i1 %i.bv, ptr %i.bx, ptr null, !prof !50
  %i.bz = icmp ugt i64 %i.az, 1152921504606846975
  br i1 %i.bz, label %bb.x, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc.i unwind label %bb.ac

.noexc.i:                                         ; preds = %bb.x
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.w
  %.not.i.i.i.i237.i = icmp eq i64 %i.az, 0       ; 2 uses
  br i1 %.not.i.i.i.i237.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ca = shl nuw nsw i64 %i.az, 3                ; 9 uses
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #22
          to label %.noexc238.i unwind label %bb.ac ; 6 uses

.noexc238.i:                                      ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cb, i8 0, i64 %i.ca, i1 false), !tbaa !51
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.az ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !23
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #22
          to label %.noexc247.i unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit403.thread.i ; 4 uses

.noexc247.i:                                      ; preds = %.noexc238.i
  store ptr %i.ce, ptr %17, align 8, !tbaa !49, !noalias !23
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.az
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !72, !noalias !23
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ce, i8 0, i64 %i.ca, i1 false), !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ca
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !46, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20, !noalias !23
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #22
          to label %.noexc257.i unwind label %bb.ad ; 4 uses

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !23
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20, !noalias !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !noalias !23
  br label %.loopexit533.i

.noexc257.i:                                      ; preds = %.noexc247.i
  store ptr %i.cj, ptr %18, align 8, !tbaa !49, !noalias !23
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.az
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !72, !noalias !23
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cj, i8 -1, i64 %i.ca, i1 false), !tbaa !51
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ca
  br label %.loopexit533.i

.loopexit533.i:                                   ; preds = %.noexc257.i, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i
  %i.co = phi ptr [ %i.ck, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.ci, %.noexc257.i ]
  %.sroa.18.0471507.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.cc, %.noexc257.i ] ; 3 uses
  %.sroa.0439.0493505.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.cb, %.noexc257.i ] ; 15 uses
  %.0.i.i.i.i.i.i.i497503.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.cd, %.noexc257.i ] ; 3 uses
  %.0.i.i.i.i.i.i.i254.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.cn, %.noexc257.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.0.i.i.i.i.i.i.i254.i, ptr %i.cp, align 8, !tbaa !46, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20, !noalias !23
  %i.cq = add nsw i64 %i.az, -1                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20, !noalias !23
  invoke void @_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %i.cq, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %.loopexit533.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20, !noalias !23
  invoke void @_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %i.az, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !23
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !73 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 9
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !62, !range !70, !noundef !71
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = select i1 %i.cv, ptr %i.cx, ptr null, !prof !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !23
  %i.cz = icmp slt i32 %i.ay, 2
  br i1 %i.cz, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5arrow6Status8FromArgsIJRA19_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %30, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(19) @.str)
          to label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i unwind label %bb.ag

bb.ac:                                            ; preds = %bb.y, %bb.x
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit406.i

_ZNSt6vectorIlSaIlEED2Ev.exit403.thread.i:        ; preds = %.noexc238.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !23
  br label %bb.et

bb.ad:                                            ; preds = %.noexc247.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit400.i

bb.ae:                                            ; preds = %.loopexit533.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !23
  br label %bb.eq

bb.af:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !23
  br label %bb.ep

bb.ag:                                            ; preds = %.critedge222.i, %bb.ab
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.ah:                                            ; preds = %bb.aa
  %i.dg = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %.preheader.i unwind label %bb.ai ; 2 uses

.preheader.i:                                     ; preds = %bb.ah
  %i.dh = icmp slt i64 %i.dg, 1
  br i1 %i.dh, label %.critedge219.preheader.i, label %.lr.ph552.i

.lr.ph552.i:                                      ; preds = %.preheader.i
  %i.di = ashr i64 %i.bh, 2                       ; 2 uses
  %i.dj = icmp sgt i64 %i.di, 0
  %i.dk = icmp slt i32 %i.aa, 1
  %.not.i260.i = icmp eq i32 %i.aa, 1
  %i.dl = zext nneg i32 %i.aa to i64
  %i.dm = sext i32 %i.l to i64                    ; 6 uses
  %i.dn = and i64 %i.bh, -4
  %scevgep.i = getelementptr i8, ptr %i.cy, i64 %i.dn
  %i.do = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %.pre577.i = load ptr, ptr %17, align 8, !tbaa !49, !noalias !23
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.aj

.critedge219.preheader.i:                         ; preds = %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i, %.preheader.i
  %.not553.i = icmp sgt i64 %i.az, 1
  br i1 %.not553.i, label %.lr.ph555.i, label %.critedge222.i

.lr.ph555.i:                                      ; preds = %.critedge219.preheader.i
  %i.dq = sext i32 %i.l to i64                    ; 3 uses
  br label %bb.bh

bb.ai:                                            ; preds = %bb.ah
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.aj:                                            ; preds = %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i, %.lr.ph552.i
  %.val580.i = phi ptr [ %.pre577.i, %.lr.ph552.i ], [ %.val.i, %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i ] ; 6 uses
  %.0163550.i = phi ptr [ %i.by, %.lr.ph552.i ], [ %.1164.i, %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i ] ; 6 uses
  %.0166549.i = phi i64 [ %i.dg, %.lr.ph552.i ], [ %i.iz, %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i ] ; 2 uses
  %i.ds = load ptr, ptr %i.co, align 8, !tbaa !46, !noalias !23
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %.val580.i to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 3                 ; 5 uses
  %i.dx = icmp sgt i64 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i.i.i, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.aj
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !49 ; 2 uses
  %min.iters.check = icmp ult i64 %i.dw, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %i.dw, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ef, %vector.body ]
  %vec.phi149 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.eg, %vector.body ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.val580.i, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load = load <2 x i64>, ptr %i.dz, align 8, !tbaa !51
  %wide.load150 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !51
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load151 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !51
  %wide.load152 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !51
  %i.ed = mul nsw <2 x i64> %wide.load151, %wide.load
  %i.ee = mul nsw <2 x i64> %wide.load152, %wide.load150
  %i.ef = add <2 x i64> %i.ed, %vec.phi           ; 2 uses
  %i.eg = add <2 x i64> %i.ee, %vec.phi149        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.eg, %i.ef
  %i.ei = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %.011.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  %.0910.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ei, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011.i.i.i = phi i64 [ %i.ep, %scalar.ph ], [ %.011.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0910.i.i.i = phi i64 [ %i.eo, %scalar.ph ], [ %.0910.i.i.i.ph, %scalar.ph.preheader ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.val580.i, i64 %.011.i.i.i
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !51
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.011.i.i.i
  %i.em = load i64, ptr %i.el, align 8, !tbaa !51
  %i.en = mul nsw i64 %i.em, %i.ek
  %i.eo = add nsw i64 %i.en, %.0910.i.i.i         ; 2 uses
  %i.ep = add nuw nsw i64 %.011.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ep, %i.dw
  br i1 %exitcond.not.i.i.i, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i, label %scalar.ph, !llvm.loop !78

_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i: ; preds = %scalar.ph, %middle.block, %bb.aj
  %.09.lcssa.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.ei, %middle.block ], [ %i.eo, %scalar.ph ] ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.cy, i64 %.09.lcssa.i.i.i ; 5 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.bh ; 2 uses
  %i.es = ptrtoint ptr %i.er to i64
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i
  %scevgep571.i = getelementptr i8, ptr %scevgep.i, i64 %.09.lcssa.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.an, %.lr.ph.i.i.i.i.i.preheader.i
  %.047.i.i.i.i.i.i = phi i64 [ %i.fb, %bb.an ], [ %i.di, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.02946.i.i.i.i.i.i = phi ptr [ %i.fa, %bb.an ], [ %i.eq, %.lr.ph.i.i.i.i.i.preheader.i ] ; 9 uses
  %i.et = load i8, ptr %.02946.i.i.i.i.i.i, align 1, !tbaa !39
  %.not523.i = icmp eq i8 %i.et, 0
  br i1 %.not523.i, label %bb.ak, label %.loopexit.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !39
  %.not524.i = icmp eq i8 %i.ev, 0
  br i1 %.not524.i, label %bb.al, label %.loopexit.i.loopexit.split.loop.exit135

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !39
  %.not525.i = icmp eq i8 %i.ex, 0
  br i1 %.not525.i, label %bb.am, label %.loopexit.i.loopexit.split.loop.exit133

bb.am:                                            ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !39
  %.not526.i = icmp eq i8 %i.ez, 0
  br i1 %.not526.i, label %bb.an, label %.loopexit.i.loopexit.split.loop.exit

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 4
  %i.fb = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.fc = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !79

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.an, %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.eq, %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i ], [ %scevgep571.i, %bb.an ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i to i64
  %i.fd = sub i64 %i.es, %.pre-phi.i.i.i.i.i.i
  switch i64 %i.fd, label %.critedge217.i [
    i64 3, label %bb.ao
    i64 2, label %bb.aq
    i64 1, label %bb.as
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fe = load i8, ptr %.029.lcssa.i.i.i.i.i.i, align 1, !tbaa !39
  %.not527.i = icmp eq i8 %i.fe, 0
  br i1 %.not527.i, label %bb.ap, label %.loopexit.i

bb.ap:                                            ; preds = %bb.ao
  %i.ff = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.ff, %bb.ap ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.fg = load i8, ptr %.1.i.i.i.i.i.i, align 1, !tbaa !39
  %.not528.i = icmp eq i8 %i.fg, 0
  br i1 %.not528.i, label %bb.ar, label %.loopexit.i

bb.ar:                                            ; preds = %bb.aq
  %i.fh = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.fh, %bb.ar ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.fi = load i8, ptr %.2.i.i.i.i.i.i, align 1, !tbaa !39
  %.not529.i = icmp eq i8 %i.fi, 0
  br i1 %.not529.i, label %.critedge217.i, label %.loopexit.i

.loopexit.i.loopexit.split.loop.exit:             ; preds = %bb.am
  %i.fj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  br label %.loopexit.i

.loopexit.i.loopexit.split.loop.exit133:          ; preds = %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  br label %.loopexit.i

.loopexit.i.loopexit.split.loop.exit135:          ; preds = %bb.ak
  %i.fl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i, %.loopexit.i.loopexit.split.loop.exit, %.loopexit.i.loopexit.split.loop.exit133, %.loopexit.i.loopexit.split.loop.exit135, %bb.as, %bb.aq, %bb.ao
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.aq ], [ %.029.lcssa.i.i.i.i.i.i, %bb.ao ], [ %.2.i.i.i.i.i.i, %bb.as ], [ %i.fl, %.loopexit.i.loopexit.split.loop.exit135 ], [ %i.fj, %.loopexit.i.loopexit.split.loop.exit ], [ %i.fk, %.loopexit.i.loopexit.split.loop.exit133 ], [ %.02946.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.not530.i = icmp eq ptr %i.er, %.028.i.i.i.i.i.i
  br i1 %.not530.i, label %.critedge217.i, label %bb.at

bb.at:                                            ; preds = %.loopexit.i
  br i1 %i.dk, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not.i260.i, label %bb.aw, label %bb.av, !prof !45

bb.av:                                            ; preds = %bb.au
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0163550.i, ptr align 1 %i.eq, i64 %i.dl, i1 false)
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.fm = load i8, ptr %i.eq, align 1, !tbaa !39
  store i8 %i.fm, ptr %.0163550.i, align 1, !tbaa !39
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i:            ; preds = %bb.aw, %bb.av, %bb.at
  %i.fn = getelementptr inbounds i8, ptr %.0163550.i, i64 %i.bh
  br i1 %.not.i.i.i.i237.i, label %.critedge215.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i
  %.pre579.i = load ptr, ptr %12, align 8, !tbaa !49, !noalias !23
  br label %.lr.ph.i

bb.ax:                                            ; preds = %.critedge215.i
end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #20, !inline_history !240
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !113

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !126, !range !70, !noundef !71
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !43
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #20, !inline_history !241
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #20, !inline_history !241
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !45

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !242
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !242
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SJ_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEESE_SE_SE_SJ_.exit
  %i.h = icmp eq i64 %i.be, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph46, !llvm.loop !243

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_RSJ_(ptr %0, ptr %storemerge23.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_RSJ_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.j, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_RSJ_.exit.i.i ], [ %storemerge23.lcssa, %._crit_edge ]
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %i.l = load i64, ptr %0, align 8, !tbaa !51
  store i64 %i.l, ptr %i.j, align 8, !tbaa !51
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.m, %i.a                       ; 3 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 3 uses
  %i.p = add nsw i64 %i.o, -1
  %6 = sdiv i64 %i.p, 2
  %i.q = icmp sgt i64 %i.o, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.r = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 2 uses
  %i.s = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load i64, ptr %i.u, align 8, !tbaa !51
  %i.y = load i64, ptr %i.w, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.x
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.y
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !51
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !51
  %i.ad = icmp slt i64 %i.ab, %i.ac
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.v, i64 %i.t ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !51
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i.i.i
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !51
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, %6
  br i1 %i.ah, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !244

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ai = and i64 %i.n, 8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = add nsw i64 %i.o, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa.i.i.i.i, %i.al
  br i1 %i.am, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.an = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !51
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !51
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_RSJ_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ao, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.k
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !51 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !51
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !51
  %i.az = icmp slt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_RSJ_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i64 %i.av, ptr %i.ba, align 8, !tbaa !51
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_RSJ_.exit.i.i, label %bb.f, !llvm.loop !245

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_RSJ_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.k, ptr %i.bb, align 8, !tbaa !51
  %i.bc = icmp sgt i64 %i.n, 8
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SJ_.exit, !llvm.loop !246

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2345 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02444 = phi i64 [ %i.be, %bb.b ], [ %2, %.lr.ph ]
  %i.bd = phi i64 [ %i.cp, %bb.b ], [ %i.d, %.lr.ph ]
  %i.be = add nsw i64 %.02444, -1                 ; 3 uses
  %i.bf = lshr i64 %i.bd, 1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %storemerge2345, i64 -8 ; 3 uses
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !51  ; 3 uses
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !51 ; 3 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !49    ; 6 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !51 ; 3 uses
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !51 ; 3 uses
  %i.bp = icmp slt i64 %i.bn, %i.bo
  %i.bq = load i64, ptr %i.bh, align 8, !tbaa !51 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !51 ; 4 uses
  br i1 %i.bp, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph46
  %i.bt = icmp slt i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = load i64, ptr %0, align 8, !tbaa !51
  store i64 %i.bj, ptr %0, align 8, !tbaa !51
  store i64 %i.bu, ptr %i.bg, align 8, !tbaa !51
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bv = icmp slt i64 %i.bn, %i.bs
  %i.bw = load i64, ptr %0, align 8, !tbaa !51    ; 2 uses
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.bq, ptr %0, align 8, !tbaa !51
  store i64 %i.bw, ptr %i.bh, align 8, !tbaa !51
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i64 %i.bi, ptr %0, align 8, !tbaa !51
  store i64 %i.bw, ptr %i.f, align 8, !tbaa !51
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph46
  %i.bx = icmp slt i64 %i.bn, %i.bs
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = load i64, ptr %0, align 8, !tbaa !51
  store i64 %i.bi, ptr %0, align 8, !tbaa !51
  store i64 %i.by, ptr %i.f, align 8, !tbaa !51
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bz = icmp slt i64 %i.bo, %i.bs
  %i.ca = load i64, ptr %0, align 8, !tbaa !51    ; 2 uses
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.bq, ptr %0, align 8, !tbaa !51
  store i64 %i.ca, ptr %i.bh, align 8, !tbaa !51
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i64 %i.bj, ptr %0, align 8, !tbaa !51
  store i64 %i.ca, ptr %i.bg, align 8, !tbaa !51
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader, %bb.t
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.t ], [ %storemerge2345, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.ci, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader ]
  %i.cb = load i64, ptr %0, align 8, !tbaa !51
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i ], [ %i.ci, %bb.r ] ; 8 uses
  %i.ce = load i64, ptr %.sroa.014.1.i.i, align 8, !tbaa !51 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !51
  %i.ch = icmp slt i64 %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br i1 %i.ch, label %bb.r, label %.preheader.i.i, !llvm.loop !247

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.r ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -8 ; 5 uses
  %i.cj = load i64, ptr %.sroa.011.1.i.i, align 8, !tbaa !51 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !51
  %i.cm = icmp slt i64 %i.cd, %i.cl
  br i1 %i.cm, label %.preheader.i.i, label %bb.s, !llvm.loop !248

bb.s:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEESE_SE_SE_SJ_.exit

bb.t:                                             ; preds = %bb.s
  store i64 %i.cj, ptr %.sroa.014.1.i.i, align 8, !tbaa !51
  store i64 %i.ce, ptr %.sroa.011.1.i.i, align 8, !tbaa !51
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i, !llvm.loop !249

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEESE_SE_SE_SJ_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2345, i64 noundef %i.be, ptr %3, ptr nonnull %4)
  %i.cn = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.co = sub i64 %i.cn, %i.a
  %i.cp = ashr exact i64 %i.co, 3                 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, 16
  br i1 %i.cq, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SJ_.exit, !llvm.loop !243

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SJ_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEESE_SE_SE_SJ_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_RSJ_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.021.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.021.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.e = load i64, ptr %.sroa.0.021.i.ptr, align 8, !tbaa !51 ; 2 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !49     ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !51
  %i.l = icmp slt i64 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i64 %.sroa.0.021.i.idx, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !50

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.f, ptr %i.n, align 8, !tbaa !51
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !45

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !39
  store i8 %i.t, ptr %i.s, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !39
  store i8 %i.x, ptr %i.w, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !39
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !39
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !268
  store i64 %.0, ptr %i.h, align 8, !tbaa !39
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

declare noundef i64 @_ZN5arrow8internal26SparseTensorConverterMixin13GetIndexValueEPKhi(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow6TensorEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.a) #20, !inline_history !313
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !39
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEESE_RKSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN5arrow6TensorE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTSSt10shared_ptrIN5arrow8DataTypeEE", !9, i64 0}
!12 = !{!13, !22, i64 48}
!13 = !{!"_ZTSN5arrow8internal12_GLOBAL__N_124SparseCSFTensorConverterE", !14, i64 0, !19, i64 16, !8, i64 32, !11, i64 40, !22, i64 48}
!14 = !{!"_ZTSSt10shared_ptrIN5arrow14SparseCSFIndexEE", !15, i64 0}
!15 = !{!"_ZTSSt12__shared_ptrIN5arrow14SparseCSFIndexELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !17, i64 8}
!16 = !{!"p1 _ZTSN5arrow14SparseCSFIndexE", !9, i64 0}
!17 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!18 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!19 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !20, i64 0}
!20 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0, !17, i64 8}
!21 = !{!"p1 _ZTSN5arrow6BufferE", !9, i64 0}
!22 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !9, i64 0}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN5arrow8internal12_GLOBAL__N_124SparseCSFTensorConverter7ConvertEv: argument 0"}
!25 = distinct !{!25, !"_ZN5arrow8internal12_GLOBAL__N_124SparseCSFTensorConverter7ConvertEv"}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN5arrow6StatusE", !28, i64 0}
!28 = !{!"p1 _ZTSN5arrow6Status5StateE", !9, i64 0}
!29 = !{!30, !31, i64 0}
!30 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !31, i64 0, !17, i64 8}
!31 = !{!"p1 _ZTSN5arrow8DataTypeE", !9, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"vtable pointer", !6, i64 0}
!34 = distinct !{null}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNK5arrow6Tensor4typeEv: argument 0"}
!37 = distinct !{!37, !"_ZNK5arrow6Tensor4typeEv"}
!38 = !{!17, !18, i64 0}
!39 = !{!5, !5, i64 0}
!40 = !{!36, !24}
!41 = !{!42, !4, i64 8}
!42 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!43 = !{!42, !4, i64 12}
!44 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!45 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!46 = !{!47, !48, i64 8}
!47 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!48 = !{!"p1 long", !9, i64 0}
!49 = !{!47, !48, i64 0}
!50 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!51 = !{!52, !52, i64 0}
!52 = !{!"long", !5, i64 0}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!55 = distinct !{!55, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!58 = distinct !{!58, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!59 = !{!21, !21, i64 0}
!60 = !{!57, !54, !24}
!61 = !{!57, !54}
!62 = !{!63, !64, i64 9}
!63 = !{!"_ZTSN5arrow6BufferE", !64, i64 8, !64, i64 9, !65, i64 16, !52, i64 24, !52, i64 32, !66, i64 40, !19, i64 48, !67, i64 64}
!64 = !{!"bool", !5, i64 0}
!65 = !{!"p1 omnipotent char", !9, i64 0}
!66 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!67 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !68, i64 0}
!68 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !69, i64 0, !17, i64 8}
!69 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !9, i64 0}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = !{!47, !48, i64 16}
!73 = !{!20, !21, i64 0}
!74 = distinct !{!74, !75, !76, !77}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = distinct !{!78, !75, !77, !76}
!79 = distinct !{!79, !75}
!80 = !{!81, !82, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIN5arrow13BufferBuilderESaIS1_EE17_Vector_impl_dataE", !82, i64 0, !82, i64 8, !82, i64 16}
!82 = !{!"p1 _ZTSN5arrow13BufferBuilderE", !9, i64 0}
!83 = !{!84, !52, i64 40}
!84 = !{!"_ZTSN5arrow13BufferBuilderE", !85, i64 0, !22, i64 16, !65, i64 24, !52, i64 32, !52, i64 40, !52, i64 48}
!85 = !{!"_ZTSSt10shared_ptrIN5arrow15ResizableBufferEE", !86, i64 0}
!86 = !{!"_ZTSSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EE", !87, i64 0, !17, i64 8}
!87 = !{!"p1 _ZTSN5arrow15ResizableBufferE", !9, i64 0}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN5arrow13BufferBuilder6AppendEPKvl: argument 0"}
!90 = distinct !{!90, !"_ZN5arrow13BufferBuilder6AppendEPKvl"}
!91 = !{!84, !52, i64 32}
!92 = !{!89, !24}
!93 = !{!84, !65, i64 24}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN5arrow13BufferBuilder6AppendEPKvl: argument 0"}
!96 = distinct !{!96, !"_ZN5arrow13BufferBuilder6AppendEPKvl"}
!97 = !{!95, !24}
!98 = distinct !{!98, !75}
!99 = distinct !{!99, !75}
!100 = distinct !{!100, !75}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN5arrow13BufferBuilder6AppendEPKvl: argument 0"}
!103 = distinct !{!103, !"_ZN5arrow13BufferBuilder6AppendEPKvl"}
!104 = !{!102, !24}
!105 = distinct !{!105, !75}
!106 = !{!9, !9, i64 0}
!107 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!108 = !{!109, !110, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!110 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6BufferEE", !9, i64 0}
!111 = !{!109, !110, i64 16}
!112 = !{!109, !110, i64 8}
!113 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!114 = distinct !{!114, !75}
!115 = distinct !{!115, !75}
!116 = !{!117, !119, !24}
!117 = distinct !{!117, !118, !"_ZN5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEE15MoveValueUnsafeEv: argument 0"}
!118 = distinct !{!118, !"_ZN5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEE15MoveValueUnsafeEv"}
!119 = distinct !{!119, !120, !"_ZNO5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEE11ValueUnsafeEv: argument 0"}
!120 = distinct !{!120, !"_ZNO5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEE11ValueUnsafeEv"}
!121 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!122 = !{!123, !24}
!123 = distinct !{!123, !124, !"_ZN5arrow6Status2OKEv: argument 0"}
!124 = distinct !{!124, !"_ZN5arrow6Status2OKEv"}
!125 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!126 = !{!127, !64, i64 1}
!127 = !{!"_ZTSN5arrow6Status5StateE", !128, i64 0, !64, i64 1, !129, i64 8, !131, i64 40}
!128 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!129 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !130, i64 0, !52, i64 8, !5, i64 16}
!130 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !65, i64 0}
!131 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !132, i64 0}
!132 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !133, i64 0, !17, i64 8}
!133 = !{!"p1 _ZTSN5arrow12StatusDetailE", !9, i64 0}
!134 = distinct !{null, ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!135 = distinct !{!135, !75}
!136 = !{!81, !82, i64 8}
!137 = distinct !{null, ptr @_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN5arrow13BufferBuilderEEvT_S3_, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!138 = distinct !{!138, !75}
!139 = !{!81, !82, i64 16}
!140 = distinct !{null, null, null}
!141 = distinct !{null, ptr @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev, null, null, null, null}
!142 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!143 = distinct !{null, null, null, null}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN5arrow6Status2OKEv: argument 0"}
!146 = distinct !{!146, !"_ZN5arrow6Status2OKEv"}
!147 = distinct !{ptr @_ZN5arrow8internal12_GLOBAL__N_124SparseCSFTensorConverterD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!148 = distinct !{ptr @_ZN5arrow8internal12_GLOBAL__N_124SparseCSFTensorConverterD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!149 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!150 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!151 = !{!152, !22, i64 0}
!152 = !{!"_ZTSN5arrow8internal12_GLOBAL__N_132TensorBuilderFromSparseCSFTensorE", !22, i64 0, !153, i64 8, !16, i64 16, !154, i64 24, !154, i64 32, !155, i64 40, !155, i64 48, !52, i64 56, !4, i64 64, !52, i64 72, !156, i64 80, !4, i64 88, !65, i64 96, !157, i64 104, !19, i64 128, !65, i64 144}
!153 = !{!"p1 _ZTSN5arrow16SparseTensorImplINS_14SparseCSFIndexEEE", !9, i64 0}
!154 = !{!"p1 _ZTSSt6vectorISt10shared_ptrIN5arrow6TensorEESaIS3_EE", !9, i64 0}
!155 = !{!"p1 _ZTSSt6vectorIlSaIlEE", !9, i64 0}
!156 = !{!"p1 _ZTSN5arrow14FixedWidthTypeE", !9, i64 0}
!157 = !{!"_ZTSSt6vectorIlSaIlEE", !158, i64 0}
!158 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !159, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !47, i64 0}
!160 = !{!152, !153, i64 8}
!161 = !{!162, !163, i64 0}
!162 = !{!"_ZTSSt12__shared_ptrIN5arrow11SparseIndexELN9__gnu_cxx12_Lock_policyE2EE", !163, i64 0, !17, i64 8}
!163 = !{!"p1 _ZTSN5arrow11SparseIndexE", !9, i64 0}
end_hunk_2
