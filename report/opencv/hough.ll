Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hough?download=true
inline.NumInlined: 2522
inline.NumDeleted: 933
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN2cv10HoughLinesERKNS_11_InputArrayERKNS_12_OutputArrayEddiddddb:bb.a
.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod191 = trunc i32 %i.bj to i1
  call void @llvm.assume(i1 %lcmp.mod191)
  %i.ci = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.cj = uitofp nneg i32 %i.ci to float
  %i.ck = fmul float %i.bs, %i.cj
  %i.cl = fmul float %i.ck, 2.000000e-01
  %i.cm = call noundef float @cosf(float noundef %i.cl) #22
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i.epil.init
  store float %i.cm, ptr %i.cn, align 4, !tbaa !44
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.co = ptrtoint ptr %i.bo to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.10449.0845.i = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.co, %._crit_edge.i.loopexit ] ; 2 uses
  %.sroa.0445.0842.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.bn, %._crit_edge.i.loopexit ] ; 7 uses
  %i.cp = extractelement <2 x i32> %i.be, i64 1   ; 3 uses
  %i.cq = mul nsw i32 %i.cp, %i.bh                ; 5 uses
  %i.cr = sext i32 %i.cq to i64                   ; 3 uses
  %i.cs = icmp slt i32 %i.cq, 0
  br i1 %i.cs, label %bb.u, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.u:                                             ; preds = %._crit_edge.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #23
          to label %.noexc344.i unwind label %bb.w

.noexc344.i:                                      ; preds = %bb.u
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge.i
  %.not.i.i.i.i343.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i343.i, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #25
          to label %.noexc345.i unwind label %bb.w ; 3 uses

.noexc345.i:                                      ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ct, i8 0, i64 %i.cr, i1 false)
  %i.cv = ptrtoint ptr %i.cu to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i:          ; preds = %.noexc345.i, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.0439.0.i = phi ptr [ %i.ct, %.noexc345.i ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 10 uses
  %.sroa.12.0.i = phi i64 [ %i.cv, %.noexc345.i ], [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.cw = icmp sgt i32 %i.ao, 0
  %i.cx = icmp sgt i32 %i.am, 0
  %or.cond920.i.a = and i1 %i.cx, %i.cw
  br i1 %or.cond920.i.a, label %.preheader571.us.preheader.i, label %.preheader564.i

.preheader571.us.preheader.i:                     ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i
  %sext838.i = shl i64 %i.ak, 32
  %i.cy = ashr exact i64 %sext838.i, 32           ; 2 uses
  %wide.trip.count744.i = zext nneg i32 %i.ao to i64 ; 2 uses
  %wide.trip.count739.i = zext nneg i32 %i.am to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.am, 8
  %n.vec = and i64 %wide.trip.count739.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count739.i
  br label %.preheader571.us.i

.preheader571.us.i:                               ; preds = %._crit_edge620.us.i, %.preheader571.us.preheader.i
  %indvars.iv741.i = phi i64 [ 0, %.preheader571.us.preheader.i ], [ %indvars.iv.next742.i, %._crit_edge620.us.i ] ; 2 uses
  %.0291622.us.i = phi i32 [ 0, %.preheader571.us.preheader.i ], [ %.lcssa142, %._crit_edge620.us.i ] ; 2 uses
  %i.cz = mul nsw i64 %indvars.iv741.i, %i.cy
  %invariant.gep.i = getelementptr i8, ptr %i.ai, i64 %i.cz ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader571.us.i
  %i.da = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0291622.us.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.da, %vector.ph ], [ %i.dh, %vector.body ]
  %vec.phi143 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.di, %vector.body ]
  %i.db = getelementptr i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 4
  %wide.load = load <4 x i8>, ptr %i.db, align 1, !tbaa !37
  %wide.load144 = load <4 x i8>, ptr %i.dc, align 1, !tbaa !37
  %i.dd = icmp ne <4 x i8> %wide.load, zeroinitializer
  %i.de = icmp ne <4 x i8> %wide.load144, zeroinitializer
  %i.df = zext <4 x i1> %i.dd to <4 x i32>
  %i.dg = zext <4 x i1> %i.de to <4 x i32>
  %i.dh = add <4 x i32> %vec.phi, %i.df           ; 2 uses
  %i.di = add <4 x i32> %vec.phi143, %i.dg        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.di, %i.dh
  %i.dk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge620.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader571.us.i, %middle.block
  %indvars.iv736.i.ph = phi i64 [ 0, %.preheader571.us.i ], [ %n.vec, %middle.block ]
  %.1292618.us.i.ph = phi i32 [ %.0291622.us.i, %.preheader571.us.i ], [ %i.dk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv736.i = phi i64 [ %indvars.iv.next737.i, %scalar.ph ], [ %indvars.iv736.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.1292618.us.i = phi i32 [ %i.do, %scalar.ph ], [ %.1292618.us.i.ph, %scalar.ph.preheader ]
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv736.i
  %i.dl = load i8, ptr %gep.i, align 1, !tbaa !37
  %i.dm = icmp ne i8 %i.dl, 0
  %i.dn = zext i1 %i.dm to i32
  %i.do = add nsw i32 %.1292618.us.i, %i.dn       ; 2 uses
  %indvars.iv.next737.i = add nuw nsw i64 %indvars.iv736.i, 1 ; 2 uses
  %exitcond740.not.i = icmp eq i64 %indvars.iv.next737.i, %wide.trip.count739.i
  br i1 %exitcond740.not.i, label %._crit_edge620.us.i, label %scalar.ph, !llvm.loop !194

._crit_edge620.us.i:                              ; preds = %scalar.ph, %middle.block
  %.lcssa142 = phi i32 [ %i.dk, %middle.block ], [ %i.do, %scalar.ph ] ; 5 uses
  %indvars.iv.next742.i = add nuw nsw i64 %indvars.iv741.i, 1 ; 2 uses
  %exitcond745.not.i = icmp eq i64 %indvars.iv.next742.i, %wide.trip.count744.i
  br i1 %exitcond745.not.i, label %._crit_edge623.i, label %.preheader571.us.i, !llvm.loop !195

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit399.i

._crit_edge623.i:                                 ; preds = %._crit_edge620.us.i
  %i.dq = zext nneg i32 %.lcssa142 to i64         ; 4 uses
  %i.dr = icmp slt i32 %.lcssa142, 0
  br i1 %i.dr, label %bb.x, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.x:                                             ; preds = %._crit_edge623.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #23
          to label %.noexc349.i unwind label %bb.ad

.noexc349.i:                                      ; preds = %bb.x
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge623.i
  %.not.i.i.i.i346.i = icmp eq i32 %.lcssa142, 0  ; 2 uses
  br i1 %.not.i.i.i.i346.i, label %.preheader566.preheader.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ds = shl nuw nsw i64 %i.dq, 2                ; 2 uses
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #25
          to label %.noexc350.i unwind label %bb.ad ; 6 uses

.noexc350.i:                                      ; preds = %bb.y
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dq ; 3 uses
  store i32 0, ptr %i.dt, align 4, !tbaa !42
  %i.dv = add nsw i64 %i.dq, -1                   ; 3 uses
  %i.dw = icmp eq i64 %i.dv, 0                    ; 2 uses
  br i1 %i.dw, label %bb.z, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc350.i
  %i.dx = getelementptr i8, ptr %i.dt, i64 4
  %.idx.i.i.i.i.i.i.i347.i = shl nuw nsw i64 %i.dv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dx, i8 0, i64 %.idx.i.i.i.i.i.i.i347.i, i1 false), !tbaa !42
  br label %bb.z

bb.z:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc350.i
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #25
          to label %.noexc358.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit395.thread.i ; 5 uses

.noexc358.i:                                      ; preds = %bb.z
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dq ; 2 uses
  store i32 0, ptr %i.dy, align 4, !tbaa !42
  br i1 %i.dw, label %.preheader566.preheader.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i: ; preds = %.noexc358.i
  %i.ea = getelementptr i8, ptr %i.dy, i64 4
  %.idx.i.i.i.i.i.i.i354.i = shl nuw nsw i64 %i.dv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ea, i8 0, i64 %.idx.i.i.i.i.i.i.i354.i, i1 false), !tbaa !42
  br label %.preheader566.preheader.i

.preheader566.preheader.i:                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc358.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i
  %.sroa.10436.0507.i = phi ptr [ %i.du, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i ], [ %i.du, %.noexc358.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 4 uses
  %.sroa.0432.0499.i = phi ptr [ %i.dt, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i ], [ %i.dt, %.noexc358.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 5 uses
  %.sroa.0425.0.i = phi ptr [ %i.dy, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i ], [ %i.dy, %.noexc358.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 5 uses
  %.sroa.10429.0.i = phi ptr [ %i.dz, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i ], [ %i.dz, %.noexc358.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 4 uses
  %i.eb = extractelement <2 x double> %i.ba, i64 0
  %i.ec = extractelement <2 x float> %i.ap, i64 0
  %i.ed = extractelement <2 x float> %i.h, i64 0  ; 2 uses
  %i.ee = extractelement <2 x float> %i.h, i64 1
  br label %.preheader566.i

.preheader566.i:                                  ; preds = %._crit_edge636.i, %.preheader566.preheader.i
  %indvars.iv752.i = phi i64 [ 0, %.preheader566.preheader.i ], [ %indvars.iv.next753.i, %._crit_edge636.i ] ; 3 uses
  %.0288640.i = phi i32 [ 0, %.preheader566.preheader.i ], [ %.2290.i, %._crit_edge636.i ]
  %i.ef = mul nsw i64 %indvars.iv752.i, %i.cy
  %i.eg = trunc nuw nsw i64 %indvars.iv752.i to i32 ; 2 uses
  %i.eh = uitofp nneg i32 %i.eg to float
  %i.ei = fadd float %i.eh, 5.000000e-01          ; 2 uses
  %i.ej = fpext float %i.ei to double             ; 2 uses
  %i.ek = fmul nnan double %i.ej, %i.ej
  %invariant.gep912.i = getelementptr i8, ptr %i.ai, i64 %i.ef
  br label %bb.aa

.preheader564.i.loopexit:                         ; preds = %._crit_edge636.i
  %i.el = zext nneg i32 %.lcssa142 to i64
  br label %.preheader564.i

.preheader564.i:                                  ; preds = %.preheader564.i.loopexit, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i
  %.sroa.10429.0896.i = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.sroa.10429.0.i, %.preheader564.i.loopexit ] ; 4 uses
  %.sroa.0425.0891.i = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.sroa.0425.0.i, %.preheader564.i.loopexit ] ; 8 uses
  %.sroa.0432.0499884.i.a = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.sroa.0432.0499.i, %.preheader564.i.loopexit ] ; 8 uses
  %.sroa.10436.0507878.i.a = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.sroa.10436.0507.i, %.preheader564.i.loopexit ] ; 4 uses
  %.0291.lcssa848851877.i = phi i64 [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %i.el, %.preheader564.i.loopexit ] ; 2 uses
  %.not.i.i.i.i346852876.i = phi i1 [ true, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.not.i.i.i.i346.i, %.preheader564.i.loopexit ]
  %i.em = icmp sgt <2 x i32> %i.be, zeroinitializer ; 2 uses
  %i.en = extractelement <2 x i1> %i.em, i64 0    ; 2 uses
  %i.eo = extractelement <2 x i1> %i.em, i64 1    ; 2 uses
  %or.cond921.i = select i1 %i.eo, i1 %i.en, i1 false
  br i1 %or.cond921.i, label %.preheader563.us.preheader.i, label %._crit_edge649.thread.i

.preheader563.us.preheader.i:                     ; preds = %.preheader564.i
  %i.ep = zext nneg i32 %i.bh to i64              ; 4 uses
  %wide.trip.count765.i = zext nneg i32 %i.cp to i64
  %min.iters.check146 = icmp ult i32 %i.bh, 8
  %n.vec148 = and i64 %i.ep, 2147483640           ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n158 = icmp eq i64 %n.vec148, %i.ep
  br label %.preheader563.us.i

.preheader563.us.i:                               ; preds = %._crit_edge645.us.i, %.preheader563.us.preheader.i
  %indvars.iv762.i = phi i64 [ 0, %.preheader563.us.preheader.i ], [ %indvars.iv.next763.i, %._crit_edge645.us.i ] ; 2 uses
  %.0282648.us.i = phi i32 [ 0, %.preheader563.us.preheader.i ], [ %spec.select338.us.i.lcssa, %._crit_edge645.us.i ] ; 2 uses
  %i.eq = mul nuw nsw i64 %indvars.iv762.i, %i.ep
  %invariant.gep914.i = getelementptr inbounds nuw i8, ptr %.sroa.0439.0.i, i64 %i.eq ; 2 uses
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %.preheader563.us.i
  %i.er = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0282648.us.i, i64 0
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %vec.phi151 = phi <4 x i32> [ %i.er, %vector.ph147 ], [ %i.fa, %vector.body149 ]
  %vec.phi152 = phi <4 x i32> [ zeroinitializer, %vector.ph147 ], [ %i.fb, %vector.body149 ]
  %i.es = getelementptr inbounds nuw i8, ptr %invariant.gep914.i, i64 %index150 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %wide.load153 = load <4 x i8>, ptr %i.es, align 1, !tbaa !37
  %wide.load154 = load <4 x i8>, ptr %i.et, align 1, !tbaa !37
  %i.eu = zext <4 x i8> %wide.load153 to <4 x i32>
  %i.ev = zext <4 x i8> %wide.load154 to <4 x i32>
  %i.ew = icmp slt <4 x i32> %broadcast.splat, %i.eu
  %i.ex = icmp slt <4 x i32> %broadcast.splat, %i.ev
  %i.ey = zext <4 x i1> %i.ew to <4 x i32>
  %i.ez = zext <4 x i1> %i.ex to <4 x i32>
  %i.fa = add <4 x i32> %vec.phi151, %i.ey        ; 2 uses
  %i.fb = add <4 x i32> %vec.phi152, %i.ez        ; 2 uses
  %index.next155 = add nuw i64 %index150, 8       ; 2 uses
  %i.fc = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.fc, label %middle.block156, label %vector.body149, !llvm.loop !196

middle.block156:                                  ; preds = %vector.body149
  %bin.rdx157 = add <4 x i32> %i.fb, %i.fa
  %i.fd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx157) ; 2 uses
  br i1 %cmp.n158, label %._crit_edge645.us.i, label %scalar.ph145.preheader

scalar.ph145.preheader:                           ; preds = %.preheader563.us.i, %middle.block156
  %indvars.iv757.i.ph = phi i64 [ 0, %.preheader563.us.i ], [ %n.vec148, %middle.block156 ]
  %.1283643.us.i.ph = phi i32 [ %.0282648.us.i, %.preheader563.us.i ], [ %i.fd, %middle.block156 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %scalar.ph145
  %indvars.iv757.i = phi i64 [ %indvars.iv.next758.i, %scalar.ph145 ], [ %indvars.iv757.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.1283643.us.i = phi i32 [ %spec.select338.us.i, %scalar.ph145 ], [ %.1283643.us.i.ph, %scalar.ph145.preheader ]
  %gep915.i = getelementptr inbounds nuw i8, ptr %invariant.gep914.i, i64 %indvars.iv757.i
  %i.fe = load i8, ptr %gep915.i, align 1, !tbaa !37
  %i.ff = zext i8 %i.fe to i32
  %i.fg = icmp slt i32 %4, %i.ff
  %i.fh = zext i1 %i.fg to i32
  %spec.select338.us.i = add nsw i32 %.1283643.us.i, %i.fh ; 2 uses
  %indvars.iv.next758.i = add nuw nsw i64 %indvars.iv757.i, 1 ; 2 uses
  %exitcond761.not.i = icmp eq i64 %indvars.iv.next758.i, %i.ep
  br i1 %exitcond761.not.i, label %._crit_edge645.us.i, label %scalar.ph145, !llvm.loop !197

._crit_edge645.us.i:                              ; preds = %scalar.ph145, %middle.block156
  %spec.select338.us.i.lcssa = phi i32 [ %i.fd, %middle.block156 ], [ %spec.select338.us.i, %scalar.ph145 ] ; 2 uses
  %indvars.iv.next763.i = add nuw nsw i64 %indvars.iv762.i, 1 ; 2 uses
  %exitcond766.not.i = icmp eq i64 %indvars.iv.next763.i, %wide.trip.count765.i
  br i1 %exitcond766.not.i, label %._crit_edge649.i, label %.preheader563.us.i, !llvm.loop !198

bb.aa:                                            ; preds = %.loopexit565.i, %.preheader566.i
  %indvars.iv747.i = phi i64 [ 0, %.preheader566.i ], [ %indvars.iv.next748.i, %.loopexit565.i ] ; 3 uses
  %.1289633.i = phi i32 [ %.0288640.i, %.preheader566.i ], [ %.2290.i, %.loopexit565.i ] ; 3 uses
  %gep913.i = getelementptr i8, ptr %invariant.gep912.i, i64 %indvars.iv747.i
  %i.fi = load i8, ptr %gep913.i, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.fi, 0
  br i1 %.not.i, label %.loopexit565.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fj = sext i32 %.1289633.i to i64             ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %.sroa.0432.0499.i, i64 %i.fj
  %i.fl = trunc nuw nsw i64 %indvars.iv747.i to i32 ; 2 uses
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !42
  %i.fm = getelementptr inbounds [4 x i8], ptr %.sroa.0425.0.i, i64 %i.fj
  store i32 %i.eg, ptr %i.fm, align 4, !tbaa !42
  %i.fn = add nsw i32 %.1289633.i, 1              ; 2 uses
  %i.fo = uitofp nneg i32 %i.fl to float
  %i.fp = fadd float %i.fo, 5.000000e-01          ; 2 uses
  %i.fq = invoke noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.ei, float noundef %i.fp)
          to label %bb.ac unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit393.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.fr = fmul float %i.fq, f0x3C8EFA35
  %i.fs = call noundef float @llvm.fabs.f32(float %i.fr) ; 2 uses
  %i.ft = fpext float %i.fp to double             ; 2 uses
  %i.fu = call double @llvm.fmuladd.f64(double %i.ft, double %i.ft, double %i.ek)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.fu)
  %i.fv = fptrunc double %sqrt.i to float         ; 2 uses
  %i.fw = fpext float %i.fs to double
  %i.fx = fadd double %i.fw, f0x3FF921FB54442D18
  %i.fy = fmul double %i.fx, %i.eb
  %i.fz = call double @llvm.floor.f64(double %i.fy)
  %i.ga = fptosi double %i.fz to i32
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %.sroa.0439.0.i, i64 %i.gb ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !37
  %i.ge = add i8 %i.gd, 1
  store i8 %i.ge, ptr %i.gc, align 1, !tbaa !37
  %i.gf = fdiv float %i.ee, %i.fv                 ; 2 uses
  %i.gg = fcmp olt float %i.gf, %i.ed
  %i.gh = select i1 %i.gg, float %i.gf, float %i.ed ; 4 uses
  %i.gi = fpext float %i.gh to double
  %i.gj = fdiv double f0x400921FB54442D18, %i.gi
  %i.gk = call double @llvm.floor.f64(double %i.gj)
  %i.gl = fptosi double %i.gk to i32              ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, 1
  br i1 %i.gm, label %.lr.ph631.preheader.i, label %.loopexit565.i

.lr.ph631.preheader.i:                            ; preds = %bb.ac
  %i.gn = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.fv, i64 1
  %i.gp = fmul <2 x float> %i.ap, %i.go           ; 2 uses
  %i.gq = fadd float %i.gh, %i.fs
  %i.gr = fmul float %i.ec, %i.gq
  %i.gs = extractelement <2 x float> %i.gp, i64 0
  %i.gt = extractelement <2 x float> %i.gp, i64 1
  br label %.lr.ph631.i

.lr.ph631.i:                                      ; preds = %bb.ap, %.lr.ph631.preheader.i
  %.0253629.i = phi float [ %i.ia, %bb.ap ], [ %i.gr, %.lr.ph631.preheader.i ] ; 2 uses
  %.0254628.pn.i = phi float [ %.0254628.i, %bb.ap ], [ f0xBFC90FDB, %.lr.ph631.preheader.i ]
  %.0255627.i = phi i32 [ %i.ha, %bb.ap ], [ -1, %.lr.ph631.preheader.i ]
  %.0297625.i = phi i32 [ %i.hz, %bb.ap ], [ 1, %.lr.ph631.preheader.i ]
  %.0254628.i = fadd float %i.gh, %.0254628.pn.i  ; 2 uses
  %i.gu = call noundef float @cosf(float noundef %.0254628.i) #22
  %i.gv = fmul float %i.gt, %i.gu
  %i.gw = fptosi float %i.gv to i32
  %i.gx = mul nsw i32 %i.bh, %i.gw
  %i.gy = call float @llvm.floor.f32(float %.0253629.i)
  %i.gz = fptosi float %i.gy to i32
  %i.ha = add nsw i32 %i.gx, %i.gz                ; 5 uses
  %i.hb = icmp sgt i32 %i.ha, -1
  br i1 %i.hb, label %bb.aj, label %bb.ae

bb.ad:                                            ; preds = %bb.y, %bb.x
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit397.i

_ZNSt6vectorIiSaIiEED2Ev.exit395.thread.i:        ; preds = %bb.z
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ae:                                            ; preds = %.lr.ph631.i
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
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit393.i

bb.aj:                                            ; preds = %.lr.ph631.i
end_hunk_0
begin_hunk_1_@_ZN2cv11HoughLinesPERKNS_11_InputArrayERKNS_12_OutputArrayEddidd:bb.a
  %i.bz = icmp sgt i32 %i.y, 0
  br i1 %i.bz, label %.lr.ph330.i, label %._crit_edge331.i

.lr.ph330.i:                                      ; preds = %._crit_edge.i
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 128
  %i.cc = icmp sgt i32 %i.w, 0
  br i1 %i.cc, label %.lr.ph321.us.preheader.i, label %._crit_edge331.i

.lr.ph321.us.preheader.i:                         ; preds = %.lr.ph330.i
  %wide.trip.count416.i = zext nneg i32 %i.y to i64
  %wide.trip.count411.i = zext nneg i32 %i.w to i64
  br label %.lr.ph321.us.i

.lr.ph321.us.i:                                   ; preds = %._crit_edge322.us.i, %.lr.ph321.us.preheader.i
  %indvars.iv413.i = phi i64 [ 0, %.lr.ph321.us.preheader.i ], [ %indvars.iv.next414.i, %._crit_edge322.us.i ] ; 4 uses
  %.sroa.16.0327.us.i = phi ptr [ null, %.lr.ph321.us.preheader.i ], [ %.sroa.16.2.us.i, %._crit_edge322.us.i ]
  %.sroa.12.0326.us.i = phi ptr [ null, %.lr.ph321.us.preheader.i ], [ %.sroa.12.2.us.i, %._crit_edge322.us.i ]
  %.sroa.0.0325.us.i = phi ptr [ null, %.lr.ph321.us.preheader.i ], [ %.sroa.0.2.us.i, %._crit_edge322.us.i ]
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !38
  %i.ce = load i64, ptr %i.cb, align 8, !tbaa !39
  %i.cf = mul i64 %i.ce, %indvars.iv413.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  %i.ch = load ptr, ptr %i.bw, align 8, !tbaa !38
  %i.ci = load i64, ptr %i.by, align 8, !tbaa !39
  %i.cj = mul i64 %i.ci, %indvars.iv413.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj
  %.sroa.8.0.insert.shift.us.i = shl nuw nsw i64 %indvars.iv413.i, 32 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i, %.lr.ph321.us.i
  %indvars.iv408.i = phi i64 [ 0, %.lr.ph321.us.i ], [ %indvars.iv.next409.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i ] ; 5 uses
  %.sroa.16.1318.us.i = phi ptr [ %.sroa.16.0327.us.i, %.lr.ph321.us.i ], [ %.sroa.16.2.us.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i ] ; 7 uses
  %.sroa.12.1317.us.i = phi ptr [ %.sroa.12.0326.us.i, %.lr.ph321.us.i ], [ %.sroa.12.2.us.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i ] ; 4 uses
  %.sroa.0.1316.us.i = phi ptr [ %.sroa.0.0325.us.i, %.lr.ph321.us.i ], [ %.sroa.0.2.us.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i ] ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv408.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !37
  %.not237.us.i = icmp eq i8 %i.cm, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %indvars.iv408.i ; 2 uses
  br i1 %.not237.us.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.cn, align 1, !tbaa !37
  %.not.i.us.i = icmp eq ptr %.sroa.12.1317.us.i, %.sroa.16.1318.us.i
  br i1 %.not.i.us.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0277.0.insert.insert.us.i = or disjoint i64 %indvars.iv408.i, %.sroa.8.0.insert.shift.us.i
  store i64 %.sroa.0277.0.insert.insert.us.i, ptr %.sroa.12.1317.us.i, align 4, !tbaa !42
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.12.1317.us.i, i64 8
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i

bb.r:                                             ; preds = %bb.p
  %i.cp = ptrtoint ptr %.sroa.16.1318.us.i to i64
  %i.cq = ptrtoint ptr %.sroa.0.1316.us.i to i64
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
          to label %.noexc249.us.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc249.us.i:                                   ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cr
  %.sroa.0277.0.insert.insert282.us.i = or disjoint i64 %indvars.iv408.i, %.sroa.8.0.insert.shift.us.i
  store i64 %.sroa.0277.0.insert.insert282.us.i, ptr %i.da, align 4, !tbaa !42
  %.not10.i.i.i.i.i.us.i = icmp eq ptr %.sroa.0.1316.us.i, %.sroa.16.1318.us.i
  br i1 %.not10.i.i.i.i.i.us.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.us.i, label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %.noexc249.us.i, %.lr.ph.i.i.i.i.i.us.i
  %.012.i.i.i.i.i.us.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.us.i ], [ %i.cz, %.noexc249.us.i ] ; 2 uses
  %.0911.i.i.i.i.i.us.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.us.i ], [ %.sroa.0.1316.us.i, %.noexc249.us.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.db = load i64, ptr %.0911.i.i.i.i.i.us.i, align 4, !tbaa !42, !alias.scope !257
  store i64 %i.db, ptr %.012.i.i.i.i.i.us.i, align 4, !tbaa !42, !alias.scope !256
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.us.i = icmp eq ptr %i.dc, %.sroa.16.1318.us.i
  br i1 %.not.i.i.i.i.i.us.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.us.i, label %.lr.ph.i.i.i.i.i.us.i, !llvm.loop !1

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.i.us.i, %.noexc249.us.i
  %.0.lcssa.i.i.i.i.i.us.i = phi ptr [ %i.cz, %.noexc249.us.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.us.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.us.i, i64 8
  %.not.i23.i.i.us.i = icmp eq ptr %.sroa.0.1316.us.i, null
  br i1 %.not.i23.i.i.us.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.us.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1316.us.i, i64 noundef %i.cr) #24
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i: ; preds = %bb.s, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.us.i
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i

bb.t:                                             ; preds = %bb.o
  store i8 0, ptr %i.cn, align 1, !tbaa !37
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i: ; preds = %bb.t, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i, %bb.q
  %.sroa.0.2.us.i = phi ptr [ %.sroa.0.1316.us.i, %bb.t ], [ %i.cz, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i ], [ %.sroa.0.1316.us.i, %bb.q ] ; 3 uses
  %.sroa.12.2.us.i = phi ptr [ %.sroa.12.1317.us.i, %bb.t ], [ %i.de, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i ], [ %i.co, %bb.q ] ; 3 uses
  %.sroa.16.2.us.i = phi ptr [ %.sroa.16.1318.us.i, %bb.t ], [ %i.df, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us.i ], [ %.sroa.16.1318.us.i, %bb.q ] ; 3 uses
  %indvars.iv.next409.i = add nuw nsw i64 %indvars.iv408.i, 1 ; 2 uses
  %exitcond412.not.i = icmp eq i64 %indvars.iv.next409.i, %wide.trip.count411.i
  br i1 %exitcond412.not.i, label %._crit_edge322.us.i, label %bb.o, !llvm.loop !246

._crit_edge322.us.i:                              ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.us.i
  %indvars.iv.next414.i = add nuw nsw i64 %indvars.iv413.i, 1 ; 2 uses
  %exitcond417.not.i = icmp eq i64 %indvars.iv.next414.i, %wide.trip.count416.i
  br i1 %exitcond417.not.i, label %._crit_edge331.loopexit.i, label %.lr.ph321.us.i, !llvm.loop !247

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
          to label %.noexc248.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc248.i:                                      ; preds = %.split.us.i
  unreachable

._crit_edge331.loopexit.i:                        ; preds = %._crit_edge322.us.i
  %i.ec = ptrtoint ptr %.sroa.12.2.us.i to i64
  br label %._crit_edge331.i

._crit_edge331.i:                                 ; preds = %._crit_edge331.loopexit.i, %.lr.ph330.i, %._crit_edge.i
  %.sroa.0.0.lcssa.i = phi ptr [ null, %._crit_edge.i ], [ %.sroa.0.2.us.i, %._crit_edge331.loopexit.i ], [ null, %.lr.ph330.i ] ; 8 uses
  %.sroa.12.0.lcssa.i = phi i64 [ 0, %._crit_edge.i ], [ %i.ec, %._crit_edge331.loopexit.i ], [ 0, %.lr.ph330.i ]
  %.sroa.16.0.lcssa.i = phi ptr [ null, %._crit_edge.i ], [ %.sroa.16.2.us.i, %._crit_edge331.loopexit.i ], [ null, %.lr.ph330.i ] ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.0.0.lcssa.i to i64  ; 2 uses
  %i.ee = sub i64 %.sroa.12.0.lcssa.i, %i.ed
  %i.ef = lshr exact i64 %i.ee, 3                 ; 2 uses
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph391.i, label %.loopexit299.i

.lr.ph391.i:                                      ; preds = %._crit_edge331.i
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
  %i.eu = and i64 %i.ef, 2147483647               ; 2 uses
  %wide.trip.count422.i = zext nneg i32 %.0.i.i to i64 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %._crit_edge347.thread.i.us, label %.lr.ph391.i.split

._crit_edge347.thread.i.us:                       ; preds = %.lr.ph391.i, %._crit_edge347.thread.i.us
  %indvars.iv445.i.us = phi i64 [ %indvars.iv.next446.i.us, %._crit_edge347.thread.i.us ], [ %i.eu, %.lr.ph391.i ] ; 3 uses
  %.sroa.0276.0388.i.us = phi i64 [ %i.ey, %._crit_edge347.thread.i.us ], [ -1, %.lr.ph391.i ] ; 2 uses
  %i.ev = and i64 %.sroa.0276.0388.i.us, 4294967295
  %i.ew = mul nuw i64 %i.ev, 4164903690
  %i.ex = lshr i64 %.sroa.0276.0388.i.us, 32
  %i.ey = add nuw i64 %i.ew, %i.ex                ; 2 uses
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = trunc nuw nsw i64 %indvars.iv445.i.us to i32
  %i.fb = urem i32 %i.ez, %i.fa
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.fc
  %indvars.iv.next446.i.us = add nsw i64 %indvars.iv445.i.us, -1 ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa.i, i64 %indvars.iv.next446.i.us
  %i.ff = load i64, ptr %i.fe, align 4, !tbaa !42
  store i64 %i.ff, ptr %i.fd, align 4, !tbaa !42
  %.old.i.us = icmp samesign ugt i64 %indvars.iv445.i.us, 1
  br i1 %.old.i.us, label %._crit_edge347.thread.i.us, label %.loopexit299.i.thread, !llvm.loop !249

.lr.ph391.i.split:                                ; preds = %.lr.ph391.i, %.lr.ph391.i.split.backedge
  %indvars.iv445.i = phi i64 [ %indvars.iv.next446.i, %.lr.ph391.i.split.backedge ], [ %i.eu, %.lr.ph391.i ] ; 4 uses
  %.sroa.0276.0388.i = phi i64 [ %i.fj, %.lr.ph391.i.split.backedge ], [ -1, %.lr.ph391.i ] ; 2 uses
  %i.fg = and i64 %.sroa.0276.0388.i, 4294967295
  %i.fh = mul nuw i64 %i.fg, 4164903690
  %i.fi = lshr i64 %.sroa.0276.0388.i, 32
  %i.fj = add nuw i64 %i.fh, %i.fi                ; 2 uses
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = trunc nuw nsw i64 %indvars.iv445.i to i32
  %i.fm = urem i32 %i.fk, %i.fl
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.fn ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.fo, align 4, !tbaa !42 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !42 ; 3 uses
  %i.fp = load ptr, ptr %i.ej, align 8, !tbaa !38
  %indvars.iv.next446.i = add nsw i64 %indvars.iv445.i, -1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa.i, i64 %indvars.iv.next446.i
  %i.fr = load i64, ptr %i.fq, align 4, !tbaa !42
  store i64 %i.fr, ptr %i.fo, align 4, !tbaa !42
  %i.fs = mul nsw i32 %.sroa.5.0.copyload.i, %i.w
  %i.ft = add nsw i32 %i.fs, %.sroa.0.0.copyload.i
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %i.bx, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.fw, 0
  br i1 %.not.i, label %._crit_edge347.thread.i, label %.lr.ph346.i

.lr.ph346.i:                                      ; preds = %.lr.ph391.i.split
  %i.fx = sitofp i32 %.sroa.0.0.copyload.i to float
  %i.fy = sitofp i32 %.sroa.5.0.copyload.i to float
  br label %bb.x

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us.i, %.split.us.i
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

._crit_edge347.i:                                 ; preds = %bb.x
  %i.fz = icmp slt i32 %spec.select.i, %4
  br i1 %i.fz, label %._crit_edge347.thread.i, label %bb.y

bb.x:                                             ; preds = %bb.x, %.lr.ph346.i
  %indvars.iv418.i = phi i64 [ 0, %.lr.ph346.i ], [ %indvars.iv.next419.i, %bb.x ] ; 3 uses
  %.0193344.i = phi ptr [ %i.fp, %.lr.ph346.i ], [ %i.go, %bb.x ] ; 2 uses
  %.0195343.i = phi i32 [ 0, %.lr.ph346.i ], [ %spec.select244.i, %bb.x ]
  %.0197342.i = phi i32 [ %i.ei, %.lr.ph346.i ], [ %spec.select.i, %bb.x ] ; 2 uses
  %.idx498.i.a = shl nuw nsw i64 %indvars.iv418.i, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0269.0503.i, i64 %.idx498.i.a ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !44
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !44
  %i.ge = fmul float %i.gd, %i.fy
  %i.gf = call float @llvm.fmuladd.f32(float %i.fx, float %i.gb, float %i.ge)
  %i.gg = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.gh = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gg)
  %i.gi = add nsw i32 %i.gh, %i.el
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %.0193344.i, i64 %i.gj ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !42 ; 2 uses
  %i.gm = add nsw i32 %i.gl, 1                    ; 2 uses
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !42
  %.not235.i = icmp sgt i32 %.0197342.i, %i.gl
  %spec.select.i = call i32 @llvm.smax.i32(i32 %.0197342.i, i32 %i.gm) ; 2 uses
  %i.gn = trunc nuw nsw i64 %indvars.iv418.i to i32
  %spec.select244.i = select i1 %.not235.i, i32 %.0195343.i, i32 %i.gn ; 2 uses
  %indvars.iv.next419.i = add nuw nsw i64 %indvars.iv418.i, 1 ; 2 uses
  %i.go = getelementptr inbounds [4 x i8], ptr %.0193344.i, i64 %i.em
  %exitcond423.not.i = icmp eq i64 %indvars.iv.next419.i, %wide.trip.count422.i
  br i1 %exitcond423.not.i, label %._crit_edge347.i, label %bb.x, !llvm.loop !250

bb.y:                                             ; preds = %._crit_edge347.i
  %i.gp = shl nuw nsw i32 %spec.select244.i, 1
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0269.0503.i, i64 %i.gq
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
  br i1 %i.gz, label %.split362.i, label %.lr.ph357.us.preheader.i

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
  br i1 %i.gz, label %.split362.i, label %.lr.ph357.preheader.i

.lr.ph357.us.preheader.i:                         ; preds = %bb.z, %select.unfold.us.us.i
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %select.unfold.us.us.i ], [ 0, %bb.z ] ; 3 uses
  %.sroa.13.0.i = phi i32 [ %.sroa.13.1.i, %select.unfold.us.us.i ], [ 0, %bb.z ] ; 3 uses
  %.0175355.us.us.i = phi i64 [ %i.ih, %select.unfold.us.us.i ], [ %i.gs, %bb.z ] ; 3 uses
  %.0179353.us.us.i = phi i64 [ %i.ig, %select.unfold.us.us.i ], [ %i.gt, %bb.z ] ; 5 uses
  %.0180352.us.us.i = phi i64 [ %i.if, %select.unfold.us.us.i ], [ %i.hk, %bb.z ]
  %.0181351.us.us.i = phi i32 [ %.2.us.us.i, %select.unfold.us.us.i ], [ 0, %bb.z ] ; 2 uses
  %i.hw = icmp slt i64 %.0175355.us.us.i, %i.en
  %i.hx = icmp sgt i64 %.0179353.us.us.i, -1
  %or.cond.not298.us.us.i = select i1 %i.hw, i1 %i.hx, i1 false
  %.not229.us.us.i = icmp slt i64 %.0179353.us.us.i, %i.eo
  %or.cond245.us.us.i = select i1 %or.cond.not298.us.us.i, i1 %.not229.us.us.i, i1 false
  br i1 %or.cond245.us.us.i, label %bb.aa, label %._crit_edge360.split.us.us.i

bb.aa:                                            ; preds = %.lr.ph357.us.preheader.i
  %i.hy = mul nuw nsw i64 %.0179353.us.us.i, %i.en
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.0175355.us.us.i
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !37
  %.not230.us.us.i = icmp eq i8 %i.ib, 0
  br i1 %.not230.us.us.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ic = trunc nuw nsw i64 %.0179353.us.us.i to i32
  %i.id = trunc nuw nsw i64 %.0175355.us.us.i to i32
  br label %select.unfold.us.us.i

bb.ac:                                            ; preds = %bb.aa
  %i.ie = add nsw i32 %.0181351.us.us.i, 1
  %.not231.us.us.i = icmp slt i32 %.0181351.us.us.i, %i.i
  br i1 %.not231.us.us.i, label %select.unfold.us.us.i, label %._crit_edge360.split.us.us.i

select.unfold.us.us.i:                            ; preds = %bb.ac, %bb.ab
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0.i, %bb.ac ], [ %i.id, %bb.ab ] ; 2 uses
  %.sroa.13.1.i = phi i32 [ %.sroa.13.0.i, %bb.ac ], [ %i.ic, %bb.ab ] ; 2 uses
  %.2.us.us.i = phi i32 [ %i.ie, %bb.ac ], [ 0, %bb.ab ]
  %i.if = add nsw i64 %.0180352.us.us.i, %i.hi    ; 2 uses
  %i.ig = add nsw i64 %.0179353.us.us.i, %i.hh
  %i.ih = ashr i64 %i.if, 16                      ; 2 uses
  %i.ii = icmp slt i64 %i.ih, 0
  br i1 %i.ii, label %._crit_edge360.split.us.us.i, label %.lr.ph357.us.preheader.i, !llvm.loop !251

._crit_edge360.split.us.us.i:                     ; preds = %select.unfold.us.us.i, %bb.ac, %.lr.ph357.us.preheader.i
  %.sroa.0.2.i = phi i32 [ %.sroa.0.1.i, %select.unfold.us.us.i ], [ %.sroa.0.0.i, %bb.ac ], [ %.sroa.0.0.i, %.lr.ph357.us.preheader.i ] ; 3 uses
  %.sroa.13.2.i = phi i32 [ %.sroa.13.1.i, %select.unfold.us.us.i ], [ %.sroa.13.0.i, %bb.ac ], [ %.sroa.13.0.i, %.lr.ph357.us.preheader.i ] ; 3 uses
  br label %bb.ad

bb.ad:                                            ; preds = %select.unfold.us.us.1.i, %._crit_edge360.split.us.us.i
  %.sroa.20.4.i = phi i32 [ 0, %._crit_edge360.split.us.us.i ], [ %.sroa.20.5.i, %select.unfold.us.us.1.i ] ; 3 uses
  %.sroa.28.4.i = phi i32 [ 0, %._crit_edge360.split.us.us.i ], [ %.sroa.28.5.i, %select.unfold.us.us.1.i ] ; 3 uses
  %.0175355.us.us.1.i = phi i64 [ %i.gs, %._crit_edge360.split.us.us.i ], [ %i.iu, %select.unfold.us.us.1.i ] ; 3 uses
  %.0179353.us.us.1.i = phi i64 [ %i.gt, %._crit_edge360.split.us.us.i ], [ %i.it, %select.unfold.us.us.1.i ] ; 5 uses
  %.0180352.us.us.1.i = phi i64 [ %i.hk, %._crit_edge360.split.us.us.i ], [ %i.is, %select.unfold.us.us.1.i ]
  %.0181351.us.us.1.i = phi i32 [ 0, %._crit_edge360.split.us.us.i ], [ %.2.us.us.1.i, %select.unfold.us.us.1.i ] ; 2 uses
  %i.ij = icmp slt i64 %.0175355.us.us.1.i, %i.en
  %i.ik = icmp sgt i64 %.0179353.us.us.1.i, -1
  %or.cond.not298.us.us.1.i = select i1 %i.ij, i1 %i.ik, i1 false
  %.not229.us.us.1.i = icmp slt i64 %.0179353.us.us.1.i, %i.eo
  %or.cond245.us.us.1.i = select i1 %or.cond.not298.us.us.1.i, i1 %.not229.us.us.1.i, i1 false
  br i1 %or.cond245.us.us.1.i, label %bb.ae, label %.split362.i

bb.ae:                                            ; preds = %bb.ad
  %i.il = mul nuw nsw i64 %.0179353.us.us.1.i, %i.en
  %i.im = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %.0175355.us.us.1.i
  %i.io = load i8, ptr %i.in, align 1, !tbaa !37
end_hunk_1
