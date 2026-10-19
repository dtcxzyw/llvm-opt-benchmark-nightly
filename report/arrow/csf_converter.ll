Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/csf_converter?download=true
inline.NumInlined: 1083
inline.NumDeleted: 539
begin_hunk_0_@_ZN5arrow8internal29MakeSparseCSFTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE:bb.a
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !170
  br label %.body

bb.p:                                             ; preds = %.noexc13
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.q:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !43, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20, !noalias !170
  %i.bg = sext i32 %i.aa to i64                   ; 5 uses
  %i.bh = mul nsw i64 %i.bf, %i.bg
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.27") align 8 %15, i64 noundef %i.bh, ptr noundef %3)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %15, align 8, !tbaa !25, !noalias !170
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.v, label %bb.s, !prof !41

bb.s:                                             ; preds = %bb.r
  store ptr null, ptr %30, align 8, !tbaa !25, !alias.scope !170
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %_ZN5arrow6StatusC2ERKS0_.exit236.i unwind label %bb.u

bb.t:                                             ; preds = %bb.q, %bb.n
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.u:                                             ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20, !noalias !170
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !44, !noalias !175 ; 2 uses
  store i64 %i.bn, ptr %16, align 8, !tbaa !44, !alias.scope !176, !noalias !170
  store ptr null, ptr %i.bm, align 8, !tbaa !44, !noalias !175
  %.cast.i = inttoptr i64 %i.bn to ptr            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.cast.i, i64 9
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !52, !range !53, !noundef !54
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %.cast.i, i64 8
  %i.bs = load i8, ptr %i.br, align 8, !range !53
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = select i1 %i.bq, i1 %i.bt, i1 false, !prof !41
  %i.bv = getelementptr inbounds nuw i8, ptr %.cast.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = select i1 %i.bu, ptr %i.bw, ptr null, !prof !41
  %i.by = icmp ugt i64 %i.az, 1152921504606846975
  br i1 %i.by, label %bb.w, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc.i unwind label %bb.ab

.noexc.i:                                         ; preds = %bb.w
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.v
  %.not.i.i.i.i237.i = icmp eq i64 %i.az, 0       ; 2 uses
  br i1 %.not.i.i.i.i237.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bz = shl nuw nsw i64 %i.az, 3                ; 9 uses
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #22
          to label %.noexc238.i unwind label %bb.ab ; 6 uses

.noexc238.i:                                      ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ca, i8 0, i64 %i.bz, i1 false), !tbaa !43
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.az ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !noalias !170
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #22
          to label %.noexc247.i unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit403.thread.i ; 4 uses

.noexc247.i:                                      ; preds = %.noexc238.i
  store ptr %i.cd, ptr %17, align 8, !tbaa !40, !noalias !170
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.az
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !55, !noalias !170
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cd, i8 0, i64 %i.bz, i1 false), !tbaa !43
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bz
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !39, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20, !noalias !170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !noalias !170
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #22
          to label %.noexc257.i unwind label %bb.ac ; 4 uses

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !170
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20, !noalias !170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !noalias !170
  br label %.loopexit539.i

.noexc257.i:                                      ; preds = %.noexc247.i
  store ptr %i.ci, ptr %18, align 8, !tbaa !40, !noalias !170
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.az
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !55, !noalias !170
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ci, i8 -1, i64 %i.bz, i1 false), !tbaa !43
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.bz
  br label %.loopexit539.i

.loopexit539.i:                                   ; preds = %.noexc257.i, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i
  %i.cn = phi ptr [ %i.cj, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.ch, %.noexc257.i ]
  %.sroa.18.0471507.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.cb, %.noexc257.i ] ; 3 uses
  %.sroa.0439.0493505.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.ca, %.noexc257.i ] ; 15 uses
  %.0.i.i.i.i.i.i.i497503.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.cc, %.noexc257.i ] ; 3 uses
  %.0.i.i.i.i.i.i.i254.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i255.i ], [ %i.cm, %.noexc257.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.0.i.i.i.i.i.i.i254.i, ptr %i.co, align 8, !tbaa !39, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20, !noalias !170
  %i.cp = add nsw i64 %i.az, -1                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20, !noalias !170
  invoke void @_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %i.cp, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %.loopexit539.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20, !noalias !170
  invoke void @_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %i.az, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !170
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !56 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !52, !range !53, !noundef !54
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = select i1 %i.cu, ptr %i.cw, ptr null, !prof !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !170
  %i.cy = icmp slt i32 %i.ay, 2
  br i1 %i.cy, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN5arrow6Status8FromArgsIJRA19_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %30, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(19) @.str)
          to label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.x, %bb.w
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit406.i

_ZNSt6vectorIlSaIlEED2Ev.exit403.thread.i:        ; preds = %.noexc238.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !170
  br label %bb.ej

bb.ac:                                            ; preds = %.noexc247.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit400.i

bb.ad:                                            ; preds = %.loopexit539.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !170
  br label %bb.eg

bb.ae:                                            ; preds = %bb.y
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !170
  br label %bb.ef

bb.af:                                            ; preds = %bb.z
  %i.de = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader.i:                                     ; preds = %bb.af
  %i.df = icmp slt i64 %i.de, 1
  br i1 %i.df, label %.critedge219.preheader.i, label %.lr.ph558.i

.lr.ph558.i:                                      ; preds = %.preheader.i
  %i.dg = ashr i64 %i.bg, 2                       ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, 0
  %i.di = icmp slt i32 %i.aa, 1
  %.not.i260.i = icmp eq i32 %i.aa, 1
  %i.dj = zext nneg i32 %i.aa to i64
  %i.dk = sext i32 %i.l to i64                    ; 6 uses
  %i.dl = and i64 %i.bg, -4
  %scevgep.i = getelementptr i8, ptr %i.cx, i64 %i.dl
  %31 = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %.pre589.i.a = load ptr, ptr %17, align 8, !tbaa !40, !noalias !170
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.ag

.critedge219.preheader.i:                         ; preds = %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i, %.preheader.i
  %.not559.i = icmp sgt i64 %i.az, 1
  br i1 %.not559.i, label %.lr.ph561.i, label %.critedge222.i

.lr.ph561.i:                                      ; preds = %.critedge219.preheader.i
  %i.dn = sext i32 %i.l to i64                    ; 3 uses
  br label %bb.ba

bb.ag:                                            ; preds = %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i, %.lr.ph558.i
  %.val592.i = phi ptr [ %.pre589.i.a, %.lr.ph558.i ], [ %.val.i, %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i ] ; 6 uses
  %.0116557.i = phi i64 [ %i.de, %.lr.ph558.i ], [ %i.ir, %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i ] ; 2 uses
  %.0117555.i = phi ptr [ %i.bx, %.lr.ph558.i ], [ %.1118.i, %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i ] ; 6 uses
  %i.do = load ptr, ptr %i.cn, align 8, !tbaa !39, !noalias !170
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %.val592.i to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3                 ; 5 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.i.i.i, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.ag
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !40 ; 2 uses
  %min.iters.check = icmp ult i64 %i.ds, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %i.ds, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.eb, %vector.body ]
  %vec.phi165 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ec, %vector.body ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.val592.i, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load = load <2 x i64>, ptr %i.dv, align 8, !tbaa !43
  %wide.load166 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !43
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load167 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !43
  %wide.load168 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !43
  %i.dz = mul nsw <2 x i64> %wide.load167, %wide.load
  %i.ea = mul nsw <2 x i64> %wide.load168, %wide.load166
  %i.eb = add <2 x i64> %i.dz, %vec.phi           ; 2 uses
  %i.ec = add <2 x i64> %i.ea, %vec.phi165        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ec, %i.eb
  %i.ee = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ds, %n.vec
  br i1 %cmp.n, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %.011.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  %.0910.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ee, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011.i.i.i = phi i64 [ %i.el, %scalar.ph ], [ %.011.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0910.i.i.i = phi i64 [ %i.ek, %scalar.ph ], [ %.0910.i.i.i.ph, %scalar.ph.preheader ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.val592.i, i64 %.011.i.i.i
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !43
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.011.i.i.i
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !43
  %i.ej = mul nsw i64 %i.ei, %i.eg
  %i.ek = add nsw i64 %i.ej, %.0910.i.i.i         ; 2 uses
  %i.el = add nuw nsw i64 %.011.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.el, %i.ds
  br i1 %exitcond.not.i.i.i, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i, label %scalar.ph, !llvm.loop !130

_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i: ; preds = %scalar.ph, %middle.block, %bb.ag
  %.09.lcssa.i.i.i = phi i64 [ 0, %bb.ag ], [ %i.ee, %middle.block ], [ %i.ek, %scalar.ph ] ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.cx, i64 %.09.lcssa.i.i.i ; 5 uses
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %i.bg ; 2 uses
  %i.eo = ptrtoint ptr %i.en to i64
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i
  %scevgep583.i = getelementptr i8, ptr %scevgep.i, i64 %.09.lcssa.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ak, %.lr.ph.i.i.i.i.i.preheader.i
  %.047.i.i.i.i.i.i = phi i64 [ %i.ex, %bb.ak ], [ %i.dg, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.02946.i.i.i.i.i.i = phi ptr [ %i.ew, %bb.ak ], [ %i.em, %.lr.ph.i.i.i.i.i.preheader.i ] ; 9 uses
  %i.ep = load i8, ptr %.02946.i.i.i.i.i.i, align 1, !tbaa !32
  %.not523.i = icmp eq i8 %i.ep, 0
  br i1 %.not523.i, label %bb.ah, label %.loopexit536.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !32
  %.not524.i = icmp eq i8 %i.er, 0
  br i1 %.not524.i, label %bb.ai, label %.loopexit536.i.loopexit.split.loop.exit146

bb.ai:                                            ; preds = %bb.ah
  %i.es = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  %i.et = load i8, ptr %i.es, align 1, !tbaa !32
  %.not525.i = icmp eq i8 %i.et, 0
  br i1 %.not525.i, label %bb.aj, label %.loopexit536.i.loopexit.split.loop.exit144

bb.aj:                                            ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !32
  %.not526.i = icmp eq i8 %i.ev, 0
  br i1 %.not526.i, label %bb.ak, label %.loopexit536.i.loopexit.split.loop.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ew = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 4
  %i.ex = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.ey = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.ey, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !131

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ak, %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.em, %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i ], [ %scevgep583.i, %bb.ak ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i to i64
  %i.ez = sub i64 %i.eo, %.pre-phi.i.i.i.i.i.i
  switch i64 %i.ez, label %.critedge217.i [
    i64 3, label %bb.al
    i64 2, label %bb.an
    i64 1, label %bb.ap
  ]

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fa = load i8, ptr %.029.lcssa.i.i.i.i.i.i, align 1, !tbaa !32
  %.not527.i = icmp eq i8 %i.fa, 0
  br i1 %.not527.i, label %bb.am, label %.loopexit536.i

bb.am:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.fb, %bb.am ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.fc = load i8, ptr %.1.i.i.i.i.i.i, align 1, !tbaa !32
  %.not528.i = icmp eq i8 %i.fc, 0
  br i1 %.not528.i, label %bb.ao, label %.loopexit536.i

bb.ao:                                            ; preds = %bb.an
  %i.fd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.fd, %bb.ao ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.fe = load i8, ptr %.2.i.i.i.i.i.i, align 1, !tbaa !32
  %.not529.i = icmp eq i8 %i.fe, 0
  br i1 %.not529.i, label %.critedge217.i, label %.loopexit536.i

.loopexit536.i.loopexit.split.loop.exit:          ; preds = %bb.aj
  %i.ff = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  br label %.loopexit536.i

.loopexit536.i.loopexit.split.loop.exit144:       ; preds = %bb.ai
  %i.fg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  br label %.loopexit536.i

.loopexit536.i.loopexit.split.loop.exit146:       ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  br label %.loopexit536.i

.loopexit536.i:                                   ; preds = %.lr.ph.i.i.i.i.i.i, %.loopexit536.i.loopexit.split.loop.exit, %.loopexit536.i.loopexit.split.loop.exit144, %.loopexit536.i.loopexit.split.loop.exit146, %bb.ap, %bb.an, %bb.al
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.an ], [ %.029.lcssa.i.i.i.i.i.i, %bb.al ], [ %.2.i.i.i.i.i.i, %bb.ap ], [ %i.fh, %.loopexit536.i.loopexit.split.loop.exit146 ], [ %i.ff, %.loopexit536.i.loopexit.split.loop.exit ], [ %i.fg, %.loopexit536.i.loopexit.split.loop.exit144 ], [ %.02946.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.not530.i = icmp eq ptr %i.en, %.028.i.i.i.i.i.i
  br i1 %.not530.i, label %.critedge217.i, label %bb.aq

bb.aq:                                            ; preds = %.loopexit536.i
  br i1 %i.di, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not.i260.i, label %bb.at, label %bb.as, !prof !36

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0117555.i, ptr align 1 %i.em, i64 %i.dj, i1 false)
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.fi = load i8, ptr %i.em, align 1, !tbaa !32
  store i8 %i.fi, ptr %.0117555.i, align 1, !tbaa !32
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i:            ; preds = %bb.at, %bb.as, %bb.aq
  %i.fj = getelementptr inbounds i8, ptr %.0117555.i, i64 %i.bg
  br i1 %.not.i.i.i.i237.i, label %.critedge215.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i
  %.pre591.i = load ptr, ptr %12, align 8, !tbaa !40, !noalias !170
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %.lr.ph.preheader.i
  %i.fk = phi ptr [ %i.hl, %.critedge.i ], [ %.pre591.i, %.lr.ph.preheader.i ] ; 2 uses
  %.0114554.i = phi i64 [ %i.hn, %.critedge.i ], [ 0, %.lr.ph.preheader.i ] ; 7 uses
  %.0115553.i = phi i1 [ %i.hm, %.critedge.i ], [ false, %.lr.ph.preheader.i ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.0114554.i
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !43 ; 3 uses
  br i1 %.0115553.i, label %.thread510.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i
  %i.fn = load ptr, ptr %17, align 8, !tbaa !40, !noalias !170
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fm
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !43
  %i.fq = load ptr, ptr %18, align 8, !tbaa !40, !noalias !170
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fm
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !43
  %.not531.i = icmp eq i64 %i.fp, %i.fs
  br i1 %.not531.i, label %.critedge.i, label %.thread510.i

.thread510.i:                                     ; preds = %bb.au, %.lr.ph.i
  %i.ft = icmp slt i64 %.0114554.i, %i.cp
  br i1 %i.ft, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %.thread510.i
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0439.0493505.i, i64 %.0114554.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !43
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef nonnull %i.a, i64 noundef %i.fw, i32 noundef %i.l)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  %i.fx = load ptr, ptr %19, align 8, !tbaa !62, !noalias !170
  %i.fy = getelementptr inbounds nuw [56 x i8], ptr %i.fx, i64 %.0114554.i ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40 ; 4 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !67, !noalias !177 ; 2 uses
  %i.gb = add nsw i64 %i.ga, %i.dk                ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !68, !noalias !177 ; 2 uses
  %i.ge = icmp sgt i64 %i.gb, %i.gd
  br i1 %i.ge, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %_ZN5arrow6StatusD2Ev.exit267.i, !prof !36

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !178
  %i.gf = shl nsw i64 %i.gd, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.gb, i64 %i.gf)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %i.fy, i64 noundef %.sroa.speculated.i.i.i, i1 noundef zeroext false)
          to label %.noexc261.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc261.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.gg = load ptr, ptr %9, align 8, !tbaa !25, !noalias !178 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !178
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, label %_ZN5arrow6StatusD2Ev.exit263.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i:         ; preds = %.noexc261.i
  %.pre.i.i = load i64, ptr %i.fz, align 8, !tbaa !67, !noalias !177
  br label %_ZN5arrow6StatusD2Ev.exit267.i

_ZN5arrow6StatusD2Ev.exit263.i:                   ; preds = %.noexc261.i
  store ptr %i.gg, ptr %30, align 8, !tbaa !25, !alias.scope !170
  br label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

_ZN5arrow6StatusD2Ev.exit267.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, %bb.aw
  %i.gi = phi i64 [ %.pre.i.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i ], [ %i.ga, %bb.aw ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !69, !noalias !177
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 %i.gi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gl, ptr nonnull align 1 %i.a, i64 %i.dk, i1 false), !noalias !177
  %i.gm = load i64, ptr %i.fz, align 8, !tbaa !67, !noalias !177
  %i.gn = add nsw i64 %i.gm, %i.dk
  store i64 %i.gn, ptr %i.fz, align 8, !tbaa !67, !noalias !177
  store ptr null, ptr %30, align 8, !tbaa !25, !alias.scope !170
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit267.i, %.thread510.i
  %i.go = load ptr, ptr %17, align 8, !tbaa !40, !noalias !170
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.fm
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !43
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef nonnull %i.a, i64 noundef %i.gq, i32 noundef %i.l)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  %i.gr = load ptr, ptr %21, align 8, !tbaa !62, !noalias !170
  %i.gs = getelementptr inbounds nuw [56 x i8], ptr %i.gr, i64 %.0114554.i ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 40 ; 4 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !67, !noalias !179 ; 2 uses
  %i.gv = add nsw i64 %i.gu, %i.dk                ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !68, !noalias !179 ; 2 uses
  %i.gy = icmp sgt i64 %i.gv, %i.gx
  br i1 %i.gy, label %_ZN5arrow6StatusD2Ev.exit.i268.i, label %_ZN5arrow6StatusD2Ev.exit279.i, !prof !36

_ZN5arrow6StatusD2Ev.exit.i268.i:                 ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !180
  %i.gz = shl nsw i64 %i.gx, 1
  %.sroa.speculated.i.i269.i = call noundef i64 @llvm.smax.i64(i64 %i.gv, i64 %i.gz)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.gs, i64 noundef %.sroa.speculated.i.i269.i, i1 noundef zeroext false)
          to label %.noexc272.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc272.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i268.i
  %i.ha = load ptr, ptr %8, align 8, !tbaa !25, !noalias !180 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !180
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i, label %_ZN5arrow6StatusD2Ev.exit275.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i:      ; preds = %.noexc272.i
  %.pre.i271.i = load i64, ptr %i.gt, align 8, !tbaa !67, !noalias !179
  br label %_ZN5arrow6StatusD2Ev.exit279.i

_ZN5arrow6StatusD2Ev.exit275.i:                   ; preds = %.noexc272.i
  store ptr %i.ha, ptr %30, align 8, !tbaa !25, !alias.scope !170
  br label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

_ZN5arrow6StatusD2Ev.exit279.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i, %bb.ay
  %i.hc = phi i64 [ %.pre.i271.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i ], [ %i.gu, %bb.ay ]
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !69, !noalias !179
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 %i.hc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr nonnull align 1 %i.a, i64 %i.dk, i1 false), !noalias !179
  %i.hg = load i64, ptr %i.gt, align 8, !tbaa !67, !noalias !179
  %i.hh = add nsw i64 %i.hg, %i.dk
  store i64 %i.hh, ptr %i.gt, align 8, !tbaa !67, !noalias !179
  store ptr null, ptr %30, align 8, !tbaa !25, !alias.scope !170
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0439.0493505.i, i64 %.0114554.i ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !43
  %i.hk = add nsw i64 %i.hj, 1
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !43
  %.pre590.i = load ptr, ptr %12, align 8, !tbaa !40, !noalias !170
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit279.i, %bb.au
  %i.hl = phi ptr [ %.pre590.i, %_ZN5arrow6StatusD2Ev.exit279.i ], [ %i.fk, %bb.au ]
  %i.hm = phi i1 [ true, %_ZN5arrow6StatusD2Ev.exit279.i ], [ false, %bb.au ]
  %i.hn = add nuw nsw i64 %.0114554.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hn, %31
  br i1 %exitcond.not.i, label %.critedge215.i, label %.lr.ph.i, !llvm.loop !136

.critedge215.i:                                   ; preds = %.critedge.i, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i
  %i.ho = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %.critedge215..critedge217_crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge215..critedge217_crit_edge.i:            ; preds = %.critedge215.i
  %.val.pre.i = load ptr, ptr %17, align 8, !tbaa !40, !noalias !170
  br label %.critedge217.i

.critedge217.i:                                   ; preds = %.critedge215..critedge217_crit_edge.i, %.loopexit536.i, %bb.ap, %._crit_edge.i.i.i.i.i.i
  %.val.i = phi ptr [ %.val.pre.i, %.critedge215..critedge217_crit_edge.i ], [ %.val592.i, %.loopexit536.i ], [ %.val592.i, %._crit_edge.i.i.i.i.i.i ], [ %.val592.i, %bb.ap ] ; 4 uses
  %.1118.i = phi ptr [ %i.fj, %.critedge215..critedge217_crit_edge.i ], [ %.0117555.i, %.loopexit536.i ], [ %.0117555.i, %._crit_edge.i.i.i.i.i.i ], [ %.0117555.i, %bb.ap ]
  %.val229.i = load ptr, ptr %i.e, align 8, !tbaa !40 ; 3 uses
  %.val230.i = load ptr, ptr %i.ar, align 8, !tbaa !39
  %.val231.i = load ptr, ptr %12, align 8, !tbaa !40, !noalias !170 ; 3 uses
  %i.hp = ptrtoint ptr %.val230.i to i64
  %i.hq = ptrtoint ptr %.val229.i to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = ashr exact i64 %i.hr, 3                 ; 2 uses
  %i.ht = add nsw i64 %i.hs, -1                   ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.val231.i, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !43 ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.hv ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !43
  %i.hy = add nsw i64 %i.hx, 1                    ; 2 uses
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !43
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.val229.i, i64 %i.hv
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !43
  %i.ib = icmp eq i64 %i.hy, %i.ia
  %i.ic = icmp sgt i64 %i.hs, 1
  %or.cond.i.i = and i1 %i.ic, %i.ib
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %.critedge217.i, %bb.az
  %.05.i.i = phi i64 [ %i.ik, %bb.az ], [ %i.ht, %.critedge217.i ] ; 3 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.val231.i, i64 %.05.i.i
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !43 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ie ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !43
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.val229.i, i64 %i.ie
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !43
  %i.ij = icmp eq i64 %i.ig, %i.ii
  br i1 %i.ij, label %bb.az, label %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i

bb.az:                                            ; preds = %.lr.ph.i.i
  store i64 0, ptr %i.if, align 8, !tbaa !43
  %i.ik = add nsw i64 %.05.i.i, -1                ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.val231.i, i64 %i.ik
  %i.im = load i64, ptr %i.il, align 8, !tbaa !43
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.im ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !43
  %i.ip = add nsw i64 %i.io, 1
  store i64 %i.ip, ptr %i.in, align 8, !tbaa !43
  %i.iq = icmp sgt i64 %.05.i.i, 1
  br i1 %i.iq, label %.lr.ph.i.i, label %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i, !llvm.loop !137

_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i: ; preds = %bb.az, %.lr.ph.i.i, %.critedge217.i
  %i.ir = add nsw i64 %.0116557.i, -1
  %i.is = icmp slt i64 %.0116557.i, 2
  br i1 %i.is, label %.critedge219.preheader.i, label %bb.ag, !llvm.loop !138

bb.ba:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit291.i, %.lr.ph561.i
  %.0111560.i = phi i64 [ 0, %.lr.ph561.i ], [ %i.it, %_ZN5arrow6StatusD2Ev.exit291.i ] ; 2 uses
  %i.it = add nuw nsw i64 %.0111560.i, 1          ; 3 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0439.0493505.i, i64 %i.it
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !43
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef nonnull %i.a, i64 noundef %i.iv, i32 noundef %i.l)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  %i.iw = load ptr, ptr %19, align 8, !tbaa !62, !noalias !170
  %i.ix = getelementptr inbounds nuw [56 x i8], ptr %i.iw, i64 %.0111560.i ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 40 ; 4 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !67, !noalias !181 ; 2 uses
  %i.ja = add nsw i64 %i.iz, %i.dn                ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !68, !noalias !181 ; 2 uses
  %i.jd = icmp sgt i64 %i.ja, %i.jc
  br i1 %i.jd, label %_ZN5arrow6StatusD2Ev.exit.i280.i, label %_ZN5arrow6StatusD2Ev.exit291.i, !prof !36

_ZN5arrow6StatusD2Ev.exit.i280.i:                 ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !182
  %i.je = shl nsw i64 %i.jc, 1
  %.sroa.speculated.i.i281.i = call noundef i64 @llvm.smax.i64(i64 %i.ja, i64 %i.je)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.ix, i64 noundef %.sroa.speculated.i.i281.i, i1 noundef zeroext false)
          to label %.noexc284.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc284.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i280.i
  %i.jf = load ptr, ptr %7, align 8, !tbaa !25, !noalias !182 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !182
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i, label %.critedge221.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i:      ; preds = %.noexc284.i
  %.pre.i283.i = load i64, ptr %i.iy, align 8, !tbaa !67, !noalias !181
  br label %_ZN5arrow6StatusD2Ev.exit291.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.av, %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.ax, %_ZN5arrow6StatusD2Ev.exit.i268.i, %bb.ba, %_ZN5arrow6StatusD2Ev.exit.i280.i, %.critedge215.i, %.critedge222.i, %bb.af, %bb.aa
  %lpad.loopexit.split-lp174 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_ZN5arrow6StatusD2Ev.exit291.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i, %bb.bb
  %i.jh = phi i64 [ %.pre.i283.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i ], [ %i.iz, %bb.bb ]
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !69, !noalias !181
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %i.jh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jk, ptr nonnull align 1 %i.a, i64 %i.dn, i1 false), !noalias !181
  %i.jl = load i64, ptr %i.iy, align 8, !tbaa !67, !noalias !181
  %i.jm = add nsw i64 %i.jl, %i.dn
  store i64 %i.jm, ptr %i.iy, align 8, !tbaa !67, !noalias !181
  store ptr null, ptr %30, align 8, !tbaa !25, !alias.scope !170
  %exitcond584.not.i = icmp eq i64 %i.it, %i.cp
  br i1 %exitcond584.not.i, label %.critedge222.i, label %bb.ba, !llvm.loop !141

.critedge221.i:                                   ; preds = %.noexc284.i
  store ptr %i.jf, ptr %30, align 8, !tbaa !25, !alias.scope !170
  br label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

.critedge222.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit291.i, %.critedge219.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !170
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %.noexc294.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc294.i:                                      ; preds = %.critedge222.i
  %i.jn = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !31, !noalias !170 ; 8 uses
  %i.jq = load <2 x ptr>, ptr %i.jn, align 16, !tbaa !70, !noalias !170
  %i.jr = load <2 x ptr>, ptr %6, align 16, !tbaa !70, !noalias !170
  store <2 x ptr> %i.jr, ptr %i.jn, align 16, !tbaa !70, !noalias !170
  store <2 x ptr> %i.jq, ptr %6, align 16, !tbaa !70, !noalias !170
  %.not.i.i.i.i292.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i292.i, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %.noexc294.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 4 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 4294967297
  %i.jv = trunc i64 %i.jt to i32                  ; 2 uses
  br i1 %i.ju, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.js, align 8, !tbaa !34
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  store i32 0, ptr %i.jw, align 4, !tbaa !35
  %i.jx = load ptr, ptr %i.jp, align 8, !tbaa !30
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #20, !inline_history !142
  %i.ka = load ptr, ptr %i.jp, align 8, !tbaa !30
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #20, !inline_history !142
  br label %bb.bi

bb.be:                                            ; preds = %bb.bc
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32, !noalias !170
  %.not.i.i.i.i.i293.i = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i.i.i293.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jv, %bb.bf ], [ %i.kf, %bb.bg ]
  %i.kg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kg, label %bb.bh, label %bb.bi, !prof !36

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #20
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bd, %.noexc294.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20, !noalias !170
  %i.kh = icmp ugt i64 %i.cp, 576460752303423487
  br i1 %i.kh, label %bb.bj, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc296.i unwind label %bb.bv

.noexc296.i:                                      ; preds = %bb.bj
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.bi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false), !noalias !170
  %.not.i.i.i.i295.i = icmp eq i64 %i.cp, 0       ; 2 uses
  br i1 %.not.i.i.i.i295.i, label %.thread511.i, label %.lr.ph.preheader.i.i.i.i.i.i

.thread511.i:                                     ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %23, i64 8
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
!119 = distinct !{!119, i1 true, !"_ZN5arrow8internal12_GLOBAL__N_124SparseCSFTensorConverter7ConvertEv"}
!120 = distinct !{!120, !119, !"_ZN5arrow8internal12_GLOBAL__N_124SparseCSFTensorConverter7ConvertEv: argument 0"}
!121 = distinct !{null}
!122 = distinct !{!122, i1 true, !"_ZNK5arrow6Tensor4typeEv"}
!123 = distinct !{!123, !122, !"_ZNK5arrow6Tensor4typeEv: argument 0"}
!124 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!125 = distinct !{!125, i1 true, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!126 = distinct !{!126, !125, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!127 = distinct !{!127, i1 true, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!128 = distinct !{!128, !127, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!129 = distinct !{!129, !57, !58, !59}
!130 = distinct !{!130, !57, !59, !58}
!131 = distinct !{!131, !57}
!132 = distinct !{!132, i1 true, !"_ZN5arrow13BufferBuilder6AppendEPKvl"}
!133 = distinct !{!133, !132, !"_ZN5arrow13BufferBuilder6AppendEPKvl: argument 0"}
!134 = distinct !{!134, i1 true, !"_ZN5arrow13BufferBuilder6AppendEPKvl"}
!135 = distinct !{!135, !134, !"_ZN5arrow13BufferBuilder6AppendEPKvl: argument 0"}
!136 = distinct !{!136, !57}
!137 = distinct !{!137, !57}
!138 = distinct !{!138, !57}
!139 = distinct !{!139, i1 true, !"_ZN5arrow13BufferBuilder6AppendEPKvl"}
!140 = distinct !{!140, !139, !"_ZN5arrow13BufferBuilder6AppendEPKvl: argument 0"}
!141 = distinct !{!141, !57}
!142 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!143 = distinct !{!143, !57}
!144 = distinct !{!144, !57}
!145 = distinct !{!145, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEE11ValueUnsafeEv"}
!146 = distinct !{!146, !145, !"_ZNO5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEE11ValueUnsafeEv: argument 0"}
!147 = distinct !{!147, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEE15MoveValueUnsafeEv"}
!148 = distinct !{!148, !147, !"_ZN5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEE15MoveValueUnsafeEv: argument 0"}
!149 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!150 = distinct !{!150, i1 true, !"_ZN5arrow6Status2OKEv"}
!151 = distinct !{!151, !150, !"_ZN5arrow6Status2OKEv: argument 0"}
!152 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!153 = distinct !{null, ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!154 = distinct !{null, ptr @_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN5arrow13BufferBuilderEEvT_S3_, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!155 = distinct !{null, null, null}
!156 = distinct !{null, ptr @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev, null, null, null, null}
!157 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!158 = distinct !{null, null, null, null}
!159 = distinct !{!159, i1 true, !"_ZN5arrow6Status2OKEv"}
!160 = distinct !{!160, !159, !"_ZN5arrow6Status2OKEv: argument 0"}
!161 = distinct !{ptr @_ZN5arrow8internal12_GLOBAL__N_124SparseCSFTensorConverterD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!162 = distinct !{ptr @_ZN5arrow8internal12_GLOBAL__N_124SparseCSFTensorConverterD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!163 = !{!15, !15, i64 0}
end_hunk_1
