Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/dispersioncorrection?download=true
inline.NumInlined: 318
inline.NumDeleted: 199
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN20DispersionCorrection14TopologyParamsC2ERK10gmx_mtop_tRK10t_inputrecb:bb.a
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !134

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.an = sub nsw i64 %indvars.iv.ph, %i.x
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.ae
  %invariant.op582 = add nuw nsw i64 2, %i.ae
  %invariant.op584 = add nuw nsw i64 3, %i.ae
  br label %scalar.ph

vector.ph:                                        ; preds = %.preheader281
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ap = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %i.aq = shl nuw nsw <8 x i64> %i.ap, splat (i64 1) ; 2 uses
  %i.ar = extractelement <8 x i64> %i.aq, i64 0
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ar
  %wide.vec = load <16 x float>, ptr %i.as, align 4, !tbaa !111, !alias.scope !211
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.w, <8 x i64> %i.aq ; 2 uses
  %i.at = extractelement <8 x ptr> %wide.gep, i64 0
  %wide.vec531 = load <16 x float>, ptr %i.at, align 4, !tbaa !111, !alias.scope !212, !noalias !211
  %strided.vec532 = shufflevector <16 x float> %wide.vec531, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.au = fsub <8 x float> %strided.vec532, %strided.vec
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.au, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !111, !alias.scope !212, !noalias !211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %scalar.ph.preheader, label %vector.body, !llvm.loop !138

._crit_edge291.split:                             ; preds = %._crit_edge, %.preheader282
  %i.aw = load ptr, ptr %5, align 8, !tbaa !216   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge291.split
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !217
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge291.split, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

._crit_edge:                                      ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 2 uses
  %exitcond429.not = icmp eq i64 %indvars.iv.next426, %i.x
  br i1 %exitcond429.not, label %._crit_edge291.split, label %.preheader281, !llvm.loop !139

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.bd = add nuw nsw i64 %indvars.iv, %i.ae
  %i.be = shl nuw nsw i64 %i.bd, 1                ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !111
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.be ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !111
  %i.bj = fsub float %i.bi, %i.bg
  store float %i.bj, ptr %i.bh, align 4, !tbaa !111
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op
  %i.bk = shl nuw nsw i64 %.reass, 1              ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !111
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bk ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !111
  %i.bp = fsub float %i.bo, %i.bm
  store float %i.bp, ptr %i.bn, align 4, !tbaa !111
  %.reass583 = add nuw nsw i64 %indvars.iv, %invariant.op582
  %i.bq = shl nuw nsw i64 %.reass583, 1           ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !111
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bq ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !111
  %i.bv = fsub float %i.bu, %i.bs
  store float %i.bv, ptr %i.bt, align 4, !tbaa !111
  %.reass585 = add nuw nsw i64 %indvars.iv, %invariant.op584
  %i.bw = shl nuw nsw i64 %.reass585, 1           ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !111
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bw ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !111
  %i.cb = fsub float %i.ca, %i.by
  store float %i.cb, ptr %i.bz, align 4, !tbaa !111
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.x
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !140

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !206 ; 3 uses
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cg
  invoke void @_Z27makeNonBondedParameterListsibN3gmx8ArrayRefIK9t_iparamsEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.53") align 8 %6, i32 noundef %i.b, i1 noundef zeroext false, ptr %i.cc, ptr %i.ch, i1 noundef zeroext %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ci = load ptr, ptr %4, align 16, !tbaa !216  ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 16, !tbaa !217
  %i.cl = load <2 x ptr>, ptr %6, align 16, !tbaa !218
  store <2 x ptr> %i.cl, ptr %4, align 16, !tbaa !218
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 16, !tbaa !217
  store ptr %i.cn, ptr %i.cj, align 16, !tbaa !217
  %.not.i.i.i.i.i = icmp eq ptr %i.ci, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit238, label %_ZNSt6vectorIfSaIfEEaSEOS1_.exit

_ZNSt6vectorIfSaIfEEaSEOS1_.exit:                 ; preds = %bb.f
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = ptrtoint ptr %i.ci to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cq) #17
  %.pr = load ptr, ptr %6, align 16, !tbaa !216   ; 3 uses
  %.not.i.i.i237 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIfSaIfEED2Ev.exit238, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEEaSEOS1_.exit
  %i.cr = load ptr, ptr %i.cm, align 16, !tbaa !217
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %.pr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cu) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit238

_ZNSt6vectorIfSaIfEED2Ev.exit238:                 ; preds = %bb.f, %_ZNSt6vectorIfSaIfEEaSEOS1_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit238, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 420
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.da = sext i32 %i.b to i64                    ; 3 uses
  %i.db = icmp slt i32 %i.b, 0
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  %i.dc = shl nuw nsw i64 %i.da, 2
  %i.dd = add nsw i64 %i.da, -1                   ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dd, 2
  %.not519 = icmp eq i32 %i.b, 0
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dj = zext i32 %i.b to i64                    ; 9 uses
  %i.dk = add nsw i64 %i.dj, -1                   ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.ar
  %i.dl = load ptr, ptr %4, align 16, !tbaa !216  ; 3 uses
  %.not.i.i.i239 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i239, label %_ZNSt6vectorIfSaIfEED2Ev.exit240, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dn = load ptr, ptr %i.dm, align 16, !tbaa !217
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit240

_ZNSt6vectorIfSaIfEED2Ev.exit240:                 ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.l:                                             ; preds = %bb.i, %bb.ar
  %i.dr = phi i1 [ true, %bb.i ], [ false, %bb.ar ]
  %indvars.iv481 = phi i64 [ 0, %bb.i ], [ 1, %bb.ar ] ; 4 uses
  %i.ds = load i32, ptr %i.cx, align 4, !tbaa !219
  %.off = add i32 %i.ds, -7
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.ah, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dt = load i32, ptr %i.cy, align 8, !tbaa !220 ; 2 uses
  store i32 %i.dt, ptr %0, align 4, !tbaa !221
  %i.du = sitofp i32 %i.dt to double
  %i.dv = fmul nnan double %i.du, 5.000000e-01
  %i.dw = fptrunc double %i.dv to float
  store float %i.dw, ptr %i.cz, align 4, !tbaa !222
  br i1 %i.db, label %bb.n, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #19
          to label %.noexc241 unwind label %.loopexit ; 5 uses

.noexc241:                                        ; preds = %bb.o
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.da ; 2 uses
  store i32 0, ptr %i.dx, align 4, !tbaa !223
  br i1 %i.de, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc241
  %i.dz = getelementptr i8, ptr %i.dx, i64 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.dz, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !223
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc241, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.dy, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.dy, %.noexc241 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0267.0 = phi ptr [ %i.dx, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.dx, %.noexc241 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %i.ea = trunc nuw nsw i64 %indvars.iv481 to i32
  invoke void @_Z24gmx_mtop_count_atomtypesRK10gmx_mtop_tiPi(ptr noundef nonnull align 8 dereferenceable(768) %1, i32 noundef %i.ea, ptr noundef %.sroa.0267.0)
          to label %.preheader280 unwind label %bb.t

.preheader280:                                    ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  br i1 %.not519, label %._crit_edge302, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader280
  %i.eb = load ptr, ptr %4, align 16              ; 6 uses
  br i1 %3, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.split.us.us
  %indvars.iv440 = phi i64 [ %indvars.iv.next441, %.split.us.us ], [ 0, %.preheader.lr.ph ] ; 10 uses
  %.0187300.us = phi i64 [ %.lcssa539, %.split.us.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.0198298.us = phi double [ %.2200.us.us.lcssa, %.split.us.us ], [ 0.000000e+00, %.preheader.lr.ph ] ; 2 uses
  %i.ec = sub nsw i64 %i.dj, %indvars.iv440
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0267.0, i64 %indvars.iv440
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !223
  %i.ef = sext i32 %i.ee to i64                   ; 4 uses
  %i.eg = add nsw i64 %i.ef, -1
  %i.eh = mul nsw i64 %i.eg, %i.ef
  %i.ei = sdiv i64 %i.eh, 2                       ; 4 uses
  %i.ej = mul nuw nsw i64 %indvars.iv440, %i.dj   ; 3 uses
  %lcmp.mod556.not = trunc i64 %i.ec to i1
  br i1 %lcmp.mod556.not, label %.prol.loopexit554.unr-lcssa, label %.prol.loopexit554

.prol.loopexit554.unr-lcssa:                      ; preds = %.preheader.us
  %i.ek = sitofp i64 %i.ei to float
  %i.el = add nuw nsw i64 %indvars.iv440, %i.ej
  %.idx506.prol = mul nuw nsw i64 %i.el, 12
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx506.prol
  %i.en = load float, ptr %i.em, align 4, !tbaa !111
  %i.eo = fmul float %i.en, %i.ek
  %.pn230.in.us.us.prol = fpext float %i.eo to double
  %.pn230.us.us.prol = fdiv double %.pn230.in.us.us.prol, 6.000000e+00
  %.2200.us.us.prol = fadd double %.0198298.us, %.pn230.us.us.prol ; 2 uses
  %i.ep = add nsw i64 %i.ei, %.0187300.us         ; 2 uses
  %indvars.iv.next443.prol = add nuw nsw i64 %indvars.iv440, 1
  br label %.prol.loopexit554

.prol.loopexit554:                                ; preds = %.prol.loopexit554.unr-lcssa, %.preheader.us
  %.2200.us.us.lcssa.unr = phi double [ poison, %.preheader.us ], [ %.2200.us.us.prol, %.prol.loopexit554.unr-lcssa ]
  %.lcssa539.unr = phi i64 [ poison, %.preheader.us ], [ %i.ep, %.prol.loopexit554.unr-lcssa ]
  %indvars.iv442.unr = phi i64 [ %indvars.iv440, %.preheader.us ], [ %indvars.iv.next443.prol, %.prol.loopexit554.unr-lcssa ]
  %.1188294.us.us.unr = phi i64 [ %.0187300.us, %.preheader.us ], [ %i.ep, %.prol.loopexit554.unr-lcssa ]
  %.1199292.us.us.unr = phi double [ %.0198298.us, %.preheader.us ], [ %.2200.us.us.prol, %.prol.loopexit554.unr-lcssa ]
  %i.eq = icmp eq i64 %i.dk, %indvars.iv440
  br i1 %i.eq, label %.split.us.us, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.prol.loopexit554, %bb.s
  %indvars.iv442 = phi i64 [ %indvars.iv.next443.1, %bb.s ], [ %indvars.iv442.unr, %.prol.loopexit554 ] ; 5 uses
  %.1188294.us.us = phi i64 [ %i.fk, %bb.s ], [ %.1188294.us.us.unr, %.prol.loopexit554 ]
  %.1199292.us.us = phi double [ %.2200.us.us.1, %bb.s ], [ %.1199292.us.us.unr, %.prol.loopexit554 ]
  %.not.us.us = icmp eq i64 %indvars.iv440, %indvars.iv442
  br i1 %.not.us.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.us.new
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0267.0, i64 %indvars.iv442
  %i.es = load i32, ptr %i.er, align 4, !tbaa !223
  %i.et = sext i32 %i.es to i64
  %i.eu = mul nsw i64 %i.et, %i.ef
  br label %bb.q

bb.q:                                             ; preds = %.preheader.us.new, %bb.p
  %.0179.us.us = phi i64 [ %i.eu, %bb.p ], [ %i.ei, %.preheader.us.new ] ; 2 uses
  %i.ev = sitofp i64 %.0179.us.us to float
  %i.ew = add nuw nsw i64 %indvars.iv442, %i.ej
  %.idx506 = mul nuw nsw i64 %i.ew, 12
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx506
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !111
  %i.ez = fmul float %i.ey, %i.ev
  %.pn230.in.us.us = fpext float %i.ez to double
  %.pn230.us.us = fdiv double %.pn230.in.us.us, 6.000000e+00
  %.2200.us.us = fadd double %.1199292.us.us, %.pn230.us.us
  %i.fa = add nsw i64 %.0179.us.us, %.1188294.us.us
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 3 uses
  %.not.us.us.1 = icmp eq i64 %indvars.iv440, %indvars.iv.next443
  br i1 %.not.us.us.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0267.0, i64 %indvars.iv.next443
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !223
  %i.fd = sext i32 %i.fc to i64
  %i.fe = mul nsw i64 %i.fd, %i.ef
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0179.us.us.1 = phi i64 [ %i.fe, %bb.r ], [ %i.ei, %bb.q ] ; 2 uses
  %i.ff = sitofp i64 %.0179.us.us.1 to float
  %i.fg = add nuw nsw i64 %indvars.iv.next443, %i.ej
  %.idx506.1 = mul nuw nsw i64 %i.fg, 12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx506.1
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !111
  %i.fj = fmul float %i.fi, %i.ff
  %.pn230.in.us.us.1 = fpext float %i.fj to double
  %.pn230.us.us.1 = fdiv double %.pn230.in.us.us.1, 6.000000e+00
  %.2200.us.us.1 = fadd double %.2200.us.us, %.pn230.us.us.1 ; 2 uses
  %i.fk = add nsw i64 %.0179.us.us.1, %i.fa       ; 2 uses
  %indvars.iv.next443.1 = add nuw nsw i64 %indvars.iv442, 2 ; 2 uses
  %exitcond446.not.1 = icmp eq i64 %indvars.iv.next443.1, %i.dj
  br i1 %exitcond446.not.1, label %.split.us.us, label %.preheader.us.new, !llvm.loop !141

.split.us.us:                                     ; preds = %bb.s, %.prol.loopexit554
  %.2200.us.us.lcssa = phi double [ %.2200.us.us.lcssa.unr, %.prol.loopexit554 ], [ %.2200.us.us.1, %bb.s ] ; 2 uses
  %.lcssa539 = phi i64 [ %.lcssa539.unr, %.prol.loopexit554 ], [ %i.fk, %bb.s ] ; 2 uses
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %exitcond449.not = icmp eq i64 %indvars.iv.next441, %i.dj
  br i1 %exitcond449.not, label %._crit_edge302.loopexit, label %.preheader.us, !llvm.loop !142

.preheader:                                       ; preds = %.preheader.lr.ph, %.split
  %indvars.iv430 = phi i64 [ %indvars.iv.next431, %.split ], [ 0, %.preheader.lr.ph ] ; 10 uses
  %.0187300 = phi i64 [ %.lcssa, %.split ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.fl = phi <2 x double> [ %.lcssa538, %.split ], [ zeroinitializer, %.preheader.lr.ph ] ; 2 uses
  %i.fm = sub nsw i64 %i.dj, %indvars.iv430
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0267.0, i64 %indvars.iv430
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !223
  %i.fp = sext i32 %i.fo to i64                   ; 4 uses
  %i.fq = add nsw i64 %i.fp, -1
  %i.fr = mul nsw i64 %i.fq, %i.fp
  %i.fs = sdiv i64 %i.fr, 2                       ; 4 uses
  %i.ft = mul nuw nsw i64 %indvars.iv430, %i.dj   ; 3 uses
  %lcmp.mod551.not = trunc i64 %i.fm to i1
  br i1 %lcmp.mod551.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader
  %i.fu = sitofp i64 %i.fs to float
  %i.fv = add nuw nsw i64 %indvars.iv430, %i.ft
  %.idx.prol = shl nuw nsw i64 %i.fv, 3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.prol
  %i.fx = load <2 x float>, ptr %i.fw, align 4, !tbaa !111
  %i.fy = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = fmul <2 x float> %i.fx, %i.fz
  %i.gb = fpext <2 x float> %i.ga to <2 x double>
  %i.gc = fdiv <2 x double> %i.gb, <double 6.000000e+00, double 1.200000e+01>
  %i.gd = fadd <2 x double> %i.fl, %i.gc          ; 2 uses
  %i.ge = add nsw i64 %i.fs, %.0187300            ; 2 uses
  %indvars.iv.next433.prol = add nuw nsw i64 %indvars.iv430, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader
  %.lcssa538.unr = phi <2 x double> [ poison, %.preheader ], [ %i.gd, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %.preheader ], [ %i.ge, %.prol.loopexit.unr-lcssa ]
  %indvars.iv432.unr = phi i64 [ %indvars.iv430, %.preheader ], [ %indvars.iv.next433.prol, %.prol.loopexit.unr-lcssa ]
  %.1188294.unr = phi i64 [ %.0187300, %.preheader ], [ %i.ge, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x double> [ %i.fl, %.preheader ], [ %i.gd, %.prol.loopexit.unr-lcssa ]
  %i.gf = icmp eq i64 %i.dk, %indvars.iv430
  br i1 %i.gf, label %.split, label %.preheader.new

._crit_edge302.loopexit:                          ; preds = %.split.us.us
  %i.gg = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.2200.us.us.lcssa, i64 0
  br label %._crit_edge302

._crit_edge302:                                   ; preds = %.split, %._crit_edge302.loopexit, %.preheader280
  %.0187.lcssa = phi i64 [ 0, %.preheader280 ], [ %.lcssa539, %._crit_edge302.loopexit ], [ %.lcssa, %.split ] ; 2 uses
  %i.gh = phi <2 x double> [ zeroinitializer, %.preheader280 ], [ %i.gg, %._crit_edge302.loopexit ], [ %.lcssa538, %.split ] ; 2 uses
  %i.gi = load ptr, ptr %i.df, align 8, !tbaa !224 ; 2 uses
  %i.gj = load ptr, ptr %i.dg, align 8, !tbaa !224 ; 2 uses
  %.not278336 = icmp eq ptr %i.gi, %i.gj
  br i1 %.not278336, label %._crit_edge343, label %.lr.ph342

.lr.ph342:                                        ; preds = %._crit_edge302
  %i.gk = load ptr, ptr %i.dh, align 8, !tbaa !225
  %8 = trunc nuw i64 %indvars.iv481 to i1
  %.0.in.in.v.i = select i1 %8, i64 18, i64 16
  %i.gl = load ptr, ptr %4, align 16              ; 2 uses
  br label %bb.z

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i248 = icmp eq ptr %.sroa.0267.0, null
  br i1 %.not.i.i.i248, label %_ZNSt6vectorIiSaIiEED2Ev.exit249, label %bb.ag

.split:                                           ; preds = %bb.x, %.prol.loopexit
  %.lcssa538 = phi <2 x double> [ %.lcssa538.unr, %.prol.loopexit ], [ %i.hq, %bb.x ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.hr, %bb.x ] ; 2 uses
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 1 ; 2 uses
  %exitcond439.not = icmp eq i64 %indvars.iv.next431, %i.dj
  br i1 %exitcond439.not, label %._crit_edge302, label %.preheader, !llvm.loop !142

.preheader.new:                                   ; preds = %.prol.loopexit, %bb.x
  %indvars.iv432 = phi i64 [ %indvars.iv.next433.1, %bb.x ], [ %indvars.iv432.unr, %.prol.loopexit ] ; 5 uses
  %.1188294 = phi i64 [ %i.hr, %bb.x ], [ %.1188294.unr, %.prol.loopexit ]
  %i.gn = phi <2 x double> [ %i.hq, %bb.x ], [ %.unr, %.prol.loopexit ]
  %.not = icmp eq i64 %indvars.iv430, %indvars.iv432
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader.new
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0267.0, i64 %indvars.iv432
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !223
  %i.gq = sext i32 %i.gp to i64
  %i.gr = mul nsw i64 %i.gq, %i.fp
  br label %bb.v

bb.v:                                             ; preds = %.preheader.new, %bb.u
  %.0179 = phi i64 [ %i.gr, %bb.u ], [ %i.fs, %.preheader.new ] ; 2 uses
  %i.gs = sitofp i64 %.0179 to float
  %i.gt = add nuw nsw i64 %indvars.iv432, %i.ft
  %.idx = shl nuw nsw i64 %i.gt, 3
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx
  %i.gv = load <2 x float>, ptr %i.gu, align 4, !tbaa !111
  %i.gw = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x float> %i.gv, %i.gx
  %i.gz = fpext <2 x float> %i.gy to <2 x double>
  %i.ha = fdiv <2 x double> %i.gz, <double 6.000000e+00, double 1.200000e+01>
  %i.hb = fadd <2 x double> %i.gn, %i.ha
  %i.hc = add nsw i64 %.0179, %.1188294
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 3 uses
  %.not.1 = icmp eq i64 %indvars.iv430, %indvars.iv.next433
  br i1 %.not.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0267.0, i64 %indvars.iv.next433
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !223
  %i.hf = sext i32 %i.he to i64
  %i.hg = mul nsw i64 %i.hf, %i.fp
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0179.1 = phi i64 [ %i.hg, %bb.w ], [ %i.fs, %bb.v ] ; 2 uses
  %i.hh = sitofp i64 %.0179.1 to float
  %i.hi = add nuw nsw i64 %indvars.iv.next433, %i.ft
  %.idx.1 = shl nuw nsw i64 %i.hi, 3
  %i.hj = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.1
  %i.hk = load <2 x float>, ptr %i.hj, align 4, !tbaa !111
  %i.hl = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = fmul <2 x float> %i.hk, %i.hm
  %i.ho = fpext <2 x float> %i.hn to <2 x double>
  %i.hp = fdiv <2 x double> %i.ho, <double 6.000000e+00, double 1.200000e+01>
  %i.hq = fadd <2 x double> %i.hb, %i.hp          ; 2 uses
  %i.hr = add nsw i64 %.0179.1, %i.hc             ; 2 uses
  %indvars.iv.next433.1 = add nuw nsw i64 %indvars.iv432, 2 ; 2 uses
  %exitcond436.not.1 = icmp eq i64 %indvars.iv.next433.1, %i.dj
  br i1 %exitcond436.not.1, label %.split, label %.preheader.new, !llvm.loop !141

._crit_edge343:                                   ; preds = %._crit_edge327, %._crit_edge302
  %.0182.lcssa = phi i64 [ 0, %._crit_edge302 ], [ %.1183.lcssa, %._crit_edge327 ] ; 2 uses
  %i.hs = phi <2 x double> [ %i.gh, %._crit_edge302 ], [ %i.jl, %._crit_edge327 ] ; 2 uses
  %.not.i.i.i242 = icmp eq ptr %.sroa.0267.0, null
  br i1 %.not.i.i.i242, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge343
  %i.ht = ptrtoint ptr %.sroa.12.0 to i64
  %i.hu = ptrtoint ptr %.sroa.0267.0 to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0267.0, i64 noundef %i.hv) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.z:                                             ; preds = %.lr.ph342, %._crit_edge327
  %.0182340 = phi i64 [ 0, %.lr.ph342 ], [ %.1183.lcssa, %._crit_edge327 ] ; 3 uses
  %.sroa.0263.0337 = phi ptr [ %i.gi, %.lr.ph342 ], [ %i.jm, %._crit_edge327 ] ; 3 uses
  %i.hw = phi <2 x double> [ %i.gh, %.lr.ph342 ], [ %i.jl, %._crit_edge327 ] ; 4 uses
  %i.hx = load i32, ptr %.sroa.0263.0337, align 8, !tbaa !227
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [2408 x i8], ptr %i.gk, i64 %i.hy ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !232 ; 2 uses
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %bb.z
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 2360
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0263.0337, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !233 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !234
  %invariant.gep331 = getelementptr i8, ptr %i.ih, i64 %.0.in.in.v.i ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hz, i64 2384
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !235 ; 4 uses
  %i.ik = load ptr, ptr %i.id, align 8, !tbaa !235 ; 2 uses
  %i.il = sitofp i32 %i.if to float               ; 2 uses
  %i.im = sext i32 %i.if to i64                   ; 2 uses
  %wide.trip.count458 = zext nneg i32 %i.ib to i64 ; 2 uses
  br i1 %3, label %.lr.ph326.split.us.preheader, label %.lr.ph326.split.preheader

.lr.ph326.split.preheader:                        ; preds = %.lr.ph326
  %i.in = insertelement <2 x float> poison, float %i.il, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph326.split

.lr.ph326.split.us.preheader:                     ; preds = %.lr.ph326
  %i.ip = extractelement <2 x double> %i.hw, i64 0
  br label %.lr.ph326.split.us

.lr.ph326.split.us:                               ; preds = %.lr.ph326.split.us.preheader, %._crit_edge314.split.us.us
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %._crit_edge314.split.us.us ], [ 0, %.lr.ph326.split.us.preheader ] ; 4 uses
  %.1183322.us = phi i64 [ %.2184.lcssa.us, %._crit_edge314.split.us.us ], [ %.0182340, %.lr.ph326.split.us.preheader ] ; 2 uses
  %.4202320.us = phi double [ %.5203.lcssa.us, %._crit_edge314.split.us.us ], [ %i.ip, %.lr.ph326.split.us.preheader ] ; 2 uses
  %i.iq = getelementptr [4 x i8], ptr %i.ik, i64 %indvars.iv455 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !223 ; 2 uses
  %i.is = getelementptr i8, ptr %i.iq, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !223 ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.iu
  %.not279308.us = icmp eq i32 %i.ir, %i.it
  br i1 %.not279308.us, label %._crit_edge314.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph326.split.us
  %i.iw = sext i32 %i.ir to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.iw
  %gep332.us = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep331, i64 %indvars.iv455
  %.0.in.i.us = load i16, ptr %gep332.us, align 2, !tbaa !237
  %.0.i.us = zext i16 %.0.in.i.us to i32
  %i.iy = mul nuw nsw i32 %i.b, %.0.i.us
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph.us
  %.2184312.us.us = phi i64 [ %.1183322.us, %.lr.ph.us ], [ %.3185.us.us, %bb.ac ] ; 2 uses
  %.5203310.us.us = phi double [ %.4202320.us, %.lr.ph.us ], [ %.7205.us.us, %bb.ac ] ; 2 uses
  %.sroa.0.0309.us.us = phi ptr [ %i.ix, %.lr.ph.us ], [ %i.jj, %bb.ac ] ; 2 uses
  %i.iz = load i32, ptr %.sroa.0.0309.us.us, align 4, !tbaa !223
  %i.ja = sext i32 %i.iz to i64                   ; 2 uses
  %i.jb = icmp slt i64 %indvars.iv455, %i.ja
  br i1 %i.jb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %gep.us.us = getelementptr [36 x i8], ptr %invariant.gep331, i64 %i.ja
  %.0.in.i246.us.us = load i16, ptr %gep.us.us, align 2, !tbaa !237
  %.0.i247.us.us = zext i16 %.0.in.i246.us.us to i32
  %i.jc = add nuw nsw i32 %i.iy, %.0.i247.us.us
  %i.jd = mul nuw nsw i32 %i.jc, 3
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.je
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !111
  %i.jh = fmul float %i.jg, %i.il
  %.pn229.in.us.us = fpext float %i.jh to double
  %.pn229.us.us = fdiv double %.pn229.in.us.us, 6.000000e+00
  %.6204.us.us = fsub double %.5203310.us.us, %.pn229.us.us
  %i.ji = add nsw i64 %.2184312.us.us, %i.im
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.7205.us.us = phi double [ %.6204.us.us, %bb.ab ], [ %.5203310.us.us, %bb.aa ] ; 2 uses
  %.3185.us.us = phi i64 [ %i.ji, %bb.ab ], [ %.2184312.us.us, %bb.aa ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.0309.us.us, i64 4 ; 2 uses
  %.not279.us.us = icmp eq ptr %i.jj, %i.iv
  br i1 %.not279.us.us, label %._crit_edge314.split.us.us, label %bb.aa

._crit_edge314.split.us.us:                       ; preds = %bb.ac, %.lr.ph326.split.us
  %.5203.lcssa.us = phi double [ %.4202320.us, %.lr.ph326.split.us ], [ %.7205.us.us, %bb.ac ] ; 2 uses
  %.2184.lcssa.us = phi i64 [ %.1183322.us, %.lr.ph326.split.us ], [ %.3185.us.us, %bb.ac ] ; 2 uses
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
  %exitcond459.not = icmp eq i64 %indvars.iv.next456, %wide.trip.count458
  br i1 %exitcond459.not, label %._crit_edge327.loopexit, label %.lr.ph326.split.us, !llvm.loop !143

._crit_edge327.loopexit:                          ; preds = %._crit_edge314.split.us.us
  %i.jk = insertelement <2 x double> %i.hw, double %.5203.lcssa.us, i64 0
  br label %._crit_edge327

._crit_edge327:                                   ; preds = %._crit_edge314.split, %._crit_edge327.loopexit, %bb.z
  %.1183.lcssa = phi i64 [ %.0182340, %bb.z ], [ %.2184.lcssa.us, %._crit_edge327.loopexit ], [ %.2184.lcssa, %._crit_edge314.split ] ; 2 uses
  %i.jl = phi <2 x double> [ %i.hw, %bb.z ], [ %i.jk, %._crit_edge327.loopexit ], [ %i.jx, %._crit_edge314.split ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0263.0337, i64 56 ; 2 uses
  %.not278 = icmp eq ptr %i.jm, %i.gj
  br i1 %.not278, label %._crit_edge343, label %bb.z

.lr.ph326.split:                                  ; preds = %.lr.ph326.split.preheader, %._crit_edge314.split
  %indvars.iv450 = phi i64 [ %indvars.iv.next451, %._crit_edge314.split ], [ 0, %.lr.ph326.split.preheader ] ; 4 uses
  %.1183322 = phi i64 [ %.2184.lcssa, %._crit_edge314.split ], [ %.0182340, %.lr.ph326.split.preheader ] ; 2 uses
  %i.jn = phi <2 x double> [ %i.jx, %._crit_edge314.split ], [ %i.hw, %.lr.ph326.split.preheader ] ; 2 uses
  %i.jo = getelementptr [4 x i8], ptr %i.ik, i64 %indvars.iv450 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !223 ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jo, i64 4
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !223 ; 2 uses
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.js
  %.not279308 = icmp eq i32 %i.jp, %i.jr
  br i1 %.not279308, label %._crit_edge314.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph326.split
  %i.ju = sext i32 %i.jp to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.ju
  %gep332 = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep331, i64 %indvars.iv450
  %.0.in.i = load i16, ptr %gep332, align 2, !tbaa !237
  %.0.i = zext i16 %.0.in.i to i32
  %i.jw = mul nuw nsw i32 %i.b, %.0.i
  br label %bb.ad

._crit_edge314.split:                             ; preds = %bb.af, %.lr.ph326.split
  %.2184.lcssa = phi i64 [ %.1183322, %.lr.ph326.split ], [ %.3185, %bb.af ] ; 2 uses
  %i.jx = phi <2 x double> [ %i.jn, %.lr.ph326.split ], [ %i.km, %bb.af ] ; 2 uses
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 1 ; 2 uses
  %exitcond454.not = icmp eq i64 %indvars.iv.next451, %wide.trip.count458
  br i1 %exitcond454.not, label %._crit_edge327, label %.lr.ph326.split, !llvm.loop !143

bb.ad:                                            ; preds = %.lr.ph, %bb.af
  %.2184312 = phi i64 [ %.1183322, %.lr.ph ], [ %.3185, %bb.af ] ; 2 uses
  %.sroa.0.0309 = phi ptr [ %i.jv, %.lr.ph ], [ %i.kn, %bb.af ] ; 2 uses
  %i.jy = phi <2 x double> [ %i.jn, %.lr.ph ], [ %i.km, %bb.af ] ; 2 uses
  %i.jz = load i32, ptr %.sroa.0.0309, align 4, !tbaa !223
  %i.ka = sext i32 %i.jz to i64                   ; 2 uses
  %i.kb = icmp slt i64 %indvars.iv450, %i.ka
  br i1 %i.kb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %gep = getelementptr [36 x i8], ptr %invariant.gep331, i64 %i.ka
  %.0.in.i246 = load i16, ptr %gep, align 2, !tbaa !237
  %.0.i247 = zext i16 %.0.in.i246 to i32
  %i.kc = add nuw nsw i32 %i.jw, %.0.i247
  %i.kd = shl nuw nsw i32 %i.kc, 1
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.ke
  %i.kg = load <2 x float>, ptr %i.kf, align 4, !tbaa !111
  %i.kh = fmul <2 x float> %i.kg, %i.io
  %i.ki = fpext <2 x float> %i.kh to <2 x double>
  %i.kj = fdiv <2 x double> %i.ki, <double 6.000000e+00, double 1.200000e+01>
  %i.kk = fsub <2 x double> %i.jy, %i.kj
  %i.kl = add nsw i64 %.2184312, %i.im
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.3185 = phi i64 [ %i.kl, %bb.ae ], [ %.2184312, %bb.ad ] ; 2 uses
  %i.km = phi <2 x double> [ %i.kk, %bb.ae ], [ %i.jy, %bb.ad ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.0309, i64 4 ; 2 uses
  %.not279 = icmp eq ptr %i.kn, %i.jt
  br i1 %.not279, label %._crit_edge314.split, label %bb.ad

bb.ag:                                            ; preds = %bb.t
  %i.ko = ptrtoint ptr %.sroa.12.0 to i64
  %i.kp = ptrtoint ptr %.sroa.0267.0 to i64
  %i.kq = sub i64 %i.ko, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0267.0, i64 noundef %i.kq) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

bb.ah:                                            ; preds = %bb.l
  %i.kr = load ptr, ptr %i.dg, align 8, !tbaa !224 ; 3 uses
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -56
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !227
  %i.ku = sext i32 %i.kt to i64
  %i.kv = load ptr, ptr %i.dh, align 8, !tbaa !225 ; 2 uses
  %i.kw = getelementptr inbounds nuw [2408 x i8], ptr %i.kv, i64 %i.ku ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load i32, ptr %i.cy, align 8, !tbaa !220
  %i.kz = load i32, ptr %i.kx, align 8, !tbaa !232
  %.fr409 = freeze i32 %i.kz                      ; 7 uses
  %i.la = sub nsw i32 %i.ky, %.fr409
  store i32 %i.la, ptr %0, align 4, !tbaa !221
  %i.lb = sitofp i32 %.fr409 to float
  store float %i.lb, ptr %i.cz, align 4, !tbaa !222
  %i.lc = load ptr, ptr %i.df, align 8, !tbaa !238 ; 3 uses
  %.not407 = icmp eq ptr %i.kr, %i.lc
  br i1 %.not407, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph396

.lr.ph396:                                        ; preds = %bb.ah
  %i.ld = ptrtoint ptr %i.kr to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = sdiv exact i64 %i.lf, 56                ; 2 uses
  %i.lh = add nsw i64 %i.lg, -1
  %9 = trunc nuw i64 %indvars.iv481 to i1
  %.0.in.in.v.i250 = select i1 %9, i64 18, i64 16 ; 4 uses
  %i.li = icmp sgt i32 %.fr409, 0
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 2 uses
  %i.lk = load ptr, ptr %4, align 16              ; 10 uses
  %i.ll = add i32 %.fr409, -1
  %i.lm = zext i32 %i.ll to i64
  %i.ln = add nuw nsw i64 %i.lm, 1
  %wide.trip.count463 = zext i32 %.fr409 to i64   ; 4 uses
  %xtraiter558 = and i64 %wide.trip.count463, 3   ; 3 uses
  %i.lo = icmp ult i32 %.fr409, 4
  %unroll_iter = and i64 %wide.trip.count463, 2147483644
  %lcmp.mod560.not = icmp eq i64 %xtraiter558, 0
  %lcmp.mod562 = icmp ne i64 %xtraiter558, 0
  %xtraiter564 = and i64 %wide.trip.count463, 3   ; 3 uses
  %i.lp = icmp ult i32 %.fr409, 4
  %unroll_iter569 = and i64 %wide.trip.count463, 2147483644
  %lcmp.mod566.not = icmp eq i64 %xtraiter564, 0
  %lcmp.mod568 = icmp ne i64 %xtraiter564, 0
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph396, %._crit_edge367
  %.0176394 = phi i64 [ 0, %.lr.ph396 ], [ %i.ql, %._crit_edge367 ] ; 4 uses
  %.2189393 = phi i64 [ 0, %.lr.ph396 ], [ %.3190.lcssa, %._crit_edge367 ] ; 4 uses
  %.8206391 = phi double [ 0.000000e+00, %.lr.ph396 ], [ %i.qk, %._crit_edge367 ]
  %i.lq = phi <2 x double> [ zeroinitializer, %.lr.ph396 ], [ %i.qj, %._crit_edge367 ] ; 4 uses
  %i.lr = getelementptr inbounds nuw [56 x i8], ptr %i.lc, i64 %.0176394 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !227
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [2408 x i8], ptr %i.kv, i64 %i.lt ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !232 ; 2 uses
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %.lr.ph366, label %._crit_edge367

.lr.ph366:                                        ; preds = %bb.ai
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !233 ; 2 uses
  %i.ma = icmp ne i64 %.0176394, %i.lh            ; 3 uses
  %i.mb = icmp ne i64 %.0176394, 0
  %i.mc = icmp ne i32 %i.lz, 1
  %or.cond.not412 = select i1 %i.mb, i1 true, i1 %i.mc ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  br i1 %i.li, label %.lr.ph366.split.us, label %.lr.ph366.split

.lr.ph366.split.us:                               ; preds = %.lr.ph366
  %wide.trip.count478 = zext nneg i32 %i.lw to i64 ; 2 uses
  %brmerge = select i1 %i.ma, i1 true, i1 %or.cond.not412 ; 2 uses
  %not. = xor i1 %i.ma, true
  %i.me = sext i1 %not. to i32
  %.mux = add nsw i32 %i.lz, %i.me                ; 2 uses
  %i.mf = sitofp i32 %.mux to float               ; 6 uses
  %i.mg = sext i32 %.mux to i64
  %i.mh = mul nsw i64 %i.ln, %i.mg                ; 2 uses
  br i1 %3, label %.lr.ph366.split.us.split.us, label %.lr.ph366.split.us.split.preheader

.lr.ph366.split.us.split.preheader:               ; preds = %.lr.ph366.split.us
  %i.mi = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.mj = shufflevector <2 x float> %i.mi, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %.lr.ph366.split.us.split

.lr.ph366.split.us.split.us:                      ; preds = %.lr.ph366.split.us, %._crit_edge353.split.us.us.us
  %indvars.iv475 = phi i64 [ %indvars.iv.next476, %._crit_edge353.split.us.us.us ], [ 0, %.lr.ph366.split.us ] ; 2 uses
  %.3190363.us.us = phi i64 [ %i.nz, %._crit_edge353.split.us.us.us ], [ %.2189393, %.lr.ph366.split.us ]
  %.9207361.us.us = phi double [ %.11209.us.us.us.lcssa, %._crit_edge353.split.us.us.us ], [ %.8206391, %.lr.ph366.split.us ] ; 2 uses
  br i1 %brmerge, label %.lr.ph352.us.us, label %.split385.us

.lr.ph352.us.us:                                  ; preds = %.lr.ph366.split.us.split.us
  %i.mk = load ptr, ptr %i.md, align 8, !tbaa !234
  %i.ml = getelementptr inbounds nuw [36 x i8], ptr %i.mk, i64 %indvars.iv475
  %.0.in.in.i251.us.us = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.0.in.in.v.i250
  %.0.in.i252.us.us = load i16, ptr %.0.in.in.i251.us.us, align 2, !tbaa !237
  %.0.i253.us.us = zext i16 %.0.in.i252.us.us to i32 ; 5 uses
  %i.mm = load ptr, ptr %i.lj, align 8, !tbaa !234
  %invariant.gep357.us.us = getelementptr inbounds nuw i8, ptr %i.mm, i64 %.0.in.in.v.i250 ; 5 uses
  br i1 %i.lp, label %.epil.preheader563, label %.lr.ph352.us.us.new

.lr.ph352.us.us.new:                              ; preds = %.lr.ph352.us.us, %.lr.ph352.us.us.new
  %indvars.iv470 = phi i64 [ %indvars.iv.next471.3, %.lr.ph352.us.us.new ], [ 0, %.lr.ph352.us.us ] ; 5 uses
  %.10208347.us.us.us = phi double [ %.11209.us.us.us.3, %.lr.ph352.us.us.new ], [ %.9207361.us.us, %.lr.ph352.us.us ]
  %niter570 = phi i64 [ %niter570.next.3, %.lr.ph352.us.us.new ], [ 0, %.lr.ph352.us.us ]
  %gep358.us.us.us = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %.0.in.i256.us.us.us = load i16, ptr %gep358.us.us.us, align 2, !tbaa !237
  %.0.i257.us.us.us = zext i16 %.0.in.i256.us.us.us to i32
  %i.mn = mul nsw i32 %i.b, %.0.i257.us.us.us
  %i.mo = add nsw i32 %i.mn, %.0.i253.us.us
  %i.mp = mul nsw i32 %i.mo, 3
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.mq
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !111
  %i.mt = fmul float %i.ms, %i.mf
  %.pn232.in.us.us.us = fpext float %i.mt to double
  %.pn232.us.us.us = fdiv double %.pn232.in.us.us.us, 6.000000e+00
  %.11209.us.us.us = fadd double %.10208347.us.us.us, %.pn232.us.us.us
  %i.mu = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %gep358.us.us.us.1 = getelementptr inbounds nuw i8, ptr %i.mu, i64 36
  %.0.in.i256.us.us.us.1 = load i16, ptr %gep358.us.us.us.1, align 2, !tbaa !237
  %.0.i257.us.us.us.1 = zext i16 %.0.in.i256.us.us.us.1 to i32
  %i.mv = mul nsw i32 %i.b, %.0.i257.us.us.us.1
  %i.mw = add nsw i32 %i.mv, %.0.i253.us.us
  %i.mx = mul nsw i32 %i.mw, 3
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.my
  %i.na = load float, ptr %i.mz, align 4, !tbaa !111
  %i.nb = fmul float %i.na, %i.mf
  %.pn232.in.us.us.us.1 = fpext float %i.nb to double
  %.pn232.us.us.us.1 = fdiv double %.pn232.in.us.us.us.1, 6.000000e+00
  %.11209.us.us.us.1 = fadd double %.11209.us.us.us, %.pn232.us.us.us.1
  %i.nc = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %gep358.us.us.us.2 = getelementptr inbounds nuw i8, ptr %i.nc, i64 72
  %.0.in.i256.us.us.us.2 = load i16, ptr %gep358.us.us.us.2, align 2, !tbaa !237
  %.0.i257.us.us.us.2 = zext i16 %.0.in.i256.us.us.us.2 to i32
  %i.nd = mul nsw i32 %i.b, %.0.i257.us.us.us.2
  %i.ne = add nsw i32 %i.nd, %.0.i253.us.us
  %i.nf = mul nsw i32 %i.ne, 3
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.ng
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !111
  %i.nj = fmul float %i.ni, %i.mf
  %.pn232.in.us.us.us.2 = fpext float %i.nj to double
  %.pn232.us.us.us.2 = fdiv double %.pn232.in.us.us.us.2, 6.000000e+00
  %.11209.us.us.us.2 = fadd double %.11209.us.us.us.1, %.pn232.us.us.us.2
  %i.nk = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %gep358.us.us.us.3 = getelementptr inbounds nuw i8, ptr %i.nk, i64 108
  %.0.in.i256.us.us.us.3 = load i16, ptr %gep358.us.us.us.3, align 2, !tbaa !237
  %.0.i257.us.us.us.3 = zext i16 %.0.in.i256.us.us.us.3 to i32
  %i.nl = mul nsw i32 %i.b, %.0.i257.us.us.us.3
  %i.nm = add nsw i32 %i.nl, %.0.i253.us.us
  %i.nn = mul nsw i32 %i.nm, 3
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.no
  %i.nq = load float, ptr %i.np, align 4, !tbaa !111
  %i.nr = fmul float %i.nq, %i.mf
  %.pn232.in.us.us.us.3 = fpext float %i.nr to double
  %.pn232.us.us.us.3 = fdiv double %.pn232.in.us.us.us.3, 6.000000e+00
  %.11209.us.us.us.3 = fadd double %.11209.us.us.us.2, %.pn232.us.us.us.3 ; 3 uses
  %indvars.iv.next471.3 = add nuw nsw i64 %indvars.iv470, 4 ; 2 uses
  %niter570.next.3 = add i64 %niter570, 4         ; 2 uses
  %niter570.ncmp.3 = icmp eq i64 %niter570.next.3, %unroll_iter569
  br i1 %niter570.ncmp.3, label %._crit_edge353.split.us.us.us.unr-lcssa, label %.lr.ph352.us.us.new, !llvm.loop !144

._crit_edge353.split.us.us.us.unr-lcssa:          ; preds = %.lr.ph352.us.us.new
  br i1 %lcmp.mod566.not, label %._crit_edge353.split.us.us.us, label %.epil.preheader563

.epil.preheader563:                               ; preds = %._crit_edge353.split.us.us.us.unr-lcssa, %.lr.ph352.us.us
  %indvars.iv470.epil.init = phi i64 [ 0, %.lr.ph352.us.us ], [ %indvars.iv.next471.3, %._crit_edge353.split.us.us.us.unr-lcssa ]
  %.10208347.us.us.us.epil.init = phi double [ %.9207361.us.us, %.lr.ph352.us.us ], [ %.11209.us.us.us.3, %._crit_edge353.split.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod568)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.epil.preheader563
  %indvars.iv470.epil = phi i64 [ %indvars.iv.next471.epil, %bb.aj ], [ %indvars.iv470.epil.init, %.epil.preheader563 ] ; 2 uses
  %.10208347.us.us.us.epil = phi double [ %.11209.us.us.us.epil, %bb.aj ], [ %.10208347.us.us.us.epil.init, %.epil.preheader563 ]
  %epil.iter565 = phi i64 [ %epil.iter565.next, %bb.aj ], [ 0, %.epil.preheader563 ]
  %gep358.us.us.us.epil = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470.epil
  %.0.in.i256.us.us.us.epil = load i16, ptr %gep358.us.us.us.epil, align 2, !tbaa !237
  %.0.i257.us.us.us.epil = zext i16 %.0.in.i256.us.us.us.epil to i32
  %i.ns = mul nsw i32 %i.b, %.0.i257.us.us.us.epil
  %i.nt = add nsw i32 %i.ns, %.0.i253.us.us
  %i.nu = mul nsw i32 %i.nt, 3
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.nv
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !111
  %i.ny = fmul float %i.nx, %i.mf
  %.pn232.in.us.us.us.epil = fpext float %i.ny to double
  %.pn232.us.us.us.epil = fdiv double %.pn232.in.us.us.us.epil, 6.000000e+00
  %.11209.us.us.us.epil = fadd double %.10208347.us.us.us.epil, %.pn232.us.us.us.epil ; 2 uses
  %indvars.iv.next471.epil = add nuw nsw i64 %indvars.iv470.epil, 1
  %epil.iter565.next = add i64 %epil.iter565, 1   ; 2 uses
  %epil.iter565.cmp.not = icmp eq i64 %epil.iter565.next, %xtraiter564
  br i1 %epil.iter565.cmp.not, label %._crit_edge353.split.us.us.us, label %bb.aj, !llvm.loop !145

._crit_edge353.split.us.us.us:                    ; preds = %bb.aj, %._crit_edge353.split.us.us.us.unr-lcssa
  %.11209.us.us.us.lcssa = phi double [ %.11209.us.us.us.3, %._crit_edge353.split.us.us.us.unr-lcssa ], [ %.11209.us.us.us.epil, %bb.aj ] ; 2 uses
  %i.nz = add i64 %.3190363.us.us, %i.mh          ; 2 uses
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 1 ; 2 uses
  %exitcond479.not = icmp eq i64 %indvars.iv.next476, %wide.trip.count478
  br i1 %exitcond479.not, label %._crit_edge367.loopexit, label %.lr.ph366.split.us.split.us, !llvm.loop !146

.lr.ph366.split.us.split:                         ; preds = %.lr.ph366.split.us.split.preheader, %._crit_edge353.split.us381
  %indvars.iv465 = phi i64 [ %indvars.iv.next466, %._crit_edge353.split.us381 ], [ 0, %.lr.ph366.split.us.split.preheader ] ; 2 uses
  %.3190363.us = phi i64 [ %i.qh, %._crit_edge353.split.us381 ], [ %.2189393, %.lr.ph366.split.us.split.preheader ]
  %i.oa = phi <2 x double> [ %.lcssa545, %._crit_edge353.split.us381 ], [ %i.lq, %.lr.ph366.split.us.split.preheader ] ; 2 uses
  br i1 %brmerge, label %.lr.ph352.us, label %.split385.us

.lr.ph352.us:                                     ; preds = %.lr.ph366.split.us.split
  %i.ob = load ptr, ptr %i.md, align 8, !tbaa !234
  %i.oc = getelementptr inbounds nuw [36 x i8], ptr %i.ob, i64 %indvars.iv465
  %.0.in.in.i251.us = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.0.in.in.v.i250
  %.0.in.i252.us = load i16, ptr %.0.in.in.i251.us, align 2, !tbaa !237
  %.0.i253.us = zext i16 %.0.in.i252.us to i32    ; 5 uses
  %i.od = load ptr, ptr %i.lj, align 8, !tbaa !234
  %invariant.gep357.us = getelementptr inbounds nuw i8, ptr %i.od, i64 %.0.in.in.v.i250 ; 5 uses
  br i1 %i.lo, label %.epil.preheader, label %.lr.ph352.us.new

.lr.ph352.us.new:                                 ; preds = %.lr.ph352.us, %.lr.ph352.us.new
  %indvars.iv460 = phi i64 [ %indvars.iv.next461.3, %.lr.ph352.us.new ], [ 0, %.lr.ph352.us ] ; 5 uses
  %i.oe = phi <2 x double> [ %i.pv, %.lr.ph352.us.new ], [ %i.oa, %.lr.ph352.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph352.us.new ], [ 0, %.lr.ph352.us ]
  %gep358.us375 = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460
  %.0.in.i256.us376 = load i16, ptr %gep358.us375, align 2, !tbaa !237
  %.0.i257.us377 = zext i16 %.0.in.i256.us376 to i32
  %i.of = mul nsw i32 %i.b, %.0.i257.us377
  %i.og = add nsw i32 %i.of, %.0.i253.us
  %i.oh = shl nsw i32 %i.og, 1
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr [4 x i8], ptr %i.lk, i64 %i.oi
  %i.ok = load <2 x float>, ptr %i.oj, align 4, !tbaa !111
  %i.ol = fmul <2 x float> %i.ok, %i.mj
  %i.om = fpext <2 x float> %i.ol to <2 x double>
  %i.on = fdiv <2 x double> %i.om, <double 6.000000e+00, double 1.200000e+01>
  %i.oo = fadd <2 x double> %i.oe, %i.on
  %i.op = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460
  %gep358.us375.1 = getelementptr inbounds nuw i8, ptr %i.op, i64 36
  %.0.in.i256.us376.1 = load i16, ptr %gep358.us375.1, align 2, !tbaa !237
  %.0.i257.us377.1 = zext i16 %.0.in.i256.us376.1 to i32
  %i.oq = mul nsw i32 %i.b, %.0.i257.us377.1
  %i.or = add nsw i32 %i.oq, %.0.i253.us
  %i.os = shl nsw i32 %i.or, 1
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr [4 x i8], ptr %i.lk, i64 %i.ot
  %i.ov = load <2 x float>, ptr %i.ou, align 4, !tbaa !111
  %i.ow = fmul <2 x float> %i.ov, %i.mj
  %i.ox = fpext <2 x float> %i.ow to <2 x double>
  %i.oy = fdiv <2 x double> %i.ox, <double 6.000000e+00, double 1.200000e+01>
  %i.oz = fadd <2 x double> %i.oo, %i.oy
  %i.pa = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460
  %gep358.us375.2 = getelementptr inbounds nuw i8, ptr %i.pa, i64 72
  %.0.in.i256.us376.2 = load i16, ptr %gep358.us375.2, align 2, !tbaa !237
  %.0.i257.us377.2 = zext i16 %.0.in.i256.us376.2 to i32
  %i.pb = mul nsw i32 %i.b, %.0.i257.us377.2
  %i.pc = add nsw i32 %i.pb, %.0.i253.us
  %i.pd = shl nsw i32 %i.pc, 1
  %i.pe = sext i32 %i.pd to i64
  %i.pf = getelementptr [4 x i8], ptr %i.lk, i64 %i.pe
  %i.pg = load <2 x float>, ptr %i.pf, align 4, !tbaa !111
  %i.ph = fmul <2 x float> %i.pg, %i.mj
  %i.pi = fpext <2 x float> %i.ph to <2 x double>
  %i.pj = fdiv <2 x double> %i.pi, <double 6.000000e+00, double 1.200000e+01>
  %i.pk = fadd <2 x double> %i.oz, %i.pj
  %i.pl = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460
  %gep358.us375.3 = getelementptr inbounds nuw i8, ptr %i.pl, i64 108
  %.0.in.i256.us376.3 = load i16, ptr %gep358.us375.3, align 2, !tbaa !237
  %.0.i257.us377.3 = zext i16 %.0.in.i256.us376.3 to i32
  %i.pm = mul nsw i32 %i.b, %.0.i257.us377.3
  %i.pn = add nsw i32 %i.pm, %.0.i253.us
  %i.po = shl nsw i32 %i.pn, 1
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr [4 x i8], ptr %i.lk, i64 %i.pp
  %i.pr = load <2 x float>, ptr %i.pq, align 4, !tbaa !111
  %i.ps = fmul <2 x float> %i.pr, %i.mj
  %i.pt = fpext <2 x float> %i.ps to <2 x double>
  %i.pu = fdiv <2 x double> %i.pt, <double 6.000000e+00, double 1.200000e+01>
  %i.pv = fadd <2 x double> %i.pk, %i.pu          ; 3 uses
  %indvars.iv.next461.3 = add nuw nsw i64 %indvars.iv460, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge353.split.us381.unr-lcssa, label %.lr.ph352.us.new, !llvm.loop !144

._crit_edge353.split.us381.unr-lcssa:             ; preds = %.lr.ph352.us.new
  br i1 %lcmp.mod560.not, label %._crit_edge353.split.us381, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge353.split.us381.unr-lcssa, %.lr.ph352.us
  %indvars.iv460.epil.init = phi i64 [ 0, %.lr.ph352.us ], [ %indvars.iv.next461.3, %._crit_edge353.split.us381.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.oa, %.lr.ph352.us ], [ %i.pv, %._crit_edge353.split.us381.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod562)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.epil.preheader
  %indvars.iv460.epil = phi i64 [ %indvars.iv.next461.epil, %bb.ak ], [ %indvars.iv460.epil.init, %.epil.preheader ] ; 2 uses
  %i.pw = phi <2 x double> [ %i.qg, %bb.ak ], [ %.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.ak ], [ 0, %.epil.preheader ]
  %gep358.us375.epil = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460.epil
  %.0.in.i256.us376.epil = load i16, ptr %gep358.us375.epil, align 2, !tbaa !237
  %.0.i257.us377.epil = zext i16 %.0.in.i256.us376.epil to i32
  %i.px = mul nsw i32 %i.b, %.0.i257.us377.epil
  %i.py = add nsw i32 %i.px, %.0.i253.us
  %i.pz = shl nsw i32 %i.py, 1
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr [4 x i8], ptr %i.lk, i64 %i.qa
  %i.qc = load <2 x float>, ptr %i.qb, align 4, !tbaa !111
  %i.qd = fmul <2 x float> %i.qc, %i.mj
  %i.qe = fpext <2 x float> %i.qd to <2 x double>
  %i.qf = fdiv <2 x double> %i.qe, <double 6.000000e+00, double 1.200000e+01>
  %i.qg = fadd <2 x double> %i.pw, %i.qf          ; 2 uses
  %indvars.iv.next461.epil = add nuw nsw i64 %indvars.iv460.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter558
  br i1 %epil.iter.cmp.not, label %._crit_edge353.split.us381, label %bb.ak, !llvm.loop !147

._crit_edge353.split.us381:                       ; preds = %bb.ak, %._crit_edge353.split.us381.unr-lcssa
  %.lcssa545 = phi <2 x double> [ %i.pv, %._crit_edge353.split.us381.unr-lcssa ], [ %i.qg, %bb.ak ] ; 2 uses
  %i.qh = add i64 %.3190363.us, %i.mh             ; 2 uses
  %indvars.iv.next466 = add nuw nsw i64 %indvars.iv465, 1 ; 2 uses
  %exitcond469.not = icmp eq i64 %indvars.iv.next466, %wide.trip.count478
  br i1 %exitcond469.not, label %._crit_edge367, label %.lr.ph366.split.us.split, !llvm.loop !146

.lr.ph366.split:                                  ; preds = %.lr.ph366
  %brmerge518 = select i1 %i.ma, i1 true, i1 %or.cond.not412
  br i1 %brmerge518, label %._crit_edge367, label %.split385.us

._crit_edge367.loopexit:                          ; preds = %._crit_edge353.split.us.us.us
  %i.qi = insertelement <2 x double> %i.lq, double %.11209.us.us.us.lcssa, i64 0
  br label %._crit_edge367

._crit_edge367:                                   ; preds = %._crit_edge353.split.us381, %._crit_edge367.loopexit, %.lr.ph366.split, %bb.ai
  %.3190.lcssa = phi i64 [ %.2189393, %bb.ai ], [ %i.nz, %._crit_edge367.loopexit ], [ %.2189393, %.lr.ph366.split ], [ %i.qh, %._crit_edge353.split.us381 ] ; 2 uses
  %i.qj = phi <2 x double> [ %i.lq, %bb.ai ], [ %i.qi, %._crit_edge367.loopexit ], [ %i.lq, %.lr.ph366.split ], [ %.lcssa545, %._crit_edge353.split.us381 ] ; 3 uses
  %i.qk = extractelement <2 x double> %i.qj, i64 0
  %i.ql = add nuw i64 %.0176394, 1                ; 2 uses
  %exitcond480.not = icmp eq i64 %i.ql, %i.lg
  br i1 %exitcond480.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ai, !llvm.loop !148

.split385.us:                                     ; preds = %.lr.ph366.split, %.lr.ph366.split.us.split, %.lr.ph366.split.us.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA75_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(75) @.str, i8 noundef zeroext 2)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %.split385.us
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 223, ptr noundef nonnull @.str.1) #18
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %.split385.us
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %i.qn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn233 = phi { ptr, i32 } [ %i.qn, %bb.ao ], [ %i.qm, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge367, %bb.ah, %bb.y, %._crit_edge343
  %.5 = phi i64 [ %.0187.lcssa, %bb.y ], [ %.0187.lcssa, %._crit_edge343 ], [ 0, %bb.ah ], [ %.3190.lcssa, %._crit_edge367 ]
  %.4186 = phi i64 [ %.0182.lcssa, %bb.y ], [ %.0182.lcssa, %._crit_edge343 ], [ 0, %bb.ah ], [ 0, %._crit_edge367 ] ; 2 uses
  %i.qo = phi <2 x double> [ %i.hs, %bb.y ], [ %i.hs, %._crit_edge343 ], [ zeroinitializer, %bb.ah ], [ %i.qj, %._crit_edge367 ]
  %i.qp = sub nsw i64 %.5, %.4186                 ; 2 uses
  %i.qq = icmp slt i64 %i.qp, 1
  %i.qr = uitofp nneg i64 %i.qp to double
  %i.qs = insertelement <2 x double> poison, double %i.qr, i64 0
  %i.qt = shufflevector <2 x double> %i.qs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qu = fdiv <2 x double> %i.qo, %i.qt
  %i.qv = insertelement <2 x i1> poison, i1 %i.qq, i64 0
  %i.qw = shufflevector <2 x i1> %i.qv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.qx = select <2 x i1> %i.qw, <2 x double> zeroinitializer, <2 x double> %i.qu ; 3 uses
  %i.qy = load ptr, ptr @debug, align 8, !tbaa !240 ; 2 uses
  %.not231 = icmp eq ptr %i.qy, null
  br i1 %.not231, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.qz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.qy, ptr noundef nonnull @.str.2, i64 noundef %.4186) #16 ; 0 uses
  %i.ra = load ptr, ptr @debug, align 8, !tbaa !240
  %i.rb = extractelement <2 x double> %i.qx, i64 0
  %i.rc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ra, ptr noundef nonnull @.str.3, double noundef %i.rb) #16 ; 0 uses
  %i.rd = load ptr, ptr @debug, align 8, !tbaa !240
  %i.re = extractelement <2 x double> %i.qx, i64 1
  %i.rf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rd, ptr noundef nonnull @.str.4, double noundef %i.re) #16 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv481
  %i.rh = shufflevector <2 x double> %i.qx, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.ri = fptrunc <3 x double> %i.rh to <3 x float>
  call void @llvm.masked.store.v3f32.p0(<3 x float> %i.ri, ptr align 4 %i.rg, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !111
  %i.rj = load i32, ptr %i.cw, align 4, !tbaa !241
  %i.rk = icmp ne i32 %i.rj, 0
  %i.rl = and i1 %i.rk, %i.dr
  br i1 %i.rl, label %bb.l, label %bb.j, !llvm.loop !149

_ZNSt6vectorIiSaIiEED2Ev.exit249:                 ; preds = %.loopexit, %.loopexit.split-lp, %bb.t, %bb.ag, %bb.ap, %bb.h, %bb.d
  %.pn233.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.h ], [ %i.bc, %bb.d ], [ %.pn233, %bb.ap ], [ %i.gm, %bb.ag ], [ %i.gm, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.rm = load ptr, ptr %4, align 16, !tbaa !216  ; 3 uses
  %.not.i.i.i258 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i.i258, label %_ZNSt6vectorIfSaIfEED2Ev.exit259, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit249
  %i.rn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ro = load ptr, ptr %i.rn, align 16, !tbaa !217
  %i.rp = ptrtoint ptr %i.ro to i64
  %i.rq = ptrtoint ptr %i.rm to i64
  %i.rr = sub i64 %i.rp, %i.rq
  call void @_ZdlPvm(ptr noundef nonnull %i.rm, i64 noundef %i.rr) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit259

end_hunk_0
