Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hough?download=true
inline.NumInlined: 2522
inline.NumDeleted: 933
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN2cv10HoughLinesERKNS_11_InputArrayERKNS_12_OutputArrayEddiddddb:bb.a
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod182 = trunc i32 %i.bl to i1
  call void @llvm.assume(i1 %lcmp.mod182)
  %i.cj = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.ck = uitofp nneg i32 %i.cj to float
  %i.cl = fmul float %i.av, %i.ck
  %i.cm = fmul float %i.cl, 2.000000e-01
  %i.cn = call noundef float @cosf(float noundef %i.cm) #22
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i.epil.init
  store float %i.cn, ptr %i.co, align 4, !tbaa !44
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.cp = ptrtoint ptr %i.bq to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.10449.0858.i = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cp, %._crit_edge.i.loopexit ] ; 2 uses
  %.sroa.0445.0855.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.bp, %._crit_edge.i.loopexit ] ; 7 uses
  %i.cq = extractelement <2 x i32> %i.bg, i64 1   ; 3 uses
  %i.cr = mul nsw i32 %i.cq, %i.bj                ; 5 uses
  %i.cs = sext i32 %i.cr to i64                   ; 3 uses
  %i.ct = icmp slt i32 %i.cr, 0
  br i1 %i.ct, label %bb.u, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.u:                                             ; preds = %._crit_edge.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #23
          to label %.noexc344.i unwind label %bb.w

.noexc344.i:                                      ; preds = %bb.u
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge.i
  %.not.i.i.i.i343.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i.i343.i, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #25
          to label %.noexc345.i unwind label %bb.w ; 3 uses

.noexc345.i:                                      ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cu, i8 0, i64 %i.cs, i1 false)
  %i.cw = ptrtoint ptr %i.cv to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i:          ; preds = %.noexc345.i, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.0439.0.i = phi ptr [ %i.cu, %.noexc345.i ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 10 uses
  %.sroa.12.0.i = phi i64 [ %i.cw, %.noexc345.i ], [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.cx = icmp sgt i32 %i.ao, 0
  %i.cy = icmp sgt i32 %i.am, 0
  %or.cond923.i.a = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond923.i.a, label %.preheader584.us.preheader.i, label %.preheader581.i

.preheader584.us.preheader.i:                     ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i
  %sext850.i = shl i64 %i.ak, 32
  %i.cz = ashr exact i64 %sext850.i, 32           ; 2 uses
  %wide.trip.count756.i = zext nneg i32 %i.ao to i64 ; 2 uses
  %wide.trip.count751.i = zext nneg i32 %i.am to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.am, 8
  %n.vec = and i64 %wide.trip.count751.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count751.i
  br label %.preheader584.us.i

.preheader584.us.i:                               ; preds = %._crit_edge633.us.i, %.preheader584.us.preheader.i
  %indvars.iv753.i = phi i64 [ 0, %.preheader584.us.preheader.i ], [ %indvars.iv.next754.i, %._crit_edge633.us.i ] ; 2 uses
  %.0291635.us.i = phi i32 [ 0, %.preheader584.us.preheader.i ], [ %.lcssa140, %._crit_edge633.us.i ] ; 2 uses
  %i.da = mul nsw i64 %indvars.iv753.i, %i.cz
  %invariant.gep.i = getelementptr i8, ptr %i.ai, i64 %i.da ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader584.us.i
  %i.db = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0291635.us.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.db, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi141 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %i.dc = getelementptr i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 4
  %wide.load = load <4 x i8>, ptr %i.dc, align 1, !tbaa !37
  %wide.load142 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !37
  %i.de = icmp ne <4 x i8> %wide.load, zeroinitializer
  %i.df = icmp ne <4 x i8> %wide.load142, zeroinitializer
  %i.dg = zext <4 x i1> %i.de to <4 x i32>
  %i.dh = zext <4 x i1> %i.df to <4 x i32>
  %i.di = add <4 x i32> %vec.phi, %i.dg           ; 2 uses
  %i.dj = add <4 x i32> %vec.phi141, %i.dh        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dj, %i.di
  %i.dl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge633.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader584.us.i, %middle.block
  %indvars.iv748.i.ph = phi i64 [ 0, %.preheader584.us.i ], [ %n.vec, %middle.block ]
  %.1292631.us.i.ph = phi i32 [ %.0291635.us.i, %.preheader584.us.i ], [ %i.dl, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv748.i = phi i64 [ %indvars.iv.next749.i, %scalar.ph ], [ %indvars.iv748.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.1292631.us.i = phi i32 [ %i.dp, %scalar.ph ], [ %.1292631.us.i.ph, %scalar.ph.preheader ]
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv748.i
  %i.dm = load i8, ptr %gep.i, align 1, !tbaa !37
  %i.dn = icmp ne i8 %i.dm, 0
  %i.do = zext i1 %i.dn to i32
  %i.dp = add nsw i32 %.1292631.us.i, %i.do       ; 2 uses
  %indvars.iv.next749.i = add nuw nsw i64 %indvars.iv748.i, 1 ; 2 uses
  %exitcond752.not.i = icmp eq i64 %indvars.iv.next749.i, %wide.trip.count751.i
  br i1 %exitcond752.not.i, label %._crit_edge633.us.i, label %scalar.ph, !llvm.loop !194

._crit_edge633.us.i:                              ; preds = %scalar.ph, %middle.block
  %.lcssa140 = phi i32 [ %i.dl, %middle.block ], [ %i.dp, %scalar.ph ] ; 5 uses
  %indvars.iv.next754.i = add nuw nsw i64 %indvars.iv753.i, 1 ; 2 uses
  %exitcond757.not.i = icmp eq i64 %indvars.iv.next754.i, %wide.trip.count756.i
  br i1 %exitcond757.not.i, label %._crit_edge636.i, label %.preheader584.us.i, !llvm.loop !195

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit399.i

._crit_edge636.i:                                 ; preds = %._crit_edge633.us.i
  %i.dr = zext nneg i32 %.lcssa140 to i64         ; 4 uses
  %i.ds = icmp slt i32 %.lcssa140, 0
  br i1 %i.ds, label %bb.x, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.x:                                             ; preds = %._crit_edge636.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #23
          to label %.noexc349.i unwind label %bb.ad

.noexc349.i:                                      ; preds = %bb.x
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge636.i
  %.not.i.i.i.i346.i = icmp eq i32 %.lcssa140, 0  ; 2 uses
  br i1 %.not.i.i.i.i346.i, label %.preheader583.preheader.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.dt = shl nuw nsw i64 %i.dr, 2                ; 2 uses
  %i.du = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #25
          to label %.noexc350.i unwind label %bb.ad ; 6 uses

.noexc350.i:                                      ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dr ; 3 uses
  store i32 0, ptr %i.du, align 4, !tbaa !42
  %i.dw = add nsw i64 %i.dr, -1                   ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 0                    ; 2 uses
  br i1 %i.dx, label %bb.z, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc350.i
  %i.dy = getelementptr i8, ptr %i.du, i64 4
  %.idx.i.i.i.i.i.i.i347.i = shl nuw nsw i64 %i.dw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dy, i8 0, i64 %.idx.i.i.i.i.i.i.i347.i, i1 false), !tbaa !42
  br label %bb.z

bb.z:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc350.i
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #25
          to label %.noexc358.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit395.thread.i ; 5 uses

.noexc358.i:                                      ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dr ; 2 uses
  store i32 0, ptr %i.dz, align 4, !tbaa !42
  br i1 %i.dx, label %.preheader583.preheader.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i: ; preds = %.noexc358.i
  %i.eb = getelementptr i8, ptr %i.dz, i64 4
  %.idx.i.i.i.i.i.i.i354.i = shl nuw nsw i64 %i.dw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.eb, i8 0, i64 %.idx.i.i.i.i.i.i.i354.i, i1 false), !tbaa !42
  br label %.preheader583.preheader.i

.preheader583.preheader.i:                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc358.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i
  %.sroa.10436.0507.i = phi ptr [ %i.dv, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i ], [ %i.dv, %.noexc358.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 4 uses
  %.sroa.0432.0499.i = phi ptr [ %i.du, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i ], [ %i.du, %.noexc358.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 5 uses
  %.sroa.0425.0.i = phi ptr [ %i.dz, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i ], [ %i.dz, %.noexc358.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 5 uses
  %.sroa.10429.0.i = phi ptr [ %i.ea, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i ], [ %i.ea, %.noexc358.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 4 uses
  %i.ec = extractelement <2 x double> %i.bc, i64 0
  %i.ed = extractelement <2 x float> %i.ap, i64 0
  br label %.preheader583.i

.preheader583.i:                                  ; preds = %._crit_edge649.i, %.preheader583.preheader.i
  %indvars.iv764.i = phi i64 [ 0, %.preheader583.preheader.i ], [ %indvars.iv.next765.i, %._crit_edge649.i ] ; 3 uses
  %.0288653.i = phi i32 [ 0, %.preheader583.preheader.i ], [ %.2290.i, %._crit_edge649.i ]
  %i.ee = mul nsw i64 %indvars.iv764.i, %i.cz
  %i.ef = trunc nuw nsw i64 %indvars.iv764.i to i32 ; 2 uses
  %i.eg = uitofp nneg i32 %i.ef to float
  %i.eh = fadd float %i.eg, 5.000000e-01          ; 2 uses
  %i.ei = fpext float %i.eh to double             ; 2 uses
  %i.ej = fmul nnan double %i.ei, %i.ei
  %invariant.gep915.i = getelementptr i8, ptr %i.ai, i64 %i.ee
  br label %bb.aa

.preheader581.i.loopexit:                         ; preds = %._crit_edge649.i
  %20 = call i32 @llvm.smax.i32(i32 %.lcssa140, i32 1)
  %i.ek = zext nneg i32 %20 to i64
  br label %.preheader581.i

.preheader581.i:                                  ; preds = %.preheader581.i.loopexit, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i
  %.sroa.10429.0899.i = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.sroa.10429.0.i, %.preheader581.i.loopexit ] ; 5 uses
  %.sroa.0425.0895.i = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.sroa.0425.0.i, %.preheader581.i.loopexit ] ; 9 uses
  %.sroa.0432.0499887.i = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.sroa.0432.0499.i, %.preheader581.i.loopexit ] ; 9 uses
  %.sroa.10436.0507881.i = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.sroa.10436.0507.i, %.preheader581.i.loopexit ] ; 5 uses
  %.0291.lcssa861864880.i = phi i64 [ 1, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %i.ek, %.preheader581.i.loopexit ] ; 2 uses
  %.not.i.i.i.i346865879.i = phi i1 [ true, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.not.i.i.i.i346.i, %.preheader581.i.loopexit ]
  %i.el = icmp sgt <2 x i32> %i.bg, zeroinitializer ; 2 uses
  %i.em = extractelement <2 x i1> %i.el, i64 0    ; 2 uses
  %i.en = extractelement <2 x i1> %i.el, i64 1    ; 2 uses
  %or.cond924.i = select i1 %i.en, i1 %i.em, i1 false
  br i1 %or.cond924.i, label %.preheader580.us.preheader.i, label %._crit_edge662.thread.i

.preheader580.us.preheader.i:                     ; preds = %.preheader581.i
  %i.eo = zext nneg i32 %i.bj to i64              ; 4 uses
  %wide.trip.count777.i = zext nneg i32 %i.cq to i64
  %min.iters.check144 = icmp ult i32 %i.bj, 8
  %n.vec146 = and i64 %i.eo, 2147483640           ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n156 = icmp eq i64 %n.vec146, %i.eo
  br label %.preheader580.us.i

.preheader580.us.i:                               ; preds = %._crit_edge658.us.i, %.preheader580.us.preheader.i
  %indvars.iv774.i = phi i64 [ 0, %.preheader580.us.preheader.i ], [ %indvars.iv.next775.i, %._crit_edge658.us.i ] ; 2 uses
  %.0282661.us.i = phi i32 [ 0, %.preheader580.us.preheader.i ], [ %spec.select338.us.i.lcssa, %._crit_edge658.us.i ] ; 2 uses
  %i.ep = mul nuw nsw i64 %indvars.iv774.i, %i.eo
  %invariant.gep917.i = getelementptr inbounds nuw i8, ptr %.sroa.0439.0.i, i64 %i.ep ; 2 uses
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %.preheader580.us.i
  %i.eq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0282661.us.i, i64 0
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next153, %vector.body147 ] ; 2 uses
  %vec.phi149 = phi <4 x i32> [ %i.eq, %vector.ph145 ], [ %i.ez, %vector.body147 ]
  %vec.phi150 = phi <4 x i32> [ zeroinitializer, %vector.ph145 ], [ %i.fa, %vector.body147 ]
  %i.er = getelementptr inbounds nuw i8, ptr %invariant.gep917.i, i64 %index148 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %wide.load151 = load <4 x i8>, ptr %i.er, align 1, !tbaa !37
  %wide.load152 = load <4 x i8>, ptr %i.es, align 1, !tbaa !37
  %i.et = zext <4 x i8> %wide.load151 to <4 x i32>
  %i.eu = zext <4 x i8> %wide.load152 to <4 x i32>
  %i.ev = icmp slt <4 x i32> %broadcast.splat, %i.et
  %i.ew = icmp slt <4 x i32> %broadcast.splat, %i.eu
  %i.ex = zext <4 x i1> %i.ev to <4 x i32>
  %i.ey = zext <4 x i1> %i.ew to <4 x i32>
  %i.ez = add <4 x i32> %vec.phi149, %i.ex        ; 2 uses
  %i.fa = add <4 x i32> %vec.phi150, %i.ey        ; 2 uses
  %index.next153 = add nuw i64 %index148, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.fb, label %middle.block154, label %vector.body147, !llvm.loop !196

middle.block154:                                  ; preds = %vector.body147
  %bin.rdx155 = add <4 x i32> %i.fa, %i.ez
  %i.fc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx155) ; 2 uses
  br i1 %cmp.n156, label %._crit_edge658.us.i, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %.preheader580.us.i, %middle.block154
  %indvars.iv769.i.ph = phi i64 [ 0, %.preheader580.us.i ], [ %n.vec146, %middle.block154 ]
  %.1283656.us.i.ph = phi i32 [ %.0282661.us.i, %.preheader580.us.i ], [ %i.fc, %middle.block154 ]
  br label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv769.i = phi i64 [ %indvars.iv.next770.i, %scalar.ph143 ], [ %indvars.iv769.i.ph, %scalar.ph143.preheader ] ; 2 uses
  %.1283656.us.i = phi i32 [ %spec.select338.us.i, %scalar.ph143 ], [ %.1283656.us.i.ph, %scalar.ph143.preheader ]
  %gep918.i = getelementptr inbounds nuw i8, ptr %invariant.gep917.i, i64 %indvars.iv769.i
  %i.fd = load i8, ptr %gep918.i, align 1, !tbaa !37
  %i.fe = zext i8 %i.fd to i32
  %i.ff = icmp slt i32 %4, %i.fe
  %i.fg = zext i1 %i.ff to i32
  %spec.select338.us.i = add nsw i32 %.1283656.us.i, %i.fg ; 2 uses
  %indvars.iv.next770.i = add nuw nsw i64 %indvars.iv769.i, 1 ; 2 uses
  %exitcond773.not.i = icmp eq i64 %indvars.iv.next770.i, %i.eo
  br i1 %exitcond773.not.i, label %._crit_edge658.us.i, label %scalar.ph143, !llvm.loop !197

._crit_edge658.us.i:                              ; preds = %scalar.ph143, %middle.block154
  %spec.select338.us.i.lcssa = phi i32 [ %i.fc, %middle.block154 ], [ %spec.select338.us.i, %scalar.ph143 ] ; 2 uses
  %indvars.iv.next775.i = add nuw nsw i64 %indvars.iv774.i, 1 ; 2 uses
  %exitcond778.not.i = icmp eq i64 %indvars.iv.next775.i, %wide.trip.count777.i
  br i1 %exitcond778.not.i, label %._crit_edge662.i, label %.preheader580.us.i, !llvm.loop !198

bb.aa:                                            ; preds = %.loopexit582.i, %.preheader583.i
  %indvars.iv759.i = phi i64 [ 0, %.preheader583.i ], [ %indvars.iv.next760.i, %.loopexit582.i ] ; 3 uses
  %.1289646.i = phi i32 [ %.0288653.i, %.preheader583.i ], [ %.2290.i, %.loopexit582.i ] ; 3 uses
  %gep916.i = getelementptr i8, ptr %invariant.gep915.i, i64 %indvars.iv759.i
  %i.fh = load i8, ptr %gep916.i, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i, label %.loopexit582.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = sext i32 %.1289646.i to i64             ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %.sroa.0432.0499.i, i64 %i.fi
  %i.fk = trunc nuw nsw i64 %indvars.iv759.i to i32 ; 2 uses
  store i32 %i.fk, ptr %i.fj, align 4, !tbaa !42
  %i.fl = getelementptr inbounds [4 x i8], ptr %.sroa.0425.0.i, i64 %i.fi
  store i32 %i.ef, ptr %i.fl, align 4, !tbaa !42
  %i.fm = add nsw i32 %.1289646.i, 1              ; 2 uses
  %i.fn = uitofp nneg i32 %i.fk to float
  %i.fo = fadd float %i.fn, 5.000000e-01          ; 2 uses
  %i.fp = invoke noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.eh, float noundef %i.fo)
          to label %bb.ac unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit393.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.fq = fmul float %i.fp, f0x3C8EFA35
  %i.fr = call noundef float @llvm.fabs.f32(float %i.fq) ; 2 uses
  %i.fs = fpext float %i.fo to double             ; 2 uses
  %i.ft = call double @llvm.fmuladd.f64(double %i.fs, double %i.fs, double %i.ej)
  %sqrt577.i = call double @llvm.sqrt.f64(double %i.ft)
  %i.fu = fptrunc double %sqrt577.i to float      ; 2 uses
  %i.fv = fpext float %i.fr to double
  %i.fw = fadd double %i.fv, f0x3FF921FB54442D18
  %i.fx = fmul double %i.fw, %i.ec
  %i.fy = call double @llvm.floor.f64(double %i.fx)
  %i.fz = fptosi double %i.fy to i32
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %.sroa.0439.0.i, i64 %i.ga ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !37
  %i.gd = add i8 %i.gc, 1
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !37
  %i.ge = fdiv float %i.ar, %i.fu                 ; 2 uses
  %i.gf = fcmp olt float %i.ge, %i.au
  %i.gg = select i1 %i.gf, float %i.ge, float %i.au ; 4 uses
  %i.gh = fpext float %i.gg to double
  %i.gi = fdiv double f0x400921FB54442D18, %i.gh
  %i.gj = call double @llvm.floor.f64(double %i.gi)
  %i.gk = fptosi double %i.gj to i32              ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, 1
  br i1 %i.gl, label %.lr.ph644.preheader.i, label %.loopexit582.i

.lr.ph644.preheader.i:                            ; preds = %bb.ac
  %i.gm = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.fu, i64 1
  %i.go = fmul <2 x float> %i.ap, %i.gn           ; 2 uses
  %i.gp = fadd float %i.gg, %i.fr
  %i.gq = fmul float %i.ed, %i.gp
  %i.gr = extractelement <2 x float> %i.go, i64 0
  %i.gs = extractelement <2 x float> %i.go, i64 1
  br label %.lr.ph644.i

.lr.ph644.i:                                      ; preds = %bb.ap, %.lr.ph644.preheader.i
  %.0253642.i = phi float [ %i.ia, %bb.ap ], [ %i.gq, %.lr.ph644.preheader.i ] ; 2 uses
  %.0254641.pn.i = phi float [ %.0254641.i, %bb.ap ], [ f0xBFC90FDB, %.lr.ph644.preheader.i ]
  %.0255640.i = phi i32 [ %i.gz, %bb.ap ], [ -1, %.lr.ph644.preheader.i ]
  %.0297638.i = phi i32 [ %i.hz, %bb.ap ], [ 1, %.lr.ph644.preheader.i ]
  %.0254641.i = fadd float %i.gg, %.0254641.pn.i  ; 2 uses
  %i.gt = call noundef float @cosf(float noundef %.0254641.i) #22
  %i.gu = fmul float %i.gs, %i.gt
  %i.gv = fptosi float %i.gu to i32
  %i.gw = mul nsw i32 %i.bj, %i.gv
  %i.gx = call float @llvm.floor.f32(float %.0253642.i)
  %i.gy = fptosi float %i.gx to i32
  %i.gz = add nsw i32 %i.gw, %i.gy                ; 5 uses
  %i.ha = icmp sgt i32 %i.gz, -1
  br i1 %i.ha, label %bb.aj, label %bb.ae

bb.ad:                                            ; preds = %bb.y, %bb.x
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit397.i

_ZNSt6vectorIiSaIiEED2Ev.exit395.thread.i:        ; preds = %bb.z
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

_ZNSt6vectorIhSaIhEED2Ev.exit393.thread.i:        ; preds = %bb.ab
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.ae:                                            ; preds = %.lr.ph644.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cvL14HoughLinesSDivERKNS_11_InputArrayERKNS_12_OutputArrayEiffiiiidd, ptr noundef nonnull @.str.1, i32 noundef 369) #23
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i

bb.ai:                                            ; preds = %bb.af
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hg = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.i: ; preds = %bb.ai
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !37
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.i, %bb.ah
  %.pn325.i = phi { ptr, i32 } [ %i.he, %bb.ah ], [ %i.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.i ], [ %i.hf, %bb.ai ]
end_hunk_0
begin_hunk_1_@_ZN2cv11HoughLinesPERKNS_11_InputArrayERKNS_12_OutputArrayEddidd:bb.a
  %wide.trip.count426.i = zext nneg i32 %i.y to i64
  %wide.trip.count421.i = zext nneg i32 %i.w to i64
  br label %.lr.ph331.us.i

.lr.ph331.us.i:                                   ; preds = %._crit_edge332.us.i, %.lr.ph331.us.preheader.i
  %indvars.iv423.i = phi i64 [ 0, %.lr.ph331.us.preheader.i ], [ %indvars.iv.next424.i, %._crit_edge332.us.i ] ; 4 uses
  %.sroa.17.0337.us.i = phi ptr [ null, %.lr.ph331.us.preheader.i ], [ %.sroa.17.2.us.i, %._crit_edge332.us.i ]
  %.sroa.12.0336.us.i = phi ptr [ null, %.lr.ph331.us.preheader.i ], [ %.sroa.12.2.us.i, %._crit_edge332.us.i ]
  %.sroa.0.0335.us.i = phi ptr [ null, %.lr.ph331.us.preheader.i ], [ %.sroa.0.2.us.i, %._crit_edge332.us.i ]
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !38
  %i.ce = load i64, ptr %i.cb, align 8, !tbaa !39
  %i.cf = mul i64 %i.ce, %indvars.iv423.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  %i.ch = load ptr, ptr %i.bw, align 8, !tbaa !38
  %i.ci = load i64, ptr %i.by, align 8, !tbaa !39
  %i.cj = mul i64 %i.ci, %indvars.iv423.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj
  %.sroa.8.0.insert.shift.us.i = shl nuw nsw i64 %indvars.iv423.i, 32 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i, %.lr.ph331.us.i
  %indvars.iv418.i = phi i64 [ 0, %.lr.ph331.us.i ], [ %indvars.iv.next419.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i ] ; 5 uses
  %.sroa.17.1328.us.i = phi ptr [ %.sroa.17.0337.us.i, %.lr.ph331.us.i ], [ %.sroa.17.2.us.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i ] ; 8 uses
  %.sroa.12.1327.us.i = phi ptr [ %.sroa.12.0336.us.i, %.lr.ph331.us.i ], [ %.sroa.12.2.us.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i ] ; 4 uses
  %.sroa.0.1326.us.i = phi ptr [ %.sroa.0.0335.us.i, %.lr.ph331.us.i ], [ %.sroa.0.2.us.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i ] ; 9 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv418.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !37
  %.not237.us.i = icmp eq i8 %i.cm, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %indvars.iv418.i ; 2 uses
  br i1 %.not237.us.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.cn, align 1, !tbaa !37
  %.not.i.us.i = icmp eq ptr %.sroa.12.1327.us.i, %.sroa.17.1328.us.i
  br i1 %.not.i.us.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0278.0.insert.insert.us.i = or disjoint i64 %indvars.iv418.i, %.sroa.8.0.insert.shift.us.i
  store i64 %.sroa.0278.0.insert.insert.us.i, ptr %.sroa.12.1327.us.i, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.12.1327.us.i, i64 8
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i

bb.r:                                             ; preds = %bb.p
  %i.cp = ptrtoint ptr %.sroa.17.1328.us.i to i64
  %i.cq = ptrtoint ptr %.sroa.0.1326.us.i to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 4 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775800
  br i1 %i.cs, label %.split.us.i, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us.i

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us.i: ; preds = %bb.r
  %i.ct = ashr exact i64 %i.cr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.us.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i.us.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 1152921504606846975)
  %i.cx = select i1 %i.cv, i64 1152921504606846975, i64 %i.cw ; 3 uses
  %.not.i.i.i.us.i = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i.i.us.i)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #25
          to label %.noexc249.us.i unwind label %.loopexit310.split.us.i ; 5 uses

.noexc249.us.i:                                   ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cr
  %.sroa.0278.0.insert.insert283.us.i = or disjoint i64 %indvars.iv418.i, %.sroa.8.0.insert.shift.us.i
  store i64 %.sroa.0278.0.insert.insert283.us.i, ptr %i.da, align 4
  %.not10.i.i.i.i.i.us.i = icmp eq ptr %.sroa.0.1326.us.i, %.sroa.17.1328.us.i
  br i1 %.not10.i.i.i.i.i.us.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.us.i, label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %.noexc249.us.i, %.lr.ph.i.i.i.i.i.us.i
  %.012.i.i.i.i.i.us.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.us.i ], [ %i.cz, %.noexc249.us.i ] ; 2 uses
  %.0911.i.i.i.i.i.us.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.us.i ], [ %.sroa.0.1326.us.i, %.noexc249.us.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.db = load i64, ptr %.0911.i.i.i.i.i.us.i, align 4, !alias.scope !257, !noalias !256
  store i64 %i.db, ptr %.012.i.i.i.i.i.us.i, align 4, !alias.scope !256, !noalias !257
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.us.i = icmp eq ptr %i.dc, %.sroa.17.1328.us.i
  br i1 %.not.i.i.i.i.i.us.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.us.i, label %.lr.ph.i.i.i.i.i.us.i, !llvm.loop !1

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.i.us.i, %.noexc249.us.i
  %.0.lcssa.i.i.i.i.i.us.i = phi ptr [ %i.cz, %.noexc249.us.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.us.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.us.i, i64 8
  %.not.i23.i.i.us.i = icmp eq ptr %.sroa.0.1326.us.i, null
  br i1 %.not.i23.i.i.us.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.us.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1326.us.i, i64 noundef %i.cr) #24
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i: ; preds = %bb.s, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.us.i
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i

bb.t:                                             ; preds = %bb.o
  store i8 0, ptr %i.cn, align 1, !tbaa !37
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i: ; preds = %bb.t, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i, %bb.q
  %.sroa.0.2.us.i = phi ptr [ %.sroa.0.1326.us.i, %bb.t ], [ %i.cz, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i ], [ %.sroa.0.1326.us.i, %bb.q ] ; 3 uses
  %.sroa.12.2.us.i = phi ptr [ %.sroa.12.1327.us.i, %bb.t ], [ %i.de, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i ], [ %i.co, %bb.q ] ; 3 uses
  %.sroa.17.2.us.i = phi ptr [ %.sroa.17.1328.us.i, %bb.t ], [ %i.df, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i ], [ %.sroa.17.1328.us.i, %bb.q ] ; 3 uses
  %indvars.iv.next419.i = add nuw nsw i64 %indvars.iv418.i, 1 ; 2 uses
  %exitcond422.not.i = icmp eq i64 %indvars.iv.next419.i, %wide.trip.count421.i
  br i1 %exitcond422.not.i, label %._crit_edge332.us.i, label %bb.o, !llvm.loop !246

._crit_edge332.us.i:                              ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i
  %indvars.iv.next424.i = add nuw nsw i64 %indvars.iv423.i, 1 ; 2 uses
  %exitcond427.not.i = icmp eq i64 %indvars.iv.next424.i, %wide.trip.count426.i
  br i1 %exitcond427.not.i, label %._crit_edge341.loopexit.i, label %.lr.ph331.us.i, !llvm.loop !247

.loopexit310.split.us.i:                          ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us.i
  %lpad.loopexit.us.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.u:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.v:                                             ; preds = %bb.n, %bb.m
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit257.i

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.w ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.w ]
  %i.di = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dj = uitofp nneg i32 %i.di to double
  %i.dk = fmul double %i.z, %i.dj                 ; 2 uses
  %i.dl = call double @cos(double noundef %i.dk) #22
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i
  %i.dn = call double @sin(double noundef %i.dk) #22
  %i.do = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dn, i64 1
  %i.dq = fmul <2 x double> %i.dp, %i.bi
  %i.dr = fptrunc <2 x double> %i.dq to <2 x float>
  store <2 x float> %i.dr, ptr %i.dm, align 4, !tbaa !44
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ds = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.dt = uitofp nneg i32 %i.ds to double
  %i.du = fmul double %i.z, %i.dt                 ; 2 uses
  %i.dv = call double @cos(double noundef %i.du) #22
  %.idx.i.1 = shl nuw nsw i64 %indvars.iv.next.i, 3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.1
  %i.dx = call double @sin(double noundef %i.du) #22
  %i.dy = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dx, i64 1
  %i.ea = fmul <2 x double> %i.dz, %i.bi
  %i.eb = fptrunc <2 x double> %i.ea to <2 x float>
  store <2 x float> %i.eb, ptr %i.dw, align 4, !tbaa !44
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.w, !llvm.loop !248

.split.us.i:                                      ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #23
          to label %.noexc248.i unwind label %.loopexit.split-lp.i

.noexc248.i:                                      ; preds = %.split.us.i
  unreachable

.loopexit.split-lp.i:                             ; preds = %.split.us.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

._crit_edge341.loopexit.i:                        ; preds = %._crit_edge332.us.i
  %i.ec = ptrtoint ptr %.sroa.12.2.us.i to i64
  br label %._crit_edge341.i

._crit_edge341.i:                                 ; preds = %._crit_edge341.loopexit.i, %.lr.ph340.i, %._crit_edge.i
  %.sroa.0.0.lcssa.i = phi ptr [ null, %._crit_edge.i ], [ %.sroa.0.2.us.i, %._crit_edge341.loopexit.i ], [ null, %.lr.ph340.i ] ; 8 uses
  %.sroa.12.0.lcssa.i = phi i64 [ 0, %._crit_edge.i ], [ %i.ec, %._crit_edge341.loopexit.i ], [ 0, %.lr.ph340.i ]
  %.sroa.17.0.lcssa.i = phi ptr [ null, %._crit_edge.i ], [ %.sroa.17.2.us.i, %._crit_edge341.loopexit.i ], [ null, %.lr.ph340.i ] ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.0.0.lcssa.i to i64  ; 2 uses
  %i.ee = sub i64 %.sroa.12.0.lcssa.i, %i.ed
  %i.ef = lshr exact i64 %i.ee, 3                 ; 2 uses
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph401.i, label %.loopexit309.i

.lr.ph401.i:                                      ; preds = %._crit_edge341.i
  %i.ei = add nsw i32 %4, -1
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.ek = add nsw i32 %i.ar, -1
  %i.el = sdiv i32 %i.ek, 2                       ; 3 uses
  %i.em = sext i32 %i.ar to i64                   ; 3 uses
  %i.en = sext i32 %i.w to i64                    ; 14 uses
  %i.eo = sext i32 %i.y to i64                    ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %15, i64 16
  %smax431.i = call i32 @llvm.smax.i32(i32 %.0.i.i, i32 1)
  %i.eu = and i64 %i.ef, 2147483647               ; 2 uses
  %wide.trip.count432.i = zext nneg i32 %smax431.i to i64 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %._crit_edge357.thread.i.us, label %.lr.ph401.i.split

._crit_edge357.thread.i.us:                       ; preds = %.lr.ph401.i, %._crit_edge357.thread.i.us
  %indvars.iv455.i.us = phi i64 [ %indvars.iv.next456.i.us, %._crit_edge357.thread.i.us ], [ %i.eu, %.lr.ph401.i ] ; 3 uses
  %.sroa.0277.0398.i.us = phi i64 [ %i.ey, %._crit_edge357.thread.i.us ], [ -1, %.lr.ph401.i ] ; 2 uses
  %i.ev = and i64 %.sroa.0277.0398.i.us, 4294967295
  %i.ew = mul nuw i64 %i.ev, 4164903690
  %i.ex = lshr i64 %.sroa.0277.0398.i.us, 32
  %i.ey = add nuw i64 %i.ew, %i.ex                ; 2 uses
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = trunc nuw nsw i64 %indvars.iv455.i.us to i32
  %i.fb = urem i32 %i.ez, %i.fa
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.fc
  %indvars.iv.next456.i.us = add nsw i64 %indvars.iv455.i.us, -1 ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa.i, i64 %indvars.iv.next456.i.us
  %i.ff = load i64, ptr %i.fe, align 4
  store i64 %i.ff, ptr %i.fd, align 4
  %.old.i.us = icmp samesign ugt i64 %indvars.iv455.i.us, 1
  br i1 %.old.i.us, label %._crit_edge357.thread.i.us, label %.loopexit309.i.thread, !llvm.loop !249

.lr.ph401.i.split:                                ; preds = %.lr.ph401.i, %.lr.ph401.i.split.backedge
  %indvars.iv455.i = phi i64 [ %indvars.iv.next456.i, %.lr.ph401.i.split.backedge ], [ %i.eu, %.lr.ph401.i ] ; 4 uses
  %.sroa.0277.0398.i = phi i64 [ %i.fj, %.lr.ph401.i.split.backedge ], [ -1, %.lr.ph401.i ] ; 2 uses
  %i.fg = and i64 %.sroa.0277.0398.i, 4294967295
  %i.fh = mul nuw i64 %i.fg, 4164903690
  %i.fi = lshr i64 %.sroa.0277.0398.i, 32
  %i.fj = add nuw i64 %i.fh, %i.fi                ; 2 uses
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = trunc nuw nsw i64 %indvars.iv455.i to i32
  %i.fm = urem i32 %i.fk, %i.fl
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.fn ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.fo, align 4, !tbaa !42 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !42 ; 3 uses
  %i.fp = load ptr, ptr %i.ej, align 8, !tbaa !38
  %indvars.iv.next456.i = add nsw i64 %indvars.iv455.i, -1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa.i, i64 %indvars.iv.next456.i
  %i.fr = load i64, ptr %i.fq, align 4
  store i64 %i.fr, ptr %i.fo, align 4
  %i.fs = mul nsw i32 %.sroa.5.0.copyload.i, %i.w
  %i.ft = add nsw i32 %i.fs, %.sroa.0.0.copyload.i
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %i.bx, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.fw, 0
  br i1 %.not.i, label %._crit_edge357.thread.i, label %.lr.ph356.i

.lr.ph356.i:                                      ; preds = %.lr.ph401.i.split
  %i.fx = sitofp i32 %.sroa.0.0.copyload.i to float
  %i.fy = sitofp i32 %.sroa.5.0.copyload.i to float
  br label %bb.x

._crit_edge357.i:                                 ; preds = %bb.x
  %i.fz = icmp slt i32 %spec.select.i, %4
  br i1 %i.fz, label %._crit_edge357.thread.i, label %bb.y

bb.x:                                             ; preds = %bb.x, %.lr.ph356.i
  %indvars.iv428.i = phi i64 [ 0, %.lr.ph356.i ], [ %indvars.iv.next429.i, %bb.x ] ; 3 uses
  %.0193354.i = phi ptr [ %i.fp, %.lr.ph356.i ], [ %i.go, %bb.x ] ; 2 uses
  %.0195353.i = phi i32 [ 0, %.lr.ph356.i ], [ %spec.select244.i, %bb.x ]
  %.0197352.i = phi i32 [ %i.ei, %.lr.ph356.i ], [ %spec.select.i, %bb.x ] ; 2 uses
  %.idx508.i.a = shl nuw nsw i64 %indvars.iv428.i, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0270.0513.i, i64 %.idx508.i.a ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !44
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !44
  %i.ge = fmul float %i.gd, %i.fy
  %i.gf = call float @llvm.fmuladd.f32(float %i.fx, float %i.gb, float %i.ge)
  %i.gg = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.gh = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gg)
  %i.gi = add nsw i32 %i.gh, %i.el
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %.0193354.i, i64 %i.gj ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !42 ; 2 uses
  %i.gm = add nsw i32 %i.gl, 1                    ; 2 uses
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !42
  %.not235.i = icmp sgt i32 %.0197352.i, %i.gl
  %spec.select.i = call i32 @llvm.smax.i32(i32 %.0197352.i, i32 %i.gm) ; 2 uses
  %i.gn = trunc nuw nsw i64 %indvars.iv428.i to i32
  %spec.select244.i = select i1 %.not235.i, i32 %.0195353.i, i32 %i.gn ; 2 uses
  %indvars.iv.next429.i = add nuw nsw i64 %indvars.iv428.i, 1 ; 2 uses
  %i.go = getelementptr inbounds [4 x i8], ptr %.0193354.i, i64 %i.em
  %exitcond433.not.i = icmp eq i64 %indvars.iv.next429.i, %wide.trip.count432.i
  br i1 %exitcond433.not.i, label %._crit_edge357.i, label %bb.x, !llvm.loop !250

bb.y:                                             ; preds = %._crit_edge357.i
  %i.gp = shl nuw nsw i32 %spec.select244.i, 1
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0270.0513.i, i64 %i.gq
  %i.gs = sext i32 %.sroa.0.0.copyload.i to i64   ; 9 uses
  %i.gt = sext i32 %.sroa.5.0.copyload.i to i64   ; 9 uses
  %i.gu = load <2 x float>, ptr %i.gr, align 4, !tbaa !44 ; 5 uses
  %i.gv = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gu) ; 2 uses
  %i.gw = extractelement <2 x float> %i.gv, i64 0 ; 2 uses
  %i.gx = extractelement <2 x float> %i.gv, i64 1 ; 2 uses
  %i.gy = fcmp ule float %i.gx, %i.gw             ; 6 uses
  %i.gz = icmp slt i32 %.sroa.0.0.copyload.i, 0   ; 2 uses
  br i1 %i.gy, label %bb.z, label %.thread.i

bb.z:                                             ; preds = %bb.y
  %i.ha = extractelement <2 x float> %i.gu, i64 1
  %i.hb = fmul float %i.ha, -6.553600e+04
  %i.hc = fdiv float %i.hb, %i.gw
  %i.hd = insertelement <4 x float> poison, float %i.hc, i64 0
  %i.he = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hd)
  %i.hf = extractelement <2 x float> %i.gu, i64 0
  %i.hg = fcmp ogt float %i.hf, 0.000000e+00
  %i.hh = select i1 %i.hg, i64 1, i64 -1          ; 6 uses
  %i.hi = sext i32 %i.he to i64                   ; 6 uses
  %i.hj = shl nsw i64 %i.gs, 16
  %i.hk = or disjoint i64 %i.hj, 32768            ; 6 uses
  br i1 %i.gz, label %.split372.i, label %.lr.ph367.us.preheader.i

.thread.i:                                        ; preds = %bb.y
  %i.hl = extractelement <2 x float> %i.gu, i64 0
  %i.hm = fmul float %i.hl, 6.553600e+04
  %i.hn = fdiv float %i.hm, %i.gx
  %i.ho = insertelement <4 x float> poison, float %i.hn, i64 0
  %i.hp = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ho)
  %i.hq = extractelement <2 x float> %i.gu, i64 1
  %i.hr = fcmp olt float %i.hq, 0.000000e+00
  %i.hs = select i1 %i.hr, i64 1, i64 -1          ; 6 uses
  %i.ht = sext i32 %i.hp to i64                   ; 6 uses
  %i.hu = shl nsw i64 %i.gt, 16
  %i.hv = or disjoint i64 %i.hu, 32768            ; 6 uses
  br i1 %i.gz, label %.split372.i, label %.lr.ph367.preheader.i

.lr.ph367.us.preheader.i:                         ; preds = %bb.z, %select.unfold.us.us.i
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %select.unfold.us.us.i ], [ 0, %bb.z ] ; 3 uses
  %.sroa.13.0.i = phi i32 [ %.sroa.13.1.i, %select.unfold.us.us.i ], [ 0, %bb.z ] ; 3 uses
  %.0175365.us.us.i = phi i64 [ %i.ih, %select.unfold.us.us.i ], [ %i.gs, %bb.z ] ; 3 uses
  %.0179363.us.us.i = phi i64 [ %i.ig, %select.unfold.us.us.i ], [ %i.gt, %bb.z ] ; 5 uses
  %.0180362.us.us.i = phi i64 [ %i.if, %select.unfold.us.us.i ], [ %i.hk, %bb.z ]
  %.0181361.us.us.i = phi i32 [ %.2.us.us.i, %select.unfold.us.us.i ], [ 0, %bb.z ] ; 2 uses
  %i.hw = icmp slt i64 %.0175365.us.us.i, %i.en
  %i.hx = icmp sgt i64 %.0179363.us.us.i, -1
  %or.cond.not308.us.us.i = select i1 %i.hw, i1 %i.hx, i1 false
  %.not229.us.us.i = icmp slt i64 %.0179363.us.us.i, %i.eo
  %or.cond245.us.us.i = select i1 %or.cond.not308.us.us.i, i1 %.not229.us.us.i, i1 false
  br i1 %or.cond245.us.us.i, label %bb.aa, label %._crit_edge370.split.us.us.i

bb.aa:                                            ; preds = %.lr.ph367.us.preheader.i
  %i.hy = mul nuw nsw i64 %.0179363.us.us.i, %i.en
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.0175365.us.us.i
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !37
  %.not230.us.us.i = icmp eq i8 %i.ib, 0
  br i1 %.not230.us.us.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ic = trunc nuw nsw i64 %.0179363.us.us.i to i32
  %i.id = trunc nuw nsw i64 %.0175365.us.us.i to i32
  br label %select.unfold.us.us.i

bb.ac:                                            ; preds = %bb.aa
  %i.ie = add nsw i32 %.0181361.us.us.i, 1
  %.not231.us.us.i = icmp slt i32 %.0181361.us.us.i, %i.i
  br i1 %.not231.us.us.i, label %select.unfold.us.us.i, label %._crit_edge370.split.us.us.i

select.unfold.us.us.i:                            ; preds = %bb.ac, %bb.ab
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0.i, %bb.ac ], [ %i.id, %bb.ab ] ; 2 uses
  %.sroa.13.1.i = phi i32 [ %.sroa.13.0.i, %bb.ac ], [ %i.ic, %bb.ab ] ; 2 uses
  %.2.us.us.i = phi i32 [ %i.ie, %bb.ac ], [ 0, %bb.ab ]
  %i.if = add nsw i64 %.0180362.us.us.i, %i.hi    ; 2 uses
  %i.ig = add nsw i64 %.0179363.us.us.i, %i.hh
  %i.ih = ashr i64 %i.if, 16                      ; 2 uses
  %i.ii = icmp slt i64 %i.ih, 0
  br i1 %i.ii, label %._crit_edge370.split.us.us.i, label %.lr.ph367.us.preheader.i, !llvm.loop !251

._crit_edge370.split.us.us.i:                     ; preds = %select.unfold.us.us.i, %bb.ac, %.lr.ph367.us.preheader.i
  %.sroa.0.2.i = phi i32 [ %.sroa.0.1.i, %select.unfold.us.us.i ], [ %.sroa.0.0.i, %bb.ac ], [ %.sroa.0.0.i, %.lr.ph367.us.preheader.i ] ; 3 uses
  %.sroa.13.2.i = phi i32 [ %.sroa.13.1.i, %select.unfold.us.us.i ], [ %.sroa.13.0.i, %bb.ac ], [ %.sroa.13.0.i, %.lr.ph367.us.preheader.i ] ; 3 uses
  br label %bb.ad

bb.ad:                                            ; preds = %select.unfold.us.us.1.i, %._crit_edge370.split.us.us.i
  %.sroa.20.4.i = phi i32 [ 0, %._crit_edge370.split.us.us.i ], [ %.sroa.20.5.i, %select.unfold.us.us.1.i ] ; 3 uses
  %.sroa.28.4.i = phi i32 [ 0, %._crit_edge370.split.us.us.i ], [ %.sroa.28.5.i, %select.unfold.us.us.1.i ] ; 3 uses
  %.0175365.us.us.1.i = phi i64 [ %i.gs, %._crit_edge370.split.us.us.i ], [ %i.iu, %select.unfold.us.us.1.i ] ; 3 uses
  %.0179363.us.us.1.i = phi i64 [ %i.gt, %._crit_edge370.split.us.us.i ], [ %i.it, %select.unfold.us.us.1.i ] ; 5 uses
  %.0180362.us.us.1.i = phi i64 [ %i.hk, %._crit_edge370.split.us.us.i ], [ %i.is, %select.unfold.us.us.1.i ]
  %.0181361.us.us.1.i = phi i32 [ 0, %._crit_edge370.split.us.us.i ], [ %.2.us.us.1.i, %select.unfold.us.us.1.i ] ; 2 uses
  %i.ij = icmp slt i64 %.0175365.us.us.1.i, %i.en
  %i.ik = icmp sgt i64 %.0179363.us.us.1.i, -1
  %or.cond.not308.us.us.1.i = select i1 %i.ij, i1 %i.ik, i1 false
  %.not229.us.us.1.i = icmp slt i64 %.0179363.us.us.1.i, %i.eo
  %or.cond245.us.us.1.i = select i1 %or.cond.not308.us.us.1.i, i1 %.not229.us.us.1.i, i1 false
  br i1 %or.cond245.us.us.1.i, label %bb.ae, label %.split372.i

bb.ae:                                            ; preds = %bb.ad
  %i.il = mul nuw nsw i64 %.0179363.us.us.1.i, %i.en
  %i.im = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %.0175365.us.us.1.i
  %i.io = load i8, ptr %i.in, align 1, !tbaa !37
  %.not230.us.us.1.i = icmp eq i8 %i.io, 0
  br i1 %.not230.us.us.1.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ip = trunc nuw nsw i64 %.0179363.us.us.1.i to i32
end_hunk_1
