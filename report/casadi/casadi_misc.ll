inline.NumInlined: 1005
inline.NumDeleted: 431
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6casadi22tensor_permute_mappingERKSt6vectorIxSaIxEES4_:bb.a

.lr.ph.preheader.i.i:                             ; preds = %bb.e, %.noexc9.i.i
  %storemerge.i = phi ptr [ %i.bd, %bb.e ], [ %i.ba, %.noexc9.i.i ] ; 3 uses
  store ptr %storemerge.i, ptr %i.av, align 8, !tbaa !40, !alias.scope !127
  %i.be = ptrtoaddr ptr %storemerge.i to i64
  %i.bf = ptrtoaddr ptr %i.ax to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = add i64 %i.bg, -8                       ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 4 uses
  %i.bk = shl i64 %n.vec, 3
  %i.bl = getelementptr i8, ptr %i.ax, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bm = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !49, !noalias !127
  store <2 x i64> %step.add, ptr %i.bn, align 8, !tbaa !49, !noalias !127
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZN6casadi5rangeEx.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.029.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.sroa.010.028.i.i.ph = phi ptr [ %i.ax, %.lr.ph.preheader.i.i ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.029.i.i = phi i64 [ %i.bp, %.lr.ph.i.i ], [ %.029.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.028.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.sroa.010.028.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i64 %.029.i.i, ptr %.sroa.010.028.i.i, align 8, !tbaa !49, !noalias !127
  %i.bp = add nuw nsw i64 %.029.i.i, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.010.028.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, %storemerge.i
  br i1 %.not.i.i, label %_ZN6casadi5rangeEx.exit, label %.lr.ph.i.i, !llvm.loop !129

bb.f:                                             ; preds = %bb.c
  %i.br = icmp ugt i64 %.lcssa392, 1152921504606846975
  br i1 %i.br, label %.noexc, label %.thread175

.noexc:                                           ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #21
  unreachable

.thread175:                                       ; preds = %bb.a, %bb.f
  %.in = phi i64 [ %i.f, %bb.f ], [ 0, %bb.a ]    ; 8 uses
  %.06.lcssa.i168170177 = phi i64 [ %.lcssa392, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %i.bs = ashr exact i64 %.in, 3                  ; 11 uses
  %i.bt = shl nuw nsw i64 %.06.lcssa.i168170177, 3
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #23 ; 7 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !43
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.06.lcssa.i168170177
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !67
  store i64 0, ptr %i.bu, align 8, !tbaa !49
  %i.bx = getelementptr i8, ptr %i.bu, i64 8      ; 3 uses
  %i.by = add nsw i64 %.06.lcssa.i168170177, -1   ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.g, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.thread175
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.by, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bx, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !49
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.thread175
  %.0.i.i.i.i.i = phi ptr [ %i.ca, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bx, %.thread175 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.cb, align 8, !tbaa !40
  %i.cc = icmp eq i64 %.in, 0
  br i1 %i.cc, label %_ZN6casadi5rangeEx.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = add nsw i64 %i.bs, 1                    ; 5 uses
  %i.ce = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ce, label %bb.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i83

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #21
          to label %.noexc86 unwind label %bb.l

.noexc86:                                         ; preds = %bb.i
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i83: ; preds = %bb.h
  %.not.i.i.i.i84 = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i84)
  %i.cf = shl nuw nsw i64 %i.cd, 3                ; 2 uses
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #23
          to label %.noexc87 unwind label %bb.l   ; 15 uses

.noexc87:                                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i83
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  %i.ci = lshr i64 %.in, 3
  %i.cj = add nuw nsw i64 %i.ci, 1
  %xtraiter395 = and i64 %i.cj, 7                 ; 2 uses
  %lcmp.mod396.not = icmp eq i64 %xtraiter395, 0
  br i1 %lcmp.mod396.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.noexc87, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.cg, %.noexc87 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.noexc87 ]
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !49
  %i.ck = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter395
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !130

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc87
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.cg, %.noexc87 ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.cl = icmp ult i64 %.in, 56
  br i1 %i.cl, label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !49
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.cm, align 8, !tbaa !49
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 1, ptr %i.cn, align 8, !tbaa !49
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 1, ptr %i.co, align 8, !tbaa !49
  %i.cp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 1, ptr %i.cp, align 8, !tbaa !49
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 1, ptr %i.cq, align 8, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 1, ptr %i.cr, align 8, !tbaa !49
  %i.cs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 1, ptr %i.cs, align 8, !tbaa !49
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.ct, %i.ch
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !131

_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.cu = icmp samesign ugt i64 %i.bs, 1
  br i1 %i.cu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit
  %.pre = load i64, ptr %i.cg, align 8, !tbaa !49 ; 2 uses
  %i.cv = add nsw i64 %i.bs, -1                   ; 2 uses
  %i.cw = add nsw i64 %i.bs, -2
  %xtraiter397 = and i64 %i.cv, 3                 ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 3
  br i1 %i.cx, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter401 = and i64 %i.cv, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod399.not = icmp eq i64 %xtraiter397, 0
  br i1 %lcmp.mod399.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i64 [ %.pre, %.lr.ph.preheader ], [ %i.er, %._crit_edge.loopexit.unr-lcssa ]
  %.068201.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.et, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod400 = icmp ne i64 %xtraiter397, 0
  tail call void @llvm.assume(i1 %lcmp.mod400)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %i.cy = phi i64 [ %i.dc, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %.068201.epil = phi i64 [ %i.de, %.lr.ph.epil ], [ %.068201.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter398 = phi i64 [ %epil.iter398.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.cz = getelementptr [8 x i8], ptr %i.c, i64 %.068201.epil
  %i.da = getelementptr i8, ptr %i.cz, i64 -8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !49
  %i.dc = mul nsw i64 %i.db, %i.cy                ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.068201.epil
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !49
  %i.de = add nuw nsw i64 %.068201.epil, 1
  %epil.iter398.next = add i64 %epil.iter398, 1   ; 2 uses
  %epil.iter398.cmp.not = icmp eq i64 %epil.iter398.next, %xtraiter397
  br i1 %epil.iter398.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !132

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit
  %i.df = load ptr, ptr %2, align 8, !tbaa !43    ; 4 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !49 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !49 ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.dg
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !49 ; 4 uses
  %i.dl = sdiv i64 %.06.lcssa.i168170177, %i.dk   ; 3 uses
  %i.dm = add nsw i64 %i.bs, -1                   ; 13 uses
  %i.dn = icmp ugt i64 %i.dm, 1152921504606846975
  br i1 %i.dn, label %bb.j, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i88

bb.j:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #21
          to label %.noexc94 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit129.thread

.noexc94:                                         ; preds = %bb.j
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i88: ; preds = %._crit_edge
  %.not.i.i.i.i89 = icmp eq i64 %i.dm, 0          ; 2 uses
  br i1 %.not.i.i.i.i89, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i88
  %i.do = shl nuw nsw i64 %i.dm, 3                ; 3 uses
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #23
          to label %.noexc95 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit129.thread ; 10 uses

.noexc95:                                         ; preds = %bb.k
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dm ; 4 uses
  store i64 0, ptr %i.dp, align 8, !tbaa !49
  %i.dr = add nsw i64 %i.bs, -2                   ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.m, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i90

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i90: ; preds = %.noexc95
  %i.dt = getelementptr i8, ptr %i.dp, i64 8
  %.idx.i.i.i.i.i.i.i91 = shl nuw nsw i64 %i.dr, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dt, i8 0, i64 %.idx.i.i.i.i.i.i.i91, i1 false), !tbaa !49
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i83, %bb.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit131

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.dv = phi i64 [ %.pre, %.lr.ph.preheader.new ], [ %i.er, %.lr.ph ]
  %.068201 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.et, %.lr.ph ] ; 6 uses
  %niter402 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter402.next.3, %.lr.ph ]
  %i.dw = getelementptr [8 x i8], ptr %i.c, i64 %.068201
  %i.dx = getelementptr i8, ptr %i.dw, i64 -8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !49
  %i.dz = mul nsw i64 %i.dy, %i.dv                ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.068201
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !49
  %i.eb = add nuw nsw i64 %.068201, 1             ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.c, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 -8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !49
  %i.ef = mul nsw i64 %i.ee, %i.dz                ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.eb
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !49
  %i.eh = add nuw nsw i64 %.068201, 2             ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.c, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !49
  %i.el = mul nsw i64 %i.ek, %i.ef                ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.eh
  store i64 %i.el, ptr %i.em, align 8, !tbaa !49
  %i.en = add nuw nsw i64 %.068201, 3             ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %i.c, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 -8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !49
  %i.er = mul nsw i64 %i.eq, %i.el                ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.en
  store i64 %i.er, ptr %i.es, align 8, !tbaa !49
  %i.et = add nuw nsw i64 %.068201, 4             ; 2 uses
  %niter402.next.3 = add nuw i64 %niter402, 4     ; 2 uses
  %niter402.ncmp.3 = icmp eq i64 %niter402.next.3, %unroll_iter401
  br i1 %niter402.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !133

bb.m:                                             ; preds = %.noexc95, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i90
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #23
          to label %.noexc105 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit127.thread ; 10 uses

.noexc105:                                        ; preds = %bb.m
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.do
  %i.ew = add i64 %.in, -16                       ; 2 uses
  %i.ex = lshr i64 %i.ew, 3
  %i.ey = add nuw nsw i64 %i.ex, 1
  %xtraiter403 = and i64 %i.ey, 7                 ; 2 uses
  %lcmp.mod404.not = icmp eq i64 %xtraiter403, 0
  br i1 %lcmp.mod404.not, label %.lr.ph.i.i.i.i.i.i.i.i.i99.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i99.prol

.lr.ph.i.i.i.i.i.i.i.i.i99.prol:                  ; preds = %.noexc105, %.lr.ph.i.i.i.i.i.i.i.i.i99.prol
  %.06.i.i.i.i.i.i.i.i.i100.prol = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i.i.i.i99.prol ], [ %i.eu, %.noexc105 ] ; 2 uses
  %prol.iter405 = phi i64 [ %prol.iter405.next, %.lr.ph.i.i.i.i.i.i.i.i.i99.prol ], [ 0, %.noexc105 ]
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i100.prol, align 8, !tbaa !49
  %i.ez = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i100.prol, i64 8 ; 2 uses
  %prol.iter405.next = add i64 %prol.iter405, 1   ; 2 uses
  %prol.iter405.cmp.not = icmp eq i64 %prol.iter405.next, %xtraiter403
  br i1 %prol.iter405.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i99.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i99.prol, !llvm.loop !134

.lr.ph.i.i.i.i.i.i.i.i.i99.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i99.prol, %.noexc105
  %.06.i.i.i.i.i.i.i.i.i100.unr = phi ptr [ %i.eu, %.noexc105 ], [ %i.ez, %.lr.ph.i.i.i.i.i.i.i.i.i99.prol ]
  %i.fa = icmp ult i64 %i.ew, 56
  br i1 %i.fa, label %.lr.ph203.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i99

.lr.ph.i.i.i.i.i.i.i.i.i99:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i99.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i99
  %.06.i.i.i.i.i.i.i.i.i100 = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i.i99 ], [ %.06.i.i.i.i.i.i.i.i.i100.unr, %.lr.ph.i.i.i.i.i.i.i.i.i99.prol.loopexit ] ; 9 uses
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i100, align 8, !tbaa !49
  %i.fb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i100, i64 8
  store i64 1, ptr %i.fb, align 8, !tbaa !49
  %i.fc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i100, i64 16
  store i64 1, ptr %i.fc, align 8, !tbaa !49
  %i.fd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i100, i64 24
  store i64 1, ptr %i.fd, align 8, !tbaa !49
  %i.fe = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i100, i64 32
  store i64 1, ptr %i.fe, align 8, !tbaa !49
  %i.ff = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i100, i64 40
  store i64 1, ptr %i.ff, align 8, !tbaa !49
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i100, i64 48
  store i64 1, ptr %i.fg, align 8, !tbaa !49
  %i.fh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i100, i64 56
  store i64 1, ptr %i.fh, align 8, !tbaa !49
  %i.fi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i100, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i101.7 = icmp eq ptr %i.fi, %i.ev
  br i1 %.not.i.i.i.i.i.i.i.i.i101.7, label %.lr.ph203.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i99, !llvm.loop !131

.lr.ph203.preheader:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i99, %.lr.ph.i.i.i.i.i.i.i.i.i99.prol.loopexit
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.dm
  %i.fk = ptrtoint ptr %i.fj to i64               ; 3 uses
  %xtraiter406 = and i64 %i.dm, 1
  %i.fl = icmp eq i64 %.in, 16
  br i1 %i.fl, label %.lr.ph203.epil.preheader, label %.lr.ph203.preheader.new

.lr.ph203.preheader.new:                          ; preds = %.lr.ph203.preheader
  %unroll_iter410 = and i64 %i.dm, 1152921504606846974
  br label %.lr.ph203

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107.unr-lcssa: ; preds = %.lr.ph203
  %lcmp.mod408.not = icmp eq i64 %xtraiter406, 0
  br i1 %lcmp.mod408.not, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107, label %.lr.ph203.epil.preheader

.lr.ph203.epil.preheader:                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107.unr-lcssa, %.lr.ph203.preheader
  %.064202.epil.init = phi i64 [ 0, %.lr.ph203.preheader ], [ %i.go, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107.unr-lcssa ] ; 3 uses
  %lcmp.mod409 = trunc i64 %i.dm to i1
  tail call void @llvm.assume(i1 %lcmp.mod409)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.064202.epil.init
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !49
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !49
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.064202.epil.init
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !49
  %i.fs = load i64, ptr %i.fn, align 8, !tbaa !49
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !49
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.064202.epil.init
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !49
  br label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107.unr-lcssa, %.lr.ph203.epil.preheader
  %i.fw = shl nuw nsw i64 %i.dm, 3
  %i.fx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #23
          to label %.noexc114 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread ; 5 uses

.noexc114:                                        ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.dm
  store i64 0, ptr %i.fx, align 8, !tbaa !49
  %i.fz = add nsw i64 %i.bs, -2                   ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109: ; preds = %.noexc114
  %i.gb = getelementptr i8, ptr %i.fx, i64 8
  %.idx.i.i.i.i.i.i.i110 = shl nuw nsw i64 %i.fz, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gb, i8 0, i64 %.idx.i.i.i.i.i.i.i110, i1 false), !tbaa !49
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115

_ZNSt6vectorIxSaIxEED2Ev.exit129.thread:          ; preds = %bb.j, %bb.k
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit129

_ZNSt6vectorIxSaIxEED2Ev.exit127.thread:          ; preds = %bb.m
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph203:                                        ; preds = %.lr.ph203, %.lr.ph203.preheader.new
  %.064202 = phi i64 [ 0, %.lr.ph203.preheader.new ], [ %i.go, %.lr.ph203 ] ; 4 uses
  %niter411 = phi i64 [ 0, %.lr.ph203.preheader.new ], [ %niter411.next.1, %.lr.ph203 ]
  %i.ge = or disjoint i64 %.064202, 1             ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ge ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !49
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !49
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.064202
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !49
  %i.gk = load i64, ptr %i.gf, align 8, !tbaa !49
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !49
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.064202
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !49
  %i.go = add nuw nsw i64 %.064202, 2             ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.go ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !49
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !49
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ge
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !49
  %i.gu = load i64, ptr %i.gp, align 8, !tbaa !49
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !49
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ge
  store i64 %i.gw, ptr %i.gx, align 8, !tbaa !49
  %niter411.next.1 = add nuw i64 %niter411, 2     ; 2 uses
  %niter411.ncmp.1 = icmp eq i64 %niter411.next.1, %unroll_iter410
  br i1 %niter411.ncmp.1, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107.unr-lcssa, label %.lr.ph203, !llvm.loop !135

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115:            ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109, %.noexc114
  %i.gy = icmp sgt i64 %i.dl, 0
  br i1 %i.gy, label %.preheader198.lr.ph, label %_ZNSt6vectorIxSaIxEED2Ev.exit.thread317

_ZNSt6vectorIxSaIxEED2Ev.exit.thread317:          ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115
  %.idx = shl nuw nsw i64 %i.dm, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %.idx) #22
  br label %bb.n

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread:     ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i88
  %i.gz = icmp sgt i64 %i.dl, 0
  br i1 %i.gz, label %.preheader198.lr.ph, label %_ZNSt6vectorIxSaIxEED2Ev.exit119.thread

.preheader198.lr.ph:                              ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115
  %.sroa.14.0299 = phi ptr [ null, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread ], [ %i.fy, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115 ] ; 2 uses
  %.sroa.0134.0296 = phi ptr [ null, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread ], [ %i.fx, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115 ] ; 12 uses
  %.sroa.11.0260265295 = phi i64 [ 0, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread ], [ %i.fk, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115 ] ; 2 uses
  %.sroa.0143.0259268288 = phi ptr [ null, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread ], [ %i.eu, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115 ] ; 6 uses
  %.sroa.11154.0181258269287 = phi ptr [ null, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread ], [ %i.dq, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115 ] ; 4 uses
  %.sroa.0149.0184257271280 = phi ptr [ null, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread ], [ %i.dp, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115 ] ; 7 uses
  %i.ha = icmp sgt i64 %i.dk, 0
  %i.hb = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.hc = ptrtoint ptr %i.bu to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = ashr exact i64 %i.hd, 3                 ; 2 uses
  %i.hf = icmp samesign ugt i64 %i.bs, 2
  %3 = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 1) ; 2 uses
  %min.iters.check373 = icmp ult i64 %i.bs, 5
  %n.vec375 = and i64 %3, 1152921504606846972     ; 3 uses
  %cmp.n384 = icmp eq i64 %i.dm, %n.vec375
  %i.hg = add nsw i64 %i.dk, -1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.di, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hh = shl <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %i.hi = mul nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> %i.hh, %i.hh
  %i.hj = icmp eq i64 %.in, 24
  %i.hk = and i64 %i.bs, 2305843009213693950
  %i.hl = add nsw i64 %i.hk, -4
  %i.hm = and i64 %.in, 8
  %lcmp.mod414.not = icmp eq i64 %i.hm, 0
  %lcmp.mod415 = trunc i64 %i.bs to i1
  br label %.preheader198

.preheader198:                                    ; preds = %.preheader198.lr.ph, %._crit_edge216
  %.061218 = phi i64 [ 0, %.preheader198.lr.ph ], [ %i.js, %._crit_edge216 ]
  %.062217 = phi i64 [ 0, %.preheader198.lr.ph ], [ %.163.lcssa, %._crit_edge216 ] ; 5 uses
  br i1 %.not.i.i.i.i89, label %.preheader, label %.lr.ph206.preheader

.lr.ph206.preheader:                              ; preds = %.preheader198
  br i1 %min.iters.check373, label %.lr.ph206.preheader387, label %vector.body376

vector.body376:                                   ; preds = %.lr.ph206.preheader, %vector.body376
  %index377 = phi i64 [ %index.next382, %vector.body376 ], [ 0, %.lr.ph206.preheader ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ht, %vector.body376 ], [ zeroinitializer, %.lr.ph206.preheader ]
  %vec.phi378 = phi <2 x i64> [ %i.hu, %vector.body376 ], [ zeroinitializer, %.lr.ph206.preheader ]
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0134.0296, i64 %index377 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %wide.load = load <2 x i64>, ptr %i.hn, align 8, !tbaa !49
  %wide.load379 = load <2 x i64>, ptr %i.ho, align 8, !tbaa !49
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0143.0259268288, i64 %index377 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %wide.load380 = load <2 x i64>, ptr %i.hp, align 8, !tbaa !49
  %wide.load381 = load <2 x i64>, ptr %i.hq, align 8, !tbaa !49
  %i.hr = mul nsw <2 x i64> %wide.load380, %wide.load
  %i.hs = mul nsw <2 x i64> %wide.load381, %wide.load379
  %i.ht = add <2 x i64> %i.hr, %vec.phi           ; 2 uses
  %i.hu = add <2 x i64> %i.hs, %vec.phi378        ; 2 uses
  %index.next382 = add nuw i64 %index377, 4       ; 2 uses
  %i.hv = icmp eq i64 %index.next382, %n.vec375
  br i1 %i.hv, label %middle.block383, label %vector.body376, !llvm.loop !136

middle.block383:                                  ; preds = %vector.body376
  %bin.rdx = add <2 x i64> %i.hu, %i.ht
  %i.hw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n384, label %.preheader, label %.lr.ph206.preheader387

.lr.ph206.preheader387:                           ; preds = %.lr.ph206.preheader, %middle.block383
  %.059205.ph = phi i64 [ 0, %.lr.ph206.preheader ], [ %n.vec375, %middle.block383 ]
  %.060204.ph = phi i64 [ 0, %.lr.ph206.preheader ], [ %i.hw, %middle.block383 ]
  br label %.lr.ph206

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %._crit_edge216
  %i.hx = ptrtoint ptr %.sroa.14.0299 to i64
  %i.hy = ptrtoint ptr %.sroa.0134.0296 to i64
  %i.hz = sub i64 %i.hx, %i.hy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0134.0296, i64 noundef %i.hz) #22
  %.not.i.i.i116 = icmp eq ptr %.sroa.0143.0259268288, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIxSaIxEED2Ev.exit117, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.thread317, %_ZNSt6vectorIxSaIxEED2Ev.exit
  %.sroa.0149.0184257271282328 = phi ptr [ %i.dp, %_ZNSt6vectorIxSaIxEED2Ev.exit.thread317 ], [ %.sroa.0149.0184257271280, %_ZNSt6vectorIxSaIxEED2Ev.exit ]
  %.sroa.11154.0181258269284327 = phi ptr [ %i.dq, %_ZNSt6vectorIxSaIxEED2Ev.exit.thread317 ], [ %.sroa.11154.0181258269287, %_ZNSt6vectorIxSaIxEED2Ev.exit ]
  %.sroa.0143.0259268290326 = phi ptr [ %i.eu, %_ZNSt6vectorIxSaIxEED2Ev.exit.thread317 ], [ %.sroa.0143.0259268288, %_ZNSt6vectorIxSaIxEED2Ev.exit ] ; 2 uses
  %.sroa.11.0260265292325 = phi i64 [ %i.fk, %_ZNSt6vectorIxSaIxEED2Ev.exit.thread317 ], [ %.sroa.11.0260265295, %_ZNSt6vectorIxSaIxEED2Ev.exit ]
  %i.ia = ptrtoint ptr %.sroa.0143.0259268290326 to i64
  %i.ib = sub i64 %.sroa.11.0260265292325, %i.ia
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.0259268290326, i64 noundef %i.ib) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit117

_ZNSt6vectorIxSaIxEED2Ev.exit117:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.n
  %.sroa.0149.0184257271281316 = phi ptr [ %.sroa.0149.0184257271282328, %bb.n ], [ %.sroa.0149.0184257271280, %_ZNSt6vectorIxSaIxEED2Ev.exit ] ; 3 uses
  %.sroa.11154.0181258269285315 = phi ptr [ %.sroa.11154.0181258269284327, %bb.n ], [ %.sroa.11154.0181258269287, %_ZNSt6vectorIxSaIxEED2Ev.exit ]
  %.not.i.i.i118 = icmp eq ptr %.sroa.0149.0184257271281316, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIxSaIxEED2Ev.exit119.thread, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit117
  %i.ic = ptrtoint ptr %.sroa.11154.0181258269285315 to i64
  %i.id = ptrtoint ptr %.sroa.0149.0184257271281316 to i64
  %i.ie = sub i64 %i.ic, %i.id
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0149.0184257271281316, i64 noundef %i.ie) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit119.thread

_ZNSt6vectorIxSaIxEED2Ev.exit119.thread:          ; preds = %bb.o, %_ZNSt6vectorIxSaIxEED2Ev.exit117, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread
  %.idx350 = shl nuw nsw i64 %i.cd, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %.idx350) #22
  br label %_ZN6casadi5rangeEx.exit

_ZNSt6vectorIxSaIxEED2Ev.exit125.thread:          ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.preheader:                                       ; preds = %.lr.ph206, %middle.block383, %.preheader198
  %.060.lcssa = phi i64 [ 0, %.preheader198 ], [ %i.hw, %middle.block383 ], [ %i.iy, %.lr.ph206 ] ; 3 uses
  br i1 %i.ha, label %.lr.ph210.preheader, label %._crit_edge211

.lr.ph210.preheader:                              ; preds = %.preheader
  %i.ig = tail call i64 @llvm.usub.sat.i64(i64 %i.he, i64 %.062217) ; 2 uses
  %i.ih = tail call i64 @llvm.umin.i64(i64 %i.ig, i64 %i.hg)
  %i.ii = add i64 %i.ih, 1                        ; 3 uses
  %min.iters.check357 = icmp ult i64 %i.ii, 5
  br i1 %min.iters.check357, label %.lr.ph210.preheader386, label %vector.ph358

.lr.ph210.preheader386:                           ; preds = %vector.body362, %.lr.ph210.preheader
  %.058209.ph = phi i64 [ 0, %.lr.ph210.preheader ], [ %n.vec359, %vector.body362 ]
  %.1208.ph = phi i64 [ %.060.lcssa, %.lr.ph210.preheader ], [ %i.in, %vector.body362 ]
  %.163207.ph = phi i64 [ %.062217, %.lr.ph210.preheader ], [ %i.io, %vector.body362 ]
  br label %.lr.ph210

vector.ph358:                                     ; preds = %.lr.ph210.preheader
  %i.ij = and i64 %i.ii, 3                        ; 2 uses
  %i.ik = icmp eq i64 %i.ij, 0
  %i.il = select i1 %i.ik, i64 4, i64 %i.ij
  %n.vec359 = sub i64 %i.ii, %i.il                ; 4 uses
  %i.im = mul i64 %n.vec359, %i.di
  %i.in = add i64 %.060.lcssa, %i.im
  %i.io = add i64 %.062217, %n.vec359
  %broadcast.splatinsert360 = insertelement <2 x i64> poison, i64 %.060.lcssa, i64 0
  %broadcast.splat361 = shufflevector <2 x i64> %broadcast.splatinsert360, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat361, %i.hi
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.062217
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph358
  %index363 = phi i64 [ 0, %vector.ph358 ], [ %index.next366, %vector.body362 ] ; 2 uses
  %vec.ind364 = phi <2 x i64> [ %induction, %vector.ph358 ], [ %vec.ind.next367.reass, %vector.body362 ] ; 3 uses
  %step.add365 = add nsw <2 x i64> %vec.ind364, %i.hh
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %index363 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <2 x i64> %vec.ind364, ptr %i.iq, align 8, !tbaa !49
  store <2 x i64> %step.add365, ptr %i.ir, align 8, !tbaa !49
  %index.next366 = add nuw i64 %index363, 4       ; 2 uses
  %vec.ind.next367.reass = add <2 x i64> %vec.ind364, %invariant.op
  %i.is = icmp eq i64 %index.next366, %n.vec359
  br i1 %i.is, label %.lr.ph210.preheader386, label %vector.body362, !llvm.loop !137

.lr.ph206:                                        ; preds = %.lr.ph206.preheader387, %.lr.ph206
  %.059205 = phi i64 [ %i.iz, %.lr.ph206 ], [ %.059205.ph, %.lr.ph206.preheader387 ] ; 3 uses
  %.060204 = phi i64 [ %i.iy, %.lr.ph206 ], [ %.060204.ph, %.lr.ph206.preheader387 ]
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0134.0296, i64 %.059205
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !49
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0143.0259268288, i64 %.059205
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !49
  %i.ix = mul nsw i64 %i.iw, %i.iu
  %i.iy = add nsw i64 %i.ix, %.060204             ; 2 uses
  %i.iz = add nuw nsw i64 %.059205, 1             ; 2 uses
  %exitcond226.not = icmp eq i64 %i.iz, %3
  br i1 %exitcond226.not, label %.preheader, label %.lr.ph206, !llvm.loop !138

._crit_edge211:                                   ; preds = %bb.q, %.preheader
  %.163.lcssa = phi i64 [ %.062217, %.preheader ], [ %i.jd, %bb.q ]
  %i.ja = load i64, ptr %.sroa.0134.0296, align 8, !tbaa !49
  %i.jb = add nsw i64 %i.ja, 1
  store i64 %i.jb, ptr %.sroa.0134.0296, align 8, !tbaa !49
  br i1 %i.hf, label %.lr.ph215.preheader, label %._crit_edge216

.lr.ph215.preheader:                              ; preds = %._crit_edge211
  br i1 %i.hj, label %.lr.ph215.epil.preheader, label %.lr.ph215

.lr.ph210:                                        ; preds = %.lr.ph210.preheader386, %bb.q
  %.058209 = phi i64 [ %i.jf, %bb.q ], [ %.058209.ph, %.lr.ph210.preheader386 ] ; 2 uses
  %.1208 = phi i64 [ %i.je, %bb.q ], [ %.1208.ph, %.lr.ph210.preheader386 ] ; 2 uses
  %.163207 = phi i64 [ %i.jd, %bb.q ], [ %.163207.ph, %.lr.ph210.preheader386 ] ; 3 uses
  %exitcond227.not = icmp eq i64 %.058209, %i.ig
  br i1 %exitcond227.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph210
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.39, i64 noundef %.163207, i64 noundef %i.he) #21
          to label %.noexc123 unwind label %bb.r

.noexc123:                                        ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %.lr.ph210
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.163207
  %i.jd = add nuw nsw i64 %.163207, 1             ; 2 uses
  store i64 %.1208, ptr %i.jc, align 8, !tbaa !49
  %i.je = add nsw i64 %.1208, %i.di
  %i.jf = add nuw nsw i64 %.058209, 1             ; 2 uses
  %exitcond228.not = icmp eq i64 %i.jf, %i.dk
  br i1 %exitcond228.not, label %._crit_edge211, label %.lr.ph210, !llvm.loop !139

bb.r:                                             ; preds = %bb.p
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %.sroa.0134.0296, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIxSaIxEED2Ev.exit125, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jh = ptrtoint ptr %.sroa.14.0299 to i64
  %i.ji = ptrtoint ptr %.sroa.0134.0296 to i64
  %i.jj = sub i64 %i.jh, %i.ji
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0134.0296, i64 noundef %i.jj) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit125

._crit_edge216.loopexit.unr-lcssa:                ; preds = %bb.w
  br i1 %lcmp.mod414.not, label %._crit_edge216, label %.lr.ph215.epil.preheader

.lr.ph215.epil.preheader:                         ; preds = %._crit_edge216.loopexit.unr-lcssa, %.lr.ph215.preheader
  %.0213.epil.init = phi i64 [ 0, %.lr.ph215.preheader ], [ %i.kk, %._crit_edge216.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod415)
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0134.0296, i64 %.0213.epil.init ; 3 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !49
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0149.0184257271280, i64 %.0213.epil.init
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !49
  %i.jo = icmp eq i64 %i.jl, %i.jn
  br i1 %i.jo, label %bb.t, label %._crit_edge216

bb.t:                                             ; preds = %.lr.ph215.epil.preheader
  store i64 0, ptr %i.jk, align 8, !tbaa !49
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !49
  %i.jr = add nsw i64 %i.jq, 1
  store i64 %i.jr, ptr %i.jp, align 8, !tbaa !49
  br label %._crit_edge216

._crit_edge216:                                   ; preds = %._crit_edge216.loopexit.unr-lcssa, %bb.t, %.lr.ph215.epil.preheader, %._crit_edge211
  %i.js = add nuw nsw i64 %.061218, 1             ; 2 uses
  %exitcond230.not = icmp eq i64 %i.js, %i.dl
  br i1 %exitcond230.not, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %.preheader198, !llvm.loop !140

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %bb.w
  %.0213 = phi i64 [ %i.kk, %bb.w ], [ 0, %.lr.ph215.preheader ] ; 4 uses
  %niter417 = phi i64 [ %niter417.next.1, %bb.w ], [ 0, %.lr.ph215.preheader ] ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0134.0296, i64 %.0213 ; 3 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !49
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0149.0184257271280, i64 %.0213
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !49
  %i.jx = icmp eq i64 %i.ju, %i.jw
  br i1 %i.jx, label %bb.u, label %.lr.ph215.1

bb.u:                                             ; preds = %.lr.ph215
  store i64 0, ptr %i.jt, align 8, !tbaa !49
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !49
  %i.ka = add nsw i64 %i.jz, 1
  store i64 %i.ka, ptr %i.jy, align 8, !tbaa !49
  br label %.lr.ph215.1

.lr.ph215.1:                                      ; preds = %.lr.ph215, %bb.u
  %i.kb = or disjoint i64 %.0213, 1               ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0134.0296, i64 %i.kb ; 3 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !49
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0149.0184257271280, i64 %i.kb
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !49
  %i.kg = icmp eq i64 %i.kd, %i.kf
  br i1 %i.kg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph215.1
  store i64 0, ptr %i.kc, align 8, !tbaa !49
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !49
  %i.kj = add nsw i64 %i.ki, 1
  store i64 %i.kj, ptr %i.kh, align 8, !tbaa !49
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph215.1
  %i.kk = add nuw nsw i64 %.0213, 2               ; 2 uses
  %niter417.next.1 = add i64 %niter417, 2
  %niter417.ncmp.1 = icmp eq i64 %niter417, %i.hl
  br i1 %niter417.ncmp.1, label %._crit_edge216.loopexit.unr-lcssa, label %.lr.ph215, !llvm.loop !141

_ZNSt6vectorIxSaIxEED2Ev.exit125:                 ; preds = %bb.s, %bb.r
  %.not.i.i.i126 = icmp eq ptr %.sroa.0143.0259268288, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIxSaIxEED2Ev.exit127, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread, %_ZNSt6vectorIxSaIxEED2Ev.exit125
  %.pn345 = phi { ptr, i32 } [ %i.if, %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread ], [ %i.jg, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ]
  %.sroa.11.0260266344 = phi i64 [ %i.fk, %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread ], [ %.sroa.11.0260265295, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ]
  %.sroa.0143.0259267343 = phi ptr [ %i.eu, %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread ], [ %.sroa.0143.0259268288, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ] ; 2 uses
  %.sroa.11154.0181258270341 = phi ptr [ %i.dq, %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread ], [ %.sroa.11154.0181258269287, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ]
  %.sroa.0149.0184257272339 = phi ptr [ %i.dp, %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread ], [ %.sroa.0149.0184257271280, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ]
  %i.kl = ptrtoint ptr %.sroa.0143.0259267343 to i64
  %i.km = sub i64 %.sroa.11.0260266344, %i.kl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.0259267343, i64 noundef %i.km) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit127

_ZNSt6vectorIxSaIxEED2Ev.exit127:                 ; preds = %bb.x, %_ZNSt6vectorIxSaIxEED2Ev.exit125
  %.pn346 = phi { ptr, i32 } [ %.pn345, %bb.x ], [ %i.jg, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ] ; 2 uses
  %.sroa.11154.0181258270342 = phi ptr [ %.sroa.11154.0181258270341, %bb.x ], [ %.sroa.11154.0181258269287, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ]
  %.sroa.0149.0184257272340 = phi ptr [ %.sroa.0149.0184257272339, %bb.x ], [ %.sroa.0149.0184257271280, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ] ; 2 uses
  %.not.i.i.i128 = icmp eq ptr %.sroa.0149.0184257272340, null
  br i1 %.not.i.i.i128, label %_ZNSt6vectorIxSaIxEED2Ev.exit129, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit127.thread, %_ZNSt6vectorIxSaIxEED2Ev.exit127
  %.pn.pn192 = phi { ptr, i32 } [ %i.gd, %_ZNSt6vectorIxSaIxEED2Ev.exit127.thread ], [ %.pn346, %_ZNSt6vectorIxSaIxEED2Ev.exit127 ]
  %.sroa.11154.0180191 = phi ptr [ %i.dq, %_ZNSt6vectorIxSaIxEED2Ev.exit127.thread ], [ %.sroa.11154.0181258270342, %_ZNSt6vectorIxSaIxEED2Ev.exit127 ]
  %.sroa.0149.0183190 = phi ptr [ %i.dp, %_ZNSt6vectorIxSaIxEED2Ev.exit127.thread ], [ %.sroa.0149.0184257272340, %_ZNSt6vectorIxSaIxEED2Ev.exit127 ] ; 2 uses
  %i.kn = ptrtoint ptr %.sroa.11154.0180191 to i64
  %i.ko = ptrtoint ptr %.sroa.0149.0183190 to i64
  %i.kp = sub i64 %i.kn, %i.ko
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0149.0183190, i64 noundef %i.kp) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit129

_ZNSt6vectorIxSaIxEED2Ev.exit129:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit127, %bb.y, %_ZNSt6vectorIxSaIxEED2Ev.exit129.thread
  %.pn.pn.pn196 = phi { ptr, i32 } [ %i.gc, %_ZNSt6vectorIxSaIxEED2Ev.exit129.thread ], [ %.pn.pn192, %bb.y ], [ %.pn346, %_ZNSt6vectorIxSaIxEED2Ev.exit127 ]
  %.idx351 = shl nuw nsw i64 %i.cd, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %.idx351) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit131

_ZNSt6vectorIxSaIxEED2Ev.exit131:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit129, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.du, %bb.l ], [ %.pn.pn.pn196, %_ZNSt6vectorIxSaIxEED2Ev.exit129 ]
  %i.kq = load ptr, ptr %0, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i132 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIxSaIxEED2Ev.exit133, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit131
  %i.kr = load ptr, ptr %i.bw, align 8, !tbaa !67
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %i.kq to i64
  %i.ku = sub i64 %i.ks, %i.kt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.ku) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit133

_ZN6casadi5rangeEx.exit:                          ; preds = %.lr.ph.i.i, %middle.block, %_ZNSt6vectorIxSaIxEED2Ev.exit119.thread, %bb.g, %bb.b
  ret void

_ZNSt6vectorIxSaIxEED2Ev.exit133:                 ; preds = %bb.z, %_ZNSt6vectorIxSaIxEED2Ev.exit131
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN6casadi10get_bvec_tERSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142
  %i.d = icmp eq ptr %i.a, %i.c
  %spec.select = select i1 %i.d, ptr null, ptr %i.a
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN6casadi10get_bvec_tERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142
  %i.d = icmp eq ptr %i.a, %i.c
  %spec.select = select i1 %i.d, ptr null, ptr %i.a
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
end_hunk_0
