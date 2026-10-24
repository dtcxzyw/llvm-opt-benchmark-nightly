Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/scatter_layer?download=true
inline.NumInlined: 4231
inline.NumDeleted: 1143
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIbiZNS6_17reductionDispatchIbiJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E0_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation:bb.a

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !94
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !102
  store ptr %i.c, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E0_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E0_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E0_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E0_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E0_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !85     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86   ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !188
  %i.g = load ptr, ptr %0, align 8, !tbaa !189, !nonnull !103, !align !104
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !190, !nonnull !103, !align !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !191, !nonnull !103, !align !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !192, !nonnull !103, !align !106
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !103, !align !106 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.u, label %.lr.ph87.split.us, label %.lr.ph87.split

.lr.ph87.split.us:                                ; preds = %.lr.ph87
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !63
  %narrow.i61.us = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = zext nneg i32 %narrow.i61.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %.lr.ph87.split.us
  %.04285.us = phi i32 [ %i.a, %.lr.ph87.split.us ], [ %i.bx, %bb.c ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZNK2cv8MatShapeixEm.exit72.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph.us ], [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04381.us = phi i64 [ 0, %.lr.ph.us ], [ %spec.select.us, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04480.us = phi i32 [ %.04285.us, %.lr.ph.us ], [ %i.ai, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04579.us = phi i64 [ 0, %.lr.ph.us ], [ %i.az, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04678.us = phi i64 [ 0, %.lr.ph.us ], [ %i.at, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 6 uses
  %i.af = icmp ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %_ZNK2cv8MatShapeixEm.exit72.us, label %.split.us

_ZNK2cv8MatShapeixEm.exit72.us:                   ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !64 ; 2 uses
  %i.ai = sdiv i32 %.04480.us, %i.ah              ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sext i32 %.04480.us to i64
  %i.al = sext i32 %i.ah to i64
  %i.am = mul nsw i64 %i.aj, %i.al
  %i.an = sub nsw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !193, !nonnull !103, !align !104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = mul i64 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %i.as, %.04678.us               ; 2 uses
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !194, !nonnull !103, !align !104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !81
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.ax, %i.an
  %i.az = add i64 %i.ay, %.04579.us               ; 3 uses
  %i.ba = load i32, ptr %i.aa, align 8, !tbaa !44 ; 3 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp eq i64 %indvars.iv.next, %i.bb
  %spec.select.us = select i1 %i.bc, i64 %i.as, i64 %.04381.us ; 2 uses
  %i.bd = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bd, label %bb.b, label %._crit_edge.us, !llvm.loop !178

_ZNK2cv8MatShapeixEm.exit60.us:                   ; preds = %._crit_edge.us
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.az
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bz
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !64 ; 3 uses
  %i.bj = add nsw i32 %i.bi, %i.bf
  %i.bk = srem i32 %i.bj, %i.bi                   ; 2 uses
  %i.bl = or i32 %i.bk, %i.bi
  %or.cond.us = icmp sgt i32 %i.bl, -1
  br i1 %or.cond.us, label %bb.c, label %.split92.us

bb.c:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us
  %i.bm = sub i64 %i.at, %spec.select.us
  %i.bn = zext nneg i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bz
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !45
  %i.bq = mul i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.az
  %i.bs = getelementptr i8, ptr %i.q, i64 %i.bm
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bq  ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bw = or i8 %i.bv, %i.bu
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !108
  %i.bx = add nsw i32 %.04285.us, 1               ; 2 uses
  %exitcond96.not = icmp eq i32 %i.bx, %i.c
  br i1 %exitcond96.not, label %._crit_edge88, label %.lr.ph.us, !llvm.loop !179

._crit_edge.us:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit72.us
  %i.by = load ptr, ptr %i.ab, align 8, !tbaa !195, !nonnull !103, !align !106 ; 2 uses
  %i.bz = sext i32 %i.ba to i64                   ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !63
  %narrow.i.us = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 1)
  %i.cb = icmp ult i32 %i.ba, %narrow.i.us
  br i1 %i.cb, label %_ZNK2cv8MatShapeixEm.exit60.us, label %.split90.us

.lr.ph87.split:                                   ; preds = %.lr.ph87
  %i.cc = load ptr, ptr %i.ab, align 8, !tbaa !195, !nonnull !103, !align !106 ; 2 uses
  %i.cd = load i32, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = load i32, ptr %i.cc, align 4, !tbaa !63
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 1)
  %i.cg = icmp ult i32 %i.cd, %narrow.i
  br i1 %i.cg, label %.lr.ph87.split.split, label %.split90.us

.lr.ph87.split.split:                             ; preds = %.lr.ph87.split
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ce
  %i.cj = load i32, ptr %i.i, align 4, !tbaa !64
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !64 ; 3 uses
  %i.cl = add nsw i32 %i.ck, %i.cj
  %i.cm = srem i32 %i.cl, %i.ck                   ; 2 uses
  %i.cn = or i32 %i.cm, %i.ck
  %or.cond = icmp sgt i32 %i.cn, -1
  br i1 %or.cond, label %iter.check, label %.split92.us

iter.check:                                       ; preds = %.lr.ph87.split.split
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = load ptr, ptr %i.y, align 8, !tbaa !193, !nonnull !103, !align !104
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ce
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !45
  %i.ct = mul i64 %i.cs, %i.co                    ; 2 uses
  %i.cu = getelementptr i8, ptr %i.q, i64 %i.ct   ; 9 uses
  %.pre = load i8, ptr %i.cu, align 1, !tbaa !108, !range !109 ; 4 uses
  %i.cv = sub i32 %i.c, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.cv, 4
  br i1 %min.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cw = getelementptr i8, ptr %i.q, i64 %i.ct
  %i.cx = getelementptr i8, ptr %i.cw, i64 1
  %i.cy = getelementptr i8, ptr %i.m, i64 1
  %bound0 = icmp ult ptr %i.cu, %i.cy
  %bound1 = icmp ult ptr %i.m, %i.cx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check115 = icmp ult i32 %i.cv, 32
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = and i32 %i.cv, 28
  %n.vec = and i32 %i.cv, -32                     ; 4 uses
  %i.da = add i32 %i.a, %n.vec
  %i.db = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.pre, i64 0
  %i.dc = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !196, !noundef !103
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.dc, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.dd = or <16 x i8> %broadcast.splat, %i.db
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.de = icmp eq i32 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %i.df = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %i.dd) ; 3 uses
  store i8 %i.df, ptr %i.cu, align 1, !tbaa !108, !alias.scope !197, !noalias !196
  %cmp.n = icmp eq i32 %i.cv, %n.vec
  br i1 %cmp.n, label %._crit_edge88, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.cz, 0
  br i1 %min.epilog.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.df, %vec.epilog.iter.check ], [ %.pre, %vector.main.loop.iter.check ]
  %n.vec117 = and i32 %i.cv, -4                   ; 3 uses
  %i.dg = add i32 %i.a, %n.vec117
  %i.dh = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  %i.di = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !196, !noundef !103
  %broadcast.splatinsert120 = insertelement <4 x i8> poison, i8 %i.di, i64 0
  %broadcast.splat121 = shufflevector <4 x i8> %broadcast.splatinsert120, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.dj = or <4 x i8> %broadcast.splat121, %i.dh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ]
  %index.next122 = add nuw i32 %index118, 4       ; 2 uses
  %i.dk = icmp eq i32 %index.next122, %n.vec117
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !184

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dl = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.dj) ; 2 uses
  store i8 %i.dl, ptr %i.cu, align 1, !tbaa !108, !alias.scope !197, !noalias !196
  %cmp.n123 = icmp eq i32 %i.cv, %n.vec117
  br i1 %cmp.n123, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60.preheader

_ZNK2cv8MatShapeixEm.exit60.preheader:            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.pre, %iter.check ], [ %.pre, %vector.memcheck ], [ %i.df, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ] ; 2 uses
  %.04285.ph = phi i32 [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.da, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ] ; 4 uses
  %i.dm = sub i32 %i.c, %.04285.ph
  %xtraiter = and i32 %i.dm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol

_ZNK2cv8MatShapeixEm.exit60.prol:                 ; preds = %_ZNK2cv8MatShapeixEm.exit60.preheader, %_ZNK2cv8MatShapeixEm.exit60.prol
  %i.dn = phi i8 [ %i.dp, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %.04285.prol = phi i32 [ %i.dq, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.04285.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ 0, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %i.do = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dp = or i8 %i.do, %i.dn                      ; 3 uses
  store i8 %i.dp, ptr %i.cu, align 1, !tbaa !108
  %i.dq = add nsw i32 %.04285.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol, !llvm.loop !185

_ZNK2cv8MatShapeixEm.exit60.prol.loopexit:        ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol, %_ZNK2cv8MatShapeixEm.exit60.preheader
  %.unr = phi i8 [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.dp, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %.04285.unr = phi i32 [ %.04285.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.dq, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %i.dr = sub i32 %.04285.ph, %i.c
  %i.ds = icmp ugt i32 %i.dr, -4
  br i1 %i.ds, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60

._crit_edge88:                                    ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60, %bb.c, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

_ZNK2cv8MatShapeixEm.exit60:                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60
  %i.dt = phi i8 [ %i.eb, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %.04285 = phi i32 [ %i.ec, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.04285.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %i.du = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dv = or i8 %i.du, %i.dt                      ; 2 uses
  store i8 %i.dv, ptr %i.cu, align 1, !tbaa !108
  %i.dw = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dx = or i8 %i.dw, %i.dv                      ; 2 uses
  store i8 %i.dx, ptr %i.cu, align 1, !tbaa !108
  %i.dy = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dz = or i8 %i.dy, %i.dx                      ; 2 uses
  store i8 %i.dz, ptr %i.cu, align 1, !tbaa !108
  %i.ea = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.eb = or i8 %i.ea, %i.dz                      ; 2 uses
  store i8 %i.eb, ptr %i.cu, align 1, !tbaa !108
  %i.ec = add nsw i32 %.04285, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ec, %i.c
  br i1 %exitcond.not.3, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60, !llvm.loop !186

.split90.us:                                      ; preds = %._crit_edge.us, %.lr.ph87.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.split90.us
  unreachable

bb.e:                                             ; preds = %.split90.us
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !15
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

.split.us:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.split.us
  unreachable

bb.g:                                             ; preds = %.split.us
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.g
  %i.en = load i64, ptr %i.el, align 8, !tbaa !15
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

.split92.us:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.us, %.lr.ph87.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.split92.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_, ptr noundef nonnull @.str.9, i32 noundef 149) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.split92.us
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !15
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.j ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.eq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIbiZNS6_17reductionDispatchIbiJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E1_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94
  tail call void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E1_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIbiZNS6_17reductionDispatchIbiJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E1_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E1_EEvRKT1_S6_S6_S6_S7_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !101
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !94
  store ptr %i.a, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !94
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !102
  store ptr %i.c, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E1_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !85     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86   ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !208
  %i.g = load ptr, ptr %0, align 8, !tbaa !209, !nonnull !103, !align !104
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !210, !nonnull !103, !align !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !211, !nonnull !103, !align !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !212, !nonnull !103, !align !106
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !103, !align !106 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.u, label %.lr.ph87.split.us, label %.lr.ph87.split

.lr.ph87.split.us:                                ; preds = %.lr.ph87
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !63
  %narrow.i61.us = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = zext nneg i32 %narrow.i61.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %.lr.ph87.split.us
  %.04285.us = phi i32 [ %i.a, %.lr.ph87.split.us ], [ %i.bw, %bb.c ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZNK2cv8MatShapeixEm.exit72.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph.us ], [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04381.us = phi i64 [ 0, %.lr.ph.us ], [ %spec.select.us, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04480.us = phi i32 [ %.04285.us, %.lr.ph.us ], [ %i.ai, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04579.us = phi i64 [ 0, %.lr.ph.us ], [ %i.az, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04678.us = phi i64 [ 0, %.lr.ph.us ], [ %i.at, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 6 uses
  %i.af = icmp ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %_ZNK2cv8MatShapeixEm.exit72.us, label %.split.us

_ZNK2cv8MatShapeixEm.exit72.us:                   ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !64 ; 2 uses
  %i.ai = sdiv i32 %.04480.us, %i.ah              ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sext i32 %.04480.us to i64
  %i.al = sext i32 %i.ah to i64
  %i.am = mul nsw i64 %i.aj, %i.al
  %i.an = sub nsw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !213, !nonnull !103, !align !104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = mul i64 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %i.as, %.04678.us               ; 2 uses
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !214, !nonnull !103, !align !104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !81
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.ax, %i.an
  %i.az = add i64 %i.ay, %.04579.us               ; 3 uses
  %i.ba = load i32, ptr %i.aa, align 8, !tbaa !44 ; 3 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp eq i64 %indvars.iv.next, %i.bb
  %spec.select.us = select i1 %i.bc, i64 %i.as, i64 %.04381.us ; 2 uses
  %i.bd = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bd, label %bb.b, label %._crit_edge.us, !llvm.loop !198

_ZNK2cv8MatShapeixEm.exit60.us:                   ; preds = %._crit_edge.us
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.az
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.by
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !64 ; 3 uses
  %i.bj = add nsw i32 %i.bi, %i.bf
  %i.bk = srem i32 %i.bj, %i.bi                   ; 2 uses
  %i.bl = or i32 %i.bk, %i.bi
  %or.cond.us = icmp sgt i32 %i.bl, -1
  br i1 %or.cond.us, label %bb.c, label %.split92.us

bb.c:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us
  %i.bm = sub i64 %i.at, %spec.select.us
  %i.bn = zext nneg i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.by
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !45
  %i.bq = mul i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.az
  %i.bs = getelementptr i8, ptr %i.q, i64 %i.bm
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bq  ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !108, !range !109, !noundef !103
  %narrow.i73.us = mul nuw nsw i8 %i.bv, %i.bu
  store i8 %narrow.i73.us, ptr %i.bt, align 1, !tbaa !108
  %i.bw = add nsw i32 %.04285.us, 1               ; 2 uses
  %exitcond96.not = icmp eq i32 %i.bw, %i.c
  br i1 %exitcond96.not, label %._crit_edge88, label %.lr.ph.us, !llvm.loop !199

._crit_edge.us:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit72.us
  %i.bx = load ptr, ptr %i.ab, align 8, !tbaa !215, !nonnull !103, !align !106 ; 2 uses
  %i.by = sext i32 %i.ba to i64                   ; 2 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !63
  %narrow.i.us = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 1)
  %i.ca = icmp ult i32 %i.ba, %narrow.i.us
  br i1 %i.ca, label %_ZNK2cv8MatShapeixEm.exit60.us, label %.split90.us

.lr.ph87.split:                                   ; preds = %.lr.ph87
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !215, !nonnull !103, !align !106 ; 2 uses
  %i.cc = load i32, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = load i32, ptr %i.cb, align 4, !tbaa !63
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 1)
  %i.cf = icmp ult i32 %i.cc, %narrow.i
  br i1 %i.cf, label %.lr.ph87.split.split, label %.split90.us

.lr.ph87.split.split:                             ; preds = %.lr.ph87.split
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cd
  %i.ci = load i32, ptr %i.i, align 4, !tbaa !64
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !64 ; 3 uses
  %i.ck = add nsw i32 %i.cj, %i.ci
  %i.cl = srem i32 %i.ck, %i.cj                   ; 2 uses
  %i.cm = or i32 %i.cl, %i.cj
  %or.cond = icmp sgt i32 %i.cm, -1
  br i1 %or.cond, label %iter.check, label %.split92.us

iter.check:                                       ; preds = %.lr.ph87.split.split
  %i.cn = zext nneg i32 %i.cl to i64
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !213, !nonnull !103, !align !104
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !81
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cd
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !45
  %i.cs = mul i64 %i.cr, %i.cn                    ; 2 uses
  %i.ct = getelementptr i8, ptr %i.q, i64 %i.cs   ; 9 uses
  %.pre = load i8, ptr %i.ct, align 1, !tbaa !108, !range !109 ; 4 uses
  %i.cu = sub i32 %i.c, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.cu, 4
  br i1 %min.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cv = getelementptr i8, ptr %i.q, i64 %i.cs
  %i.cw = getelementptr i8, ptr %i.cv, i64 1
  %i.cx = getelementptr i8, ptr %i.m, i64 1
  %bound0 = icmp ult ptr %i.ct, %i.cx
  %bound1 = icmp ult ptr %i.m, %i.cw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check115 = icmp ult i32 %i.cu, 32
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cy = and i32 %i.cu, 28
  %n.vec = and i32 %i.cu, -32                     ; 4 uses
  %i.cz = add i32 %i.a, %n.vec
  %i.da = insertelement <16 x i8> <i8 poison, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, i8 %.pre, i64 0
  %i.db = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !216, !noundef !103
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.db, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <16 x i8> [ %i.da, %vector.ph ], [ %i.dc, %vector.body ]
  %vec.phi116 = phi <16 x i8> [ splat (i8 1), %vector.ph ], [ %i.dd, %vector.body ]
  %i.dc = mul nuw <16 x i8> %broadcast.splat, %vec.phi ; 2 uses
  %i.dd = mul nuw <16 x i8> %broadcast.splat, %vec.phi116 ; 2 uses
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.de = icmp eq i32 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <16 x i8> %i.dd, %i.dc
  %i.df = tail call i8 @llvm.vector.reduce.mul.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  store i8 %i.df, ptr %i.ct, align 1, !tbaa !108, !alias.scope !217, !noalias !216
  %cmp.n = icmp eq i32 %i.cu, %n.vec
  br i1 %cmp.n, label %._crit_edge88, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.cy, 0
  br i1 %min.epilog.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.df, %vec.epilog.iter.check ], [ %.pre, %vector.main.loop.iter.check ]
  %n.vec117 = and i32 %i.cu, -4                   ; 3 uses
  %i.dg = add i32 %i.a, %n.vec117
  %i.dh = insertelement <4 x i8> <i8 poison, i8 1, i8 1, i8 1>, i8 %bc.merge.rdx, i64 0
  %i.di = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !216, !noundef !103
  %broadcast.splatinsert120 = insertelement <4 x i8> poison, i8 %i.di, i64 0
  %broadcast.splat121 = shufflevector <4 x i8> %broadcast.splatinsert120, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ]
  %vec.phi119 = phi <4 x i8> [ %i.dh, %vec.epilog.ph ], [ %i.dj, %vec.epilog.vector.body ]
  %i.dj = mul nuw <4 x i8> %broadcast.splat121, %vec.phi119 ; 2 uses
  %index.next122 = add nuw i32 %index118, 4       ; 2 uses
  %i.dk = icmp eq i32 %index.next122, %n.vec117
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !204

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dl = tail call i8 @llvm.vector.reduce.mul.v4i8(<4 x i8> %i.dj) ; 2 uses
  store i8 %i.dl, ptr %i.ct, align 1, !tbaa !108, !alias.scope !217, !noalias !216
  %cmp.n123 = icmp eq i32 %i.cu, %n.vec117
  br i1 %cmp.n123, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60.preheader

_ZNK2cv8MatShapeixEm.exit60.preheader:            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.pre, %iter.check ], [ %.pre, %vector.memcheck ], [ %i.df, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ] ; 2 uses
  %.04285.ph = phi i32 [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.cz, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ] ; 4 uses
  %i.dm = sub i32 %i.c, %.04285.ph
  %xtraiter = and i32 %i.dm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol

_ZNK2cv8MatShapeixEm.exit60.prol:                 ; preds = %_ZNK2cv8MatShapeixEm.exit60.preheader, %_ZNK2cv8MatShapeixEm.exit60.prol
  %i.dn = phi i8 [ %narrow.i73.prol, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %.04285.prol = phi i32 [ %i.dp, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.04285.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ 0, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %i.do = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %narrow.i73.prol = mul nuw nsw i8 %i.do, %i.dn  ; 3 uses
  store i8 %narrow.i73.prol, ptr %i.ct, align 1, !tbaa !108
  %i.dp = add nsw i32 %.04285.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol, !llvm.loop !205

_ZNK2cv8MatShapeixEm.exit60.prol.loopexit:        ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol, %_ZNK2cv8MatShapeixEm.exit60.preheader
  %.unr = phi i8 [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %narrow.i73.prol, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %.04285.unr = phi i32 [ %.04285.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.dp, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %i.dq = sub i32 %.04285.ph, %i.c
  %i.dr = icmp ugt i32 %i.dq, -4
  br i1 %i.dr, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60

._crit_edge88:                                    ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60, %bb.c, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

_ZNK2cv8MatShapeixEm.exit60:                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60
  %i.ds = phi i8 [ %narrow.i73.3, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %.04285 = phi i32 [ %i.dx, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.04285.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %i.dt = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %narrow.i73 = mul nuw nsw i8 %i.dt, %i.ds       ; 2 uses
  store i8 %narrow.i73, ptr %i.ct, align 1, !tbaa !108
  %i.du = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %narrow.i73.1 = mul nuw nsw i8 %i.du, %narrow.i73 ; 2 uses
  store i8 %narrow.i73.1, ptr %i.ct, align 1, !tbaa !108
  %i.dv = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %narrow.i73.2 = mul nuw nsw i8 %i.dv, %narrow.i73.1 ; 2 uses
  store i8 %narrow.i73.2, ptr %i.ct, align 1, !tbaa !108
  %i.dw = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %narrow.i73.3 = mul nuw nsw i8 %i.dw, %narrow.i73.2 ; 2 uses
  store i8 %narrow.i73.3, ptr %i.ct, align 1, !tbaa !108
  %i.dx = add nsw i32 %.04285, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.dx, %i.c
  br i1 %exitcond.not.3, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60, !llvm.loop !206

.split90.us:                                      ; preds = %._crit_edge.us, %.lr.ph87.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.split90.us
  unreachable

bb.e:                                             ; preds = %.split90.us
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %i.dz = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !15
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

.split.us:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.split.us
  unreachable

bb.g:                                             ; preds = %.split.us
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.g
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !15
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

.split92.us:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.us, %.lr.ph87.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.split92.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_, ptr noundef nonnull @.str.9, i32 noundef 149) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.split92.us
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !15
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.j ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.el, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIbiZNS6_17reductionDispatchIbiJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E2_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94
  tail call void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E2_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIbiZNS6_17reductionDispatchIbiJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E2_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E2_EEvRKT1_S6_S6_S6_S7_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !101
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !94
  store ptr %i.a, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !94
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !102
  store ptr %i.c, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E2_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !85     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86   ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !228
  %i.g = load ptr, ptr %0, align 8, !tbaa !229, !nonnull !103, !align !104
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !230, !nonnull !103, !align !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !231, !nonnull !103, !align !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !232, !nonnull !103, !align !106
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !103, !align !106 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.u, label %.lr.ph86.split.us, label %.lr.ph86.split

.lr.ph86.split.us:                                ; preds = %.lr.ph86
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !63
  %narrow.i61.us = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = zext nneg i32 %narrow.i61.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %.lr.ph86.split.us
  %.04284.us = phi i32 [ %i.a, %.lr.ph86.split.us ], [ %i.bx, %bb.c ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZNK2cv8MatShapeixEm.exit72.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph.us ], [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04380.us = phi i64 [ 0, %.lr.ph.us ], [ %spec.select.us, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04479.us = phi i32 [ %.04284.us, %.lr.ph.us ], [ %i.ai, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04578.us = phi i64 [ 0, %.lr.ph.us ], [ %i.az, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04677.us = phi i64 [ 0, %.lr.ph.us ], [ %i.at, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 6 uses
  %i.af = icmp ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %_ZNK2cv8MatShapeixEm.exit72.us, label %.split.us

_ZNK2cv8MatShapeixEm.exit72.us:                   ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !64 ; 2 uses
  %i.ai = sdiv i32 %.04479.us, %i.ah              ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sext i32 %.04479.us to i64
  %i.al = sext i32 %i.ah to i64
  %i.am = mul nsw i64 %i.aj, %i.al
  %i.an = sub nsw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !233, !nonnull !103, !align !104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = mul i64 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %i.as, %.04677.us               ; 2 uses
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !234, !nonnull !103, !align !104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !81
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.ax, %i.an
  %i.az = add i64 %i.ay, %.04578.us               ; 3 uses
  %i.ba = load i32, ptr %i.aa, align 8, !tbaa !44 ; 3 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp eq i64 %indvars.iv.next, %i.bb
  %spec.select.us = select i1 %i.bc, i64 %i.as, i64 %.04380.us ; 2 uses
  %i.bd = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bd, label %bb.b, label %._crit_edge.us, !llvm.loop !218

_ZNK2cv8MatShapeixEm.exit60.us:                   ; preds = %._crit_edge.us
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.az
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bz
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !64 ; 3 uses
  %i.bj = add nsw i32 %i.bi, %i.bf
  %i.bk = srem i32 %i.bj, %i.bi                   ; 2 uses
  %i.bl = or i32 %i.bk, %i.bi
  %or.cond.us = icmp sgt i32 %i.bl, -1
  br i1 %or.cond.us, label %bb.c, label %.split91.us

bb.c:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us
  %i.bm = sub i64 %i.at, %spec.select.us
  %i.bn = zext nneg i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bz
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !45
  %i.bq = mul i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.az
  %i.bs = getelementptr i8, ptr %i.q, i64 %i.bm
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bq  ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bw = tail call i8 @llvm.umax.i8(i8 %i.bu, i8 %i.bv)
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !108
  %i.bx = add nsw i32 %.04284.us, 1               ; 2 uses
  %exitcond95.not = icmp eq i32 %i.bx, %i.c
  br i1 %exitcond95.not, label %._crit_edge87, label %.lr.ph.us, !llvm.loop !219

._crit_edge.us:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit72.us
  %i.by = load ptr, ptr %i.ab, align 8, !tbaa !235, !nonnull !103, !align !106 ; 2 uses
  %i.bz = sext i32 %i.ba to i64                   ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !63
  %narrow.i.us = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 1)
  %i.cb = icmp ult i32 %i.ba, %narrow.i.us
  br i1 %i.cb, label %_ZNK2cv8MatShapeixEm.exit60.us, label %.split89.us

.lr.ph86.split:                                   ; preds = %.lr.ph86
  %i.cc = load ptr, ptr %i.ab, align 8, !tbaa !235, !nonnull !103, !align !106 ; 2 uses
  %i.cd = load i32, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = load i32, ptr %i.cc, align 4, !tbaa !63
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 1)
  %i.cg = icmp ult i32 %i.cd, %narrow.i
  br i1 %i.cg, label %.lr.ph86.split.split, label %.split89.us

.lr.ph86.split.split:                             ; preds = %.lr.ph86.split
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ce
  %i.cj = load i32, ptr %i.i, align 4, !tbaa !64
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !64 ; 3 uses
  %i.cl = add nsw i32 %i.ck, %i.cj
  %i.cm = srem i32 %i.cl, %i.ck                   ; 2 uses
  %i.cn = or i32 %i.cm, %i.ck
  %or.cond = icmp sgt i32 %i.cn, -1
  br i1 %or.cond, label %iter.check, label %.split91.us

iter.check:                                       ; preds = %.lr.ph86.split.split
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = load ptr, ptr %i.y, align 8, !tbaa !233, !nonnull !103, !align !104
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ce
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !45
  %i.ct = mul i64 %i.cs, %i.co                    ; 2 uses
  %i.cu = getelementptr i8, ptr %i.q, i64 %i.ct   ; 9 uses
  %.pre = load i8, ptr %i.cu, align 1, !tbaa !108, !range !109 ; 4 uses
  %i.cv = sub i32 %i.c, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.cv, 4
  br i1 %min.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cw = getelementptr i8, ptr %i.q, i64 %i.ct
  %i.cx = getelementptr i8, ptr %i.cw, i64 1
  %i.cy = getelementptr i8, ptr %i.m, i64 1
  %bound0 = icmp ult ptr %i.cu, %i.cy
  %bound1 = icmp ult ptr %i.m, %i.cx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check114 = icmp ult i32 %i.cv, 32
  br i1 %min.iters.check114, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = and i32 %i.cv, 28
  %n.vec = and i32 %i.cv, -32                     ; 4 uses
  %i.da = add i32 %i.a, %n.vec
  %i.db = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !236, !noundef !103
  %broadcast.splatinsert116 = insertelement <16 x i8> poison, i8 %i.db, i64 0
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %i.dc = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %broadcast.splatinsert, <16 x i8> %broadcast.splatinsert116)
  %i.dd = shufflevector <16 x i8> %i.dc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.de = icmp eq i32 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %i.df = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %i.dd) ; 3 uses
  store i8 %i.df, ptr %i.cu, align 1, !tbaa !108, !alias.scope !237, !noalias !236
  %cmp.n = icmp eq i32 %i.cv, %n.vec
  br i1 %cmp.n, label %._crit_edge87, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.cz, 0
  br i1 %min.epilog.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.df, %vec.epilog.iter.check ], [ %.pre, %vector.main.loop.iter.check ]
  %n.vec118 = and i32 %i.cv, -4                   ; 3 uses
  %i.dg = add i32 %i.a, %n.vec118
  %i.dh = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !236, !noundef !103
  %.scalar = tail call i8 @llvm.umax.i8(i8 %bc.merge.rdx, i8 %i.dh)
  %i.di = insertelement <4 x i8> poison, i8 %.scalar, i64 0
  %i.dj = shufflevector <4 x i8> %i.di, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index119 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ]
  %index.next125 = add nuw i32 %index119, 4       ; 2 uses
  %i.dk = icmp eq i32 %index.next125, %n.vec118
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !224

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dl = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.dj) ; 2 uses
  store i8 %i.dl, ptr %i.cu, align 1, !tbaa !108, !alias.scope !237, !noalias !236
  %cmp.n126 = icmp eq i32 %i.cv, %n.vec118
  br i1 %cmp.n126, label %._crit_edge87, label %_ZNK2cv8MatShapeixEm.exit60.preheader

_ZNK2cv8MatShapeixEm.exit60.preheader:            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.pre, %iter.check ], [ %.pre, %vector.memcheck ], [ %i.df, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ] ; 2 uses
  %.04284.ph = phi i32 [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.da, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ] ; 4 uses
  %i.dm = sub i32 %i.c, %.04284.ph
  %xtraiter = and i32 %i.dm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol

_ZNK2cv8MatShapeixEm.exit60.prol:                 ; preds = %_ZNK2cv8MatShapeixEm.exit60.preheader, %_ZNK2cv8MatShapeixEm.exit60.prol
  %i.dn = phi i8 [ %i.dp, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %.04284.prol = phi i32 [ %i.dq, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.04284.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ 0, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %i.do = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dp = tail call i8 @llvm.umax.i8(i8 %i.dn, i8 %i.do) ; 3 uses
  store i8 %i.dp, ptr %i.cu, align 1, !tbaa !108
  %i.dq = add nsw i32 %.04284.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol, !llvm.loop !225

_ZNK2cv8MatShapeixEm.exit60.prol.loopexit:        ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol, %_ZNK2cv8MatShapeixEm.exit60.preheader
  %.unr = phi i8 [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.dp, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %.04284.unr = phi i32 [ %.04284.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.dq, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %i.dr = sub i32 %.04284.ph, %i.c
  %i.ds = icmp ugt i32 %i.dr, -4
  br i1 %i.ds, label %._crit_edge87, label %_ZNK2cv8MatShapeixEm.exit60

._crit_edge87:                                    ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60, %bb.c, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

_ZNK2cv8MatShapeixEm.exit60:                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60
  %i.dt = phi i8 [ %i.eb, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %.04284 = phi i32 [ %i.ec, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.04284.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %i.du = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dv = tail call i8 @llvm.umax.i8(i8 %i.dt, i8 %i.du) ; 2 uses
  store i8 %i.dv, ptr %i.cu, align 1, !tbaa !108
  %i.dw = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dx = tail call i8 @llvm.umax.i8(i8 %i.dv, i8 %i.dw) ; 2 uses
  store i8 %i.dx, ptr %i.cu, align 1, !tbaa !108
  %i.dy = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dz = tail call i8 @llvm.umax.i8(i8 %i.dx, i8 %i.dy) ; 2 uses
  store i8 %i.dz, ptr %i.cu, align 1, !tbaa !108
  %i.ea = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.eb = tail call i8 @llvm.umax.i8(i8 %i.dz, i8 %i.ea) ; 2 uses
  store i8 %i.eb, ptr %i.cu, align 1, !tbaa !108
  %i.ec = add nsw i32 %.04284, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ec, %i.c
  br i1 %exitcond.not.3, label %._crit_edge87, label %_ZNK2cv8MatShapeixEm.exit60, !llvm.loop !226

.split89.us:                                      ; preds = %._crit_edge.us, %.lr.ph86.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.split89.us
  unreachable

bb.e:                                             ; preds = %.split89.us
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !15
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

.split.us:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.split.us
  unreachable

bb.g:                                             ; preds = %.split.us
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.g
  %i.en = load i64, ptr %i.el, align 8, !tbaa !15
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

.split91.us:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.us, %.lr.ph86.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.split91.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_, ptr noundef nonnull @.str.9, i32 noundef 149) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.split91.us
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !15
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.j ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.eq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIbiZNS6_17reductionDispatchIbiJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E3_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94
  tail call void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E3_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIbiZNS6_17reductionDispatchIbiJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E3_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E3_EEvRKT1_S6_S6_S6_S7_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !101
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !94
  store ptr %i.a, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !94
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !102
  store ptr %i.c, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E3_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !85     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86   ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !248
  %i.g = load ptr, ptr %0, align 8, !tbaa !249, !nonnull !103, !align !104
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !250, !nonnull !103, !align !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !251, !nonnull !103, !align !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !252, !nonnull !103, !align !106
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !103, !align !106 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.u, label %.lr.ph86.split.us, label %.lr.ph86.split

.lr.ph86.split.us:                                ; preds = %.lr.ph86
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !63
  %narrow.i61.us = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = zext nneg i32 %narrow.i61.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %.lr.ph86.split.us
  %.04284.us = phi i32 [ %i.a, %.lr.ph86.split.us ], [ %i.bx, %bb.c ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZNK2cv8MatShapeixEm.exit72.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph.us ], [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04380.us = phi i64 [ 0, %.lr.ph.us ], [ %spec.select.us, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04479.us = phi i32 [ %.04284.us, %.lr.ph.us ], [ %i.ai, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04578.us = phi i64 [ 0, %.lr.ph.us ], [ %i.az, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04677.us = phi i64 [ 0, %.lr.ph.us ], [ %i.at, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 6 uses
  %i.af = icmp ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %_ZNK2cv8MatShapeixEm.exit72.us, label %.split.us

_ZNK2cv8MatShapeixEm.exit72.us:                   ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !64 ; 2 uses
  %i.ai = sdiv i32 %.04479.us, %i.ah              ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sext i32 %.04479.us to i64
  %i.al = sext i32 %i.ah to i64
  %i.am = mul nsw i64 %i.aj, %i.al
  %i.an = sub nsw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !253, !nonnull !103, !align !104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = mul i64 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %i.as, %.04677.us               ; 2 uses
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !254, !nonnull !103, !align !104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !81
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.ax, %i.an
  %i.az = add i64 %i.ay, %.04578.us               ; 3 uses
  %i.ba = load i32, ptr %i.aa, align 8, !tbaa !44 ; 3 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp eq i64 %indvars.iv.next, %i.bb
  %spec.select.us = select i1 %i.bc, i64 %i.as, i64 %.04380.us ; 2 uses
  %i.bd = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bd, label %bb.b, label %._crit_edge.us, !llvm.loop !238

_ZNK2cv8MatShapeixEm.exit60.us:                   ; preds = %._crit_edge.us
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.az
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bz
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !64 ; 3 uses
  %i.bj = add nsw i32 %i.bi, %i.bf
  %i.bk = srem i32 %i.bj, %i.bi                   ; 2 uses
  %i.bl = or i32 %i.bk, %i.bi
  %or.cond.us = icmp sgt i32 %i.bl, -1
  br i1 %or.cond.us, label %bb.c, label %.split91.us

bb.c:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us
  %i.bm = sub i64 %i.at, %spec.select.us
  %i.bn = zext nneg i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bz
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !45
  %i.bq = mul i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.az
  %i.bs = getelementptr i8, ptr %i.q, i64 %i.bm
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bq  ; 2 uses
  %i.bu = load i8, ptr %i.br, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bw = tail call i8 @llvm.umin.i8(i8 %i.bu, i8 %i.bv)
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !108
  %i.bx = add nsw i32 %.04284.us, 1               ; 2 uses
  %exitcond95.not = icmp eq i32 %i.bx, %i.c
  br i1 %exitcond95.not, label %._crit_edge87, label %.lr.ph.us, !llvm.loop !239

._crit_edge.us:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit72.us
  %i.by = load ptr, ptr %i.ab, align 8, !tbaa !255, !nonnull !103, !align !106 ; 2 uses
  %i.bz = sext i32 %i.ba to i64                   ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !63
  %narrow.i.us = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 1)
  %i.cb = icmp ult i32 %i.ba, %narrow.i.us
  br i1 %i.cb, label %_ZNK2cv8MatShapeixEm.exit60.us, label %.split89.us

.lr.ph86.split:                                   ; preds = %.lr.ph86
  %i.cc = load ptr, ptr %i.ab, align 8, !tbaa !255, !nonnull !103, !align !106 ; 2 uses
  %i.cd = load i32, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = load i32, ptr %i.cc, align 4, !tbaa !63
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 1)
  %i.cg = icmp ult i32 %i.cd, %narrow.i
  br i1 %i.cg, label %.lr.ph86.split.split, label %.split89.us

.lr.ph86.split.split:                             ; preds = %.lr.ph86.split
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ce
  %i.cj = load i32, ptr %i.i, align 4, !tbaa !64
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !64 ; 3 uses
  %i.cl = add nsw i32 %i.ck, %i.cj
  %i.cm = srem i32 %i.cl, %i.ck                   ; 2 uses
  %i.cn = or i32 %i.cm, %i.ck
  %or.cond = icmp sgt i32 %i.cn, -1
  br i1 %or.cond, label %iter.check, label %.split91.us

iter.check:                                       ; preds = %.lr.ph86.split.split
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = load ptr, ptr %i.y, align 8, !tbaa !253, !nonnull !103, !align !104
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ce
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !45
  %i.ct = mul i64 %i.cs, %i.co                    ; 2 uses
  %i.cu = getelementptr i8, ptr %i.q, i64 %i.ct   ; 9 uses
  %.pre = load i8, ptr %i.cu, align 1, !tbaa !108, !range !109 ; 4 uses
  %i.cv = sub i32 %i.c, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.cv, 4
  br i1 %min.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cw = getelementptr i8, ptr %i.q, i64 %i.ct
  %i.cx = getelementptr i8, ptr %i.cw, i64 1
  %i.cy = getelementptr i8, ptr %i.m, i64 1
  %bound0 = icmp ult ptr %i.cu, %i.cy
  %bound1 = icmp ult ptr %i.m, %i.cx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check114 = icmp ult i32 %i.cv, 32
  br i1 %min.iters.check114, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = and i32 %i.cv, 28
  %n.vec = and i32 %i.cv, -32                     ; 4 uses
  %i.da = add i32 %i.a, %n.vec
  %i.db = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !256, !noundef !103
  %broadcast.splatinsert116 = insertelement <16 x i8> poison, i8 %i.db, i64 0
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %i.dc = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %broadcast.splatinsert116, <16 x i8> %broadcast.splatinsert)
  %i.dd = shufflevector <16 x i8> %i.dc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.de = icmp eq i32 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !242

middle.block:                                     ; preds = %vector.body
  %i.df = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %i.dd) ; 3 uses
  store i8 %i.df, ptr %i.cu, align 1, !tbaa !108, !alias.scope !257, !noalias !256
  %cmp.n = icmp eq i32 %i.cv, %n.vec
  br i1 %cmp.n, label %._crit_edge87, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.cz, 0
  br i1 %min.epilog.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.df, %vec.epilog.iter.check ], [ %.pre, %vector.main.loop.iter.check ]
  %n.vec118 = and i32 %i.cv, -4                   ; 3 uses
  %i.dg = add i32 %i.a, %n.vec118
  %i.dh = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !256, !noundef !103
  %.scalar = tail call i8 @llvm.umin.i8(i8 %i.dh, i8 %bc.merge.rdx)
  %i.di = insertelement <4 x i8> poison, i8 %.scalar, i64 0
  %i.dj = shufflevector <4 x i8> %i.di, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index119 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ]
  %index.next125 = add nuw i32 %index119, 4       ; 2 uses
  %i.dk = icmp eq i32 %index.next125, %n.vec118
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !244

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dl = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.dj) ; 2 uses
  store i8 %i.dl, ptr %i.cu, align 1, !tbaa !108, !alias.scope !257, !noalias !256
  %cmp.n126 = icmp eq i32 %i.cv, %n.vec118
  br i1 %cmp.n126, label %._crit_edge87, label %_ZNK2cv8MatShapeixEm.exit60.preheader

_ZNK2cv8MatShapeixEm.exit60.preheader:            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.pre, %iter.check ], [ %.pre, %vector.memcheck ], [ %i.df, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ] ; 2 uses
  %.04284.ph = phi i32 [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.da, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ] ; 4 uses
  %i.dm = sub i32 %i.c, %.04284.ph
  %xtraiter = and i32 %i.dm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol

_ZNK2cv8MatShapeixEm.exit60.prol:                 ; preds = %_ZNK2cv8MatShapeixEm.exit60.preheader, %_ZNK2cv8MatShapeixEm.exit60.prol
  %i.dn = phi i8 [ %i.dp, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %.04284.prol = phi i32 [ %i.dq, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.04284.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ 0, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %i.do = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dp = tail call i8 @llvm.umin.i8(i8 %i.do, i8 %i.dn) ; 3 uses
  store i8 %i.dp, ptr %i.cu, align 1, !tbaa !108
  %i.dq = add nsw i32 %.04284.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol, !llvm.loop !245

_ZNK2cv8MatShapeixEm.exit60.prol.loopexit:        ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol, %_ZNK2cv8MatShapeixEm.exit60.preheader
  %.unr = phi i8 [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.dp, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %.04284.unr = phi i32 [ %.04284.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.dq, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %i.dr = sub i32 %.04284.ph, %i.c
  %i.ds = icmp ugt i32 %i.dr, -4
  br i1 %i.ds, label %._crit_edge87, label %_ZNK2cv8MatShapeixEm.exit60

._crit_edge87:                                    ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60, %bb.c, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

_ZNK2cv8MatShapeixEm.exit60:                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60
  %i.dt = phi i8 [ %i.eb, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %.04284 = phi i32 [ %i.ec, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.04284.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %i.du = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dv = tail call i8 @llvm.umin.i8(i8 %i.du, i8 %i.dt) ; 2 uses
  store i8 %i.dv, ptr %i.cu, align 1, !tbaa !108
  %i.dw = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dx = tail call i8 @llvm.umin.i8(i8 %i.dw, i8 %i.dv) ; 2 uses
  store i8 %i.dx, ptr %i.cu, align 1, !tbaa !108
  %i.dy = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dz = tail call i8 @llvm.umin.i8(i8 %i.dy, i8 %i.dx) ; 2 uses
  store i8 %i.dz, ptr %i.cu, align 1, !tbaa !108
  %i.ea = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.eb = tail call i8 @llvm.umin.i8(i8 %i.ea, i8 %i.dz) ; 2 uses
  store i8 %i.eb, ptr %i.cu, align 1, !tbaa !108
  %i.ec = add nsw i32 %.04284, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ec, %i.c
  br i1 %exitcond.not.3, label %._crit_edge87, label %_ZNK2cv8MatShapeixEm.exit60, !llvm.loop !246

.split89.us:                                      ; preds = %._crit_edge.us, %.lr.ph86.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.split89.us
  unreachable

bb.e:                                             ; preds = %.split89.us
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !15
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

.split.us:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.split.us
  unreachable

bb.g:                                             ; preds = %.split.us
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.g
  %i.en = load i64, ptr %i.el, align 8, !tbaa !15
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

.split91.us:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.us, %.lr.ph86.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.split91.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_, ptr noundef nonnull @.str.9, i32 noundef 149) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.split91.us
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !15
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.j ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.eq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ScatterLayerImpl12forward_implIhiZNS1_17reductionDispatchIhiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKhSC_E_EEvRKT1_S6_S6_S6_S7_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"struct.cv::MatShape", align 4     ; 5 uses
  %8 = alloca %"class.std::vector.35", align 8    ; 12 uses
  %9 = alloca %"struct.cv::MatShape", align 4     ; 5 uses
  %10 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %11 = alloca %"class.cv::Range", align 4        ; 6 uses
  %12 = alloca %"class.std::function", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.c, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !77
  store ptr %5, ptr %i.b, align 8, !tbaa !78
  call void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79   ; 6 uses
  store i32 %i.e, ptr %i.a, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %7, ptr noundef nonnull align 4 dereferenceable(52) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.g = sext i32 %i.e to i64                     ; 7 uses
  %i.h = icmp slt i32 %i.e, 0
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIblZNS6_17reductionDispatchIblJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E0_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation:bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !94
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !102
  store ptr %i.c, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E0_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E0_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E0_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E0_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E0_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !85     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86   ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !622
  %i.g = load ptr, ptr %0, align 8, !tbaa !623, !nonnull !103, !align !104
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !624, !nonnull !103, !align !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !625, !nonnull !103, !align !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !626, !nonnull !103, !align !106
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !103, !align !106 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.u, label %.lr.ph87.split.us, label %.lr.ph87.split

.lr.ph87.split.us:                                ; preds = %.lr.ph87
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !63
  %narrow.i61.us = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = zext nneg i32 %narrow.i61.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %.lr.ph87.split.us
  %.04285.us = phi i32 [ %i.a, %.lr.ph87.split.us ], [ %i.by, %bb.c ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZNK2cv8MatShapeixEm.exit72.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph.us ], [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04381.us = phi i64 [ 0, %.lr.ph.us ], [ %spec.select.us, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04480.us = phi i32 [ %.04285.us, %.lr.ph.us ], [ %i.ai, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04579.us = phi i64 [ 0, %.lr.ph.us ], [ %i.az, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04678.us = phi i64 [ 0, %.lr.ph.us ], [ %i.at, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 6 uses
  %i.af = icmp ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %_ZNK2cv8MatShapeixEm.exit72.us, label %.split.us

_ZNK2cv8MatShapeixEm.exit72.us:                   ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !64 ; 2 uses
  %i.ai = sdiv i32 %.04480.us, %i.ah              ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sext i32 %.04480.us to i64
  %i.al = sext i32 %i.ah to i64
  %i.am = mul nsw i64 %i.aj, %i.al
  %i.an = sub nsw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !627, !nonnull !103, !align !104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = mul i64 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %i.as, %.04678.us               ; 2 uses
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !628, !nonnull !103, !align !104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !81
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.ax, %i.an
  %i.az = add i64 %i.ay, %.04579.us               ; 3 uses
  %i.ba = load i32, ptr %i.aa, align 8, !tbaa !44 ; 3 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp eq i64 %indvars.iv.next, %i.bb
  %spec.select.us = select i1 %i.bc, i64 %i.as, i64 %.04381.us ; 2 uses
  %i.bd = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bd, label %bb.b, label %._crit_edge.us, !llvm.loop !612

_ZNK2cv8MatShapeixEm.exit60.us:                   ; preds = %._crit_edge.us
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.az
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ca
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !64 ; 3 uses
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = srem i32 %i.bk, %i.bj                   ; 2 uses
  %i.bm = or i32 %i.bl, %i.bj
  %or.cond.us = icmp sgt i32 %i.bm, -1
  br i1 %or.cond.us, label %bb.c, label %.split92.us

bb.c:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us
  %i.bn = sub i64 %i.at, %spec.select.us
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ca
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !45
  %i.br = mul i64 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.az
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.bn
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.br  ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bx = or i8 %i.bw, %i.bv
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !108
  %i.by = add nsw i32 %.04285.us, 1               ; 2 uses
  %exitcond96.not = icmp eq i32 %i.by, %i.c
  br i1 %exitcond96.not, label %._crit_edge88, label %.lr.ph.us, !llvm.loop !613

._crit_edge.us:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit72.us
  %i.bz = load ptr, ptr %i.ab, align 8, !tbaa !629, !nonnull !103, !align !106 ; 2 uses
  %i.ca = sext i32 %i.ba to i64                   ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !63
  %narrow.i.us = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 1)
  %i.cc = icmp ult i32 %i.ba, %narrow.i.us
  br i1 %i.cc, label %_ZNK2cv8MatShapeixEm.exit60.us, label %.split90.us

.lr.ph87.split:                                   ; preds = %.lr.ph87
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !629, !nonnull !103, !align !106 ; 2 uses
  %i.ce = load i32, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = load i32, ptr %i.cd, align 4, !tbaa !63
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 1)
  %i.ch = icmp ult i32 %i.ce, %narrow.i
  br i1 %i.ch, label %.lr.ph87.split.split, label %.split90.us

.lr.ph87.split.split:                             ; preds = %.lr.ph87.split
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cf
  %i.ck = load i64, ptr %i.i, align 8, !tbaa !45
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = load i32, ptr %i.cj, align 4, !tbaa !64 ; 3 uses
  %i.cn = add nsw i32 %i.cm, %i.cl
  %i.co = srem i32 %i.cn, %i.cm                   ; 2 uses
  %i.cp = or i32 %i.co, %i.cm
  %or.cond = icmp sgt i32 %i.cp, -1
  br i1 %or.cond, label %iter.check, label %.split92.us

iter.check:                                       ; preds = %.lr.ph87.split.split
  %i.cq = zext nneg i32 %i.co to i64
  %i.cr = load ptr, ptr %i.y, align 8, !tbaa !627, !nonnull !103, !align !104
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !81
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cf
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !45
  %i.cv = mul i64 %i.cu, %i.cq                    ; 2 uses
  %i.cw = getelementptr i8, ptr %i.q, i64 %i.cv   ; 9 uses
  %.pre = load i8, ptr %i.cw, align 1, !tbaa !108, !range !109 ; 4 uses
  %i.cx = sub i32 %i.c, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.cx, 4
  br i1 %min.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cy = getelementptr i8, ptr %i.q, i64 %i.cv
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  %i.da = getelementptr i8, ptr %i.m, i64 1
  %bound0 = icmp ult ptr %i.cw, %i.da
  %bound1 = icmp ult ptr %i.m, %i.cz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check115 = icmp ult i32 %i.cx, 32
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.db = and i32 %i.cx, 28
  %n.vec = and i32 %i.cx, -32                     ; 4 uses
  %i.dc = add i32 %i.a, %n.vec
  %i.dd = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.pre, i64 0
  %i.de = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !630, !noundef !103
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.de, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.df = or <16 x i8> %broadcast.splat, %i.dd
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.dg = icmp eq i32 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !616

middle.block:                                     ; preds = %vector.body
  %i.dh = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %i.df) ; 3 uses
  store i8 %i.dh, ptr %i.cw, align 1, !tbaa !108, !alias.scope !631, !noalias !630
  %cmp.n = icmp eq i32 %i.cx, %n.vec
  br i1 %cmp.n, label %._crit_edge88, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.db, 0
  br i1 %min.epilog.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.dh, %vec.epilog.iter.check ], [ %.pre, %vector.main.loop.iter.check ]
  %n.vec117 = and i32 %i.cx, -4                   ; 3 uses
  %i.di = add i32 %i.a, %n.vec117
  %i.dj = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  %i.dk = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !630, !noundef !103
  %broadcast.splatinsert120 = insertelement <4 x i8> poison, i8 %i.dk, i64 0
  %broadcast.splat121 = shufflevector <4 x i8> %broadcast.splatinsert120, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.dl = or <4 x i8> %broadcast.splat121, %i.dj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ]
  %index.next122 = add nuw i32 %index118, 4       ; 2 uses
  %i.dm = icmp eq i32 %index.next122, %n.vec117
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !618

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dn = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.dl) ; 2 uses
  store i8 %i.dn, ptr %i.cw, align 1, !tbaa !108, !alias.scope !631, !noalias !630
  %cmp.n123 = icmp eq i32 %i.cx, %n.vec117
  br i1 %cmp.n123, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60.preheader

_ZNK2cv8MatShapeixEm.exit60.preheader:            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.pre, %iter.check ], [ %.pre, %vector.memcheck ], [ %i.dh, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ] ; 2 uses
  %.04285.ph = phi i32 [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.dc, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ] ; 4 uses
  %i.do = sub i32 %i.c, %.04285.ph
  %xtraiter = and i32 %i.do, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol

_ZNK2cv8MatShapeixEm.exit60.prol:                 ; preds = %_ZNK2cv8MatShapeixEm.exit60.preheader, %_ZNK2cv8MatShapeixEm.exit60.prol
  %i.dp = phi i8 [ %i.dr, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %.04285.prol = phi i32 [ %i.ds, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.04285.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ 0, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %i.dq = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dr = or i8 %i.dq, %i.dp                      ; 3 uses
  store i8 %i.dr, ptr %i.cw, align 1, !tbaa !108
  %i.ds = add nsw i32 %.04285.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol, !llvm.loop !619

_ZNK2cv8MatShapeixEm.exit60.prol.loopexit:        ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol, %_ZNK2cv8MatShapeixEm.exit60.preheader
  %.unr = phi i8 [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.dr, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %.04285.unr = phi i32 [ %.04285.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.ds, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %i.dt = sub i32 %.04285.ph, %i.c
  %i.du = icmp ugt i32 %i.dt, -4
  br i1 %i.du, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60

._crit_edge88:                                    ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60, %bb.c, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

_ZNK2cv8MatShapeixEm.exit60:                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60
  %i.dv = phi i8 [ %i.ed, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %.04285 = phi i32 [ %i.ee, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.04285.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %i.dw = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dx = or i8 %i.dw, %i.dv                      ; 2 uses
  store i8 %i.dx, ptr %i.cw, align 1, !tbaa !108
  %i.dy = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dz = or i8 %i.dy, %i.dx                      ; 2 uses
  store i8 %i.dz, ptr %i.cw, align 1, !tbaa !108
  %i.ea = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.eb = or i8 %i.ea, %i.dz                      ; 2 uses
  store i8 %i.eb, ptr %i.cw, align 1, !tbaa !108
  %i.ec = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.ed = or i8 %i.ec, %i.eb                      ; 2 uses
  store i8 %i.ed, ptr %i.cw, align 1, !tbaa !108
  %i.ee = add nsw i32 %.04285, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ee, %i.c
  br i1 %exitcond.not.3, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60, !llvm.loop !620

.split90.us:                                      ; preds = %._crit_edge.us, %.lr.ph87.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.split90.us
  unreachable

bb.e:                                             ; preds = %.split90.us
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !15
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

.split.us:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.split.us
  unreachable

bb.g:                                             ; preds = %.split.us
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.g
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !15
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

.split92.us:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.us, %.lr.ph87.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.split92.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_, ptr noundef nonnull @.str.9, i32 noundef 149) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.split92.us
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !15
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.er, %bb.j ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.es, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIblZNS6_17reductionDispatchIblJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E1_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94
  tail call void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E1_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIblZNS6_17reductionDispatchIblJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E1_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E1_EEvRKT1_S6_S6_S6_S7_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !101
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !94
  store ptr %i.a, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !94
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !102
  store ptr %i.c, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E1_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !85     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86   ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !642
  %i.g = load ptr, ptr %0, align 8, !tbaa !643, !nonnull !103, !align !104
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !644, !nonnull !103, !align !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !645, !nonnull !103, !align !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !646, !nonnull !103, !align !106
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !103, !align !106 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.u, label %.lr.ph87.split.us, label %.lr.ph87.split

.lr.ph87.split.us:                                ; preds = %.lr.ph87
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !63
  %narrow.i61.us = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = zext nneg i32 %narrow.i61.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %.lr.ph87.split.us
  %.04285.us = phi i32 [ %i.a, %.lr.ph87.split.us ], [ %i.bx, %bb.c ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZNK2cv8MatShapeixEm.exit72.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph.us ], [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04381.us = phi i64 [ 0, %.lr.ph.us ], [ %spec.select.us, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04480.us = phi i32 [ %.04285.us, %.lr.ph.us ], [ %i.ai, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04579.us = phi i64 [ 0, %.lr.ph.us ], [ %i.az, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04678.us = phi i64 [ 0, %.lr.ph.us ], [ %i.at, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 6 uses
  %i.af = icmp ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %_ZNK2cv8MatShapeixEm.exit72.us, label %.split.us

_ZNK2cv8MatShapeixEm.exit72.us:                   ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !64 ; 2 uses
  %i.ai = sdiv i32 %.04480.us, %i.ah              ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sext i32 %.04480.us to i64
  %i.al = sext i32 %i.ah to i64
  %i.am = mul nsw i64 %i.aj, %i.al
  %i.an = sub nsw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !647, !nonnull !103, !align !104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = mul i64 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %i.as, %.04678.us               ; 2 uses
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !648, !nonnull !103, !align !104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !81
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.ax, %i.an
  %i.az = add i64 %i.ay, %.04579.us               ; 3 uses
  %i.ba = load i32, ptr %i.aa, align 8, !tbaa !44 ; 3 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp eq i64 %indvars.iv.next, %i.bb
  %spec.select.us = select i1 %i.bc, i64 %i.as, i64 %.04381.us ; 2 uses
  %i.bd = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bd, label %bb.b, label %._crit_edge.us, !llvm.loop !632

_ZNK2cv8MatShapeixEm.exit60.us:                   ; preds = %._crit_edge.us
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.az
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bz
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !64 ; 3 uses
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = srem i32 %i.bk, %i.bj                   ; 2 uses
  %i.bm = or i32 %i.bl, %i.bj
  %or.cond.us = icmp sgt i32 %i.bm, -1
  br i1 %or.cond.us, label %bb.c, label %.split92.us

bb.c:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us
  %i.bn = sub i64 %i.at, %spec.select.us
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bz
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !45
  %i.br = mul i64 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.az
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.bn
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.br  ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !108, !range !109, !noundef !103
  %narrow.i73.us = mul nuw nsw i8 %i.bw, %i.bv
  store i8 %narrow.i73.us, ptr %i.bu, align 1, !tbaa !108
  %i.bx = add nsw i32 %.04285.us, 1               ; 2 uses
  %exitcond96.not = icmp eq i32 %i.bx, %i.c
  br i1 %exitcond96.not, label %._crit_edge88, label %.lr.ph.us, !llvm.loop !633

._crit_edge.us:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit72.us
  %i.by = load ptr, ptr %i.ab, align 8, !tbaa !649, !nonnull !103, !align !106 ; 2 uses
  %i.bz = sext i32 %i.ba to i64                   ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !63
  %narrow.i.us = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 1)
  %i.cb = icmp ult i32 %i.ba, %narrow.i.us
  br i1 %i.cb, label %_ZNK2cv8MatShapeixEm.exit60.us, label %.split90.us

.lr.ph87.split:                                   ; preds = %.lr.ph87
  %i.cc = load ptr, ptr %i.ab, align 8, !tbaa !649, !nonnull !103, !align !106 ; 2 uses
  %i.cd = load i32, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = load i32, ptr %i.cc, align 4, !tbaa !63
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 1)
  %i.cg = icmp ult i32 %i.cd, %narrow.i
  br i1 %i.cg, label %.lr.ph87.split.split, label %.split90.us

.lr.ph87.split.split:                             ; preds = %.lr.ph87.split
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ce
  %i.cj = load i64, ptr %i.i, align 8, !tbaa !45
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !64 ; 3 uses
  %i.cm = add nsw i32 %i.cl, %i.ck
  %i.cn = srem i32 %i.cm, %i.cl                   ; 2 uses
  %i.co = or i32 %i.cn, %i.cl
  %or.cond = icmp sgt i32 %i.co, -1
  br i1 %or.cond, label %iter.check, label %.split92.us

iter.check:                                       ; preds = %.lr.ph87.split.split
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = load ptr, ptr %i.y, align 8, !tbaa !647, !nonnull !103, !align !104
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !81
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ce
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !45
  %i.cu = mul i64 %i.ct, %i.cp                    ; 2 uses
  %i.cv = getelementptr i8, ptr %i.q, i64 %i.cu   ; 9 uses
  %.pre = load i8, ptr %i.cv, align 1, !tbaa !108, !range !109 ; 4 uses
  %i.cw = sub i32 %i.c, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.cw, 4
  br i1 %min.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cx = getelementptr i8, ptr %i.q, i64 %i.cu
  %i.cy = getelementptr i8, ptr %i.cx, i64 1
  %i.cz = getelementptr i8, ptr %i.m, i64 1
  %bound0 = icmp ult ptr %i.cv, %i.cz
  %bound1 = icmp ult ptr %i.m, %i.cy
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check115 = icmp ult i32 %i.cw, 32
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.da = and i32 %i.cw, 28
  %n.vec = and i32 %i.cw, -32                     ; 4 uses
  %i.db = add i32 %i.a, %n.vec
  %i.dc = insertelement <16 x i8> <i8 poison, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, i8 %.pre, i64 0
  %i.dd = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !650, !noundef !103
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.dd, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <16 x i8> [ %i.dc, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi116 = phi <16 x i8> [ splat (i8 1), %vector.ph ], [ %i.df, %vector.body ]
  %i.de = mul nuw <16 x i8> %broadcast.splat, %vec.phi ; 2 uses
  %i.df = mul nuw <16 x i8> %broadcast.splat, %vec.phi116 ; 2 uses
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.dg = icmp eq i32 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !636

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <16 x i8> %i.df, %i.de
  %i.dh = tail call i8 @llvm.vector.reduce.mul.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  store i8 %i.dh, ptr %i.cv, align 1, !tbaa !108, !alias.scope !651, !noalias !650
  %cmp.n = icmp eq i32 %i.cw, %n.vec
  br i1 %cmp.n, label %._crit_edge88, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.da, 0
  br i1 %min.epilog.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.dh, %vec.epilog.iter.check ], [ %.pre, %vector.main.loop.iter.check ]
  %n.vec117 = and i32 %i.cw, -4                   ; 3 uses
  %i.di = add i32 %i.a, %n.vec117
  %i.dj = insertelement <4 x i8> <i8 poison, i8 1, i8 1, i8 1>, i8 %bc.merge.rdx, i64 0
  %i.dk = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !650, !noundef !103
  %broadcast.splatinsert120 = insertelement <4 x i8> poison, i8 %i.dk, i64 0
  %broadcast.splat121 = shufflevector <4 x i8> %broadcast.splatinsert120, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ]
  %vec.phi119 = phi <4 x i8> [ %i.dj, %vec.epilog.ph ], [ %i.dl, %vec.epilog.vector.body ]
  %i.dl = mul nuw <4 x i8> %broadcast.splat121, %vec.phi119 ; 2 uses
  %index.next122 = add nuw i32 %index118, 4       ; 2 uses
  %i.dm = icmp eq i32 %index.next122, %n.vec117
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !638

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dn = tail call i8 @llvm.vector.reduce.mul.v4i8(<4 x i8> %i.dl) ; 2 uses
  store i8 %i.dn, ptr %i.cv, align 1, !tbaa !108, !alias.scope !651, !noalias !650
  %cmp.n123 = icmp eq i32 %i.cw, %n.vec117
  br i1 %cmp.n123, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60.preheader

_ZNK2cv8MatShapeixEm.exit60.preheader:            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.pre, %iter.check ], [ %.pre, %vector.memcheck ], [ %i.dh, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ] ; 2 uses
  %.04285.ph = phi i32 [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.db, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ] ; 4 uses
  %i.do = sub i32 %i.c, %.04285.ph
  %xtraiter = and i32 %i.do, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol

_ZNK2cv8MatShapeixEm.exit60.prol:                 ; preds = %_ZNK2cv8MatShapeixEm.exit60.preheader, %_ZNK2cv8MatShapeixEm.exit60.prol
  %i.dp = phi i8 [ %narrow.i73.prol, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %.04285.prol = phi i32 [ %i.dr, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.04285.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ 0, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %i.dq = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %narrow.i73.prol = mul nuw nsw i8 %i.dq, %i.dp  ; 3 uses
  store i8 %narrow.i73.prol, ptr %i.cv, align 1, !tbaa !108
  %i.dr = add nsw i32 %.04285.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol, !llvm.loop !639

_ZNK2cv8MatShapeixEm.exit60.prol.loopexit:        ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol, %_ZNK2cv8MatShapeixEm.exit60.preheader
  %.unr = phi i8 [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %narrow.i73.prol, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %.04285.unr = phi i32 [ %.04285.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.dr, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %i.ds = sub i32 %.04285.ph, %i.c
  %i.dt = icmp ugt i32 %i.ds, -4
  br i1 %i.dt, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60

._crit_edge88:                                    ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60, %bb.c, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

_ZNK2cv8MatShapeixEm.exit60:                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60
  %i.du = phi i8 [ %narrow.i73.3, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %.04285 = phi i32 [ %i.dz, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.04285.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %i.dv = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %narrow.i73 = mul nuw nsw i8 %i.dv, %i.du       ; 2 uses
  store i8 %narrow.i73, ptr %i.cv, align 1, !tbaa !108
  %i.dw = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %narrow.i73.1 = mul nuw nsw i8 %i.dw, %narrow.i73 ; 2 uses
  store i8 %narrow.i73.1, ptr %i.cv, align 1, !tbaa !108
  %i.dx = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %narrow.i73.2 = mul nuw nsw i8 %i.dx, %narrow.i73.1 ; 2 uses
  store i8 %narrow.i73.2, ptr %i.cv, align 1, !tbaa !108
  %i.dy = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %narrow.i73.3 = mul nuw nsw i8 %i.dy, %narrow.i73.2 ; 2 uses
  store i8 %narrow.i73.3, ptr %i.cv, align 1, !tbaa !108
  %i.dz = add nsw i32 %.04285, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.dz, %i.c
  br i1 %exitcond.not.3, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60, !llvm.loop !640

.split90.us:                                      ; preds = %._crit_edge.us, %.lr.ph87.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.split90.us
  unreachable

bb.e:                                             ; preds = %.split90.us
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !15
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

.split.us:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.split.us
  unreachable

bb.g:                                             ; preds = %.split.us
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.g
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !15
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

.split92.us:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.us, %.lr.ph87.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.split92.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_, ptr noundef nonnull @.str.9, i32 noundef 149) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.split92.us
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !15
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.em, %bb.j ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIblZNS6_17reductionDispatchIblJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E2_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94
  tail call void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E2_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIblZNS6_17reductionDispatchIblJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E2_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E2_EEvRKT1_S6_S6_S6_S7_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !101
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !94
  store ptr %i.a, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !94
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !102
  store ptr %i.c, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E2_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !85     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86   ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !662
  %i.g = load ptr, ptr %0, align 8, !tbaa !663, !nonnull !103, !align !104
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !664, !nonnull !103, !align !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !665, !nonnull !103, !align !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !666, !nonnull !103, !align !106
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !103, !align !106 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.u, label %.lr.ph86.split.us, label %.lr.ph86.split

.lr.ph86.split.us:                                ; preds = %.lr.ph86
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !63
  %narrow.i61.us = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = zext nneg i32 %narrow.i61.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %.lr.ph86.split.us
  %.04284.us = phi i32 [ %i.a, %.lr.ph86.split.us ], [ %i.by, %bb.c ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZNK2cv8MatShapeixEm.exit72.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph.us ], [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04380.us = phi i64 [ 0, %.lr.ph.us ], [ %spec.select.us, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04479.us = phi i32 [ %.04284.us, %.lr.ph.us ], [ %i.ai, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04578.us = phi i64 [ 0, %.lr.ph.us ], [ %i.az, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04677.us = phi i64 [ 0, %.lr.ph.us ], [ %i.at, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 6 uses
  %i.af = icmp ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %_ZNK2cv8MatShapeixEm.exit72.us, label %.split.us

_ZNK2cv8MatShapeixEm.exit72.us:                   ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !64 ; 2 uses
  %i.ai = sdiv i32 %.04479.us, %i.ah              ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sext i32 %.04479.us to i64
  %i.al = sext i32 %i.ah to i64
  %i.am = mul nsw i64 %i.aj, %i.al
  %i.an = sub nsw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !667, !nonnull !103, !align !104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = mul i64 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %i.as, %.04677.us               ; 2 uses
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !668, !nonnull !103, !align !104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !81
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.ax, %i.an
  %i.az = add i64 %i.ay, %.04578.us               ; 3 uses
  %i.ba = load i32, ptr %i.aa, align 8, !tbaa !44 ; 3 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp eq i64 %indvars.iv.next, %i.bb
  %spec.select.us = select i1 %i.bc, i64 %i.as, i64 %.04380.us ; 2 uses
  %i.bd = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bd, label %bb.b, label %._crit_edge.us, !llvm.loop !652

_ZNK2cv8MatShapeixEm.exit60.us:                   ; preds = %._crit_edge.us
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.az
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ca
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !64 ; 3 uses
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = srem i32 %i.bk, %i.bj                   ; 2 uses
  %i.bm = or i32 %i.bl, %i.bj
  %or.cond.us = icmp sgt i32 %i.bm, -1
  br i1 %or.cond.us, label %bb.c, label %.split91.us

bb.c:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us
  %i.bn = sub i64 %i.at, %spec.select.us
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ca
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !45
  %i.br = mul i64 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.az
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.bn
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.br  ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bx = tail call i8 @llvm.umax.i8(i8 %i.bv, i8 %i.bw)
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !108
  %i.by = add nsw i32 %.04284.us, 1               ; 2 uses
  %exitcond95.not = icmp eq i32 %i.by, %i.c
  br i1 %exitcond95.not, label %._crit_edge87, label %.lr.ph.us, !llvm.loop !653

._crit_edge.us:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit72.us
  %i.bz = load ptr, ptr %i.ab, align 8, !tbaa !669, !nonnull !103, !align !106 ; 2 uses
  %i.ca = sext i32 %i.ba to i64                   ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !63
  %narrow.i.us = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 1)
  %i.cc = icmp ult i32 %i.ba, %narrow.i.us
  br i1 %i.cc, label %_ZNK2cv8MatShapeixEm.exit60.us, label %.split89.us

.lr.ph86.split:                                   ; preds = %.lr.ph86
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !669, !nonnull !103, !align !106 ; 2 uses
  %i.ce = load i32, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = load i32, ptr %i.cd, align 4, !tbaa !63
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 1)
  %i.ch = icmp ult i32 %i.ce, %narrow.i
  br i1 %i.ch, label %.lr.ph86.split.split, label %.split89.us

.lr.ph86.split.split:                             ; preds = %.lr.ph86.split
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cf
  %i.ck = load i64, ptr %i.i, align 8, !tbaa !45
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = load i32, ptr %i.cj, align 4, !tbaa !64 ; 3 uses
  %i.cn = add nsw i32 %i.cm, %i.cl
  %i.co = srem i32 %i.cn, %i.cm                   ; 2 uses
  %i.cp = or i32 %i.co, %i.cm
  %or.cond = icmp sgt i32 %i.cp, -1
  br i1 %or.cond, label %iter.check, label %.split91.us

iter.check:                                       ; preds = %.lr.ph86.split.split
  %i.cq = zext nneg i32 %i.co to i64
  %i.cr = load ptr, ptr %i.y, align 8, !tbaa !667, !nonnull !103, !align !104
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !81
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cf
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !45
  %i.cv = mul i64 %i.cu, %i.cq                    ; 2 uses
  %i.cw = getelementptr i8, ptr %i.q, i64 %i.cv   ; 9 uses
  %.pre = load i8, ptr %i.cw, align 1, !tbaa !108, !range !109 ; 4 uses
  %i.cx = sub i32 %i.c, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.cx, 4
  br i1 %min.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cy = getelementptr i8, ptr %i.q, i64 %i.cv
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  %i.da = getelementptr i8, ptr %i.m, i64 1
  %bound0 = icmp ult ptr %i.cw, %i.da
  %bound1 = icmp ult ptr %i.m, %i.cz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check114 = icmp ult i32 %i.cx, 32
  br i1 %min.iters.check114, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.db = and i32 %i.cx, 28
  %n.vec = and i32 %i.cx, -32                     ; 4 uses
  %i.dc = add i32 %i.a, %n.vec
  %i.dd = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !670, !noundef !103
  %broadcast.splatinsert116 = insertelement <16 x i8> poison, i8 %i.dd, i64 0
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %i.de = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %broadcast.splatinsert, <16 x i8> %broadcast.splatinsert116)
  %i.df = shufflevector <16 x i8> %i.de, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.dg = icmp eq i32 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !656

middle.block:                                     ; preds = %vector.body
  %i.dh = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %i.df) ; 3 uses
  store i8 %i.dh, ptr %i.cw, align 1, !tbaa !108, !alias.scope !671, !noalias !670
  %cmp.n = icmp eq i32 %i.cx, %n.vec
  br i1 %cmp.n, label %._crit_edge87, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.db, 0
  br i1 %min.epilog.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.dh, %vec.epilog.iter.check ], [ %.pre, %vector.main.loop.iter.check ]
  %n.vec118 = and i32 %i.cx, -4                   ; 3 uses
  %i.di = add i32 %i.a, %n.vec118
  %i.dj = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !670, !noundef !103
  %.scalar = tail call i8 @llvm.umax.i8(i8 %bc.merge.rdx, i8 %i.dj)
  %i.dk = insertelement <4 x i8> poison, i8 %.scalar, i64 0
  %i.dl = shufflevector <4 x i8> %i.dk, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index119 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ]
  %index.next125 = add nuw i32 %index119, 4       ; 2 uses
  %i.dm = icmp eq i32 %index.next125, %n.vec118
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !658

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dn = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.dl) ; 2 uses
  store i8 %i.dn, ptr %i.cw, align 1, !tbaa !108, !alias.scope !671, !noalias !670
  %cmp.n126 = icmp eq i32 %i.cx, %n.vec118
  br i1 %cmp.n126, label %._crit_edge87, label %_ZNK2cv8MatShapeixEm.exit60.preheader

_ZNK2cv8MatShapeixEm.exit60.preheader:            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.pre, %iter.check ], [ %.pre, %vector.memcheck ], [ %i.dh, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ] ; 2 uses
  %.04284.ph = phi i32 [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.dc, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ] ; 4 uses
  %i.do = sub i32 %i.c, %.04284.ph
  %xtraiter = and i32 %i.do, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol

_ZNK2cv8MatShapeixEm.exit60.prol:                 ; preds = %_ZNK2cv8MatShapeixEm.exit60.preheader, %_ZNK2cv8MatShapeixEm.exit60.prol
  %i.dp = phi i8 [ %i.dr, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %.04284.prol = phi i32 [ %i.ds, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.04284.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ 0, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %i.dq = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dr = tail call i8 @llvm.umax.i8(i8 %i.dp, i8 %i.dq) ; 3 uses
  store i8 %i.dr, ptr %i.cw, align 1, !tbaa !108
  %i.ds = add nsw i32 %.04284.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol, !llvm.loop !659

_ZNK2cv8MatShapeixEm.exit60.prol.loopexit:        ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol, %_ZNK2cv8MatShapeixEm.exit60.preheader
  %.unr = phi i8 [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.dr, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %.04284.unr = phi i32 [ %.04284.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.ds, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %i.dt = sub i32 %.04284.ph, %i.c
  %i.du = icmp ugt i32 %i.dt, -4
  br i1 %i.du, label %._crit_edge87, label %_ZNK2cv8MatShapeixEm.exit60

._crit_edge87:                                    ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60, %bb.c, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

_ZNK2cv8MatShapeixEm.exit60:                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60
  %i.dv = phi i8 [ %i.ed, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %.04284 = phi i32 [ %i.ee, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.04284.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %i.dw = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dx = tail call i8 @llvm.umax.i8(i8 %i.dv, i8 %i.dw) ; 2 uses
  store i8 %i.dx, ptr %i.cw, align 1, !tbaa !108
  %i.dy = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dz = tail call i8 @llvm.umax.i8(i8 %i.dx, i8 %i.dy) ; 2 uses
  store i8 %i.dz, ptr %i.cw, align 1, !tbaa !108
  %i.ea = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.eb = tail call i8 @llvm.umax.i8(i8 %i.dz, i8 %i.ea) ; 2 uses
  store i8 %i.eb, ptr %i.cw, align 1, !tbaa !108
  %i.ec = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.ed = tail call i8 @llvm.umax.i8(i8 %i.eb, i8 %i.ec) ; 2 uses
  store i8 %i.ed, ptr %i.cw, align 1, !tbaa !108
  %i.ee = add nsw i32 %.04284, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ee, %i.c
  br i1 %exitcond.not.3, label %._crit_edge87, label %_ZNK2cv8MatShapeixEm.exit60, !llvm.loop !660

.split89.us:                                      ; preds = %._crit_edge.us, %.lr.ph86.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.split89.us
  unreachable

bb.e:                                             ; preds = %.split89.us
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !15
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

.split.us:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.split.us
  unreachable

bb.g:                                             ; preds = %.split.us
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.g
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !15
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

.split91.us:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.us, %.lr.ph86.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.split91.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_, ptr noundef nonnull @.str.9, i32 noundef 149) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.split91.us
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !15
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.er, %bb.j ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.es, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIblZNS6_17reductionDispatchIblJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E3_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94
  tail call void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E3_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIblZNS6_17reductionDispatchIblJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E3_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E3_EEvRKT1_S6_S6_S6_S7_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !101
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !94
  store ptr %i.a, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !94
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !102
  store ptr %i.c, ptr %0, align 8, !tbaa !94
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E3_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E3_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !85     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86   ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !682
  %i.g = load ptr, ptr %0, align 8, !tbaa !683, !nonnull !103, !align !104
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !684, !nonnull !103, !align !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !685, !nonnull !103, !align !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !686, !nonnull !103, !align !106
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !103, !align !106 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.u, label %.lr.ph86.split.us, label %.lr.ph86.split

.lr.ph86.split.us:                                ; preds = %.lr.ph86
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !63
  %narrow.i61.us = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = zext nneg i32 %narrow.i61.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %.lr.ph86.split.us
  %.04284.us = phi i32 [ %i.a, %.lr.ph86.split.us ], [ %i.by, %bb.c ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZNK2cv8MatShapeixEm.exit72.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph.us ], [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04380.us = phi i64 [ 0, %.lr.ph.us ], [ %spec.select.us, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04479.us = phi i32 [ %.04284.us, %.lr.ph.us ], [ %i.ai, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04578.us = phi i64 [ 0, %.lr.ph.us ], [ %i.az, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04677.us = phi i64 [ 0, %.lr.ph.us ], [ %i.at, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 6 uses
  %i.af = icmp ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %_ZNK2cv8MatShapeixEm.exit72.us, label %.split.us

_ZNK2cv8MatShapeixEm.exit72.us:                   ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !64 ; 2 uses
  %i.ai = sdiv i32 %.04479.us, %i.ah              ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sext i32 %.04479.us to i64
  %i.al = sext i32 %i.ah to i64
  %i.am = mul nsw i64 %i.aj, %i.al
  %i.an = sub nsw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !687, !nonnull !103, !align !104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = mul i64 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %i.as, %.04677.us               ; 2 uses
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !688, !nonnull !103, !align !104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !81
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.ax, %i.an
  %i.az = add i64 %i.ay, %.04578.us               ; 3 uses
  %i.ba = load i32, ptr %i.aa, align 8, !tbaa !44 ; 3 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp eq i64 %indvars.iv.next, %i.bb
  %spec.select.us = select i1 %i.bc, i64 %i.as, i64 %.04380.us ; 2 uses
  %i.bd = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bd, label %bb.b, label %._crit_edge.us, !llvm.loop !672

_ZNK2cv8MatShapeixEm.exit60.us:                   ; preds = %._crit_edge.us
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.az
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ca
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !64 ; 3 uses
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = srem i32 %i.bk, %i.bj                   ; 2 uses
  %i.bm = or i32 %i.bl, %i.bj
  %or.cond.us = icmp sgt i32 %i.bm, -1
  br i1 %or.cond.us, label %bb.c, label %.split91.us

bb.c:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us
  %i.bn = sub i64 %i.at, %spec.select.us
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ca
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !45
  %i.br = mul i64 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.az
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.bn
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.br  ; 2 uses
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !108, !range !109, !noundef !103
  %i.bx = tail call i8 @llvm.umin.i8(i8 %i.bv, i8 %i.bw)
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !108
  %i.by = add nsw i32 %.04284.us, 1               ; 2 uses
  %exitcond95.not = icmp eq i32 %i.by, %i.c
  br i1 %exitcond95.not, label %._crit_edge87, label %.lr.ph.us, !llvm.loop !673

._crit_edge.us:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit72.us
  %i.bz = load ptr, ptr %i.ab, align 8, !tbaa !689, !nonnull !103, !align !106 ; 2 uses
  %i.ca = sext i32 %i.ba to i64                   ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !63
  %narrow.i.us = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 1)
  %i.cc = icmp ult i32 %i.ba, %narrow.i.us
  br i1 %i.cc, label %_ZNK2cv8MatShapeixEm.exit60.us, label %.split89.us

.lr.ph86.split:                                   ; preds = %.lr.ph86
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !689, !nonnull !103, !align !106 ; 2 uses
  %i.ce = load i32, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = load i32, ptr %i.cd, align 4, !tbaa !63
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 1)
  %i.ch = icmp ult i32 %i.ce, %narrow.i
  br i1 %i.ch, label %.lr.ph86.split.split, label %.split89.us

.lr.ph86.split.split:                             ; preds = %.lr.ph86.split
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cf
  %i.ck = load i64, ptr %i.i, align 8, !tbaa !45
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = load i32, ptr %i.cj, align 4, !tbaa !64 ; 3 uses
  %i.cn = add nsw i32 %i.cm, %i.cl
  %i.co = srem i32 %i.cn, %i.cm                   ; 2 uses
  %i.cp = or i32 %i.co, %i.cm
  %or.cond = icmp sgt i32 %i.cp, -1
  br i1 %or.cond, label %iter.check, label %.split91.us

iter.check:                                       ; preds = %.lr.ph86.split.split
  %i.cq = zext nneg i32 %i.co to i64
  %i.cr = load ptr, ptr %i.y, align 8, !tbaa !687, !nonnull !103, !align !104
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !81
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cf
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !45
  %i.cv = mul i64 %i.cu, %i.cq                    ; 2 uses
  %i.cw = getelementptr i8, ptr %i.q, i64 %i.cv   ; 9 uses
  %.pre = load i8, ptr %i.cw, align 1, !tbaa !108, !range !109 ; 4 uses
  %i.cx = sub i32 %i.c, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.cx, 4
  br i1 %min.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cy = getelementptr i8, ptr %i.q, i64 %i.cv
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  %i.da = getelementptr i8, ptr %i.m, i64 1
  %bound0 = icmp ult ptr %i.cw, %i.da
  %bound1 = icmp ult ptr %i.m, %i.cz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check114 = icmp ult i32 %i.cx, 32
  br i1 %min.iters.check114, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.db = and i32 %i.cx, 28
  %n.vec = and i32 %i.cx, -32                     ; 4 uses
  %i.dc = add i32 %i.a, %n.vec
  %i.dd = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !690, !noundef !103
  %broadcast.splatinsert116 = insertelement <16 x i8> poison, i8 %i.dd, i64 0
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %i.de = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %broadcast.splatinsert116, <16 x i8> %broadcast.splatinsert)
  %i.df = shufflevector <16 x i8> %i.de, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.dg = icmp eq i32 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !676

middle.block:                                     ; preds = %vector.body
  %i.dh = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %i.df) ; 3 uses
  store i8 %i.dh, ptr %i.cw, align 1, !tbaa !108, !alias.scope !691, !noalias !690
  %cmp.n = icmp eq i32 %i.cx, %n.vec
  br i1 %cmp.n, label %._crit_edge87, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.db, 0
  br i1 %min.epilog.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.dh, %vec.epilog.iter.check ], [ %.pre, %vector.main.loop.iter.check ]
  %n.vec118 = and i32 %i.cx, -4                   ; 3 uses
  %i.di = add i32 %i.a, %n.vec118
  %i.dj = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !alias.scope !690, !noundef !103
  %.scalar = tail call i8 @llvm.umin.i8(i8 %i.dj, i8 %bc.merge.rdx)
  %i.dk = insertelement <4 x i8> poison, i8 %.scalar, i64 0
  %i.dl = shufflevector <4 x i8> %i.dk, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index119 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ]
  %index.next125 = add nuw i32 %index119, 4       ; 2 uses
  %i.dm = icmp eq i32 %index.next125, %n.vec118
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !678

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dn = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.dl) ; 2 uses
  store i8 %i.dn, ptr %i.cw, align 1, !tbaa !108, !alias.scope !691, !noalias !690
  %cmp.n126 = icmp eq i32 %i.cx, %n.vec118
  br i1 %cmp.n126, label %._crit_edge87, label %_ZNK2cv8MatShapeixEm.exit60.preheader

_ZNK2cv8MatShapeixEm.exit60.preheader:            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.pre, %iter.check ], [ %.pre, %vector.memcheck ], [ %i.dh, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ] ; 2 uses
  %.04284.ph = phi i32 [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.dc, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ] ; 4 uses
  %i.do = sub i32 %i.c, %.04284.ph
  %xtraiter = and i32 %i.do, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol

_ZNK2cv8MatShapeixEm.exit60.prol:                 ; preds = %_ZNK2cv8MatShapeixEm.exit60.preheader, %_ZNK2cv8MatShapeixEm.exit60.prol
  %i.dp = phi i8 [ %i.dr, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %.04284.prol = phi i32 [ %i.ds, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.04284.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ 0, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %i.dq = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dr = tail call i8 @llvm.umin.i8(i8 %i.dq, i8 %i.dp) ; 3 uses
  store i8 %i.dr, ptr %i.cw, align 1, !tbaa !108
  %i.ds = add nsw i32 %.04284.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol, !llvm.loop !679

_ZNK2cv8MatShapeixEm.exit60.prol.loopexit:        ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol, %_ZNK2cv8MatShapeixEm.exit60.preheader
  %.unr = phi i8 [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.dr, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %.04284.unr = phi i32 [ %.04284.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.ds, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %i.dt = sub i32 %.04284.ph, %i.c
  %i.du = icmp ugt i32 %i.dt, -4
  br i1 %i.du, label %._crit_edge87, label %_ZNK2cv8MatShapeixEm.exit60

._crit_edge87:                                    ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60, %bb.c, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

_ZNK2cv8MatShapeixEm.exit60:                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60
  %i.dv = phi i8 [ %i.ed, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %.04284 = phi i32 [ %i.ee, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.04284.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %i.dw = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dx = tail call i8 @llvm.umin.i8(i8 %i.dw, i8 %i.dv) ; 2 uses
  store i8 %i.dx, ptr %i.cw, align 1, !tbaa !108
  %i.dy = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.dz = tail call i8 @llvm.umin.i8(i8 %i.dy, i8 %i.dx) ; 2 uses
  store i8 %i.dz, ptr %i.cw, align 1, !tbaa !108
  %i.ea = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.eb = tail call i8 @llvm.umin.i8(i8 %i.ea, i8 %i.dz) ; 2 uses
  store i8 %i.eb, ptr %i.cw, align 1, !tbaa !108
  %i.ec = load i8, ptr %i.m, align 1, !tbaa !108, !range !109, !noundef !103
  %i.ed = tail call i8 @llvm.umin.i8(i8 %i.ec, i8 %i.eb) ; 2 uses
  store i8 %i.ed, ptr %i.cw, align 1, !tbaa !108
  %i.ee = add nsw i32 %.04284, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ee, %i.c
  br i1 %exitcond.not.3, label %._crit_edge87, label %_ZNK2cv8MatShapeixEm.exit60, !llvm.loop !680

.split89.us:                                      ; preds = %._crit_edge.us, %.lr.ph86.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.split89.us
  unreachable

bb.e:                                             ; preds = %.split89.us
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !15
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

.split.us:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.split.us
  unreachable

bb.g:                                             ; preds = %.split.us
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.g
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !15
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

.split91.us:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.us, %.lr.ph86.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.split91.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_, ptr noundef nonnull @.str.9, i32 noundef 149) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.split91.us
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !15
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.er, %bb.j ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.es, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ScatterLayerImpl12forward_implIhlZNS1_17reductionDispatchIhlJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKhSC_E_EEvRKT1_S6_S6_S6_S7_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"struct.cv::MatShape", align 4     ; 5 uses
  %8 = alloca %"class.std::vector.35", align 8    ; 12 uses
  %9 = alloca %"struct.cv::MatShape", align 4     ; 5 uses
  %10 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %11 = alloca %"class.cv::Range", align 4        ; 6 uses
  %12 = alloca %"class.std::function", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.c, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !77
  store ptr %5, ptr %i.b, align 8, !tbaa !78
  call void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79   ; 6 uses
  store i32 %i.e, ptr %i.a, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %7, ptr noundef nonnull align 4 dereferenceable(52) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.g = sext i32 %i.e to i64                     ; 7 uses
  %i.h = icmp slt i32 %i.e, 0
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
end_hunk_1
