Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/ScalarQuantizer?download=true
inline.NumInlined: 2990
inline.NumDeleted: 733
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 166
begin_hunk_0_@_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EE13decode_vectorEPKhPf:bb.a
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
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cg = select i1 %i.cf, float %i.by, float %i.bz
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.070.0, i64 %.03683
  store float %i.cg, ptr %i.ch, align 4, !tbaa !89
  %i.ci = add nuw i64 %.03683, 1                  ; 2 uses
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !158 ; 2 uses
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.c, label %.preheader79, !llvm.loop !697

bb.e:                                             ; preds = %bb.c
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

._crit_edge87:                                    ; preds = %.lr.ph86.preheader, %.preheader79
  %i.cm = icmp ugt i64 %.lcssa80, 2305843009213693951
  br i1 %i.cm, label %bb.f, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49

bb.f:                                             ; preds = %._crit_edge87
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc55 unwind label %bb.h

.noexc55:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49: ; preds = %._crit_edge87
  %.not.i.i.i.i50 = icmp eq i64 %.lcssa80, 0
  br i1 %.not.i.i.i.i50, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %i.cn = shl nuw nsw i64 %.lcssa80, 2
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #25
          to label %.noexc56 unwind label %bb.h   ; 5 uses

.noexc56:                                         ; preds = %bb.g
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.lcssa80 ; 2 uses
  store float 0.000000e+00, ptr %i.co, align 4, !tbaa !89
  %i.cq = add nsw i64 %.lcssa80, -1               ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51: ; preds = %.noexc56
  %i.cs = getelementptr i8, ptr %i.co, i64 4
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.cq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cs, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !89
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51, %.noexc56, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %.sroa.064.0 = phi ptr [ %i.co, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.co, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 9 uses
  %.sroa.11.0 = phi ptr [ %i.cp, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.cp, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 2 uses
  invoke void @_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EE15project_inverseEPfS4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %.sroa.070.0, ptr noundef %.sroa.064.0)
          to label %.preheader78 unwind label %bb.i

.preheader78:                                     ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !158 ; 12 uses
  %.not95 = icmp eq i64 %i.ct, 0
  br i1 %.not95, label %._crit_edge93, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.preheader78
  %min.iters.check = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check, label %.lr.ph89.preheader127, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph89.preheader
  %n.vec = and i64 %i.ct, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.an, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <4 x float>, ptr %i.cu, align 4, !tbaa !89
  %wide.load107 = load <4 x float>, ptr %i.cv, align 4, !tbaa !89
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %wide.load108 = load <4 x float>, ptr %i.cw, align 4, !tbaa !89
  %wide.load109 = load <4 x float>, ptr %i.cx, align 4, !tbaa !89
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load108)
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load107, <4 x float> %wide.load109)
  store <4 x float> %i.cy, ptr %i.cw, align 4, !tbaa !89
  store <4 x float> %i.cz, ptr %i.cx, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !698

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %.lr.ph92.preheader, label %.lr.ph89.preheader127

.lr.ph89.preheader127:                            ; preds = %.lr.ph89.preheader, %middle.block
  %.03488.ph = phi i64 [ 0, %.lr.ph89.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph89

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dd = ptrtoint ptr %.sroa.11.0 to i64
  %i.de = ptrtoint ptr %.sroa.064.0 to i64
  %i.df = sub i64 %i.dd, %i.de
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.df) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.lr.ph89:                                         ; preds = %.lr.ph89.preheader127, %.lr.ph89
  %.03488 = phi i64 [ %i.dl, %.lr.ph89 ], [ %.03488.ph, %.lr.ph89.preheader127 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %.03488
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !89
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03488 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !89
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.an, float %i.dh, float %i.dj)
  store float %i.dk, ptr %i.di, align 4, !tbaa !89
  %i.dl = add nuw i64 %.03488, 1                  ; 2 uses
  %exitcond97.not = icmp eq i64 %i.dl, %i.ct
  br i1 %exitcond97.not, label %.lr.ph92.preheader, label %.lr.ph89, !llvm.loop !699

.lr.ph92.preheader:                               ; preds = %.lr.ph89, %middle.block
  %min.iters.check113 = icmp ult i64 %i.ct, 12
  br i1 %min.iters.check113, label %.lr.ph92.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph92.preheader
  %i.dm = shl i64 %i.ct, 2
  %i.dn = getelementptr i8, ptr %2, i64 %i.dm
  %i.do = getelementptr i8, ptr %1, i64 %i.l
  %i.dp = getelementptr i8, ptr %i.do, i64 %i.o
  %i.dq = getelementptr i8, ptr %i.dp, i64 4
  %bound0 = icmp ult ptr %2, %i.dq
  %bound1 = icmp ult ptr %i.p, %i.dn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph92.preheader126, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck
  %n.vec115 = and i64 %i.ct, -8                   ; 3 uses
  %i.dr = load float, ptr %i.p, align 4, !tbaa !203, !alias.scope !706
  %broadcast.splatinsert120 = insertelement <4 x float> poison, float %i.dr, i64 0
  %broadcast.splat121 = shufflevector <4 x float> %broadcast.splatinsert120, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body116 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index117 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %wide.load118 = load <4 x float>, ptr %i.ds, align 4, !tbaa !89, !alias.scope !707, !noalias !706
  %wide.load119 = load <4 x float>, ptr %i.dt, align 4, !tbaa !89, !alias.scope !707, !noalias !706
  %i.du = fmul <4 x float> %broadcast.splat121, %wide.load118
  %i.dv = fmul <4 x float> %broadcast.splat121, %wide.load119
  store <4 x float> %i.du, ptr %i.ds, align 4, !tbaa !89, !alias.scope !707, !noalias !706
  store <4 x float> %i.dv, ptr %i.dt, align 4, !tbaa !89, !alias.scope !707, !noalias !706
  %index.next122 = add nuw i64 %index117, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next122, %n.vec115
  br i1 %i.dw, label %middle.block123, label %vector.body116, !llvm.loop !703

middle.block123:                                  ; preds = %vector.body116
  %cmp.n124 = icmp eq i64 %i.ct, %n.vec115
  br i1 %cmp.n124, label %._crit_edge93.thread, label %.lr.ph92.preheader126

.lr.ph92.preheader126:                            ; preds = %vector.memcheck, %.lr.ph92.preheader, %middle.block123
  %.091.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph92.preheader ], [ %n.vec115, %middle.block123 ] ; 3 uses
  %xtraiter129 = and i64 %i.ct, 3                 ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader126, %.lr.ph92.prol
  %.091.prol = phi i64 [ %i.eb, %.lr.ph92.prol ], [ %.091.ph, %.lr.ph92.preheader126 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader126 ]
  %i.dx = load float, ptr %i.p, align 4, !tbaa !203
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091.prol ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !89
  %i.ea = fmul float %i.dx, %i.dz
  store float %i.ea, ptr %i.dy, align 4, !tbaa !89
  %i.eb = add nuw i64 %.091.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter129
  br i1 %prol.iter.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !704

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader126
  %.091.unr = phi i64 [ %.091.ph, %.lr.ph92.preheader126 ], [ %i.eb, %.lr.ph92.prol ]
  %i.ec = sub i64 %.091.ph, %i.ct
  %i.ed = icmp ugt i64 %i.ec, -4
  br i1 %i.ed, label %._crit_edge93.thread, label %.lr.ph92

._crit_edge93:                                    ; preds = %.preheader78
  %.not.i.i.i58 = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIfSaIfEED2Ev.exit59, label %._crit_edge93.thread

._crit_edge93.thread:                             ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92, %middle.block123, %._crit_edge93
  %i.ee = ptrtoint ptr %.sroa.11.0 to i64
  %i.ef = ptrtoint ptr %.sroa.064.0 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.eg) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit59

_ZNSt6vectorIfSaIfEED2Ev.exit59:                  ; preds = %._crit_edge93, %._crit_edge93.thread
  %.not.i.i.i60 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIfSaIfEED2Ev.exit61, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59
  %i.eh = ptrtoint ptr %.sroa.12.0 to i64
  %i.ei = ptrtoint ptr %.sroa.070.0 to i64
  %i.ej = sub i64 %i.eh, %i.ei
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.ej) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit61

_ZNSt6vectorIfSaIfEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59, %bb.k
  ret void

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %.091 = phi i64 [ %i.fd, %.lr.ph92 ], [ %.091.unr, %.lr.ph92.prol.loopexit ] ; 5 uses
  %i.ek = load float, ptr %i.p, align 4, !tbaa !203
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091 ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !89
  %i.en = fmul float %i.ek, %i.em
  store float %i.en, ptr %i.el, align 4, !tbaa !89
  %i.eo = load float, ptr %i.p, align 4, !tbaa !203
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !89
  %i.es = fmul float %i.eo, %i.er
  store float %i.es, ptr %i.eq, align 4, !tbaa !89
  %i.et = load float, ptr %i.p, align 4, !tbaa !203
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !89
  %i.ex = fmul float %i.et, %i.ew
  store float %i.ex, ptr %i.ev, align 4, !tbaa !89
  %i.ey = load float, ptr %i.p, align 4, !tbaa !203
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 12 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !89
  %i.fc = fmul float %i.ey, %i.fb
  store float %i.fc, ptr %i.fa, align 4, !tbaa !89
  %i.fd = add nuw i64 %.091, 4                    ; 2 uses
  %exitcond98.not.3 = icmp eq i64 %i.fd, %i.ct
  br i1 %exitcond98.not.3, label %._crit_edge93.thread, label %.lr.ph92, !llvm.loop !705

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.h, %bb.i, %bb.j, %bb.e
  %.pn45 = phi { ptr, i32 } [ %i.cl, %bb.e ], [ %i.db, %bb.h ], [ %i.dc, %bb.i ], [ %i.dc, %bb.j ]
  %.not.i.i.i62 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIfSaIfEED2Ev.exit63, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.fe = ptrtoint ptr %.sroa.12.0 to i64
  %i.ff = ptrtoint ptr %.sroa.070.0 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.fg) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit63

_ZNSt6vectorIfSaIfEED2Ev.exit63:                  ; preds = %bb.l, %_ZNSt6vectorIfSaIfEED2Ev.exit
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !720

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
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bl = select i1 %i.bk, float %i.bd, float %i.be
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.070.0, i64 %.03683
  store float %i.bl, ptr %i.bm, align 4, !tbaa !89
  %i.bn = add nuw i64 %.03683, 1                  ; 2 uses
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !167 ; 2 uses
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.c, label %.preheader79, !llvm.loop !721

bb.e:                                             ; preds = %bb.c
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

._crit_edge87:                                    ; preds = %.lr.ph86.preheader, %.preheader79
  %i.br = icmp ugt i64 %.lcssa80, 2305843009213693951
  br i1 %i.br, label %bb.f, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49

bb.f:                                             ; preds = %._crit_edge87
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc55 unwind label %bb.h

.noexc55:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49: ; preds = %._crit_edge87
  %.not.i.i.i.i50 = icmp eq i64 %.lcssa80, 0
  br i1 %.not.i.i.i.i50, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %i.bs = shl nuw nsw i64 %.lcssa80, 2
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #25
          to label %.noexc56 unwind label %bb.h   ; 5 uses

.noexc56:                                         ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.lcssa80 ; 2 uses
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !89
  %i.bv = add nsw i64 %.lcssa80, -1               ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51: ; preds = %.noexc56
  %i.bx = getelementptr i8, ptr %i.bt, i64 4
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.bv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bx, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !89
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51, %.noexc56, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %.sroa.064.0 = phi ptr [ %i.bt, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.bt, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 9 uses
  %.sroa.11.0 = phi ptr [ %i.bu, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.bu, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 2 uses
  invoke void @_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi3ELNS_9SIMDLevelE0EE15project_inverseEPfS4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %.sroa.070.0, ptr noundef %.sroa.064.0)
          to label %.preheader78 unwind label %bb.i

.preheader78:                                     ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.by = load i64, ptr %i.a, align 8, !tbaa !167 ; 12 uses
  %.not95 = icmp eq i64 %i.by, 0
  br i1 %.not95, label %._crit_edge93, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.preheader78
  %min.iters.check = icmp ult i64 %i.by, 8
  br i1 %min.iters.check, label %.lr.ph89.preheader127, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph89.preheader
  %n.vec = and i64 %i.by, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load = load <4 x float>, ptr %i.bz, align 4, !tbaa !89
  %wide.load107 = load <4 x float>, ptr %i.ca, align 4, !tbaa !89
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %wide.load108 = load <4 x float>, ptr %i.cb, align 4, !tbaa !89
  %wide.load109 = load <4 x float>, ptr %i.cc, align 4, !tbaa !89
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load108)
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load107, <4 x float> %wide.load109)
  store <4 x float> %i.cd, ptr %i.cb, align 4, !tbaa !89
  store <4 x float> %i.ce, ptr %i.cc, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !722

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.lr.ph92.preheader, label %.lr.ph89.preheader127

.lr.ph89.preheader127:                            ; preds = %.lr.ph89.preheader, %middle.block
  %.03488.ph = phi i64 [ 0, %.lr.ph89.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph89

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = ptrtoint ptr %.sroa.11.0 to i64
  %i.cj = ptrtoint ptr %.sroa.064.0 to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.ck) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.lr.ph89:                                         ; preds = %.lr.ph89.preheader127, %.lr.ph89
  %.03488 = phi i64 [ %i.cq, %.lr.ph89 ], [ %.03488.ph, %.lr.ph89.preheader127 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %.03488
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !89
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03488 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !89
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.cm, float %i.co)
  store float %i.cp, ptr %i.cn, align 4, !tbaa !89
  %i.cq = add nuw i64 %.03488, 1                  ; 2 uses
  %exitcond97.not = icmp eq i64 %i.cq, %i.by
  br i1 %exitcond97.not, label %.lr.ph92.preheader, label %.lr.ph89, !llvm.loop !723

.lr.ph92.preheader:                               ; preds = %.lr.ph89, %middle.block
  %min.iters.check113 = icmp ult i64 %i.by, 12
  br i1 %min.iters.check113, label %.lr.ph92.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph92.preheader
  %i.cr = shl i64 %i.by, 2
  %i.cs = getelementptr i8, ptr %2, i64 %i.cr
  %i.ct = getelementptr i8, ptr %1, i64 %i.l
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.o
  %i.cv = getelementptr i8, ptr %i.cu, i64 4
  %bound0 = icmp ult ptr %2, %i.cv
  %bound1 = icmp ult ptr %i.p, %i.cs
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph92.preheader126, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck
  %n.vec115 = and i64 %i.by, -8                   ; 3 uses
  %i.cw = load float, ptr %i.p, align 4, !tbaa !203, !alias.scope !730
  %broadcast.splatinsert120 = insertelement <4 x float> poison, float %i.cw, i64 0
  %broadcast.splat121 = shufflevector <4 x float> %broadcast.splatinsert120, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body116 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index117 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %wide.load118 = load <4 x float>, ptr %i.cx, align 4, !tbaa !89, !alias.scope !731, !noalias !730
  %wide.load119 = load <4 x float>, ptr %i.cy, align 4, !tbaa !89, !alias.scope !731, !noalias !730
  %i.cz = fmul <4 x float> %broadcast.splat121, %wide.load118
  %i.da = fmul <4 x float> %broadcast.splat121, %wide.load119
  store <4 x float> %i.cz, ptr %i.cx, align 4, !tbaa !89, !alias.scope !731, !noalias !730
  store <4 x float> %i.da, ptr %i.cy, align 4, !tbaa !89, !alias.scope !731, !noalias !730
  %index.next122 = add nuw i64 %index117, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next122, %n.vec115
  br i1 %i.db, label %middle.block123, label %vector.body116, !llvm.loop !727

middle.block123:                                  ; preds = %vector.body116
  %cmp.n124 = icmp eq i64 %i.by, %n.vec115
  br i1 %cmp.n124, label %._crit_edge93.thread, label %.lr.ph92.preheader126

.lr.ph92.preheader126:                            ; preds = %vector.memcheck, %.lr.ph92.preheader, %middle.block123
  %.091.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph92.preheader ], [ %n.vec115, %middle.block123 ] ; 3 uses
  %xtraiter = and i64 %i.by, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader126, %.lr.ph92.prol
  %.091.prol = phi i64 [ %i.dg, %.lr.ph92.prol ], [ %.091.ph, %.lr.ph92.preheader126 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader126 ]
  %i.dc = load float, ptr %i.p, align 4, !tbaa !203
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091.prol ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !89
  %i.df = fmul float %i.dc, %i.de
  store float %i.df, ptr %i.dd, align 4, !tbaa !89
  %i.dg = add nuw i64 %.091.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !728

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader126
  %.091.unr = phi i64 [ %.091.ph, %.lr.ph92.preheader126 ], [ %i.dg, %.lr.ph92.prol ]
  %i.dh = sub i64 %.091.ph, %i.by
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %._crit_edge93.thread, label %.lr.ph92

._crit_edge93:                                    ; preds = %.preheader78
  %.not.i.i.i58 = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIfSaIfEED2Ev.exit59, label %._crit_edge93.thread

._crit_edge93.thread:                             ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92, %middle.block123, %._crit_edge93
  %i.dj = ptrtoint ptr %.sroa.11.0 to i64
  %i.dk = ptrtoint ptr %.sroa.064.0 to i64
  %i.dl = sub i64 %i.dj, %i.dk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.dl) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit59

_ZNSt6vectorIfSaIfEED2Ev.exit59:                  ; preds = %._crit_edge93, %._crit_edge93.thread
  %.not.i.i.i60 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIfSaIfEED2Ev.exit61, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59
  %i.dm = ptrtoint ptr %.sroa.12.0 to i64
  %i.dn = ptrtoint ptr %.sroa.070.0 to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.do) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit61

_ZNSt6vectorIfSaIfEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59, %bb.k
  ret void

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %.091 = phi i64 [ %i.ei, %.lr.ph92 ], [ %.091.unr, %.lr.ph92.prol.loopexit ] ; 5 uses
  %i.dp = load float, ptr %i.p, align 4, !tbaa !203
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !89
  %i.ds = fmul float %i.dp, %i.dr
  store float %i.ds, ptr %i.dq, align 4, !tbaa !89
  %i.dt = load float, ptr %i.p, align 4, !tbaa !203
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !89
  %i.dx = fmul float %i.dt, %i.dw
  store float %i.dx, ptr %i.dv, align 4, !tbaa !89
  %i.dy = load float, ptr %i.p, align 4, !tbaa !203
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !89
  %i.ec = fmul float %i.dy, %i.eb
  store float %i.ec, ptr %i.ea, align 4, !tbaa !89
  %i.ed = load float, ptr %i.p, align 4, !tbaa !203
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 12 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !89
  %i.eh = fmul float %i.ed, %i.eg
  store float %i.eh, ptr %i.ef, align 4, !tbaa !89
  %i.ei = add nuw i64 %.091, 4                    ; 2 uses
  %exitcond98.not.3 = icmp eq i64 %i.ei, %i.by
  br i1 %exitcond98.not.3, label %._crit_edge93.thread, label %.lr.ph92, !llvm.loop !729

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.h, %bb.i, %bb.j, %bb.e
  %.pn45 = phi { ptr, i32 } [ %i.bq, %bb.e ], [ %i.cg, %bb.h ], [ %i.ch, %bb.i ], [ %i.ch, %bb.j ]
  %.not.i.i.i62 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIfSaIfEED2Ev.exit63, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ej = ptrtoint ptr %.sroa.12.0 to i64
  %i.ek = ptrtoint ptr %.sroa.070.0 to i64
  %i.el = sub i64 %i.ej, %i.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.el) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit63

_ZNSt6vectorIfSaIfEED2Ev.exit63:                  ; preds = %bb.l, %_ZNSt6vectorIfSaIfEED2Ev.exit
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !744

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
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.br = select i1 %i.bq, float %i.bj, float %i.bk
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.070.0, i64 %.03683
  store float %i.br, ptr %i.bs, align 4, !tbaa !89
  %i.bt = add nuw i64 %.03683, 1                  ; 2 uses
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %i.bv = icmp ult i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.c, label %.preheader79, !llvm.loop !745

bb.e:                                             ; preds = %bb.c
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

._crit_edge87:                                    ; preds = %.lr.ph86.preheader, %.preheader79
  %i.bx = icmp ugt i64 %.lcssa80, 2305843009213693951
  br i1 %i.bx, label %bb.f, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49

bb.f:                                             ; preds = %._crit_edge87
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc55 unwind label %bb.h

.noexc55:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49: ; preds = %._crit_edge87
  %.not.i.i.i.i50 = icmp eq i64 %.lcssa80, 0
  br i1 %.not.i.i.i.i50, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %i.by = shl nuw nsw i64 %.lcssa80, 2
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #25
          to label %.noexc56 unwind label %bb.h   ; 5 uses

.noexc56:                                         ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.lcssa80 ; 2 uses
  store float 0.000000e+00, ptr %i.bz, align 4, !tbaa !89
  %i.cb = add nsw i64 %.lcssa80, -1               ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51: ; preds = %.noexc56
  %i.cd = getelementptr i8, ptr %i.bz, i64 4
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.cb, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cd, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !89
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51, %.noexc56, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %.sroa.064.0 = phi ptr [ %i.bz, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.bz, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 9 uses
  %.sroa.11.0 = phi ptr [ %i.ca, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.ca, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 2 uses
  invoke void @_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EE15project_inverseEPfS4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %.sroa.070.0, ptr noundef %.sroa.064.0)
          to label %.preheader78 unwind label %bb.i

.preheader78:                                     ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !176 ; 12 uses
  %.not95 = icmp eq i64 %i.ce, 0
  br i1 %.not95, label %._crit_edge93, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.preheader78
  %min.iters.check = icmp ult i64 %i.ce, 8
  br i1 %min.iters.check, label %.lr.ph89.preheader127, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph89.preheader
  %n.vec = and i64 %i.ce, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load = load <4 x float>, ptr %i.cf, align 4, !tbaa !89
  %wide.load107 = load <4 x float>, ptr %i.cg, align 4, !tbaa !89
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %wide.load108 = load <4 x float>, ptr %i.ch, align 4, !tbaa !89
  %wide.load109 = load <4 x float>, ptr %i.ci, align 4, !tbaa !89
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load108)
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load107, <4 x float> %wide.load109)
  store <4 x float> %i.cj, ptr %i.ch, align 4, !tbaa !89
  store <4 x float> %i.ck, ptr %i.ci, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !746

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  br i1 %cmp.n, label %.lr.ph92.preheader, label %.lr.ph89.preheader127

.lr.ph89.preheader127:                            ; preds = %.lr.ph89.preheader, %middle.block
  %.03488.ph = phi i64 [ 0, %.lr.ph89.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph89

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = ptrtoint ptr %.sroa.11.0 to i64
  %i.cp = ptrtoint ptr %.sroa.064.0 to i64
  %i.cq = sub i64 %i.co, %i.cp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.cq) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.lr.ph89:                                         ; preds = %.lr.ph89.preheader127, %.lr.ph89
  %.03488 = phi i64 [ %i.cw, %.lr.ph89 ], [ %.03488.ph, %.lr.ph89.preheader127 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %.03488
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !89
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03488 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !89
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.cs, float %i.cu)
  store float %i.cv, ptr %i.ct, align 4, !tbaa !89
  %i.cw = add nuw i64 %.03488, 1                  ; 2 uses
  %exitcond97.not = icmp eq i64 %i.cw, %i.ce
  br i1 %exitcond97.not, label %.lr.ph92.preheader, label %.lr.ph89, !llvm.loop !747

.lr.ph92.preheader:                               ; preds = %.lr.ph89, %middle.block
  %min.iters.check113 = icmp ult i64 %i.ce, 12
  br i1 %min.iters.check113, label %.lr.ph92.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph92.preheader
  %i.cx = shl i64 %i.ce, 2
  %i.cy = getelementptr i8, ptr %2, i64 %i.cx
  %i.cz = getelementptr i8, ptr %1, i64 %i.l
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.o
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %bound0 = icmp ult ptr %2, %i.db
  %bound1 = icmp ult ptr %i.p, %i.cy
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph92.preheader126, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck
  %n.vec115 = and i64 %i.ce, -8                   ; 3 uses
  %i.dc = load float, ptr %i.p, align 4, !tbaa !203, !alias.scope !754
  %broadcast.splatinsert120 = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat121 = shufflevector <4 x float> %broadcast.splatinsert120, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body116 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index117 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %wide.load118 = load <4 x float>, ptr %i.dd, align 4, !tbaa !89, !alias.scope !755, !noalias !754
  %wide.load119 = load <4 x float>, ptr %i.de, align 4, !tbaa !89, !alias.scope !755, !noalias !754
  %i.df = fmul <4 x float> %broadcast.splat121, %wide.load118
  %i.dg = fmul <4 x float> %broadcast.splat121, %wide.load119
  store <4 x float> %i.df, ptr %i.dd, align 4, !tbaa !89, !alias.scope !755, !noalias !754
  store <4 x float> %i.dg, ptr %i.de, align 4, !tbaa !89, !alias.scope !755, !noalias !754
  %index.next122 = add nuw i64 %index117, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next122, %n.vec115
  br i1 %i.dh, label %middle.block123, label %vector.body116, !llvm.loop !751

middle.block123:                                  ; preds = %vector.body116
  %cmp.n124 = icmp eq i64 %i.ce, %n.vec115
  br i1 %cmp.n124, label %._crit_edge93.thread, label %.lr.ph92.preheader126

.lr.ph92.preheader126:                            ; preds = %vector.memcheck, %.lr.ph92.preheader, %middle.block123
  %.091.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph92.preheader ], [ %n.vec115, %middle.block123 ] ; 3 uses
  %xtraiter = and i64 %i.ce, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader126, %.lr.ph92.prol
  %.091.prol = phi i64 [ %i.dm, %.lr.ph92.prol ], [ %.091.ph, %.lr.ph92.preheader126 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader126 ]
  %i.di = load float, ptr %i.p, align 4, !tbaa !203
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091.prol ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !89
  %i.dl = fmul float %i.di, %i.dk
  store float %i.dl, ptr %i.dj, align 4, !tbaa !89
  %i.dm = add nuw i64 %.091.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !752

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader126
  %.091.unr = phi i64 [ %.091.ph, %.lr.ph92.preheader126 ], [ %i.dm, %.lr.ph92.prol ]
  %i.dn = sub i64 %.091.ph, %i.ce
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %._crit_edge93.thread, label %.lr.ph92

._crit_edge93:                                    ; preds = %.preheader78
  %.not.i.i.i58 = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIfSaIfEED2Ev.exit59, label %._crit_edge93.thread

._crit_edge93.thread:                             ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92, %middle.block123, %._crit_edge93
  %i.dp = ptrtoint ptr %.sroa.11.0 to i64
  %i.dq = ptrtoint ptr %.sroa.064.0 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.dr) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit59

_ZNSt6vectorIfSaIfEED2Ev.exit59:                  ; preds = %._crit_edge93, %._crit_edge93.thread
  %.not.i.i.i60 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIfSaIfEED2Ev.exit61, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59
  %i.ds = ptrtoint ptr %.sroa.12.0 to i64
  %i.dt = ptrtoint ptr %.sroa.070.0 to i64
  %i.du = sub i64 %i.ds, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.du) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit61

_ZNSt6vectorIfSaIfEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59, %bb.k
  ret void

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %.091 = phi i64 [ %i.eo, %.lr.ph92 ], [ %.091.unr, %.lr.ph92.prol.loopexit ] ; 5 uses
  %i.dv = load float, ptr %i.p, align 4, !tbaa !203
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091 ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !89
  %i.dy = fmul float %i.dv, %i.dx
  store float %i.dy, ptr %i.dw, align 4, !tbaa !89
  %i.dz = load float, ptr %i.p, align 4, !tbaa !203
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !89
  %i.ed = fmul float %i.dz, %i.ec
  store float %i.ed, ptr %i.eb, align 4, !tbaa !89
  %i.ee = load float, ptr %i.p, align 4, !tbaa !203
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !89
  %i.ei = fmul float %i.ee, %i.eh
  store float %i.ei, ptr %i.eg, align 4, !tbaa !89
  %i.ej = load float, ptr %i.p, align 4, !tbaa !203
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12 ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !89
  %i.en = fmul float %i.ej, %i.em
  store float %i.en, ptr %i.el, align 4, !tbaa !89
  %i.eo = add nuw i64 %.091, 4                    ; 2 uses
  %exitcond98.not.3 = icmp eq i64 %i.eo, %i.ce
  br i1 %exitcond98.not.3, label %._crit_edge93.thread, label %.lr.ph92, !llvm.loop !753

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.h, %bb.i, %bb.j, %bb.e
  %.pn45 = phi { ptr, i32 } [ %i.bw, %bb.e ], [ %i.cm, %bb.h ], [ %i.cn, %bb.i ], [ %i.cn, %bb.j ]
  %.not.i.i.i62 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIfSaIfEED2Ev.exit63, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ep = ptrtoint ptr %.sroa.12.0 to i64
  %i.eq = ptrtoint ptr %.sroa.070.0 to i64
  %i.er = sub i64 %i.ep, %i.eq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.er) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit63

_ZNSt6vectorIfSaIfEED2Ev.exit63:                  ; preds = %bb.l, %_ZNSt6vectorIfSaIfEED2Ev.exit
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !768

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
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bx = select i1 %i.bw, float %i.bp, float %i.bq
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.sroa.070.0, i64 %.03683
  store float %i.bx, ptr %i.by, align 4, !tbaa !89
  %i.bz = add nuw i64 %.03683, 1                  ; 2 uses
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !185 ; 2 uses
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.c, label %.preheader79, !llvm.loop !769

bb.e:                                             ; preds = %bb.c
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

._crit_edge87:                                    ; preds = %.lr.ph86.preheader, %.preheader79
  %i.cd = icmp ugt i64 %.lcssa80, 2305843009213693951
  br i1 %i.cd, label %bb.f, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49

bb.f:                                             ; preds = %._crit_edge87
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc55 unwind label %bb.h

.noexc55:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49: ; preds = %._crit_edge87
  %.not.i.i.i.i50 = icmp eq i64 %.lcssa80, 0
  br i1 %.not.i.i.i.i50, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %i.ce = shl nuw nsw i64 %.lcssa80, 2
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #25
          to label %.noexc56 unwind label %bb.h   ; 5 uses

.noexc56:                                         ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.lcssa80 ; 2 uses
  store float 0.000000e+00, ptr %i.cf, align 4, !tbaa !89
  %i.ch = add nsw i64 %.lcssa80, -1               ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51: ; preds = %.noexc56
  %i.cj = getelementptr i8, ptr %i.cf, i64 4
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.ch, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cj, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !89
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51, %.noexc56, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49
  %.sroa.064.0 = phi ptr [ %i.cf, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.cf, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 9 uses
  %.sroa.11.0 = phi ptr [ %i.cg, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i51 ], [ %i.cg, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i49 ] ; 2 uses
  invoke void @_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EE15project_inverseEPfS4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %.sroa.070.0, ptr noundef %.sroa.064.0)
          to label %.preheader78 unwind label %bb.i

.preheader78:                                     ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !185 ; 12 uses
  %.not95 = icmp eq i64 %i.ck, 0
  br i1 %.not95, label %._crit_edge93, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.preheader78
  %min.iters.check = icmp ult i64 %i.ck, 8
  br i1 %min.iters.check, label %.lr.ph89.preheader127, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph89.preheader
  %n.vec = and i64 %i.ck, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <4 x float>, ptr %i.cl, align 4, !tbaa !89
  %wide.load107 = load <4 x float>, ptr %i.cm, align 4, !tbaa !89
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %wide.load108 = load <4 x float>, ptr %i.cn, align 4, !tbaa !89
  %wide.load109 = load <4 x float>, ptr %i.co, align 4, !tbaa !89
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load108)
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load107, <4 x float> %wide.load109)
  store <4 x float> %i.cp, ptr %i.cn, align 4, !tbaa !89
  store <4 x float> %i.cq, ptr %i.co, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !770

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %.lr.ph92.preheader, label %.lr.ph89.preheader127

.lr.ph89.preheader127:                            ; preds = %.lr.ph89.preheader, %middle.block
  %.03488.ph = phi i64 [ 0, %.lr.ph89.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph89

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit57
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cu = ptrtoint ptr %.sroa.11.0 to i64
  %i.cv = ptrtoint ptr %.sroa.064.0 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.cw) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.lr.ph89:                                         ; preds = %.lr.ph89.preheader127, %.lr.ph89
  %.03488 = phi i64 [ %i.dc, %.lr.ph89 ], [ %.03488.ph, %.lr.ph89.preheader127 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.064.0, i64 %.03488
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !89
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03488 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !89
  %i.db = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.cy, float %i.da)
  store float %i.db, ptr %i.cz, align 4, !tbaa !89
  %i.dc = add nuw i64 %.03488, 1                  ; 2 uses
  %exitcond97.not = icmp eq i64 %i.dc, %i.ck
  br i1 %exitcond97.not, label %.lr.ph92.preheader, label %.lr.ph89, !llvm.loop !771

.lr.ph92.preheader:                               ; preds = %.lr.ph89, %middle.block
  %min.iters.check113 = icmp ult i64 %i.ck, 12
  br i1 %min.iters.check113, label %.lr.ph92.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph92.preheader
  %i.dd = shl i64 %i.ck, 2
  %i.de = getelementptr i8, ptr %2, i64 %i.dd
  %i.df = getelementptr i8, ptr %1, i64 %i.l
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.o
  %i.dh = getelementptr i8, ptr %i.dg, i64 4
  %bound0 = icmp ult ptr %2, %i.dh
  %bound1 = icmp ult ptr %i.p, %i.de
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph92.preheader126, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck
  %n.vec115 = and i64 %i.ck, -8                   ; 3 uses
  %i.di = load float, ptr %i.p, align 4, !tbaa !203, !alias.scope !778
  %broadcast.splatinsert120 = insertelement <4 x float> poison, float %i.di, i64 0
  %broadcast.splat121 = shufflevector <4 x float> %broadcast.splatinsert120, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body116 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index117 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load118 = load <4 x float>, ptr %i.dj, align 4, !tbaa !89, !alias.scope !779, !noalias !778
  %wide.load119 = load <4 x float>, ptr %i.dk, align 4, !tbaa !89, !alias.scope !779, !noalias !778
  %i.dl = fmul <4 x float> %broadcast.splat121, %wide.load118
  %i.dm = fmul <4 x float> %broadcast.splat121, %wide.load119
  store <4 x float> %i.dl, ptr %i.dj, align 4, !tbaa !89, !alias.scope !779, !noalias !778
  store <4 x float> %i.dm, ptr %i.dk, align 4, !tbaa !89, !alias.scope !779, !noalias !778
  %index.next122 = add nuw i64 %index117, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next122, %n.vec115
  br i1 %i.dn, label %middle.block123, label %vector.body116, !llvm.loop !775

middle.block123:                                  ; preds = %vector.body116
  %cmp.n124 = icmp eq i64 %i.ck, %n.vec115
  br i1 %cmp.n124, label %._crit_edge93.thread, label %.lr.ph92.preheader126

.lr.ph92.preheader126:                            ; preds = %vector.memcheck, %.lr.ph92.preheader, %middle.block123
  %.091.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph92.preheader ], [ %n.vec115, %middle.block123 ] ; 3 uses
  %xtraiter = and i64 %i.ck, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader126, %.lr.ph92.prol
  %.091.prol = phi i64 [ %i.ds, %.lr.ph92.prol ], [ %.091.ph, %.lr.ph92.preheader126 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader126 ]
  %i.do = load float, ptr %i.p, align 4, !tbaa !203
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091.prol ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !89
  %i.dr = fmul float %i.do, %i.dq
  store float %i.dr, ptr %i.dp, align 4, !tbaa !89
  %i.ds = add nuw i64 %.091.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !776

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader126
  %.091.unr = phi i64 [ %.091.ph, %.lr.ph92.preheader126 ], [ %i.ds, %.lr.ph92.prol ]
  %i.dt = sub i64 %.091.ph, %i.ck
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %._crit_edge93.thread, label %.lr.ph92

._crit_edge93:                                    ; preds = %.preheader78
  %.not.i.i.i58 = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIfSaIfEED2Ev.exit59, label %._crit_edge93.thread

._crit_edge93.thread:                             ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92, %middle.block123, %._crit_edge93
  %i.dv = ptrtoint ptr %.sroa.11.0 to i64
  %i.dw = ptrtoint ptr %.sroa.064.0 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.dx) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit59

_ZNSt6vectorIfSaIfEED2Ev.exit59:                  ; preds = %._crit_edge93, %._crit_edge93.thread
  %.not.i.i.i60 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIfSaIfEED2Ev.exit61, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59
  %i.dy = ptrtoint ptr %.sroa.12.0 to i64
  %i.dz = ptrtoint ptr %.sroa.070.0 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.ea) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit61

_ZNSt6vectorIfSaIfEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59, %bb.k
  ret void

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %.091 = phi i64 [ %i.eu, %.lr.ph92 ], [ %.091.unr, %.lr.ph92.prol.loopexit ] ; 5 uses
  %i.eb = load float, ptr %i.p, align 4, !tbaa !203
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !89
  %i.ee = fmul float %i.eb, %i.ed
  store float %i.ee, ptr %i.ec, align 4, !tbaa !89
  %i.ef = load float, ptr %i.p, align 4, !tbaa !203
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !89
  %i.ej = fmul float %i.ef, %i.ei
  store float %i.ej, ptr %i.eh, align 4, !tbaa !89
  %i.ek = load float, ptr %i.p, align 4, !tbaa !203
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !89
  %i.eo = fmul float %i.ek, %i.en
  store float %i.eo, ptr %i.em, align 4, !tbaa !89
  %i.ep = load float, ptr %i.p, align 4, !tbaa !203
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.091
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 12 ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !89
  %i.et = fmul float %i.ep, %i.es
  store float %i.et, ptr %i.er, align 4, !tbaa !89
  %i.eu = add nuw i64 %.091, 4                    ; 2 uses
  %exitcond98.not.3 = icmp eq i64 %i.eu, %i.ck
  br i1 %exitcond98.not.3, label %._crit_edge93.thread, label %.lr.ph92, !llvm.loop !777

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.h, %bb.i, %bb.j, %bb.e
  %.pn45 = phi { ptr, i32 } [ %i.cc, %bb.e ], [ %i.cs, %bb.h ], [ %i.ct, %bb.i ], [ %i.ct, %bb.j ]
  %.not.i.i.i62 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIfSaIfEED2Ev.exit63, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ev = ptrtoint ptr %.sroa.12.0 to i64
  %i.ew = ptrtoint ptr %.sroa.070.0 to i64
  %i.ex = sub i64 %i.ev, %i.ew
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.ex) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit63

_ZNSt6vectorIfSaIfEED2Ev.exit63:                  ; preds = %bb.l, %_ZNSt6vectorIfSaIfEED2Ev.exit
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
