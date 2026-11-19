Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/ScalarQuantizer?download=true
inline.NumInlined: 2990
inline.NumDeleted: 733
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 162
begin_hunk_0_@_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EE13decode_vectorEPKhPf:bb.a
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.04182 = phi i64 [ 0, %.lr.ph.new ], [ %i.bw, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.av = lshr i64 %.04182, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !80
  %i.ay = zext i8 %i.ax to i32
  %i.az = trunc i64 %.04182 to i32
  %i.ba = and i32 %i.az, 6
  %i.bb = shl nuw nsw i32 1, %i.ba
  %i.bc = and i32 %i.bb, %i.ay
  %.fr.i = freeze i32 %i.bc
  %.not.i = icmp ne i32 %.fr.i, 0
  %i.bd = zext i1 %.not.i to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !89
  %i.bg = fmul float %i.s, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04182
  store float %i.bg, ptr %i.bh, align 4, !tbaa !89
  %i.bi = or disjoint i64 %.04182, 1              ; 2 uses
  %i.bj = lshr i64 %.04182, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !80
  %i.bm = zext i8 %i.bl to i32
  %i.bn = trunc i64 %i.bi to i32
  %i.bo = and i32 %i.bn, 7
  %i.bp = shl nuw nsw i32 1, %i.bo
  %i.bq = and i32 %i.bp, %i.bm
  %.fr.i.1 = freeze i32 %i.bq
  %.not.i.1 = icmp ne i32 %.fr.i.1, 0
  %i.br = zext i1 %.not.i.1 to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !89
  %i.bu = fmul float %i.s, %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bi
  store float %i.bu, ptr %i.bv, align 4, !tbaa !89
  %i.bw = add nuw i64 %.04182, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !696

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc48, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.ar, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ar, %.noexc48 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.070.0 = phi ptr [ %i.aq, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aq, %.noexc48 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !158
  %.not94 = icmp eq i64 %i.bx, 0
  br i1 %.not94, label %.preheader79, label %.lr.ph84

.lr.ph84:                                         ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.by = extractelement <2 x float> %i.j, i64 1  ; 2 uses
  %i.bz = fneg float %i.by
  br label %bb.c

.preheader79:                                     ; preds = %bb.d, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.lcssa80 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.cj, %bb.d ] ; 8 uses
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !165 ; 2 uses
  %i.cb = icmp ult i64 %.lcssa80, %i.ca
  br i1 %i.cb, label %.lr.ph86.preheader, label %._crit_edge87

.lr.ph86.preheader:                               ; preds = %.preheader79
  %i.cc = shl i64 %.lcssa80, 2
  %scevgep = getelementptr i8, ptr %.sroa.070.0, i64 %i.cc
  %i.cd = sub nuw i64 %i.ca, %.lcssa80
  %i.ce = shl i64 %i.cd, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ce, i1 false), !tbaa !89
  br label %._crit_edge87

bb.c:                                             ; preds = %.lr.ph84, %bb.d
  %.03683 = phi i64 [ 0, %.lr.ph84 ], [ %i.ci, %bb.d ] ; 3 uses
  %i.cf = invoke noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_standardEPKhm(ptr noundef %i.m, i64 noundef %.03683)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.cg = select i1 %i.cf, float %i.by, float %i.bz
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.070.0, i64 %.03683
  store float %i.cg, ptr %i.ch, align 4, !tbaa !89
  %i.ci = add nuw i64 %.03683, 1                  ; 2 uses
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !158 ; 2 uses
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.c, label %.preheader79, !llvm.loop !697

._crit_edge87:                                    ; preds = %.lr.ph86.preheader, %.preheader79
  %i.cl = icmp ugt i64 %.lcssa80, 2305843009213693951
  br i1 %i.cl, label %bb.e, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49

bb.e:                                             ; preds = %._crit_edge87
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49: ; preds = %._crit_edge87
  %.not.i.i.i.i50 = icmp eq i64 %.lcssa80, 0
  br i1 %.not.i.i.i.i50, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %i.cm = shl nuw nsw i64 %.lcssa80, 2
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #25
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc56:                                         ; preds = %bb.f
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.lcssa80 ; 2 uses
  store float 0.000000e+00, ptr %i.cn, align 4, !tbaa !89
  %i.cp = add nsw i64 %.lcssa80, -1               ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51: ; preds = %.noexc56
  %i.cr = getelementptr i8, ptr %i.cn, i64 4
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.cp, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cr, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !89
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51, %.noexc56, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %.sroa.064.0 = phi ptr [ %i.cn, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.cn, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 9 uses
  %.sroa.11.0 = phi ptr [ %i.co, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.co, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 2 uses
  invoke void @_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EE15project_inverseEPfS4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %.sroa.070.0, ptr noundef %.sroa.064.0)
          to label %.preheader78 unwind label %bb.g

.preheader78:                                     ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !158 ; 12 uses
  %.not95 = icmp eq i64 %i.cs, 0
  br i1 %.not95, label %._crit_edge93, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.preheader78
  %min.iters.check = icmp ult i64 %i.cs, 8
  br i1 %min.iters.check, label %.lr.ph89.preheader128, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph89.preheader
  %n.vec = and i64 %i.cs, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.an, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <4 x float>, ptr %i.ct, align 4, !tbaa !89
  %wide.load108 = load <4 x float>, ptr %i.cu, align 4, !tbaa !89
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load109 = load <4 x float>, ptr %i.cv, align 4, !tbaa !89
  %wide.load110 = load <4 x float>, ptr %i.cw, align 4, !tbaa !89
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load109)
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load108, <4 x float> %wide.load110)
  store <4 x float> %i.cx, ptr %i.cv, align 4, !tbaa !89
  store <4 x float> %i.cy, ptr %i.cw, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !698

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %.lr.ph92.preheader, label %.lr.ph89.preheader128

.lr.ph89.preheader128:                            ; preds = %.lr.ph89.preheader, %middle.block
  %.03488.ph = phi i64 [ 0, %.lr.ph89.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph89

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.f, %bb.e
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.db = ptrtoint ptr %.sroa.11.0 to i64
  %i.dc = ptrtoint ptr %.sroa.064.0 to i64
  %i.dd = sub i64 %i.db, %i.dc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.dd) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.lr.ph89:                                         ; preds = %.lr.ph89.preheader128, %.lr.ph89
  %.03488 = phi i64 [ %i.dj, %.lr.ph89 ], [ %.03488.ph, %.lr.ph89.preheader128 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %.03488
  %i.df = load float, ptr %i.de, align 4, !tbaa !89
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03488 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !89
  %i.di = tail call float @llvm.fmuladd.f32(float %i.an, float %i.df, float %i.dh)
  store float %i.di, ptr %i.dg, align 4, !tbaa !89
  %i.dj = add nuw i64 %.03488, 1                  ; 2 uses
  %exitcond98.not = icmp eq i64 %i.dj, %i.cs
  br i1 %exitcond98.not, label %.lr.ph92.preheader, label %.lr.ph89, !llvm.loop !699

.lr.ph92.preheader:                               ; preds = %.lr.ph89, %middle.block
  %min.iters.check114 = icmp ult i64 %i.cs, 12
  br i1 %min.iters.check114, label %.lr.ph92.preheader127, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph92.preheader
  %i.dk = shl i64 %i.cs, 2
  %i.dl = getelementptr i8, ptr %2, i64 %i.dk
  %i.dm = getelementptr i8, ptr %1, i64 %i.l
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.o
  %i.do = getelementptr i8, ptr %i.dn, i64 4
  %bound0 = icmp ult ptr %2, %i.do
  %bound1 = icmp ult ptr %i.p, %i.dl
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph92.preheader127, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck
  %n.vec116 = and i64 %i.cs, -8                   ; 3 uses
  %i.dp = load float, ptr %i.p, align 4, !tbaa !203, !alias.scope !706
  %broadcast.splatinsert121 = insertelement <4 x float> poison, float %i.dp, i64 0
  %broadcast.splat122 = shufflevector <4 x float> %broadcast.splatinsert121, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next123, %vector.body117 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index118 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %wide.load119 = load <4 x float>, ptr %i.dq, align 4, !tbaa !89, !alias.scope !707, !noalias !706
  %wide.load120 = load <4 x float>, ptr %i.dr, align 4, !tbaa !89, !alias.scope !707, !noalias !706
  %i.ds = fmul <4 x float> %broadcast.splat122, %wide.load119
  %i.dt = fmul <4 x float> %broadcast.splat122, %wide.load120
  store <4 x float> %i.ds, ptr %i.dq, align 4, !tbaa !89, !alias.scope !707, !noalias !706
  store <4 x float> %i.dt, ptr %i.dr, align 4, !tbaa !89, !alias.scope !707, !noalias !706
  %index.next123 = add nuw i64 %index118, 8       ; 2 uses
  %i.du = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.du, label %middle.block124, label %vector.body117, !llvm.loop !703

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %i.cs, %n.vec116
  br i1 %cmp.n125, label %._crit_edge93.thread, label %.lr.ph92.preheader127

.lr.ph92.preheader127:                            ; preds = %vector.memcheck, %.lr.ph92.preheader, %middle.block124
  %.091.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph92.preheader ], [ %n.vec116, %middle.block124 ] ; 3 uses
  %xtraiter131 = and i64 %i.cs, 3                 ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader127, %.lr.ph92.prol
  %.091.prol = phi i64 [ %i.dz, %.lr.ph92.prol ], [ %.091.ph, %.lr.ph92.preheader127 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader127 ]
  %i.dv = load float, ptr %i.p, align 4, !tbaa !203
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091.prol ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !89
  %i.dy = fmul float %i.dv, %i.dx
  store float %i.dy, ptr %i.dw, align 4, !tbaa !89
  %i.dz = add nuw i64 %.091.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter131
  br i1 %prol.iter.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !704

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader127
  %.091.unr = phi i64 [ %.091.ph, %.lr.ph92.preheader127 ], [ %i.dz, %.lr.ph92.prol ]
  %i.ea = sub i64 %.091.ph, %i.cs
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %._crit_edge93.thread, label %.lr.ph92

._crit_edge93:                                    ; preds = %.preheader78
  %.not.i.i.i58 = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIfSaIfEED2Ev.exit59, label %._crit_edge93.thread

._crit_edge93.thread:                             ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92, %middle.block124, %._crit_edge93
  %i.ec = ptrtoint ptr %.sroa.11.0 to i64
  %i.ed = ptrtoint ptr %.sroa.064.0 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.ee) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit59

_ZNSt6vectorIfSaIfEED2Ev.exit59:                  ; preds = %._crit_edge93, %._crit_edge93.thread
  %.not.i.i.i60 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIfSaIfEED2Ev.exit61, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59
  %i.ef = ptrtoint ptr %.sroa.12.0 to i64
  %i.eg = ptrtoint ptr %.sroa.070.0 to i64
  %i.eh = sub i64 %i.ef, %i.eg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.eh) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit61

_ZNSt6vectorIfSaIfEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59, %bb.i
  ret void

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %.091 = phi i64 [ %i.fb, %.lr.ph92 ], [ %.091.unr, %.lr.ph92.prol.loopexit ] ; 5 uses
  %i.ei = load float, ptr %i.p, align 4, !tbaa !203
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091 ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !89
  %i.el = fmul float %i.ei, %i.ek
  store float %i.el, ptr %i.ej, align 4, !tbaa !89
  %i.em = load float, ptr %i.p, align 4, !tbaa !203
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !89
  %i.eq = fmul float %i.em, %i.ep
  store float %i.eq, ptr %i.eo, align 4, !tbaa !89
  %i.er = load float, ptr %i.p, align 4, !tbaa !203
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !89
  %i.ev = fmul float %i.er, %i.eu
  store float %i.ev, ptr %i.et, align 4, !tbaa !89
  %i.ew = load float, ptr %i.p, align 4, !tbaa !203
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !89
  %i.fa = fmul float %i.ew, %i.ez
  store float %i.fa, ptr %i.ey, align 4, !tbaa !89
  %i.fb = add nuw i64 %.091, 4                    ; 2 uses
  %exitcond99.not.3 = icmp eq i64 %i.fb, %i.cs
  br i1 %exitcond99.not.3, label %._crit_edge93.thread, label %.lr.ph92, !llvm.loop !705

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g, %bb.h
  %.pn45 = phi { ptr, i32 } [ %i.da, %bb.h ], [ %i.da, %bb.g ], [ %lpad.loopexit.split-lp129, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i62 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIfSaIfEED2Ev.exit63, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.fc = ptrtoint ptr %.sroa.12.0 to i64
  %i.fd = ptrtoint ptr %.sroa.070.0 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.fe) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit63

_ZNSt6vectorIfSaIfEED2Ev.exit63:                  ; preds = %bb.j, %_ZNSt6vectorIfSaIfEED2Ev.exit
  resume { ptr, i32 } %.pn45
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIfSaIfEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2

_ZNSt6vectorIfSaIfEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24, !inline_history !205
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24, !inline_history !205
  br label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EED2Ev.exit

_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #24
  ret void
}
end_hunk_0
begin_hunk_1_@_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi3ELNS_9SIMDLevelE0EE13decode_vectorEPKhPf:bb.a
.noexc48:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ad = shl nuw nsw i64 %i.d, 2
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #25 ; 5 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.d ; 2 uses
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !89
  %i.ag = add nsw i64 %i.d, -1                    ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc48
  %i.ai = getelementptr i8, ptr %i.ae, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ag, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !89
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.04182 = phi i64 [ 0, %.lr.ph ], [ %i.bb, %bb.b ] ; 4 uses
  %i.aj = lshr i64 %.04182, 3
  %invariant.gep.i = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = trunc i64 %.04182 to i32
  %i.al = and i32 %i.ak, 7                        ; 2 uses
  %i.am = shl nuw nsw i32 1, %i.al
  %i.an = load i8, ptr %invariant.gep.i, align 1, !tbaa !80
  %i.ao = zext i8 %i.an to i32
  %i.ap = lshr i32 %i.ao, %i.al
  %i.aq = and i32 %i.ap, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.r
  %i.as = load i8, ptr %gep.1.i, align 1, !tbaa !80
  %i.at = zext i8 %i.as to i32
  %i.au = and i32 %i.am, %i.at
  %.not.1.i = icmp eq i32 %i.au, 0
  %i.av = select i1 %.not.1.i, i64 0, i64 2
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ar
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !89
  %i.az = fmul float %i.u, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04182
  store float %i.az, ptr %i.ba, align 4, !tbaa !89
  %i.bb = add nuw i64 %.04182, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !719

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc48, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.af, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.af, %.noexc48 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.070.0 = phi ptr [ %i.ae, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ae, %.noexc48 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !167
  %.not94 = icmp eq i64 %i.bc, 0
  br i1 %.not94, label %.preheader79, label %.lr.ph84

.lr.ph84:                                         ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.bd = extractelement <2 x float> %i.j, i64 1  ; 2 uses
  %i.be = fneg float %i.bd
  br label %bb.c

.preheader79:                                     ; preds = %bb.d, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.lcssa80 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.bo, %bb.d ] ; 8 uses
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !174 ; 2 uses
  %i.bg = icmp ult i64 %.lcssa80, %i.bf
  br i1 %i.bg, label %.lr.ph86.preheader, label %._crit_edge87

.lr.ph86.preheader:                               ; preds = %.preheader79
  %i.bh = shl i64 %.lcssa80, 2
  %scevgep = getelementptr i8, ptr %.sroa.070.0, i64 %i.bh
  %i.bi = sub nuw i64 %i.bf, %.lcssa80
  %i.bj = shl i64 %i.bi, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bj, i1 false), !tbaa !89
  br label %._crit_edge87

bb.c:                                             ; preds = %.lr.ph84, %bb.d
  %.03683 = phi i64 [ 0, %.lr.ph84 ], [ %i.bn, %bb.d ] ; 3 uses
  %i.bk = invoke noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_standardEPKhm(ptr noundef %i.m, i64 noundef %.03683)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.bl = select i1 %i.bk, float %i.bd, float %i.be
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.070.0, i64 %.03683
  store float %i.bl, ptr %i.bm, align 4, !tbaa !89
  %i.bn = add nuw i64 %.03683, 1                  ; 2 uses
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !167 ; 2 uses
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.c, label %.preheader79, !llvm.loop !720

._crit_edge87:                                    ; preds = %.lr.ph86.preheader, %.preheader79
  %i.bq = icmp ugt i64 %.lcssa80, 2305843009213693951
  br i1 %i.bq, label %bb.e, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49

bb.e:                                             ; preds = %._crit_edge87
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49: ; preds = %._crit_edge87
  %.not.i.i.i.i50 = icmp eq i64 %.lcssa80, 0
  br i1 %.not.i.i.i.i50, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %i.br = shl nuw nsw i64 %.lcssa80, 2
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #25
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc56:                                         ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.lcssa80 ; 2 uses
  store float 0.000000e+00, ptr %i.bs, align 4, !tbaa !89
  %i.bu = add nsw i64 %.lcssa80, -1               ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51: ; preds = %.noexc56
  %i.bw = getelementptr i8, ptr %i.bs, i64 4
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.bu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bw, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !89
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51, %.noexc56, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %.sroa.064.0 = phi ptr [ %i.bs, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.bs, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 9 uses
  %.sroa.11.0 = phi ptr [ %i.bt, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.bt, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 2 uses
  invoke void @_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi3ELNS_9SIMDLevelE0EE15project_inverseEPfS4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %.sroa.070.0, ptr noundef %.sroa.064.0)
          to label %.preheader78 unwind label %bb.g

.preheader78:                                     ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !167 ; 12 uses
  %.not95 = icmp eq i64 %i.bx, 0
  br i1 %.not95, label %._crit_edge93, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.preheader78
  %min.iters.check = icmp ult i64 %i.bx, 8
  br i1 %min.iters.check, label %.lr.ph89.preheader128, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph89.preheader
  %n.vec = and i64 %i.bx, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load = load <4 x float>, ptr %i.by, align 4, !tbaa !89
  %wide.load108 = load <4 x float>, ptr %i.bz, align 4, !tbaa !89
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %wide.load109 = load <4 x float>, ptr %i.ca, align 4, !tbaa !89
  %wide.load110 = load <4 x float>, ptr %i.cb, align 4, !tbaa !89
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load109)
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load108, <4 x float> %wide.load110)
  store <4 x float> %i.cc, ptr %i.ca, align 4, !tbaa !89
  store <4 x float> %i.cd, ptr %i.cb, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !721

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %.lr.ph92.preheader, label %.lr.ph89.preheader128

.lr.ph89.preheader128:                            ; preds = %.lr.ph89.preheader, %middle.block
  %.03488.ph = phi i64 [ 0, %.lr.ph89.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph89

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.f, %bb.e
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = ptrtoint ptr %.sroa.11.0 to i64
  %i.ch = ptrtoint ptr %.sroa.064.0 to i64
  %i.ci = sub i64 %i.cg, %i.ch
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.ci) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.lr.ph89:                                         ; preds = %.lr.ph89.preheader128, %.lr.ph89
  %.03488 = phi i64 [ %i.co, %.lr.ph89 ], [ %.03488.ph, %.lr.ph89.preheader128 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %.03488
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !89
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03488 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !89
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ck, float %i.cm)
  store float %i.cn, ptr %i.cl, align 4, !tbaa !89
  %i.co = add nuw i64 %.03488, 1                  ; 2 uses
  %exitcond98.not = icmp eq i64 %i.co, %i.bx
  br i1 %exitcond98.not, label %.lr.ph92.preheader, label %.lr.ph89, !llvm.loop !722

.lr.ph92.preheader:                               ; preds = %.lr.ph89, %middle.block
  %min.iters.check114 = icmp ult i64 %i.bx, 12
  br i1 %min.iters.check114, label %.lr.ph92.preheader127, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph92.preheader
  %i.cp = shl i64 %i.bx, 2
  %i.cq = getelementptr i8, ptr %2, i64 %i.cp
  %i.cr = getelementptr i8, ptr %1, i64 %i.l
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.o
  %i.ct = getelementptr i8, ptr %i.cs, i64 4
  %bound0 = icmp ult ptr %2, %i.ct
  %bound1 = icmp ult ptr %i.p, %i.cq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph92.preheader127, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck
  %n.vec116 = and i64 %i.bx, -8                   ; 3 uses
  %i.cu = load float, ptr %i.p, align 4, !tbaa !203, !alias.scope !729
  %broadcast.splatinsert121 = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat122 = shufflevector <4 x float> %broadcast.splatinsert121, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next123, %vector.body117 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index118 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load119 = load <4 x float>, ptr %i.cv, align 4, !tbaa !89, !alias.scope !730, !noalias !729
  %wide.load120 = load <4 x float>, ptr %i.cw, align 4, !tbaa !89, !alias.scope !730, !noalias !729
  %i.cx = fmul <4 x float> %broadcast.splat122, %wide.load119
  %i.cy = fmul <4 x float> %broadcast.splat122, %wide.load120
  store <4 x float> %i.cx, ptr %i.cv, align 4, !tbaa !89, !alias.scope !730, !noalias !729
  store <4 x float> %i.cy, ptr %i.cw, align 4, !tbaa !89, !alias.scope !730, !noalias !729
  %index.next123 = add nuw i64 %index118, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.cz, label %middle.block124, label %vector.body117, !llvm.loop !726

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %i.bx, %n.vec116
  br i1 %cmp.n125, label %._crit_edge93.thread, label %.lr.ph92.preheader127

.lr.ph92.preheader127:                            ; preds = %vector.memcheck, %.lr.ph92.preheader, %middle.block124
  %.091.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph92.preheader ], [ %n.vec116, %middle.block124 ] ; 3 uses
  %xtraiter = and i64 %i.bx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader127, %.lr.ph92.prol
  %.091.prol = phi i64 [ %i.de, %.lr.ph92.prol ], [ %.091.ph, %.lr.ph92.preheader127 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader127 ]
  %i.da = load float, ptr %i.p, align 4, !tbaa !203
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091.prol ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !89
  %i.dd = fmul float %i.da, %i.dc
  store float %i.dd, ptr %i.db, align 4, !tbaa !89
  %i.de = add nuw i64 %.091.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !727

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader127
  %.091.unr = phi i64 [ %.091.ph, %.lr.ph92.preheader127 ], [ %i.de, %.lr.ph92.prol ]
  %i.df = sub i64 %.091.ph, %i.bx
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge93.thread, label %.lr.ph92

._crit_edge93:                                    ; preds = %.preheader78
  %.not.i.i.i58 = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIfSaIfEED2Ev.exit59, label %._crit_edge93.thread

._crit_edge93.thread:                             ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92, %middle.block124, %._crit_edge93
  %i.dh = ptrtoint ptr %.sroa.11.0 to i64
  %i.di = ptrtoint ptr %.sroa.064.0 to i64
  %i.dj = sub i64 %i.dh, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.dj) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit59

_ZNSt6vectorIfSaIfEED2Ev.exit59:                  ; preds = %._crit_edge93, %._crit_edge93.thread
  %.not.i.i.i60 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIfSaIfEED2Ev.exit61, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59
  %i.dk = ptrtoint ptr %.sroa.12.0 to i64
  %i.dl = ptrtoint ptr %.sroa.070.0 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.dm) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit61

_ZNSt6vectorIfSaIfEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59, %bb.i
  ret void

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %.091 = phi i64 [ %i.eg, %.lr.ph92 ], [ %.091.unr, %.lr.ph92.prol.loopexit ] ; 5 uses
  %i.dn = load float, ptr %i.p, align 4, !tbaa !203
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !89
  %i.dq = fmul float %i.dn, %i.dp
  store float %i.dq, ptr %i.do, align 4, !tbaa !89
  %i.dr = load float, ptr %i.p, align 4, !tbaa !203
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !89
  %i.dv = fmul float %i.dr, %i.du
  store float %i.dv, ptr %i.dt, align 4, !tbaa !89
  %i.dw = load float, ptr %i.p, align 4, !tbaa !203
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !89
  %i.ea = fmul float %i.dw, %i.dz
  store float %i.ea, ptr %i.dy, align 4, !tbaa !89
  %i.eb = load float, ptr %i.p, align 4, !tbaa !203
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12 ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !89
  %i.ef = fmul float %i.eb, %i.ee
  store float %i.ef, ptr %i.ed, align 4, !tbaa !89
  %i.eg = add nuw i64 %.091, 4                    ; 2 uses
  %exitcond99.not.3 = icmp eq i64 %i.eg, %i.bx
  br i1 %exitcond99.not.3, label %._crit_edge93.thread, label %.lr.ph92, !llvm.loop !728

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g, %bb.h
  %.pn45 = phi { ptr, i32 } [ %i.cf, %bb.h ], [ %i.cf, %bb.g ], [ %lpad.loopexit.split-lp129, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i62 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIfSaIfEED2Ev.exit63, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.eh = ptrtoint ptr %.sroa.12.0 to i64
  %i.ei = ptrtoint ptr %.sroa.070.0 to i64
  %i.ej = sub i64 %i.eh, %i.ei
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.ej) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit63

_ZNSt6vectorIfSaIfEED2Ev.exit63:                  ; preds = %bb.j, %_ZNSt6vectorIfSaIfEED2Ev.exit
  resume { ptr, i32 } %.pn45
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi3ELNS_9SIMDLevelE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi3ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIfSaIfEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2

_ZNSt6vectorIfSaIfEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi3ELNS_9SIMDLevelE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi3ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24, !inline_history !206
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi3ELNS_9SIMDLevelE0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24, !inline_history !206
  br label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi3ELNS_9SIMDLevelE0EED2Ev.exit

_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi3ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #24
  ret void
}
end_hunk_1
begin_hunk_2_@_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EE13decode_vectorEPKhPf:bb.a
  br i1 %i.ai, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc48
  %i.aj = getelementptr i8, ptr %i.af, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !89
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.04182 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 4 uses
  %i.ak = lshr i64 %.04182, 3
  %invariant.gep.i = getelementptr i8, ptr %1, i64 %i.ak ; 3 uses
  %i.al = trunc i64 %.04182 to i32
  %i.am = and i32 %i.al, 7                        ; 2 uses
  %i.an = shl nuw nsw i32 1, %i.am                ; 2 uses
  %i.ao = load i8, ptr %invariant.gep.i, align 1, !tbaa !80
  %i.ap = zext i8 %i.ao to i32
  %i.aq = lshr i32 %i.ap, %i.am
  %i.ar = and i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.r
  %i.at = load i8, ptr %gep.1.i, align 1, !tbaa !80
  %i.au = zext i8 %i.at to i32
  %i.av = and i32 %i.an, %i.au
  %.not.1.i = icmp eq i32 %i.av, 0
  %i.aw = select i1 %.not.1.i, i64 0, i64 2
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.s
  %i.ax = load i8, ptr %gep.2.i, align 1, !tbaa !80
  %i.ay = zext i8 %i.ax to i32
  %i.az = and i32 %i.an, %i.ay
  %.not.2.i = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not.2.i, i64 0, i64 4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.aw
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.as
  %i.be = load float, ptr %i.bd, align 4, !tbaa !89
  %i.bf = fmul float %i.v, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04182
  store float %i.bf, ptr %i.bg, align 4, !tbaa !89
  %i.bh = add nuw i64 %.04182, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !742

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc48, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.ag, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ag, %.noexc48 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.070.0 = phi ptr [ %i.af, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.af, %.noexc48 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !176
  %.not94 = icmp eq i64 %i.bi, 0
  br i1 %.not94, label %.preheader79, label %.lr.ph84

.lr.ph84:                                         ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.bj = extractelement <2 x float> %i.j, i64 1  ; 2 uses
  %i.bk = fneg float %i.bj
  br label %bb.c

.preheader79:                                     ; preds = %bb.d, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.lcssa80 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.bu, %bb.d ] ; 8 uses
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !183 ; 2 uses
  %i.bm = icmp ult i64 %.lcssa80, %i.bl
  br i1 %i.bm, label %.lr.ph86.preheader, label %._crit_edge87

.lr.ph86.preheader:                               ; preds = %.preheader79
  %i.bn = shl i64 %.lcssa80, 2
  %scevgep = getelementptr i8, ptr %.sroa.070.0, i64 %i.bn
  %i.bo = sub nuw i64 %i.bl, %.lcssa80
  %i.bp = shl i64 %i.bo, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bp, i1 false), !tbaa !89
  br label %._crit_edge87

bb.c:                                             ; preds = %.lr.ph84, %bb.d
  %.03683 = phi i64 [ 0, %.lr.ph84 ], [ %i.bt, %bb.d ] ; 3 uses
  %i.bq = invoke noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_standardEPKhm(ptr noundef %i.m, i64 noundef %.03683)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.br = select i1 %i.bq, float %i.bj, float %i.bk
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.070.0, i64 %.03683
  store float %i.br, ptr %i.bs, align 4, !tbaa !89
  %i.bt = add nuw i64 %.03683, 1                  ; 2 uses
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %i.bv = icmp ult i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.c, label %.preheader79, !llvm.loop !743

._crit_edge87:                                    ; preds = %.lr.ph86.preheader, %.preheader79
  %i.bw = icmp ugt i64 %.lcssa80, 2305843009213693951
  br i1 %i.bw, label %bb.e, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49

bb.e:                                             ; preds = %._crit_edge87
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49: ; preds = %._crit_edge87
  %.not.i.i.i.i50 = icmp eq i64 %.lcssa80, 0
  br i1 %.not.i.i.i.i50, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %i.bx = shl nuw nsw i64 %.lcssa80, 2
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #25
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc56:                                         ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.lcssa80 ; 2 uses
  store float 0.000000e+00, ptr %i.by, align 4, !tbaa !89
  %i.ca = add nsw i64 %.lcssa80, -1               ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51: ; preds = %.noexc56
  %i.cc = getelementptr i8, ptr %i.by, i64 4
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.ca, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cc, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !89
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51, %.noexc56, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %.sroa.064.0 = phi ptr [ %i.by, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.by, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 9 uses
  %.sroa.11.0 = phi ptr [ %i.bz, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.bz, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 2 uses
  invoke void @_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EE15project_inverseEPfS4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %.sroa.070.0, ptr noundef %.sroa.064.0)
          to label %.preheader78 unwind label %bb.g

.preheader78:                                     ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !176 ; 12 uses
  %.not95 = icmp eq i64 %i.cd, 0
  br i1 %.not95, label %._crit_edge93, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.preheader78
  %min.iters.check = icmp ult i64 %i.cd, 8
  br i1 %min.iters.check, label %.lr.ph89.preheader128, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph89.preheader
  %n.vec = and i64 %i.cd, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load = load <4 x float>, ptr %i.ce, align 4, !tbaa !89
  %wide.load108 = load <4 x float>, ptr %i.cf, align 4, !tbaa !89
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %wide.load109 = load <4 x float>, ptr %i.cg, align 4, !tbaa !89
  %wide.load110 = load <4 x float>, ptr %i.ch, align 4, !tbaa !89
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load109)
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load108, <4 x float> %wide.load110)
  store <4 x float> %i.ci, ptr %i.cg, align 4, !tbaa !89
  store <4 x float> %i.cj, ptr %i.ch, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !744

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %.lr.ph92.preheader, label %.lr.ph89.preheader128

.lr.ph89.preheader128:                            ; preds = %.lr.ph89.preheader, %middle.block
  %.03488.ph = phi i64 [ 0, %.lr.ph89.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph89

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.f, %bb.e
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = ptrtoint ptr %.sroa.11.0 to i64
  %i.cn = ptrtoint ptr %.sroa.064.0 to i64
  %i.co = sub i64 %i.cm, %i.cn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.co) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.lr.ph89:                                         ; preds = %.lr.ph89.preheader128, %.lr.ph89
  %.03488 = phi i64 [ %i.cu, %.lr.ph89 ], [ %.03488.ph, %.lr.ph89.preheader128 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %.03488
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !89
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03488 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !89
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.cq, float %i.cs)
  store float %i.ct, ptr %i.cr, align 4, !tbaa !89
  %i.cu = add nuw i64 %.03488, 1                  ; 2 uses
  %exitcond98.not = icmp eq i64 %i.cu, %i.cd
  br i1 %exitcond98.not, label %.lr.ph92.preheader, label %.lr.ph89, !llvm.loop !745

.lr.ph92.preheader:                               ; preds = %.lr.ph89, %middle.block
  %min.iters.check114 = icmp ult i64 %i.cd, 12
  br i1 %min.iters.check114, label %.lr.ph92.preheader127, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph92.preheader
  %i.cv = shl i64 %i.cd, 2
  %i.cw = getelementptr i8, ptr %2, i64 %i.cv
  %i.cx = getelementptr i8, ptr %1, i64 %i.l
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.o
  %i.cz = getelementptr i8, ptr %i.cy, i64 4
  %bound0 = icmp ult ptr %2, %i.cz
  %bound1 = icmp ult ptr %i.p, %i.cw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph92.preheader127, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck
  %n.vec116 = and i64 %i.cd, -8                   ; 3 uses
  %i.da = load float, ptr %i.p, align 4, !tbaa !203, !alias.scope !752
  %broadcast.splatinsert121 = insertelement <4 x float> poison, float %i.da, i64 0
  %broadcast.splat122 = shufflevector <4 x float> %broadcast.splatinsert121, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next123, %vector.body117 ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index118 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %wide.load119 = load <4 x float>, ptr %i.db, align 4, !tbaa !89, !alias.scope !753, !noalias !752
  %wide.load120 = load <4 x float>, ptr %i.dc, align 4, !tbaa !89, !alias.scope !753, !noalias !752
  %i.dd = fmul <4 x float> %broadcast.splat122, %wide.load119
  %i.de = fmul <4 x float> %broadcast.splat122, %wide.load120
  store <4 x float> %i.dd, ptr %i.db, align 4, !tbaa !89, !alias.scope !753, !noalias !752
  store <4 x float> %i.de, ptr %i.dc, align 4, !tbaa !89, !alias.scope !753, !noalias !752
  %index.next123 = add nuw i64 %index118, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.df, label %middle.block124, label %vector.body117, !llvm.loop !749

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %i.cd, %n.vec116
  br i1 %cmp.n125, label %._crit_edge93.thread, label %.lr.ph92.preheader127

.lr.ph92.preheader127:                            ; preds = %vector.memcheck, %.lr.ph92.preheader, %middle.block124
  %.091.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph92.preheader ], [ %n.vec116, %middle.block124 ] ; 3 uses
  %xtraiter = and i64 %i.cd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader127, %.lr.ph92.prol
  %.091.prol = phi i64 [ %i.dk, %.lr.ph92.prol ], [ %.091.ph, %.lr.ph92.preheader127 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader127 ]
  %i.dg = load float, ptr %i.p, align 4, !tbaa !203
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091.prol ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !89
  %i.dj = fmul float %i.dg, %i.di
  store float %i.dj, ptr %i.dh, align 4, !tbaa !89
  %i.dk = add nuw i64 %.091.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !750

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader127
  %.091.unr = phi i64 [ %.091.ph, %.lr.ph92.preheader127 ], [ %i.dk, %.lr.ph92.prol ]
  %i.dl = sub i64 %.091.ph, %i.cd
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %._crit_edge93.thread, label %.lr.ph92

._crit_edge93:                                    ; preds = %.preheader78
  %.not.i.i.i58 = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIfSaIfEED2Ev.exit59, label %._crit_edge93.thread

._crit_edge93.thread:                             ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92, %middle.block124, %._crit_edge93
  %i.dn = ptrtoint ptr %.sroa.11.0 to i64
  %i.do = ptrtoint ptr %.sroa.064.0 to i64
  %i.dp = sub i64 %i.dn, %i.do
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.dp) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit59

_ZNSt6vectorIfSaIfEED2Ev.exit59:                  ; preds = %._crit_edge93, %._crit_edge93.thread
  %.not.i.i.i60 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIfSaIfEED2Ev.exit61, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59
  %i.dq = ptrtoint ptr %.sroa.12.0 to i64
  %i.dr = ptrtoint ptr %.sroa.070.0 to i64
  %i.ds = sub i64 %i.dq, %i.dr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.ds) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit61

_ZNSt6vectorIfSaIfEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59, %bb.i
  ret void

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %.091 = phi i64 [ %i.em, %.lr.ph92 ], [ %.091.unr, %.lr.ph92.prol.loopexit ] ; 5 uses
  %i.dt = load float, ptr %i.p, align 4, !tbaa !203
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091 ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !89
  %i.dw = fmul float %i.dt, %i.dv
  store float %i.dw, ptr %i.du, align 4, !tbaa !89
  %i.dx = load float, ptr %i.p, align 4, !tbaa !203
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !89
  %i.eb = fmul float %i.dx, %i.ea
  store float %i.eb, ptr %i.dz, align 4, !tbaa !89
  %i.ec = load float, ptr %i.p, align 4, !tbaa !203
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !89
  %i.eg = fmul float %i.ec, %i.ef
  store float %i.eg, ptr %i.ee, align 4, !tbaa !89
  %i.eh = load float, ptr %i.p, align 4, !tbaa !203
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 12 ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !89
  %i.el = fmul float %i.eh, %i.ek
  store float %i.el, ptr %i.ej, align 4, !tbaa !89
  %i.em = add nuw i64 %.091, 4                    ; 2 uses
  %exitcond99.not.3 = icmp eq i64 %i.em, %i.cd
  br i1 %exitcond99.not.3, label %._crit_edge93.thread, label %.lr.ph92, !llvm.loop !751

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g, %bb.h
  %.pn45 = phi { ptr, i32 } [ %i.cl, %bb.h ], [ %i.cl, %bb.g ], [ %lpad.loopexit.split-lp129, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i62 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIfSaIfEED2Ev.exit63, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.en = ptrtoint ptr %.sroa.12.0 to i64
  %i.eo = ptrtoint ptr %.sroa.070.0 to i64
  %i.ep = sub i64 %i.en, %i.eo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.ep) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit63

_ZNSt6vectorIfSaIfEED2Ev.exit63:                  ; preds = %bb.j, %_ZNSt6vectorIfSaIfEED2Ev.exit
  resume { ptr, i32 } %.pn45
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIfSaIfEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2

_ZNSt6vectorIfSaIfEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24, !inline_history !207
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24, !inline_history !207
  br label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EED2Ev.exit

_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #24
  ret void
}
end_hunk_2
begin_hunk_3_@_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EE13decode_vectorEPKhPf:bb.a

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.04182 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %bb.b ] ; 4 uses
  %i.al = lshr i64 %.04182, 3
  %invariant.gep.i = getelementptr i8, ptr %1, i64 %i.al ; 4 uses
  %i.am = trunc i64 %.04182 to i32
  %i.an = and i32 %i.am, 7                        ; 2 uses
  %i.ao = shl nuw nsw i32 1, %i.an                ; 3 uses
  %i.ap = load i8, ptr %invariant.gep.i, align 1, !tbaa !80
  %i.aq = zext i8 %i.ap to i32
  %i.ar = lshr i32 %i.aq, %i.an
  %i.as = and i32 %i.ar, 1
  %i.at = zext nneg i32 %i.as to i64
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.r
  %i.au = load i8, ptr %gep.1.i, align 1, !tbaa !80
  %i.av = zext i8 %i.au to i32
  %i.aw = and i32 %i.ao, %i.av
  %.not.1.i = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not.1.i, i64 0, i64 2
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.s
  %i.ay = load i8, ptr %gep.2.i, align 1, !tbaa !80
  %i.az = zext i8 %i.ay to i32
  %i.ba = and i32 %i.ao, %i.az
  %.not.2.i = icmp eq i32 %i.ba, 0
  %i.bb = select i1 %.not.2.i, i64 0, i64 4
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.t
  %i.bc = load i8, ptr %gep.3.i, align 1, !tbaa !80
  %i.bd = zext i8 %i.bc to i32
  %i.be = and i32 %i.ao, %i.bd
  %.not.3.i = icmp eq i32 %i.be, 0
  %i.bf = select i1 %.not.3.i, i64 0, i64 8
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bb
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ax
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.at
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !89
  %i.bl = fmul float %i.w, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04182
  store float %i.bl, ptr %i.bm, align 4, !tbaa !89
  %i.bn = add nuw i64 %.04182, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !765

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc48, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.ah, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ah, %.noexc48 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.070.0 = phi ptr [ %i.ag, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ag, %.noexc48 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !185
  %.not94 = icmp eq i64 %i.bo, 0
  br i1 %.not94, label %.preheader79, label %.lr.ph84

.lr.ph84:                                         ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.bp = extractelement <2 x float> %i.j, i64 1  ; 2 uses
  %i.bq = fneg float %i.bp
  br label %bb.c

.preheader79:                                     ; preds = %bb.d, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.lcssa80 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.ca, %bb.d ] ; 8 uses
  %i.br = load i64, ptr %i.c, align 8, !tbaa !192 ; 2 uses
  %i.bs = icmp ult i64 %.lcssa80, %i.br
  br i1 %i.bs, label %.lr.ph86.preheader, label %._crit_edge87

.lr.ph86.preheader:                               ; preds = %.preheader79
  %i.bt = shl i64 %.lcssa80, 2
  %scevgep = getelementptr i8, ptr %.sroa.070.0, i64 %i.bt
  %i.bu = sub nuw i64 %i.br, %.lcssa80
  %i.bv = shl i64 %i.bu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bv, i1 false), !tbaa !89
  br label %._crit_edge87

bb.c:                                             ; preds = %.lr.ph84, %bb.d
  %.03683 = phi i64 [ 0, %.lr.ph84 ], [ %i.bz, %bb.d ] ; 3 uses
  %i.bw = invoke noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_standardEPKhm(ptr noundef %i.m, i64 noundef %.03683)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.bx = select i1 %i.bw, float %i.bp, float %i.bq
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.sroa.070.0, i64 %.03683
  store float %i.bx, ptr %i.by, align 4, !tbaa !89
  %i.bz = add nuw i64 %.03683, 1                  ; 2 uses
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !185 ; 2 uses
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.c, label %.preheader79, !llvm.loop !766

._crit_edge87:                                    ; preds = %.lr.ph86.preheader, %.preheader79
  %i.cc = icmp ugt i64 %.lcssa80, 2305843009213693951
  br i1 %i.cc, label %bb.e, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49

bb.e:                                             ; preds = %._crit_edge87
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49: ; preds = %._crit_edge87
  %.not.i.i.i.i50 = icmp eq i64 %.lcssa80, 0
  br i1 %.not.i.i.i.i50, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %i.cd = shl nuw nsw i64 %.lcssa80, 2
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #25
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc56:                                         ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.lcssa80 ; 2 uses
  store float 0.000000e+00, ptr %i.ce, align 4, !tbaa !89
  %i.cg = add nsw i64 %.lcssa80, -1               ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51: ; preds = %.noexc56
  %i.ci = getelementptr i8, ptr %i.ce, i64 4
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.cg, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ci, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !89
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51, %.noexc56, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %.sroa.064.0 = phi ptr [ %i.ce, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.ce, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 9 uses
  %.sroa.11.0 = phi ptr [ %i.cf, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.cf, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 2 uses
  invoke void @_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EE15project_inverseEPfS4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %.sroa.070.0, ptr noundef %.sroa.064.0)
          to label %.preheader78 unwind label %bb.g

.preheader78:                                     ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !185 ; 12 uses
  %.not95 = icmp eq i64 %i.cj, 0
  br i1 %.not95, label %._crit_edge93, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.preheader78
  %min.iters.check = icmp ult i64 %i.cj, 8
  br i1 %min.iters.check, label %.lr.ph89.preheader128, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph89.preheader
  %n.vec = and i64 %i.cj, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <4 x float>, ptr %i.ck, align 4, !tbaa !89
  %wide.load108 = load <4 x float>, ptr %i.cl, align 4, !tbaa !89
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %wide.load109 = load <4 x float>, ptr %i.cm, align 4, !tbaa !89
  %wide.load110 = load <4 x float>, ptr %i.cn, align 4, !tbaa !89
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load109)
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load108, <4 x float> %wide.load110)
  store <4 x float> %i.co, ptr %i.cm, align 4, !tbaa !89
  store <4 x float> %i.cp, ptr %i.cn, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !767

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %.lr.ph92.preheader, label %.lr.ph89.preheader128

.lr.ph89.preheader128:                            ; preds = %.lr.ph89.preheader, %middle.block
  %.03488.ph = phi i64 [ 0, %.lr.ph89.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph89

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.f, %bb.e
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cs = ptrtoint ptr %.sroa.11.0 to i64
  %i.ct = ptrtoint ptr %.sroa.064.0 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.cu) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.lr.ph89:                                         ; preds = %.lr.ph89.preheader128, %.lr.ph89
  %.03488 = phi i64 [ %i.da, %.lr.ph89 ], [ %.03488.ph, %.lr.ph89.preheader128 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %.03488
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !89
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03488 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !89
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.cw, float %i.cy)
  store float %i.cz, ptr %i.cx, align 4, !tbaa !89
  %i.da = add nuw i64 %.03488, 1                  ; 2 uses
  %exitcond98.not = icmp eq i64 %i.da, %i.cj
  br i1 %exitcond98.not, label %.lr.ph92.preheader, label %.lr.ph89, !llvm.loop !768

.lr.ph92.preheader:                               ; preds = %.lr.ph89, %middle.block
  %min.iters.check114 = icmp ult i64 %i.cj, 12
  br i1 %min.iters.check114, label %.lr.ph92.preheader127, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph92.preheader
  %i.db = shl i64 %i.cj, 2
  %i.dc = getelementptr i8, ptr %2, i64 %i.db
  %i.dd = getelementptr i8, ptr %1, i64 %i.l
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.o
  %i.df = getelementptr i8, ptr %i.de, i64 4
  %bound0 = icmp ult ptr %2, %i.df
  %bound1 = icmp ult ptr %i.p, %i.dc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph92.preheader127, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck
  %n.vec116 = and i64 %i.cj, -8                   ; 3 uses
  %i.dg = load float, ptr %i.p, align 4, !tbaa !203, !alias.scope !775
  %broadcast.splatinsert121 = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat122 = shufflevector <4 x float> %broadcast.splatinsert121, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next123, %vector.body117 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index118 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %wide.load119 = load <4 x float>, ptr %i.dh, align 4, !tbaa !89, !alias.scope !776, !noalias !775
  %wide.load120 = load <4 x float>, ptr %i.di, align 4, !tbaa !89, !alias.scope !776, !noalias !775
  %i.dj = fmul <4 x float> %broadcast.splat122, %wide.load119
  %i.dk = fmul <4 x float> %broadcast.splat122, %wide.load120
  store <4 x float> %i.dj, ptr %i.dh, align 4, !tbaa !89, !alias.scope !776, !noalias !775
  store <4 x float> %i.dk, ptr %i.di, align 4, !tbaa !89, !alias.scope !776, !noalias !775
  %index.next123 = add nuw i64 %index118, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.dl, label %middle.block124, label %vector.body117, !llvm.loop !772

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %i.cj, %n.vec116
  br i1 %cmp.n125, label %._crit_edge93.thread, label %.lr.ph92.preheader127

.lr.ph92.preheader127:                            ; preds = %vector.memcheck, %.lr.ph92.preheader, %middle.block124
  %.091.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph92.preheader ], [ %n.vec116, %middle.block124 ] ; 3 uses
  %xtraiter = and i64 %i.cj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader127, %.lr.ph92.prol
  %.091.prol = phi i64 [ %i.dq, %.lr.ph92.prol ], [ %.091.ph, %.lr.ph92.preheader127 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader127 ]
  %i.dm = load float, ptr %i.p, align 4, !tbaa !203
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091.prol ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !89
  %i.dp = fmul float %i.dm, %i.do
  store float %i.dp, ptr %i.dn, align 4, !tbaa !89
  %i.dq = add nuw i64 %.091.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !773

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader127
  %.091.unr = phi i64 [ %.091.ph, %.lr.ph92.preheader127 ], [ %i.dq, %.lr.ph92.prol ]
  %i.dr = sub i64 %.091.ph, %i.cj
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %._crit_edge93.thread, label %.lr.ph92

._crit_edge93:                                    ; preds = %.preheader78
  %.not.i.i.i58 = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIfSaIfEED2Ev.exit59, label %._crit_edge93.thread

._crit_edge93.thread:                             ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92, %middle.block124, %._crit_edge93
  %i.dt = ptrtoint ptr %.sroa.11.0 to i64
  %i.du = ptrtoint ptr %.sroa.064.0 to i64
  %i.dv = sub i64 %i.dt, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.dv) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit59

_ZNSt6vectorIfSaIfEED2Ev.exit59:                  ; preds = %._crit_edge93, %._crit_edge93.thread
  %.not.i.i.i60 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIfSaIfEED2Ev.exit61, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59
  %i.dw = ptrtoint ptr %.sroa.12.0 to i64
  %i.dx = ptrtoint ptr %.sroa.070.0 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.dy) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit61

_ZNSt6vectorIfSaIfEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59, %bb.i
  ret void

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %.091 = phi i64 [ %i.es, %.lr.ph92 ], [ %.091.unr, %.lr.ph92.prol.loopexit ] ; 5 uses
  %i.dz = load float, ptr %i.p, align 4, !tbaa !203
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !89
  %i.ec = fmul float %i.dz, %i.eb
  store float %i.ec, ptr %i.ea, align 4, !tbaa !89
  %i.ed = load float, ptr %i.p, align 4, !tbaa !203
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !89
  %i.eh = fmul float %i.ed, %i.eg
  store float %i.eh, ptr %i.ef, align 4, !tbaa !89
  %i.ei = load float, ptr %i.p, align 4, !tbaa !203
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !89
  %i.em = fmul float %i.ei, %i.el
  store float %i.em, ptr %i.ek, align 4, !tbaa !89
  %i.en = load float, ptr %i.p, align 4, !tbaa !203
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12 ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !89
  %i.er = fmul float %i.en, %i.eq
  store float %i.er, ptr %i.ep, align 4, !tbaa !89
  %i.es = add nuw i64 %.091, 4                    ; 2 uses
  %exitcond99.not.3 = icmp eq i64 %i.es, %i.cj
  br i1 %exitcond99.not.3, label %._crit_edge93.thread, label %.lr.ph92, !llvm.loop !774

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g, %bb.h
  %.pn45 = phi { ptr, i32 } [ %i.cr, %bb.h ], [ %i.cr, %bb.g ], [ %lpad.loopexit.split-lp129, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i62 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIfSaIfEED2Ev.exit63, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.et = ptrtoint ptr %.sroa.12.0 to i64
  %i.eu = ptrtoint ptr %.sroa.070.0 to i64
  %i.ev = sub i64 %i.et, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.ev) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit63

_ZNSt6vectorIfSaIfEED2Ev.exit63:                  ; preds = %bb.j, %_ZNSt6vectorIfSaIfEED2Ev.exit
  resume { ptr, i32 } %.pn45
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIfSaIfEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2

_ZNSt6vectorIfSaIfEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EEE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24, !inline_history !208
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24, !inline_history !208
  br label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EED2Ev.exit

_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #24
  ret void
}
end_hunk_3
