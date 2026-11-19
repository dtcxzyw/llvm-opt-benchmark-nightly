Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/display?download=true
inline.NumInlined: 1624
inline.NumDeleted: 666
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pbrt11DisplayItem7DisplayERNS_10IPCChannelE:bb.a
  store i8 %i.bl, ptr %.3.i.1, align 1, !tbaa !29
  %i.bm = add nuw i64 %.08.i10.i.1, 1             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.3.i.1, i64 1 ; 2 uses
  %i.bo = load i64, ptr %i.bh, align 8, !tbaa !28
  %i.bp = icmp ult i64 %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph.i9.i.1, label %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11.i.1, !llvm.loop !2

_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11.i.1: ; preds = %.lr.ph.i9.i.1, %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11.i
  %.4.i.1 = phi ptr [ %i.bd, %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11.i ], [ %i.bn, %.lr.ph.i9.i.1 ] ; 2 uses
  store i8 0, ptr %.4.i.1, align 1, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %.4.i.1, i64 1 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !4

_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE.exit.loopexit.unr-lcssa: ; preds = %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11.i.1
  %i.br = and i64 %i.ai, 32
  %lcmp.mod.not = icmp eq i64 %i.br, 0
  br i1 %lcmp.mod.not, label %_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE.exit.loopexit.unr-lcssa ]
  %.02931.i.epil.init = phi ptr [ %i.ao, %.lr.ph.preheader.i ], [ %i.bq, %_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod236 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod236)
  %i.bs = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !28
  %.not.i7.i.epil = icmp eq i64 %i.bv, 0
  br i1 %.not.i7.i.epil, label %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11.i.epil, label %.lr.ph.i9.i.epil

.lr.ph.i9.i.epil:                                 ; preds = %.lr.ph.i.epil.preheader, %.lr.ph.i9.i.epil
  %.3.i.epil = phi ptr [ %i.ca, %.lr.ph.i9.i.epil ], [ %.02931.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.08.i10.i.epil = phi i64 [ %i.bz, %.lr.ph.i9.i.epil ], [ 0, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.08.i10.i.epil
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !29
  store i8 %i.by, ptr %.3.i.epil, align 1, !tbaa !29
  %i.bz = add nuw i64 %.08.i10.i.epil, 1          ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.3.i.epil, i64 1 ; 2 uses
  %i.cb = load i64, ptr %i.bu, align 8, !tbaa !28
  %i.cc = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cc, label %.lr.ph.i9.i.epil, label %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11.i.epil, !llvm.loop !2

_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11.i.epil: ; preds = %.lr.ph.i9.i.epil, %.lr.ph.i.epil.preheader
  %.4.i.epil = phi ptr [ %.02931.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ca, %.lr.ph.i9.i.epil ] ; 2 uses
  store i8 0, ptr %.4.i.epil, align 1, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %.4.i.epil, i64 1
  br label %_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE.exit

_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE.exit: ; preds = %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11.i.epil, %_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE.exit.loopexit.unr-lcssa, %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %.029.lcssa.i = phi ptr [ %i.ao, %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %i.bq, %_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE.exit.loopexit.unr-lcssa ], [ %i.cd, %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11.i.epil ]
  %i.ce = ptrtoint ptr %.029.lcssa.i to i64
  %i.cf = ptrtoint ptr %i.a to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = call noundef zeroext i1 @_ZN4pbrt10IPCChannel4SendEN4pstd4spanIKhEE(ptr noundef nonnull align 8 dereferenceable(76) %1, ptr nonnull %i.a, i64 %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br i1 %i.ch, label %bb.c, label %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EED2Ev.exit86

bb.c:                                             ; preds = %_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE.exit
  store i8 1, ptr %0, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !62 ; 3 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !72 ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = ashr exact i64 %i.co, 6                 ; 2 uses
  %i.cq = icmp ugt i64 %i.cp, 576460752303423487
  br i1 %i.cq, label %.noexc, label %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #25
  unreachable

_ZNSt6vectorIN4pstd4spanIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.cr = ashr exact i64 %i.co, 2                 ; 3 uses
  %i.cs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #29 ; 4 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.cp
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cs, i8 0, i64 %i.cr, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.cs, i64 %i.cr
  %i.cu = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %.pre = load ptr, ptr %i.cj, align 8, !tbaa !62 ; 2 uses
  %.pre154 = load ptr, ptr %i.ci, align 8, !tbaa !72 ; 2 uses
  %.pre156 = ptrtoint ptr %.pre to i64
  %.pre157 = ptrtoint ptr %.pre154 to i64
  %.pre159.a = sub i64 %.pre156, %.pre157
  %.pre161 = ashr exact i64 %.pre159.a, 6
  %i.cw = call i64 @llvm.umax.i64(i64 %.pre161, i64 1)
  br label %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIN4pstd4spanIfEESaIS2_EEC2EmRKS3_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.pre-phi162 = phi i64 [ %i.cw, %.lr.ph.preheader.i.i.i.i.i ], [ 1, %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 4 uses
  %i.cx = phi ptr [ %.pre154, %.lr.ph.preheader.i.i.i.i.i ], [ %i.cl, %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 4 uses
  %i.cy = phi ptr [ %.pre, %.lr.ph.preheader.i.i.i.i.i ], [ %i.ck, %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sroa.096.0 = phi ptr [ %i.cs, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 9 uses
  %.sink.i = phi i64 [ %i.cv, %.lr.ph.preheader.i.i.i.i.i ], [ 0, %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.cu, %.lr.ph.preheader.i.i.i.i.i ], [ 0, %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.not137 = icmp eq ptr %i.cy, %i.cx
  br i1 %.not137, label %.preheader105, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EEC2EmRKS3_.exit
  %min.iters.check212 = icmp ult i64 %.pre-phi162, 5
  br i1 %min.iters.check212, label %.lr.ph.preheader231, label %vector.ph213

.lr.ph.preheader231:                              ; preds = %vector.body215, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec214, %vector.body215 ]
  br label %.lr.ph

vector.ph213:                                     ; preds = %.lr.ph.preheader
  %i.cz = and i64 %.pre-phi162, 3                 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = select i1 %i.da, i64 4, i64 %i.cz
  %n.vec214 = sub i64 %.pre-phi162, %i.db         ; 2 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next220, %vector.body215 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph213 ], [ %vec.ind.next, %vector.body215 ] ; 2 uses
  %wide.gep = getelementptr inbounds nuw [64 x i8], ptr %i.cx, <4 x i64> %vec.ind ; 2 uses
  %wide.masked.gather = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !71
  %wide.gep217 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 28
  %wide.masked.gather218 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep217, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !81
  %i.dc = sext <4 x i32> %wide.masked.gather218 to <4 x i64>
  %wide.gep219 = getelementptr inbounds i8, <4 x ptr> %wide.masked.gather, <4 x i64> %i.dc
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.096.0, i64 %index216
  %i.de = ptrtoint <4 x ptr> %wide.gep219 to <4 x i64>
  %interleaved.vec = shufflevector <4 x i64> %i.de, <4 x i64> splat (i64 16384), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i64> %interleaved.vec, ptr %i.dd, align 8, !tbaa !29
  %index.next220 = add nuw i64 %index216, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.df = icmp eq i64 %index.next220, %n.vec214
  br i1 %i.df, label %.lr.ph.preheader231, label %vector.body215, !llvm.loop !202

.preheader105:                                    ; preds = %.lr.ph, %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EEC2EmRKS3_.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !209 ; 2 uses
  %.not67132 = icmp slt i32 %i.di, 1
  br i1 %.not67132, label %.critedge75, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader105
  %i.dj = ptrtoint ptr %.sroa.096.0 to i64        ; 2 uses
  %i.dk = sub i64 %.0.lcssa.i.i.i.i.i, %i.dj
  %i.dl = ashr exact i64 %i.dk, 4
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dr = load i32, ptr %i.dg, align 8, !tbaa !210 ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.preheader, label %.critedge75

.lr.ph:                                           ; preds = %.lr.ph.preheader231, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader231 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [64 x i8], ptr %i.cx, i64 %indvars.iv ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !71
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !81
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %i.du, i64 %i.dx
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.096.0, i64 %indvars.iv ; 2 uses
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 16384, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.pre-phi162
  br i1 %exitcond.not, label %.preheader105, label %.lr.ph, !llvm.loop !203

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge73
  %i.ea = phi i32 [ %i.ii, %.critedge73 ], [ %i.di, %.preheader.lr.ph ]
  %i.eb = phi ptr [ %i.ij, %.critedge73 ], [ %i.cx, %.preheader.lr.ph ] ; 2 uses
  %i.ec = phi ptr [ %i.ik, %.critedge73 ], [ %i.cy, %.preheader.lr.ph ] ; 2 uses
  %i.ed = phi i32 [ %i.il, %.critedge73 ], [ %i.dr, %.preheader.lr.ph ] ; 3 uses
  %.060134 = phi i32 [ %i.ee, %.critedge73 ], [ 0, %.preheader.lr.ph ] ; 5 uses
  %.061133 = phi i32 [ %.162.lcssa, %.critedge73 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.not68128 = icmp sgt i32 %i.ed, 0
  %i.ee = add nuw nsw i32 %.060134, 128           ; 3 uses
  br i1 %.not68128, label %.lr.ph131, label %.critedge73

.lr.ph131:                                        ; preds = %.preheader
  %i.ef = sext i32 %.061133 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph131, %.critedge
  %i.eg = phi ptr [ %i.eb, %.lr.ph131 ], [ %i.id, %.critedge ] ; 2 uses
  %i.eh = phi ptr [ %i.ec, %.lr.ph131 ], [ %i.ie, %.critedge ]
  %indvars.iv151.a = phi i64 [ %i.ef, %.lr.ph131 ], [ %indvars.iv.next152.a, %.critedge ] ; 3 uses
  %indvars.iv151 = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next152, %.critedge ] ; 3 uses
  %.056130 = phi i32 [ %i.ed, %.lr.ph131 ], [ %i.if, %.critedge ]
  %i.ei = load i32, ptr %i.dh, align 4, !tbaa !33
  %.sroa.speculated92 = call i32 @llvm.smin.i32(i32 %i.ei, i32 %i.ee) ; 3 uses
  %i.ej = sub nsw i32 %.sroa.speculated92, %.060134 ; 2 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 128 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next152 to i32   ; 2 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.056130, i32 %4) ; 2 uses
  %5 = trunc nuw nsw i64 %indvars.iv151 to i32    ; 2 uses
  %i.ek = sub nsw i32 %.sroa.speculated, %5       ; 2 uses
  %.not138 = icmp eq ptr %i.eh, %i.eg
  br i1 %.not138, label %._crit_edge, label %.lr.ph124

.lr.ph124:                                        ; preds = %bb.e
  %i.el = mul nsw i32 %i.ej, %i.ek
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph124, %bb.f
  %indvars.iv145 = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next146, %bb.f ] ; 2 uses
  %i.em = phi ptr [ %i.eg, %.lr.ph124 ], [ %i.ey, %bb.f ]
  %i.en = getelementptr inbounds nuw [64 x i8], ptr %i.em, i64 %indvars.iv145 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !71
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !80
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr %i.eo, i64 %i.er ; 4 uses
  store i32 %5, ptr %i.es, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 %.060134, ptr %i.et, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i32 %i.ek, ptr %i.eu, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 %i.ej, ptr %i.ev, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  store i32 %i.el, ptr %i.ew, align 8, !tbaa !82
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.ex = load ptr, ptr %i.cj, align 8, !tbaa !62
  %i.ey = load ptr, ptr %i.ci, align 8, !tbaa !72 ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 6
  %i.fd = icmp ugt i64 %i.fc, %indvars.iv.next146
  br i1 %i.fd, label %bb.f, label %._crit_edge, !llvm.loop !204

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated92, i32 %.060134)
  %.sroa.2.0.insert.ext.i.i = zext i32 %.sroa.speculated.i.i to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.09.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %indvars.iv151
  %.sroa.speculated.i15.i = call i32 @llvm.smax.i32(i32 %.060134, i32 %.sroa.speculated92)
  %.sroa.2.0.insert.ext.i16.i = zext nneg i32 %.sroa.speculated.i15.i to i64
  %.sroa.2.0.insert.shift.i17.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i16.i, 32
  %.sroa.09.0.insert.ext.i18.i = zext nneg i32 %.sroa.speculated to i64
  %.sroa.09.0.insert.insert.i19.i = or disjoint i64 %.sroa.2.0.insert.shift.i17.i, %.sroa.09.0.insert.ext.i18.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.09.0.insert.insert.i.i, ptr %2, align 8
  store i64 %.sroa.09.0.insert.insert.i19.i, ptr %i.dm, align 8
  store ptr %.sroa.096.0, ptr %3, align 8
  store i64 %i.dl, ptr %i.dn, align 8
  %i.fe = load ptr, ptr %i.do, align 8, !tbaa !55
  %.not.i.i80 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i80, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  invoke void @_ZSt25__throw_bad_function_callv() #25
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %._crit_edge
  %i.ff = load ptr, ptr %i.dq, align 8, !tbaa !89
  invoke void %i.ff(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKSt8functionIFvN4pbrt7Bounds2IiEEN4pstd4spanINS4_IfEEEEEEclES2_S6_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !205

_ZNKSt8functionIFvN4pbrt7Bounds2IiEEN4pstd4spanINS4_IfEEEEEEclES2_S6_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fg = load ptr, ptr %i.cj, align 8, !tbaa !62 ; 2 uses
  %i.fh = load ptr, ptr %i.ci, align 8, !tbaa !72 ; 3 uses
  %.not125.not = icmp eq ptr %i.fg, %i.fh
  br i1 %.not125.not, label %.critedge, label %.lr.ph127

.lr.ph127:                                        ; preds = %_ZNKSt8functionIFvN4pbrt7Bounds2IiEEN4pstd4spanINS4_IfEEEEEEclES2_S6_.exit, %bb.m
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %bb.m ], [ 0, %_ZNKSt8functionIFvN4pbrt7Bounds2IiEEN4pstd4spanINS4_IfEEEEEEclES2_S6_.exit ] ; 2 uses
  %i.fi = phi ptr [ %i.hy, %bb.m ], [ %i.fh, %_ZNKSt8functionIFvN4pbrt7Bounds2IiEEN4pstd4spanINS4_IfEEEEEEclES2_S6_.exit ]
  %i.fj = getelementptr inbounds nuw [64 x i8], ptr %i.fi, i64 %indvars.iv148 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !82 ; 3 uses
  %i.fm = icmp sgt i32 %i.fl, 16384
  br i1 %i.fm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph127
  %i.fn = add nsw i32 %i.fl, -16384
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !71
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 28
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !81
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fo, i64 %i.fr
  %i.ft = zext nneg i32 %i.fl to i64
  %i.fu = shl nuw nsw i64 %i.ft, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fu
  %i.fw = zext nneg i32 %i.fn to i64
  %i.fx = shl nuw nsw i64 %i.fw, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fv, i8 0, i64 %i.fx, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph127
  %i.fy = load ptr, ptr %i.fj, align 8, !tbaa !71 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fj, i64 28
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !81
  %i.gb = sext i32 %i.ga to i64                   ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %i.fy, i64 %i.gb ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 65536
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.j
  %.039.i.i.i = phi ptr [ %i.gc, %bb.j ], [ %i.gz, %.lr.ph.i.i.i ] ; 5 uses
  %.03638.i.i.i = phi i64 [ -6371648090673971200, %bb.j ], [ %i.hf, %.lr.ph.i.i.i ]
  %.0.copyload.i.i.i = load i64, ptr %.039.i.i.i, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 8
  %i.gf = mul i64 %.0.copyload.i.i.i, -4132994306676758123 ; 2 uses
  %i.gg = lshr i64 %i.gf, 47
  %i.gh = xor i64 %i.gg, %i.gf
  %i.gi = mul i64 %i.gh, -4132994306676758123
  %i.gj = xor i64 %i.gi, %.03638.i.i.i
  %i.gk = mul i64 %i.gj, -4132994306676758123
  %.0.copyload.i.i.i.1 = load i64, ptr %i.ge, align 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 16
  %i.gm = mul i64 %.0.copyload.i.i.i.1, -4132994306676758123 ; 2 uses
  %i.gn = lshr i64 %i.gm, 47
  %i.go = xor i64 %i.gn, %i.gm
  %i.gp = mul i64 %i.go, -4132994306676758123
  %i.gq = xor i64 %i.gp, %i.gk
  %i.gr = mul i64 %i.gq, -4132994306676758123
  %.0.copyload.i.i.i.2 = load i64, ptr %i.gl, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 24
  %i.gt = mul i64 %.0.copyload.i.i.i.2, -4132994306676758123 ; 2 uses
  %i.gu = lshr i64 %i.gt, 47
  %i.gv = xor i64 %i.gu, %i.gt
  %i.gw = mul i64 %i.gv, -4132994306676758123
  %i.gx = xor i64 %i.gw, %i.gr
  %i.gy = mul i64 %i.gx, -4132994306676758123
  %.0.copyload.i.i.i.3 = load i64, ptr %i.gs, align 1
  %i.gz = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 32 ; 2 uses
  %i.ha = mul i64 %.0.copyload.i.i.i.3, -4132994306676758123 ; 2 uses
  %i.hb = lshr i64 %i.ha, 47
  %i.hc = xor i64 %i.hb, %i.ha
  %i.hd = mul i64 %i.hc, -4132994306676758123
  %i.he = xor i64 %i.hd, %i.gy
  %i.hf = mul i64 %i.he, -4132994306676758123     ; 3 uses
  %.not.i.i.i.3 = icmp eq ptr %i.gz, %i.gd
  br i1 %.not.i.i.i.3, label %_ZN4pbrt10HashBufferIhEEmPKT_mm.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZN4pbrt10HashBufferIhEEmPKT_mm.exit.i:           ; preds = %.lr.ph.i.i.i
  %i.hg = lshr i64 %i.hf, 47
  %i.hh = xor i64 %i.hg, %i.hf
  %i.hi = mul i64 %i.hh, -4132994306676758123     ; 2 uses
  %i.hj = lshr i64 %i.hi, 47
  %i.hk = xor i64 %i.hj, %i.hi                    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fj, i64 32 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !70
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv151.a
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !32
  %i.hp = icmp eq i64 %i.hk, %i.ho
  br i1 %i.hp, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt10HashBufferIhEEmPKT_mm.exit.i
  %i.hq = load i32, ptr %i.fk, align 8, !tbaa !82
  %i.hr = sext i32 %i.hq to i64
  %i.hs = shl nsw i64 %i.hr, 2
  %i.ht = add nsw i64 %i.hs, %i.gb
  %i.hu = invoke noundef zeroext i1 @_ZN4pbrt10IPCChannel4SendEN4pstd4spanIKhEE(ptr noundef nonnull align 8 dereferenceable(76) %1, ptr %i.fy, i64 %i.ht)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc83:                                         ; preds = %bb.k
  br i1 %i.hu, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.noexc83
  %i.hv = load ptr, ptr %i.hl, align 8, !tbaa !70
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv151.a
  store i64 %i.hk, ptr %i.hw, align 8, !tbaa !32
  br label %bb.m

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.h, %bb.g
  %lpad.loopexit.split-lp224 = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i84 = icmp eq ptr %.sroa.096.0, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EED2Ev.exit, label %bb.n

bb.m:                                             ; preds = %bb.l, %_ZN4pbrt10HashBufferIhEEmPKT_mm.exit.i
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.hx = load ptr, ptr %i.cj, align 8, !tbaa !62 ; 2 uses
  %i.hy = load ptr, ptr %i.ci, align 8, !tbaa !72 ; 3 uses
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = ashr exact i64 %i.ib, 6
  %.not = icmp ugt i64 %i.ic, %indvars.iv.next149
  br i1 %.not, label %.lr.ph127, label %.critedge, !llvm.loop !206

.critedge:                                        ; preds = %bb.m, %_ZNKSt8functionIFvN4pbrt7Bounds2IiEEN4pstd4spanINS4_IfEEEEEEclES2_S6_.exit
  %i.id = phi ptr [ %i.fh, %_ZNKSt8functionIFvN4pbrt7Bounds2IiEEN4pstd4spanINS4_IfEEEEEEclES2_S6_.exit ], [ %i.hy, %bb.m ] ; 2 uses
  %i.ie = phi ptr [ %i.fg, %_ZNKSt8functionIFvN4pbrt7Bounds2IiEEN4pstd4spanINS4_IfEEEEEEclES2_S6_.exit ], [ %i.hx, %bb.m ] ; 2 uses
  %indvars.iv.next152.a = add nsw i64 %indvars.iv151.a, 1 ; 2 uses
  %i.if = load i32, ptr %i.dg, align 8, !tbaa !210 ; 3 uses
  %.not68 = icmp sgt i32 %i.if, %4
  br i1 %.not68, label %bb.e, label %.critedge73.loopexit, !llvm.loop !207

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ig = sub i64 %.sink.i, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.0, i64 noundef %i.ig) #26
  br label %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EED2Ev.exit

bb.o:                                             ; preds = %.noexc83
  store i8 0, ptr %0, align 8, !tbaa !54
  br label %.critedge75

.critedge73.loopexit:                             ; preds = %.critedge
  %i.ih = trunc nsw i64 %indvars.iv.next152.a to i32
  %.pre155 = load i32, ptr %i.dh, align 4, !tbaa !209
  br label %.critedge73

.critedge73:                                      ; preds = %.preheader, %.critedge73.loopexit
  %i.ii = phi i32 [ %.pre155, %.critedge73.loopexit ], [ %i.ea, %.preheader ] ; 2 uses
  %i.ij = phi ptr [ %i.id, %.critedge73.loopexit ], [ %i.eb, %.preheader ]
  %i.ik = phi ptr [ %i.ie, %.critedge73.loopexit ], [ %i.ec, %.preheader ]
  %i.il = phi i32 [ %i.if, %.critedge73.loopexit ], [ %i.ed, %.preheader ]
  %.162.lcssa = phi i32 [ %i.ih, %.critedge73.loopexit ], [ %.061133, %.preheader ]
  %.not67.not = icmp slt i32 %i.ee, %i.ii
  br i1 %.not67.not, label %.preheader, label %.critedge75, !llvm.loop !208

.critedge75:                                      ; preds = %.critedge73, %.preheader.lr.ph, %.preheader105, %bb.o
  %.not67118 = phi i1 [ false, %bb.o ], [ true, %.preheader105 ], [ true, %.preheader.lr.ph ], [ true, %.critedge73 ] ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %.sroa.096.0, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EED2Ev.exit86, label %bb.p

bb.p:                                             ; preds = %.critedge75
  %i.im = ptrtoint ptr %.sroa.096.0 to i64
  %i.in = sub i64 %.sink.i, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.0, i64 noundef %i.in) #26
  br label %_ZNSt6vectorIN4pstd4spanIfEESaIS2_EED2Ev.exit86

_ZNSt6vectorIN4pstd4spanIfEESaIS2_EED2Ev.exit:    ; preds = %bb.n, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp224

_ZNSt6vectorIN4pstd4spanIfEESaIS2_EED2Ev.exit86:  ; preds = %bb.p, %.critedge75, %_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE.exit
  %.6 = phi i1 [ false, %_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE.exit ], [ %.not67118, %.critedge75 ], [ %.not67118, %bb.p ]
  ret i1 %.6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4pbrt11DisplayItem13SendOpenImageERNS_10IPCChannelE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 4, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 1, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28   ; 9 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check42 = icmp ult i64 %i.f, 128
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.f, 120
  %n.vec = and i64 %i.f, -128                     ; 5 uses
  %i.j = getelementptr i8, ptr %i.d, i64 %n.vec   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %index ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %index ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %wide.load = load <32 x i8>, ptr %i.k, align 1, !tbaa !29
  %wide.load43 = load <32 x i8>, ptr %i.l, align 1, !tbaa !29
  %wide.load44 = load <32 x i8>, ptr %i.m, align 1, !tbaa !29
  %wide.load45 = load <32 x i8>, ptr %i.n, align 1, !tbaa !29
  %i.o = getelementptr i8, ptr %next.gep, i64 32
  %i.p = getelementptr i8, ptr %next.gep, i64 64
  %i.q = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 2, !tbaa !29
  store <32 x i8> %wide.load43, ptr %i.o, align 2, !tbaa !29
  store <32 x i8> %wide.load44, ptr %i.p, align 2, !tbaa !29
  store <32 x i8> %wide.load45, ptr %i.q, align 2, !tbaa !29
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.f, -8                     ; 4 uses
  %i.s = getelementptr i8, ptr %i.d, i64 %n.vec46 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 3 uses
  %next.gep48 = getelementptr i8, ptr %i.d, i64 %index47
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %index47
  %wide.load49 = load <8 x i8>, ptr %i.t, align 1, !tbaa !29
  store <8 x i8> %wide.load49, ptr %next.gep48, align 2, !tbaa !29
  %index.next50 = add nuw i64 %index47, 8         ; 2 uses
  %i.u = icmp eq i64 %index.next50, %n.vec46
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !214

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %i.f, %n.vec46
  br i1 %cmp.n51, label %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.ph = phi ptr [ %i.d, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.08.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1 = phi ptr [ %i.y, %.lr.ph.i ], [ %.1.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.08.i = phi i64 [ %i.x, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %.08.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29
  store i8 %i.w, ptr %.1, align 1, !tbaa !29
  %i.x = add nuw i64 %.08.i, 1                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.f
  br i1 %exitcond.not, label %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i, !llvm.loop !215

_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.2 = phi ptr [ %i.d, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %i.y, %.lr.ph.i ] ; 4 uses
  store i8 0, ptr %.2, align 1, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !58
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = lshr exact i64 %i.ag, 5                 ; 3 uses
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load <2 x i32>, ptr %i.aj, align 8, !tbaa !33
  store <2 x i32> %i.ak, ptr %i.z, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.2, i64 9
  store i32 %i.ai, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.2, i64 13 ; 3 uses
  %i.an = icmp sgt i32 %i.ai, 0
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ao = and i64 %i.ag, 68719476704
  %i.ap = icmp eq i64 %i.ao, 32
  br i1 %i.ap, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ah, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11.1
  %i.aq = and i64 %i.ag, 32
  %lcmp.mod.not = icmp eq i64 %i.aq, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.02931.epil.init = phi ptr [ %i.am, %.lr.ph.preheader ], [ %i.cf, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %indvars.iv.epil.init ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28
  %.not.i7.epil = icmp eq i64 %i.au, 0
  br i1 %.not.i7.epil, label %_ZN4pbrt12_GLOBAL__N_19SerializeEPPhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11.epil, label %.lr.ph.i9.epil

.lr.ph.i9.epil:                                   ; preds = %.lr.ph.epil.preheader, %.lr.ph.i9.epil
  %.3.epil = phi ptr [ %i.az, %.lr.ph.i9.epil ], [ %.02931.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.08.i10.epil = phi i64 [ %i.ay, %.lr.ph.i9.epil ], [ 0, %.lr.ph.epil.preheader ] ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.08.i10.epil
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !29
  store i8 %i.ax, ptr %.3.epil, align 1, !tbaa !29
  %i.ay = add nuw i64 %.08.i10.epil, 1            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.3.epil, i64 1 ; 2 uses
  %i.ba = load i64, ptr %i.at, align 8, !tbaa !28
end_hunk_0
