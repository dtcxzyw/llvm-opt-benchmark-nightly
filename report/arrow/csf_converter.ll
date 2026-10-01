Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/csf_converter?download=true
inline.NumInlined: 1083
inline.NumDeleted: 539
begin_hunk_0_@_ZN5arrow8internal29MakeSparseCSFTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE:bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.r:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !43, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20, !noalias !170
  %i.bh = sext i32 %i.aa to i64                   ; 5 uses
  %i.bi = mul nsw i64 %i.bg, %i.bh
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.27") align 8 %15, i64 noundef %i.bi, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %15, align 8, !tbaa !25, !noalias !170
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.w, label %bb.t, !prof !41

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %30, align 8, !tbaa !25, !alias.scope !170
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
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20, !noalias !170
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !44, !noalias !175 ; 2 uses
  store i64 %i.bo, ptr %16, align 8, !tbaa !44, !alias.scope !176, !noalias !170
  store ptr null, ptr %i.bn, align 8, !tbaa !44, !noalias !175
  %.cast.i = inttoptr i64 %i.bo to ptr            ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.cast.i, i64 9
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !52, !range !53, !noundef !54
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %.cast.i, i64 8
  %i.bt = load i8, ptr %i.bs, align 8, !range !53
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = select i1 %i.br, i1 %i.bu, i1 false, !prof !41
  %i.bw = getelementptr inbounds nuw i8, ptr %.cast.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = select i1 %i.bv, ptr %i.bx, ptr null, !prof !41
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
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cb, i8 0, i64 %i.ca, i1 false), !tbaa !43
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.az ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !noalias !170
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #22
          to label %.noexc247.i unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit403.thread.i ; 4 uses

.noexc247.i:                                      ; preds = %.noexc238.i
  store ptr %i.ce, ptr %17, align 8, !tbaa !40, !noalias !170
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.az
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !55, !noalias !170
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ce, i8 0, i64 %i.ca, i1 false), !tbaa !43
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ca
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !39, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20, !noalias !170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !noalias !170
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #22
          to label %.noexc257.i unwind label %bb.ad ; 4 uses

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !170
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20, !noalias !170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !noalias !170
  br label %.loopexit533.i

.noexc257.i:                                      ; preds = %.noexc247.i
  store ptr %i.cj, ptr %18, align 8, !tbaa !40, !noalias !170
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.az
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !55, !noalias !170
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cj, i8 -1, i64 %i.ca, i1 false), !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ca
  br label %.loopexit533.i

.loopexit533.i:                                   ; preds = %.noexc257.i, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i
  %i.co = phi ptr [ %i.ck, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.ci, %.noexc257.i ]
  %.sroa.18.0471507.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.cc, %.noexc257.i ] ; 3 uses
  %.sroa.0439.0493505.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.cb, %.noexc257.i ] ; 15 uses
  %.0.i.i.i.i.i.i.i497503.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.cd, %.noexc257.i ] ; 3 uses
  %.0.i.i.i.i.i.i.i254.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.cn, %.noexc257.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.0.i.i.i.i.i.i.i254.i, ptr %i.cp, align 8, !tbaa !39, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20, !noalias !170
  %i.cq = add nsw i64 %i.az, -1                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20, !noalias !170
  invoke void @_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %i.cq, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %.loopexit533.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20, !noalias !170
  invoke void @_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %i.az, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !170
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !56 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 9
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !52, !range !53, !noundef !54
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = select i1 %i.cv, ptr %i.cx, ptr null, !prof !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !170
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
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !170
  br label %bb.et

bb.ad:                                            ; preds = %.noexc247.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit400.i

bb.ae:                                            ; preds = %.loopexit533.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !170
  br label %bb.eq

bb.af:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !170
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
  %.pre577.i.a = load ptr, ptr %17, align 8, !tbaa !40, !noalias !170
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.aj

.critedge219.preheader.i:                         ; preds = %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i, %.preheader.i
  %.not553.i = icmp sgt i64 %i.az, 1
  br i1 %.not553.i, label %.lr.ph555.i, label %.critedge222.i

.lr.ph555.i:                                      ; preds = %.critedge219.preheader.i
  %i.dp = sext i32 %i.l to i64                    ; 3 uses
  br label %bb.bh

bb.ai:                                            ; preds = %bb.ah
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.aj:                                            ; preds = %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i, %.lr.ph552.i
  %.val580.i = phi ptr [ %.pre577.i.a, %.lr.ph552.i ], [ %.val.i, %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i ] ; 6 uses
  %.0116551.i = phi i64 [ %i.dg, %.lr.ph552.i ], [ %i.iy, %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i ] ; 2 uses
  %.0117549.i = phi ptr [ %i.by, %.lr.ph552.i ], [ %.1118.i, %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i ] ; 6 uses
  %i.dr = load ptr, ptr %i.co, align 8, !tbaa !39, !noalias !170
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %.val580.i to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 3                 ; 5 uses
  %i.dw = icmp sgt i64 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.i.i.i, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.aj
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !40 ; 2 uses
  %min.iters.check = icmp ult i64 %i.dv, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %i.dv, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ee, %vector.body ]
  %vec.phi149 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ef, %vector.body ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.val580.i, i64 %index ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load = load <2 x i64>, ptr %i.dy, align 8, !tbaa !43
  %wide.load150 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !43
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load151 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !43
  %wide.load152 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !43
  %i.ec = mul nsw <2 x i64> %wide.load151, %wide.load
  %i.ed = mul nsw <2 x i64> %wide.load152, %wide.load150
  %i.ee = add <2 x i64> %i.ec, %vec.phi           ; 2 uses
  %i.ef = add <2 x i64> %i.ed, %vec.phi149        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ef, %i.ee
  %i.eh = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %.011.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  %.0910.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.eh, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011.i.i.i = phi i64 [ %i.eo, %scalar.ph ], [ %.011.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0910.i.i.i = phi i64 [ %i.en, %scalar.ph ], [ %.0910.i.i.i.ph, %scalar.ph.preheader ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.val580.i, i64 %.011.i.i.i
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !43
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.011.i.i.i
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !43
  %i.em = mul nsw i64 %i.el, %i.ej
  %i.en = add nsw i64 %i.em, %.0910.i.i.i         ; 2 uses
  %i.eo = add nuw nsw i64 %.011.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.eo, %i.dv
  br i1 %exitcond.not.i.i.i, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i, label %scalar.ph, !llvm.loop !130

_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i: ; preds = %scalar.ph, %middle.block, %bb.aj
  %.09.lcssa.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.eh, %middle.block ], [ %i.en, %scalar.ph ] ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.cy, i64 %.09.lcssa.i.i.i ; 5 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %i.bh ; 2 uses
  %i.er = ptrtoint ptr %i.eq to i64
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i
  %scevgep571.i = getelementptr i8, ptr %scevgep.i, i64 %.09.lcssa.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.an, %.lr.ph.i.i.i.i.i.preheader.i
  %.047.i.i.i.i.i.i = phi i64 [ %i.fa, %bb.an ], [ %i.di, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.02946.i.i.i.i.i.i = phi ptr [ %i.ez, %bb.an ], [ %i.ep, %.lr.ph.i.i.i.i.i.preheader.i ] ; 9 uses
  %i.es = load i8, ptr %.02946.i.i.i.i.i.i, align 1, !tbaa !32
  %.not523.i = icmp eq i8 %i.es, 0
  br i1 %.not523.i, label %bb.ak, label %.loopexit.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !32
  %.not524.i = icmp eq i8 %i.eu, 0
  br i1 %.not524.i, label %bb.al, label %.loopexit.i.loopexit.split.loop.exit135

bb.al:                                            ; preds = %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !32
  %.not525.i = icmp eq i8 %i.ew, 0
  br i1 %.not525.i, label %bb.am, label %.loopexit.i.loopexit.split.loop.exit133

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !32
  %.not526.i = icmp eq i8 %i.ey, 0
  br i1 %.not526.i, label %bb.an, label %.loopexit.i.loopexit.split.loop.exit

bb.an:                                            ; preds = %bb.am
  %i.ez = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 4
  %i.fa = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.fb = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !131

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.an, %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.ep, %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i ], [ %scevgep571.i, %bb.an ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i to i64
  %i.fc = sub i64 %i.er, %.pre-phi.i.i.i.i.i.i
  switch i64 %i.fc, label %.critedge217.i [
    i64 3, label %bb.ao
    i64 2, label %bb.aq
    i64 1, label %bb.as
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fd = load i8, ptr %.029.lcssa.i.i.i.i.i.i, align 1, !tbaa !32
  %.not527.i = icmp eq i8 %i.fd, 0
  br i1 %.not527.i, label %bb.ap, label %.loopexit.i

bb.ap:                                            ; preds = %bb.ao
  %i.fe = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.fe, %bb.ap ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ff = load i8, ptr %.1.i.i.i.i.i.i, align 1, !tbaa !32
  %.not528.i = icmp eq i8 %i.ff, 0
  br i1 %.not528.i, label %bb.ar, label %.loopexit.i

bb.ar:                                            ; preds = %bb.aq
  %i.fg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.fg, %bb.ar ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.fh = load i8, ptr %.2.i.i.i.i.i.i, align 1, !tbaa !32
  %.not529.i = icmp eq i8 %i.fh, 0
  br i1 %.not529.i, label %.critedge217.i, label %.loopexit.i

.loopexit.i.loopexit.split.loop.exit:             ; preds = %bb.am
  %i.fi = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  br label %.loopexit.i

.loopexit.i.loopexit.split.loop.exit133:          ; preds = %bb.al
  %i.fj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  br label %.loopexit.i

.loopexit.i.loopexit.split.loop.exit135:          ; preds = %bb.ak
  %i.fk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i, %.loopexit.i.loopexit.split.loop.exit, %.loopexit.i.loopexit.split.loop.exit133, %.loopexit.i.loopexit.split.loop.exit135, %bb.as, %bb.aq, %bb.ao
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.aq ], [ %.029.lcssa.i.i.i.i.i.i, %bb.ao ], [ %.2.i.i.i.i.i.i, %bb.as ], [ %i.fk, %.loopexit.i.loopexit.split.loop.exit135 ], [ %i.fi, %.loopexit.i.loopexit.split.loop.exit ], [ %i.fj, %.loopexit.i.loopexit.split.loop.exit133 ], [ %.02946.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.not530.i = icmp eq ptr %i.eq, %.028.i.i.i.i.i.i
  br i1 %.not530.i, label %.critedge217.i, label %bb.at

bb.at:                                            ; preds = %.loopexit.i
  br i1 %i.dk, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not.i260.i, label %bb.aw, label %bb.av, !prof !36

bb.av:                                            ; preds = %bb.au
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0117549.i, ptr align 1 %i.ep, i64 %i.dl, i1 false)
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.fl = load i8, ptr %i.ep, align 1, !tbaa !32
  store i8 %i.fl, ptr %.0117549.i, align 1, !tbaa !32
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i:            ; preds = %bb.aw, %bb.av, %bb.at
  %i.fm = getelementptr inbounds i8, ptr %.0117549.i, i64 %i.bh
  br i1 %.not.i.i.i.i237.i, label %.critedge215.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i
  %.pre579.i = load ptr, ptr %12, align 8, !tbaa !40, !noalias !170
  br label %.lr.ph.i

bb.ax:                                            ; preds = %.critedge215.i
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

.lr.ph.i:                                         ; preds = %.critedge.i, %.lr.ph.preheader.i
  %i.fo = phi ptr [ %i.hs, %.critedge.i ], [ %.pre579.i, %.lr.ph.preheader.i ] ; 2 uses
  %.0114548.i = phi i64 [ %i.hu, %.critedge.i ], [ 0, %.lr.ph.preheader.i ] ; 7 uses
  %.0115547.i = phi i1 [ %i.ht, %.critedge.i ], [ false, %.lr.ph.preheader.i ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.0114548.i
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !43 ; 3 uses
  br i1 %.0115547.i, label %.thread510.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i
  %i.fr = load ptr, ptr %17, align 8, !tbaa !40, !noalias !170
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fq
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !43
  %i.fu = load ptr, ptr %18, align 8, !tbaa !40, !noalias !170
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fq
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !43
  %.not531.i = icmp eq i64 %i.ft, %i.fw
  br i1 %.not531.i, label %.critedge.i, label %.thread510.i

.thread510.i:                                     ; preds = %bb.ay, %.lr.ph.i
  %i.fx = icmp slt i64 %.0114548.i, %i.cq
  br i1 %i.fx, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %.thread510.i
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0439.0493505.i, i64 %.0114548.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !43
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef nonnull %i.a, i64 noundef %i.ga, i32 noundef %i.l)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gb = load ptr, ptr %19, align 8, !tbaa !62, !noalias !170
  %i.gc = getelementptr inbounds nuw [56 x i8], ptr %i.gb, i64 %.0114548.i ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40 ; 4 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !67, !noalias !177 ; 2 uses
  %i.gf = add nsw i64 %i.ge, %i.dm                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !68, !noalias !177 ; 2 uses
  %i.gi = icmp sgt i64 %i.gf, %i.gh
  br i1 %i.gi, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %_ZN5arrow6StatusD2Ev.exit267.i, !prof !36

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !178
  %i.gj = shl nsw i64 %i.gh, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.gf, i64 %i.gj)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %i.gc, i64 noundef %.sroa.speculated.i.i.i, i1 noundef zeroext false)
          to label %.noexc261.i unwind label %bb.bc

.noexc261.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.gk = load ptr, ptr %9, align 8, !tbaa !25, !noalias !178 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !178
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, label %_ZN5arrow6StatusD2Ev.exit263.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i:         ; preds = %.noexc261.i
  %.pre.i.i = load i64, ptr %i.gd, align 8, !tbaa !67, !noalias !177
  br label %_ZN5arrow6StatusD2Ev.exit267.i

_ZN5arrow6StatusD2Ev.exit263.i:                   ; preds = %.noexc261.i
  store ptr %i.gk, ptr %30, align 8, !tbaa !25, !alias.scope !170
  br label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

bb.bb:                                            ; preds = %bb.bd, %bb.az
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.bc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

_ZN5arrow6StatusD2Ev.exit267.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, %bb.ba
  %i.go = phi i64 [ %.pre.i.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i ], [ %i.ge, %bb.ba ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !69, !noalias !177
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gr, ptr nonnull align 1 %i.a, i64 %i.dm, i1 false), !noalias !177
  %i.gs = load i64, ptr %i.gd, align 8, !tbaa !67, !noalias !177
  %i.gt = add nsw i64 %i.gs, %i.dm
  store i64 %i.gt, ptr %i.gd, align 8, !tbaa !67, !noalias !177
  store ptr null, ptr %30, align 8, !tbaa !25, !alias.scope !170
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit267.i, %.thread510.i
  %i.gu = load ptr, ptr %17, align 8, !tbaa !40, !noalias !170
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.fq
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !43
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef nonnull %i.a, i64 noundef %i.gw, i32 noundef %i.l)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd
  %i.gx = load ptr, ptr %21, align 8, !tbaa !62, !noalias !170
  %i.gy = getelementptr inbounds nuw [56 x i8], ptr %i.gx, i64 %.0114548.i ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40 ; 4 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !67, !noalias !179 ; 2 uses
  %i.hb = add nsw i64 %i.ha, %i.dm                ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !68, !noalias !179 ; 2 uses
  %i.he = icmp sgt i64 %i.hb, %i.hd
  br i1 %i.he, label %_ZN5arrow6StatusD2Ev.exit.i268.i, label %_ZN5arrow6StatusD2Ev.exit279.i, !prof !36

_ZN5arrow6StatusD2Ev.exit.i268.i:                 ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !180
  %i.hf = shl nsw i64 %i.hd, 1
  %.sroa.speculated.i.i269.i = call noundef i64 @llvm.smax.i64(i64 %i.hb, i64 %i.hf)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.gy, i64 noundef %.sroa.speculated.i.i269.i, i1 noundef zeroext false)
          to label %.noexc272.i unwind label %bb.bf

.noexc272.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i268.i
  %i.hg = load ptr, ptr %8, align 8, !tbaa !25, !noalias !180 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !180
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i, label %_ZN5arrow6StatusD2Ev.exit275.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i:      ; preds = %.noexc272.i
  %.pre.i271.i = load i64, ptr %i.gz, align 8, !tbaa !67, !noalias !179
  br label %_ZN5arrow6StatusD2Ev.exit279.i

_ZN5arrow6StatusD2Ev.exit275.i:                   ; preds = %.noexc272.i
  store ptr %i.hg, ptr %30, align 8, !tbaa !25, !alias.scope !170
  br label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

bb.bf:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i268.i
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

_ZN5arrow6StatusD2Ev.exit279.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i, %bb.be
  %i.hj = phi i64 [ %.pre.i271.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i ], [ %i.ha, %bb.be ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !69, !noalias !179
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 %i.hj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr nonnull align 1 %i.a, i64 %i.dm, i1 false), !noalias !179
  %i.hn = load i64, ptr %i.gz, align 8, !tbaa !67, !noalias !179
  %i.ho = add nsw i64 %i.hn, %i.dm
  store i64 %i.ho, ptr %i.gz, align 8, !tbaa !67, !noalias !179
  store ptr null, ptr %30, align 8, !tbaa !25, !alias.scope !170
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0439.0493505.i, i64 %.0114548.i ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !43
  %i.hr = add nsw i64 %i.hq, 1
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !43
  %.pre578.i = load ptr, ptr %12, align 8, !tbaa !40, !noalias !170
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit279.i, %bb.ay
  %i.hs = phi ptr [ %.pre578.i, %_ZN5arrow6StatusD2Ev.exit279.i ], [ %i.fo, %bb.ay ]
  %i.ht = phi i1 [ true, %_ZN5arrow6StatusD2Ev.exit279.i ], [ false, %bb.ay ]
  %i.hu = add nuw nsw i64 %.0114548.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hu, %i.az
  br i1 %exitcond.not.i, label %.critedge215.i, label %.lr.ph.i, !llvm.loop !136

.critedge215.i:                                   ; preds = %.critedge.i, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i
  %i.hv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %.critedge215..critedge217_crit_edge.i unwind label %bb.ax ; 0 uses

.critedge215..critedge217_crit_edge.i:            ; preds = %.critedge215.i
  %.val.pre.i = load ptr, ptr %17, align 8, !tbaa !40, !noalias !170
  br label %.critedge217.i

.critedge217.i:                                   ; preds = %.critedge215..critedge217_crit_edge.i, %.loopexit.i, %bb.as, %._crit_edge.i.i.i.i.i.i
  %.val.i = phi ptr [ %.val.pre.i, %.critedge215..critedge217_crit_edge.i ], [ %.val580.i, %.loopexit.i ], [ %.val580.i, %._crit_edge.i.i.i.i.i.i ], [ %.val580.i, %bb.as ] ; 4 uses
  %.1118.i = phi ptr [ %i.fm, %.critedge215..critedge217_crit_edge.i ], [ %.0117549.i, %.loopexit.i ], [ %.0117549.i, %._crit_edge.i.i.i.i.i.i ], [ %.0117549.i, %bb.as ]
  %.val229.i = load ptr, ptr %i.e, align 8, !tbaa !40 ; 3 uses
  %.val230.i = load ptr, ptr %i.ar, align 8, !tbaa !39
  %.val231.i = load ptr, ptr %12, align 8, !tbaa !40, !noalias !170 ; 3 uses
  %i.hw = ptrtoint ptr %.val230.i to i64
  %i.hx = ptrtoint ptr %.val229.i to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = ashr exact i64 %i.hy, 3                 ; 2 uses
  %i.ia = add nsw i64 %i.hz, -1                   ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.val231.i, i64 %i.ia
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !43 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ic ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !43
  %i.if = add nsw i64 %i.ie, 1                    ; 2 uses
  store i64 %i.if, ptr %i.id, align 8, !tbaa !43
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.val229.i, i64 %i.ic
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !43
  %i.ii = icmp eq i64 %i.if, %i.ih
  %i.ij = icmp sgt i64 %i.hz, 1
  %or.cond.i.i = and i1 %i.ij, %i.ii
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %.critedge217.i, %bb.bg
  %.05.i.i = phi i64 [ %i.ir, %bb.bg ], [ %i.ia, %.critedge217.i ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.val231.i, i64 %.05.i.i
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !43 ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.il ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !43
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.val229.i, i64 %i.il
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !43
  %i.iq = icmp eq i64 %i.in, %i.ip
  br i1 %i.iq, label %bb.bg, label %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i

bb.bg:                                            ; preds = %.lr.ph.i.i
  store i64 0, ptr %i.im, align 8, !tbaa !43
  %i.ir = add nsw i64 %.05.i.i, -1                ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.val231.i, i64 %i.ir
  %i.it = load i64, ptr %i.is, align 8, !tbaa !43
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.it ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !43
  %i.iw = add nsw i64 %i.iv, 1
  store i64 %i.iw, ptr %i.iu, align 8, !tbaa !43
  %i.ix = icmp sgt i64 %.05.i.i, 1
  br i1 %i.ix, label %.lr.ph.i.i, label %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i, !llvm.loop !137

_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i: ; preds = %bb.bg, %.lr.ph.i.i, %.critedge217.i
  %i.iy = add nsw i64 %.0116551.i, -1
  %i.iz = icmp slt i64 %.0116551.i, 2
  br i1 %i.iz, label %.critedge219.preheader.i, label %bb.aj, !llvm.loop !138

bb.bh:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit291.i, %.lr.ph555.i
  %.0111554.i = phi i64 [ 0, %.lr.ph555.i ], [ %i.ja, %_ZN5arrow6StatusD2Ev.exit291.i ] ; 2 uses
  %i.ja = add nuw nsw i64 %.0111554.i, 1          ; 3 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0439.0493505.i, i64 %i.ja
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !43
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef nonnull %i.a, i64 noundef %i.jc, i32 noundef %i.l)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jd = load ptr, ptr %19, align 8, !tbaa !62, !noalias !170
  %i.je = getelementptr inbounds nuw [56 x i8], ptr %i.jd, i64 %.0111554.i ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 40 ; 4 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !67, !noalias !181 ; 2 uses
  %i.jh = add nsw i64 %i.jg, %i.dp                ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !68, !noalias !181 ; 2 uses
  %i.jk = icmp sgt i64 %i.jh, %i.jj
  br i1 %i.jk, label %_ZN5arrow6StatusD2Ev.exit.i280.i, label %_ZN5arrow6StatusD2Ev.exit291.i, !prof !36

_ZN5arrow6StatusD2Ev.exit.i280.i:                 ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !182
  %i.jl = shl nsw i64 %i.jj, 1
  %.sroa.speculated.i.i281.i = call noundef i64 @llvm.smax.i64(i64 %i.jh, i64 %i.jl)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.je, i64 noundef %.sroa.speculated.i.i281.i, i1 noundef zeroext false)
          to label %.noexc284.i unwind label %bb.bk

.noexc284.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i280.i
  %i.jm = load ptr, ptr %7, align 8, !tbaa !25, !noalias !182 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !182
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i, label %.critedge221.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i:      ; preds = %.noexc284.i
  %.pre.i283.i = load i64, ptr %i.jf, align 8, !tbaa !67, !noalias !181
  br label %_ZN5arrow6StatusD2Ev.exit291.i

bb.bj:                                            ; preds = %bb.bh
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.bk:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i280.i
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

_ZN5arrow6StatusD2Ev.exit291.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i, %bb.bi
  %i.jq = phi i64 [ %.pre.i283.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i ], [ %i.jg, %bb.bi ]
  %i.jr = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !69, !noalias !181
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 %i.jq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr nonnull align 1 %i.a, i64 %i.dp, i1 false), !noalias !181
  %i.ju = load i64, ptr %i.jf, align 8, !tbaa !67, !noalias !181
  %i.jv = add nsw i64 %i.ju, %i.dp
  store i64 %i.jv, ptr %i.jf, align 8, !tbaa !67, !noalias !181
  store ptr null, ptr %30, align 8, !tbaa !25, !alias.scope !170
  %exitcond572.not.i = icmp eq i64 %i.ja, %i.cq
  br i1 %exitcond572.not.i, label %.critedge222.i, label %bb.bh, !llvm.loop !141

.critedge221.i:                                   ; preds = %.noexc284.i
  store ptr %i.jm, ptr %30, align 8, !tbaa !25, !alias.scope !170
  br label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

.critedge222.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit291.i, %.critedge219.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !170
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %.noexc294.i unwind label %bb.ag

.noexc294.i:                                      ; preds = %.critedge222.i
  %i.jw = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !31, !noalias !170 ; 8 uses
  %i.jz = load <2 x ptr>, ptr %i.jw, align 16, !tbaa !70, !noalias !170
  %i.ka = load <2 x ptr>, ptr %6, align 16, !tbaa !70, !noalias !170
  store <2 x ptr> %i.ka, ptr %i.jw, align 16, !tbaa !70, !noalias !170
  store <2 x ptr> %i.jz, ptr %6, align 16, !tbaa !70, !noalias !170
  %.not.i.i.i.i292.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i292.i, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %.noexc294.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 4 uses
  %i.kc = load atomic i64, ptr %i.kb acquire, align 8 ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 4294967297
  %i.ke = trunc i64 %i.kc to i32                  ; 2 uses
  br i1 %i.kd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.kb, align 8, !tbaa !34
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  store i32 0, ptr %i.kf, align 4, !tbaa !35
  %i.kg = load ptr, ptr %i.jy, align 8, !tbaa !30
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #20, !inline_history !142
  %i.kj = load ptr, ptr %i.jy, align 8, !tbaa !30
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #20, !inline_history !142
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.km = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32, !noalias !170
  %.not.i.i.i.i.i293.i = icmp eq i8 %i.km, 0
  br i1 %.not.i.i.i.i.i293.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kn = add nsw i32 %i.ke, -1
  store i32 %i.kn, ptr %i.kb, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.ko = atomicrmw volatile add ptr %i.kb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ke, %bb.bo ], [ %i.ko, %bb.bp ]
  %i.kp = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kp, label %bb.bq, label %bb.br, !prof !36

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #20
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bm, %.noexc294.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20, !noalias !170
  %i.kq = icmp ugt i64 %i.cq, 576460752303423487
  br i1 %i.kq, label %bb.bs, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc296.i unwind label %bb.ce

.noexc296.i:                                      ; preds = %bb.bs
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.br
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false), !noalias !170
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !32
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
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !36

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !32
  store i8 %i.u, ptr %i.s, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !32
  store i8 %i.y, ptr %i.x, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !112   ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !32
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !32
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !112
  store i64 %.0, ptr %i.h, align 8, !tbaa !32
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !32
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

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!3 = distinct !{ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!4 = distinct !{!4, !57}
!5 = distinct !{!5, !57}
!6 = distinct !{null, null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !11, i64 0}
!15 = !{!"p1 _ZTSN5arrow6TensorE", !14, i64 0}
!16 = !{!"p1 _ZTSN5arrow14SparseCSFIndexE", !14, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"p1 _ZTSN5arrow6BufferE", !14, i64 0}
!20 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0, !18, i64 8}
!21 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !20, i64 0}
!22 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !14, i64 0}
!23 = !{!"p1 _ZTSN5arrow6Status5StateE", !14, i64 0}
!24 = !{!"_ZTSN5arrow6StatusE", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"p1 _ZTSN5arrow8DataTypeE", !14, i64 0}
!27 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0, !18, i64 8}
!28 = !{!27, !26, i64 0}
!29 = !{!"vtable pointer", !10, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!18, !17, i64 0}
!32 = !{!11, !11, i64 0}
!33 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 8, !12, i64 12}
!34 = !{!33, !12, i64 8}
!35 = !{!33, !12, i64 12}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!"p1 long", !14, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!38, !37, i64 8}
!40 = !{!38, !37, i64 0}
!41 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!42 = !{!"long", !11, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!19, !19, i64 0}
!45 = !{!"bool", !11, i64 0}
!46 = !{!"p1 omnipotent char", !14, i64 0}
!47 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !11, i64 0}
!48 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !14, i64 0}
!49 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !48, i64 0, !18, i64 8}
!50 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !49, i64 0}
!51 = !{!"_ZTSN5arrow6BufferE", !45, i64 8, !45, i64 9, !46, i64 16, !42, i64 24, !42, i64 32, !47, i64 40, !21, i64 48, !50, i64 64}
!52 = !{!51, !45, i64 9}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!38, !37, i64 16}
!56 = !{!20, !19, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!"p1 _ZTSN5arrow13BufferBuilderE", !14, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN5arrow13BufferBuilderESaIS1_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!61, !60, i64 0}
!63 = !{!"p1 _ZTSN5arrow15ResizableBufferE", !14, i64 0}
!64 = !{!"_ZTSSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EE", !63, i64 0, !18, i64 8}
!65 = !{!"_ZTSSt10shared_ptrIN5arrow15ResizableBufferEE", !64, i64 0}
!66 = !{!"_ZTSN5arrow13BufferBuilderE", !65, i64 0, !22, i64 16, !46, i64 24, !42, i64 32, !42, i64 40, !42, i64 48}
!67 = !{!66, !42, i64 40}
!68 = !{!66, !42, i64 32}
!69 = !{!66, !46, i64 24}
!70 = !{!14, !14, i64 0}
!71 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6BufferEE", !14, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!72, !71, i64 0}
!74 = !{!72, !71, i64 16}
!75 = !{!72, !71, i64 8}
!76 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!77 = !{!"_ZTSN5arrow10StatusCodeE", !11, i64 0}
!78 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !46, i64 0}
!79 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !78, i64 0, !42, i64 8, !11, i64 16}
!80 = !{!"p1 _ZTSN5arrow12StatusDetailE", !14, i64 0}
!81 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !80, i64 0, !18, i64 8}
!82 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !81, i64 0}
!83 = !{!"_ZTSN5arrow6Status5StateE", !77, i64 0, !45, i64 1, !79, i64 8, !82, i64 40}
!84 = !{!83, !45, i64 1}
!85 = !{!61, !60, i64 8}
!86 = !{!61, !60, i64 16}
!87 = !{!"p1 _ZTSN5arrow16SparseTensorImplINS_14SparseCSFIndexEEE", !14, i64 0}
!88 = !{!"p1 _ZTSSt6vectorISt10shared_ptrIN5arrow6TensorEESaIS3_EE", !14, i64 0}
!89 = !{!"p1 _ZTSSt6vectorIlSaIlEE", !14, i64 0}
!90 = !{!"p1 _ZTSN5arrow14FixedWidthTypeE", !14, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !38, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !91, i64 0}
!93 = !{!"_ZTSSt6vectorIlSaIlEE", !92, i64 0}
!94 = !{!"_ZTSN5arrow8internal12_GLOBAL__N_132TensorBuilderFromSparseCSFTensorE", !22, i64 0, !87, i64 8, !16, i64 16, !88, i64 24, !88, i64 32, !89, i64 40, !89, i64 48, !42, i64 56, !12, i64 64, !42, i64 72, !90, i64 80, !12, i64 88, !46, i64 96, !93, i64 104, !21, i64 128, !46, i64 144}
!95 = !{!89, !89, i64 0}
!96 = !{!94, !12, i64 64}
!97 = !{!94, !12, i64 88}
!98 = !{!94, !46, i64 96}
!99 = !{i64 8}
!100 = !{!94, !46, i64 144}
!101 = !{!94, !88, i64 24}
!102 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6TensorEE", !14, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6TensorEESaIS3_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!103, !102, i64 0}
!105 = !{!"_ZTSSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0, !18, i64 8}
!106 = !{!105, !15, i64 0}
!107 = !{!66, !22, i64 16}
!108 = !{!66, !42, i64 48}
!109 = !{!64, !63, i64 0}
!110 = !{!51, !42, i64 32}
!111 = !{!63, !63, i64 0}
!112 = !{!79, !46, i64 0}
!113 = !{!"_ZTSNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !63, i64 0}
!114 = !{!"_ZTSSt9type_info", !46, i64 8}
!115 = !{!114, !46, i64 8}
!116 = !{!"_ZTSNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !19, i64 0}
!117 = !{!79, !42, i64 8}
!118 = !{!78, !46, i64 0}
!119 = distinct !{!119, !"_ZN5arrow8internal12_GLOBAL__N_124SparseCSFTensorConverter7ConvertEv"}
!120 = distinct !{!120, !119, !"_ZN5arrow8internal12_GLOBAL__N_124SparseCSFTensorConverter7ConvertEv: argument 0"}
!121 = distinct !{null}
!122 = distinct !{!122, !"_ZNK5arrow6Tensor4typeEv"}
!123 = distinct !{!123, !122, !"_ZNK5arrow6Tensor4typeEv: argument 0"}
!124 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!125 = distinct !{!125, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!126 = distinct !{!126, !125, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!127 = distinct !{!127, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!128 = distinct !{!128, !127, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!129 = distinct !{!129, !57, !58, !59}
!130 = distinct !{!130, !57, !59, !58}
!131 = distinct !{!131, !57}
!132 = distinct !{!132, !"_ZN5arrow13BufferBuilder6AppendEPKvl"}
!133 = distinct !{!133, !132, !"_ZN5arrow13BufferBuilder6AppendEPKvl: argument 0"}
!134 = distinct !{!134, !"_ZN5arrow13BufferBuilder6AppendEPKvl"}
!135 = distinct !{!135, !134, !"_ZN5arrow13BufferBuilder6AppendEPKvl: argument 0"}
!136 = distinct !{!136, !57}
!137 = distinct !{!137, !57}
!138 = distinct !{!138, !57}
!139 = distinct !{!139, !"_ZN5arrow13BufferBuilder6AppendEPKvl"}
!140 = distinct !{!140, !139, !"_ZN5arrow13BufferBuilder6AppendEPKvl: argument 0"}
!141 = distinct !{!141, !57}
!142 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!143 = distinct !{!143, !57}
!144 = distinct !{!144, !57}
!145 = distinct !{!145, !"_ZNO5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEE11ValueUnsafeEv"}
!146 = distinct !{!146, !145, !"_ZNO5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEE11ValueUnsafeEv: argument 0"}
!147 = distinct !{!147, !"_ZN5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEE15MoveValueUnsafeEv"}
!148 = distinct !{!148, !147, !"_ZN5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEE15MoveValueUnsafeEv: argument 0"}
!149 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!150 = distinct !{!150, !"_ZN5arrow6Status2OKEv"}
!151 = distinct !{!151, !150, !"_ZN5arrow6Status2OKEv: argument 0"}
!152 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!153 = distinct !{null, ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!154 = distinct !{null, ptr @_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN5arrow13BufferBuilderEEvT_S3_, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!155 = distinct !{null, null, null}
!156 = distinct !{null, ptr @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev, null, null, null, null}
!157 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!158 = distinct !{null, null, null, null}
!159 = distinct !{!159, !"_ZN5arrow6Status2OKEv"}
!160 = distinct !{!160, !159, !"_ZN5arrow6Status2OKEv: argument 0"}
!161 = distinct !{ptr @_ZN5arrow8internal12_GLOBAL__N_124SparseCSFTensorConverterD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!162 = distinct !{ptr @_ZN5arrow8internal12_GLOBAL__N_124SparseCSFTensorConverterD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!163 = !{!15, !15, i64 0}
end_hunk_1
