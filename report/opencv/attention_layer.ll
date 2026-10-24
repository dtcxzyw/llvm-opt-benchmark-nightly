Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/attention_layer?download=true
inline.NumInlined: 1129
inline.NumDeleted: 486
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #24
  unreachable

.body:                                            ; preds = %bb.bf, %bb.be, %bb.ak, %bb.aj
  %.pn168 = phi { ptr, i32 } [ %i.ix, %bb.aj ], [ %i.lk, %bb.bf ], [ %i.ix, %bb.ak ], [ %i.lk, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %bb.fd

bb.bh:                                            ; preds = %bb.ay, %bb.ar, %bb.bb, %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %bb.az
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.bi:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  br i1 %i.lj, label %bb.eo, label %._crit_edge730

._crit_edge730:                                   ; preds = %bb.bi
  %.pre731 = load i64, ptr %i.hj, align 8, !tbaa !96
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge730, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as
  %i.lq = phi i64 [ %.pre731, %._crit_edge730 ], [ %.pre732.a, %bb.ax ], [ %.pre732.a, %bb.aw ], [ %.pre732.a, %bb.av ], [ %.pre732.a, %bb.au ], [ 0, %bb.at ], [ %.pre732.a, %bb.as ]
  %i.lr = load ptr, ptr %15, align 8, !tbaa !91   ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 232 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !105
  store ptr %i.lu, ptr %i.i, align 8, !tbaa !114
  %i.lv = load i64, ptr %i.ej, align 8, !tbaa !61
  %i.lw = mul i64 %i.lv, %i.lq                    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.lx = load i64, ptr %i.hl, align 8, !tbaa !97 ; 3 uses
  %i.ly = mul i64 %i.lx, %i.lx
  store i64 %i.ly, ptr %i.j, align 8, !tbaa !62
  %i.lz = load ptr, ptr %i.ip, align 8, !tbaa !66
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !62 ; 2 uses
  %i.mb = mul i64 %i.ma, %i.lx                    ; 3 uses
  %i.mc = icmp ugt i64 %i.lw, 1152921504606846975
  br i1 %i.mc, label %bb.bk, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
          to label %.noexc253 unwind label %bb.bo

.noexc253:                                        ; preds = %bb.bk
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.bj
  %.not.i.i.i.i = icmp eq i64 %i.lw, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.md = shl nuw nsw i64 %i.lw, 3                ; 3 uses
  %i.me = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.md) #21
          to label %.noexc254 unwind label %bb.bo ; 11 uses

.noexc254:                                        ; preds = %bb.bl
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.lw ; 5 uses
  store i64 0, ptr %i.me, align 8, !tbaa !62
  %i.mg = add nsw i64 %i.lw, -1                   ; 4 uses
  %i.mh = icmp eq i64 %i.mg, 0                    ; 3 uses
  br i1 %i.mh, label %bb.bm, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc254
  %i.mi = getelementptr i8, ptr %i.me, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.mg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.mi, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !62
  br label %bb.bm

bb.bm:                                            ; preds = %.noexc254, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.mj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.md) #21
          to label %.noexc262 unwind label %_ZNSt6vectorImSaImEED2Ev.exit410.thread ; 10 uses

.noexc262:                                        ; preds = %bb.bm
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.lw ; 4 uses
  store i64 0, ptr %i.mj, align 8, !tbaa !62
  br i1 %i.mh, label %bb.bn, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i257

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i257: ; preds = %.noexc262
  %i.ml = getelementptr i8, ptr %i.mj, i64 8
  %.idx.i.i.i.i.i.i.i258 = shl nuw nsw i64 %i.mg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ml, i8 0, i64 %.idx.i.i.i.i.i.i.i258, i1 false), !tbaa !62
  br label %bb.bn

bb.bn:                                            ; preds = %.noexc262, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i257
  %i.mm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.md) #21
          to label %.noexc271 unwind label %_ZNSt6vectorImSaImEED2Ev.exit408.thread ; 9 uses

.noexc271:                                        ; preds = %bb.bn
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.lw ; 3 uses
  store i64 0, ptr %i.mm, align 8, !tbaa !62
  br i1 %i.mh, label %.lr.ph, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit272

_ZNSt6vectorImSaImEEC2EmRKS0_.exit272:            ; preds = %.noexc271
  %i.mo = getelementptr i8, ptr %i.mm, i64 8
  %.idx.i.i.i.i.i.i.i267 = shl nuw nsw i64 %i.mg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.mo, i8 0, i64 %.idx.i.i.i.i.i.i.i267, i1 false), !tbaa !62
  %i.mp = trunc i64 %i.lw to i32                  ; 3 uses
  %i.mq = icmp sgt i32 %i.mp, 0
  br i1 %i.mq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc271, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit272
  %i.mr = phi i32 [ %i.mp, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit272 ], [ 1, %.noexc271 ] ; 2 uses
  %i.ms = load i64, ptr %i.j, align 8, !tbaa !62  ; 3 uses
  %wide.trip.count = and i64 %i.lw, 2147483647
  %xtraiter = and i64 %i.lw, 1
  %i.mt = icmp eq i64 %wide.trip.count, 1
  br i1 %i.mt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.lw, 2147483646
  br label %bb.bp

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bp
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod964 = trunc i64 %i.lw to i1
  call void @llvm.assume(i1 %lcmp.mod964)
  %i.mu = mul i64 %i.mb, %indvars.iv.epil.init    ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv.epil.init
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !62
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv.epil.init
  store i64 %i.mu, ptr %i.mw, align 8, !tbaa !62
  %i.mx = mul i64 %i.ms, %indvars.iv.epil.init
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv.epil.init
  store i64 %i.mx, ptr %i.my, align 8, !tbaa !62
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit272
  %i.mz = phi i32 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.mp, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit272 ], [ %i.mr, %._crit_edge.loopexit.unr-lcssa ], [ %i.mr, %.epil.preheader ]
  %.sroa.11504.0854 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.mn, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit272 ], [ %i.mn, %._crit_edge.loopexit.unr-lcssa ], [ %i.mn, %.epil.preheader ] ; 2 uses
  %.sroa.0499.0853 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.mm, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit272 ], [ %i.mm, %._crit_edge.loopexit.unr-lcssa ], [ %i.mm, %.epil.preheader ] ; 7 uses
  %.sroa.11520.0564570847 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.mf, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit272 ], [ %i.mf, %._crit_edge.loopexit.unr-lcssa ], [ %i.mf, %.epil.preheader ] ; 3 uses
  %.sroa.0515.0554581843 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.me, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit272 ], [ %i.me, %._crit_edge.loopexit.unr-lcssa ], [ %i.me, %.epil.preheader ] ; 6 uses
  %.sroa.0507.0599838 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.mj, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit272 ], [ %i.mj, %._crit_edge.loopexit.unr-lcssa ], [ %i.mj, %.epil.preheader ] ; 6 uses
  %.sroa.11512.0608832 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.mk, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit272 ], [ %i.mk, %._crit_edge.loopexit.unr-lcssa ], [ %i.mk, %.epil.preheader ] ; 2 uses
  store i8 1, ptr %i.im, align 4, !tbaa !180
  %i.na = load i64, ptr %i.hl, align 8, !tbaa !97
  %i.nb = trunc i64 %i.na to i32                  ; 3 uses
  %i.nc = trunc i64 %i.ma to i32                  ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ne = load float, ptr %i.nd, align 8, !tbaa !68
  %i.nf = load ptr, ptr %i.i, align 8, !tbaa !114
  invoke void @_ZN2cv3dnn13fastGemmBatchEmPKmS2_S2_iiifPKfiiS4_iifPfiRNS0_11FastGemmOptE(i64 noundef %i.lw, ptr noundef %.sroa.0515.0554581843, ptr noundef %.sroa.0507.0599838, ptr noundef %.sroa.0499.0853, i32 noundef %i.nb, i32 noundef %i.nb, i32 noundef %i.nc, float noundef %i.ne, ptr noundef %i.hi, i32 noundef %i.nc, i32 noundef 1, ptr noundef %i.hr, i32 noundef 1, i32 noundef %i.nc, float noundef 0.000000e+00, ptr noundef %i.nf, i32 noundef %i.nb, ptr noundef nonnull align 1 dereferenceable(5) %i.il)
          to label %bb.bq unwind label %bb.br

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit412

_ZNSt6vectorImSaImEED2Ev.exit410.thread:          ; preds = %bb.bm
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

_ZNSt6vectorImSaImEED2Ev.exit408.thread:          ; preds = %bb.bn
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.bp ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bp ]
  %i.nj = mul i64 %i.mb, %indvars.iv              ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv
  store i64 %i.nj, ptr %i.nk, align 8, !tbaa !62
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv
  store i64 %i.nj, ptr %i.nl, align 8, !tbaa !62
  %i.nm = mul i64 %i.ms, %indvars.iv
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv
  store i64 %i.nm, ptr %i.nn, align 8, !tbaa !62
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 5 uses
  %i.no = mul i64 %i.mb, %indvars.iv.next         ; 2 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv.next
  store i64 %i.no, ptr %i.np, align 8, !tbaa !62
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv.next
  store i64 %i.no, ptr %i.nq, align 8, !tbaa !62
  %i.nr = mul i64 %i.ms, %indvars.iv.next
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv.next
  store i64 %i.nr, ptr %i.ns, align 8, !tbaa !62
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.bp, !llvm.loop !176

bb.bq:                                            ; preds = %._crit_edge
  %i.nt = load ptr, ptr %i.jn, align 8, !tbaa !108
  %i.nu = load ptr, ptr %13, align 8, !tbaa !91   ; 2 uses
  %i.nv = ptrtoint ptr %i.nt to i64
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = sdiv exact i64 %i.nx, 208
  %i.nz = trunc i64 %i.ny to i32
  %i.oa = load ptr, ptr %i.hz, align 8, !tbaa !99
  %i.ob = load ptr, ptr %i.ib, align 8, !tbaa !99
  %i.oc = icmp eq ptr %i.oa, %i.ob                ; 2 uses
  %or.cond.v = select i1 %i.oc, i32 3, i32 1
  %or.cond = icmp slt i32 %or.cond.v, %i.nz
  br i1 %or.cond, label %.critedge, label %bb.dn

.critedge:                                        ; preds = %bb.bq
  %.v = select i1 %i.oc, i64 624, i64 208
  %i.od = getelementptr inbounds nuw i8, ptr %i.nu, i64 %.v ; 3 uses
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !181
  %i.of = and i32 %i.oe, 4095                     ; 2 uses
  %i.og = icmp eq i32 %i.of, 5
  br i1 %i.og, label %bb.bu, label %bb.bs

bb.br:                                            ; preds = %._crit_edge, %bb.bs
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.bs:                                            ; preds = %.critedge
  invoke void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef %i.of, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E15__cv_check__434) #25
          to label %bb.bt unwind label %bb.br

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.oi = getelementptr inbounds nuw i8, ptr %i.od, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %22, ptr noundef nonnull align 4 dereferenceable(52) %i.oi)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit unwind label %bb.bw

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit: ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  %i.oj = load i32, ptr %22, align 4, !tbaa !94   ; 11 uses
  store i32 %i.oj, ptr %i.k, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store ptr %i.k, ptr %23, align 8, !tbaa !182
  %i.ok = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %22, ptr %i.ok, align 8, !tbaa !132
  %i.ol = add nsw i32 %i.oj, -4                   ; 2 uses
  %i.om = icmp sgt i32 %i.oj, 4
  br i1 %i.om, label %.lr.ph703, label %._crit_edge704

.lr.ph703:                                        ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.on = getelementptr inbounds nuw i8, ptr %22, i64 12
  %wide.trip.count720 = zext nneg i32 %i.ol to i64
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bx
  %indvars.iv.next718 = add nuw nsw i64 %indvars.iv717, 1 ; 2 uses
  %exitcond721.not = icmp eq i64 %indvars.iv.next718, %wide.trip.count720
  br i1 %exitcond721.not, label %._crit_edge704, label %bb.bx, !llvm.loop !177

._crit_edge704:                                   ; preds = %bb.bv, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.oo = icmp sgt i32 %i.oj, 3
  br i1 %i.oo, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit.thread, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit.thread: ; preds = %._crit_edge704
  %i.op = zext nneg i32 %i.ol to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.op
  %i.os = load i32, ptr %i.or, align 4, !tbaa !95
  br label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit312

bb.bw:                                            ; preds = %bb.bu
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.bx:                                            ; preds = %.lr.ph703, %bb.bv
  %indvars.iv717 = phi i64 [ 0, %.lr.ph703 ], [ %indvars.iv.next718, %bb.bv ] ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv717
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !95
  %.not191 = icmp eq i32 %i.ov, 1
  br i1 %.not191, label %bb.bv, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  invoke void @_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUlvE_clB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %bb.bz unwind label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.ow = load ptr, ptr %25, align 8, !tbaa !27
  %i.ox = load i64, ptr %i.hj, align 8, !tbaa !96
  %i.oy = trunc i64 %i.ox to i32
  %i.oz = load i64, ptr %i.ej, align 8, !tbaa !61
  %i.pa = trunc i64 %i.oz to i32
  %i.pb = load i64, ptr %i.hl, align 8, !tbaa !97
  %i.pc = trunc i64 %i.pb to i32
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull @.str.36, ptr noundef %i.ow, i32 noundef %i.oy, i32 noundef %i.pa, i32 noundef %i.pc)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.2, i32 noundef 453) #25
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  unreachable

bb.cc:                                            ; preds = %bb.by
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

bb.cd:                                            ; preds = %bb.bz
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

bb.ce:                                            ; preds = %bb.ca
  %i.pf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pg = load ptr, ptr %24, align 8, !tbaa !27   ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.pi = icmp eq ptr %i.pg, %i.ph
  br i1 %i.pi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.ce
  %i.pj = load i64, ptr %i.ph, align 8, !tbaa !16
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280, %bb.cd
  %.pn192 = phi { ptr, i32 } [ %i.pe, %bb.cd ], [ %i.pf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ], [ %i.pf, %bb.ce ] ; 2 uses
  %i.pl = load ptr, ptr %25, align 8, !tbaa !27   ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.pn = icmp eq ptr %i.pl, %i.pm
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282
  %i.po = load i64, ptr %i.pm, align 8, !tbaa !16
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pl, i64 noundef %i.pp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283, %bb.cc
  %.pn192.pn = phi { ptr, i32 } [ %i.pd, %bb.cc ], [ %.pn192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283 ], [ %.pn192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %.body275

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit: ; preds = %._crit_edge704
  %i.pq = icmp eq i32 %i.oj, 3
  br i1 %i.pq, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit312, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit294

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit294: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit
  %i.pr = icmp sgt i32 %i.oj, 1
  br i1 %i.pr, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit334, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit303

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit303: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit294
  %i.ps = icmp eq i32 %i.oj, 1
  br i1 %i.ps, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit348.thread, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362.thread

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit312: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit.thread
  %i.pt = phi i32 [ %i.os, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit.thread ], [ 1, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit ] ; 2 uses
  %i.pu = load i64, ptr %i.hj, align 8, !tbaa !96
  %i.pv = trunc i64 %i.pu to i32
  %.not.i313 = icmp eq i32 %i.pt, 1               ; 2 uses
  %.not8.i = icmp eq i32 %i.pt, %i.pv
  %or.cond.i314 = or i1 %.not.i313, %.not8.i
  br i1 %or.cond.i314, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit312
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUlvE_clB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %.noexc318 unwind label %bb.di

.noexc318:                                        ; preds = %bb.cf
  %i.pw = load ptr, ptr %11, align 8, !tbaa !27
  %i.px = load i64, ptr %i.hj, align 8, !tbaa !96
  %i.py = trunc i64 %i.px to i32
  %i.pz = load i64, ptr %i.ej, align 8, !tbaa !61
  %i.qa = trunc i64 %i.pz to i32
  %i.qb = load i64, ptr %i.hl, align 8, !tbaa !97
  %i.qc = trunc i64 %i.qb to i32                  ; 2 uses
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.46, ptr noundef %i.pw, i32 noundef %i.py, i32 noundef %i.qa, i32 noundef %i.qc, i32 noundef %i.qc, ptr noundef nonnull @.str.37)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %.noexc318
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_, ptr noundef nonnull @.str.2, i32 noundef 464) #25
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  unreachable

bb.ci:                                            ; preds = %.noexc318
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i315

bb.cj:                                            ; preds = %bb.cg
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qf = load ptr, ptr %10, align 8, !tbaa !27   ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.qh = icmp eq ptr %i.qf, %i.qg
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i316: ; preds = %bb.cj
  %i.qi = load i64, ptr %i.qg, align 8, !tbaa !16
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i315: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i316, %bb.ci
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
          cleanup                                 ; 2 uses
  %i.ta = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.tc = icmp eq ptr %i.ta, %i.tb
  br i1 %i.tc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i357: ; preds = %bb.cy
  %i.td = load i64, ptr %i.tb, align 8, !tbaa !16
  %i.te = add i64 %i.td, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.te) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i352

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i352: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i357, %bb.cx
  %.pn.i353 = phi { ptr, i32 } [ %i.sy, %bb.cx ], [ %i.sz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i357 ], [ %i.sz, %bb.cy ]
  %i.tf = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.th = icmp eq ptr %i.tf, %i.tg
  br i1 %i.th, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i354

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i354: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i352
  %i.ti = load i64, ptr %i.tg, align 8, !tbaa !16
  %i.tj = add i64 %i.ti, 1
  call void @_ZdlPvm(ptr noundef %i.tf, i64 noundef %i.tj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i354
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body275

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  br i1 %.not.i313866881, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362._crit_edge, label %bb.cz

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362._crit_edge: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362.thread, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362
  %.not.i335921928941 = phi i1 [ true, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362.thread ], [ %.not.i335, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362 ]
  %i.tk = phi i32 [ %.ph946, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362.thread ], [ %i.ro, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362 ]
  %i.tl = phi i32 [ 1, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362.thread ], [ %i.rp, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362 ]
  %.not.i321882919930939 = phi i1 [ true, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362.thread ], [ %.not.i321882, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362 ]
  %.not.i349931937 = phi i1 [ %.not.i349925947, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362.thread ], [ %.not.i349, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362 ]
  %.pre733.a = sext i32 %i.tl to i64
  %.pre734 = sext i32 %i.tk to i64
  br label %bb.da

bb.cz:                                            ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362
  %i.tm = sext i32 %i.rn to i64
  %i.tn = sext i32 %i.rp to i64                   ; 2 uses
  %i.to = mul nsw i64 %i.tn, %i.tm
  %i.tp = sext i32 %i.ro to i64                   ; 2 uses
  %i.tq = mul i64 %i.to, %i.tp
  br label %bb.da

bb.da:                                            ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362._crit_edge, %bb.cz
  %.not.i335921928940 = phi i1 [ %.not.i335921928941, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362._crit_edge ], [ %.not.i335, %bb.cz ]
  %.not.i321882919930938 = phi i1 [ %.not.i321882919930939, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362._crit_edge ], [ %.not.i321882, %bb.cz ]
  %.not.i349931936 = phi i1 [ %.not.i349931937, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362._crit_edge ], [ %.not.i349, %bb.cz ]
  %.pre-phi735 = phi i64 [ %.pre734, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362._crit_edge ], [ %i.tp, %bb.cz ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre733.a, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362._crit_edge ], [ %i.tn, %bb.cz ]
  %i.tr = phi i64 [ 0, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit362._crit_edge ], [ %i.tq, %bb.cz ]
  store i64 %i.tr, ptr %i.l, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  %i.ts = mul nsw i64 %.pre-phi735, %.pre-phi
  %i.tt = select i1 %.not.i321882919930938, i64 0, i64 %i.ts
  store i64 %i.tt, ptr %i.m, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  %i.tu = select i1 %.not.i335921928940, i64 0, i64 %.pre-phi735
  store i64 %i.tu, ptr %i.n, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  %i.tv = zext i1 %.not.i349931936 to i8
  store i8 %i.tv, ptr %i.o, align 1, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  %i.tw = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !105
  store ptr %i.tx, ptr %i.p, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  store i32 0, ptr %26, align 4, !tbaa !116
  %i.ty = getelementptr inbounds nuw i8, ptr %26, i64 4
  store i32 %i.mz, ptr %i.ty, align 4, !tbaa !117
  %i.tz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %27, i8 0, i64 32, i1 false)
  %i.ua = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21
          to label %bb.de unwind label %bb.db     ; 9 uses

bb.db:                                            ; preds = %bb.da
  %i.ub = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uc = load ptr, ptr %i.tz, align 8, !tbaa !119 ; 2 uses
  %.not.i.i363 = icmp eq ptr %i.uc, null
  br i1 %.not.i.i363, label %.body365, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ud = invoke noundef zeroext i1 %i.uc(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 3)
          to label %.body365 unwind label %bb.dd  ; 0 uses

bb.dd:                                            ; preds = %bb.dc
  %i.ue = landingpad { ptr, i32 }
          catch ptr null
  %i.uf = extractvalue { ptr, i32 } %i.ue, 0
  call void @__clang_call_terminate(ptr %i.uf) #24
  unreachable

bb.de:                                            ; preds = %bb.da
  %i.ug = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %0, ptr %i.ua, align 16, !tbaa !121
  %.sroa.5476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  store ptr %i.p, ptr %.sroa.5476.0..sroa_idx, align 8, !tbaa !124
  %.sroa.6477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  store ptr %i.l, ptr %.sroa.6477.0..sroa_idx, align 16, !tbaa !125
  %.sroa.7478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  store ptr %i.m, ptr %.sroa.7478.0..sroa_idx, align 8, !tbaa !125
  %.sroa.8479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ua, i64 32
  store ptr %i.i, ptr %.sroa.8479.0..sroa_idx, align 16, !tbaa !124
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ua, i64 40
  store ptr %i.j, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !125
  %.sroa.10480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ua, i64 48
  store ptr %i.n, ptr %.sroa.10480.0..sroa_idx, align 16, !tbaa !125
  %.sroa.11481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ua, i64 56
  store ptr %i.o, ptr %.sroa.11481.0..sroa_idx, align 8, !tbaa !135
  store ptr %i.ua, ptr %27, align 8, !tbaa !126
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn18AttentionLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E0_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.ug, align 8, !tbaa !128
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn18AttentionLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.tz, align 8, !tbaa !119
  %i.uh = load i64, ptr %i.hl, align 8, !tbaa !97
  %i.ui = mul i64 %i.uh, %i.lw
  %i.uj = uitofp i64 %i.ui to double
  %i.uk = fmul nnan double %i.uj, f0x3F50000000000000
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %26, ptr noundef align 8 %27, double noundef %i.uk)
          to label %bb.df unwind label %bb.dj

bb.df:                                            ; preds = %bb.de
  %i.ul = load ptr, ptr %i.tz, align 8, !tbaa !119 ; 2 uses
  %.not.i367 = icmp eq ptr %i.ul, null
  br i1 %.not.i367, label %_ZNSt14_Function_baseD2Ev.exit368, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.um = invoke noundef zeroext i1 %i.ul(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit368 unwind label %bb.dh ; 0 uses

bb.dh:                                            ; preds = %bb.dg
  %i.un = landingpad { ptr, i32 }
          catch ptr null
  %i.uo = extractvalue { ptr, i32 } %i.un, 0
  call void @__clang_call_terminate(ptr %i.uo) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit368:                ; preds = %bb.df, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.dn

bb.di:                                            ; preds = %bb.cu, %bb.cp, %bb.ck, %bb.cf
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %.body275

bb.dj:                                            ; preds = %bb.de
  %i.uq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ur = load ptr, ptr %i.tz, align 8, !tbaa !119 ; 2 uses
  %.not.i369 = icmp eq ptr %i.ur, null
  br i1 %.not.i369, label %.body365, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.us = invoke noundef zeroext i1 %i.ur(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 3)
          to label %.body365 unwind label %bb.dl  ; 0 uses

bb.dl:                                            ; preds = %bb.dk
  %i.ut = landingpad { ptr, i32 }
          catch ptr null
  %i.uu = extractvalue { ptr, i32 } %i.ut, 0
  call void @__clang_call_terminate(ptr %i.uu) #24
  unreachable

.body365:                                         ; preds = %bb.dk, %bb.dj, %bb.dc, %bb.db
  %.pn178 = phi { ptr, i32 } [ %i.ub, %bb.db ], [ %i.uq, %bb.dk ], [ %i.ub, %bb.dc ], [ %i.uq, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  br label %.body275

.body275:                                         ; preds = %.body365, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i327, %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i341, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285
  %.pn192.pn.pn.pn = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i ], [ %.pn192.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ], [ %i.up, %bb.di ], [ %.pn178, %.body365 ], [ %.pn.i339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i341 ], [ %.pn.i325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i327 ], [ %.pn.i353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i355 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  br label %bb.dm

bb.dm:                                            ; preds = %.body275, %bb.bw
  %.pn192.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn192.pn.pn.pn, %.body275 ], [ %i.ot, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.dx

bb.dn:                                            ; preds = %bb.bq, %_ZNSt14_Function_baseD2Ev.exit368
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.uv = getelementptr inbounds nuw i8, ptr %i.lr, i64 280
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %28, ptr noundef nonnull align 4 dereferenceable(52) %i.uv)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit372 unwind label %bb.dw

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit372: ; preds = %bb.dn
  %i.uw = load i32, ptr %28, align 4, !tbaa !94
  %narrow.i373 = call i32 @llvm.smax.i32(i32 %i.uw, i32 0)
  %i.ux = add nsw i32 %narrow.i373, -1
  invoke void @_ZN2cv3dnn7softmaxERNS_3MatERKS1_i(ptr noundef nonnull align 8 dereferenceable(208) %i.ls, ptr noundef nonnull align 8 dereferenceable(208) %i.ls, i32 noundef %i.ux)
          to label %bb.do unwind label %bb.dw

bb.do:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit372
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %.not.i.i.i375 = icmp eq ptr %.sroa.0499.0853, null
  br i1 %.not.i.i.i375, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.uy = ptrtoint ptr %.sroa.11504.0854 to i64
  %i.uz = ptrtoint ptr %.sroa.0499.0853 to i64
  %i.va = sub i64 %i.uy, %i.uz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0499.0853, i64 noundef %i.va) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.do, %bb.dp
  %.not.i.i.i376 = icmp eq ptr %.sroa.0507.0599838, null
  br i1 %.not.i.i.i376, label %_ZNSt6vectorImSaImEED2Ev.exit377, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.vb = ptrtoint ptr %.sroa.11512.0608832 to i64
  %i.vc = ptrtoint ptr %.sroa.0507.0599838 to i64
  %i.vd = sub i64 %i.vb, %i.vc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0507.0599838, i64 noundef %i.vd) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit377

_ZNSt6vectorImSaImEED2Ev.exit377:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.dq
  %.not.i.i.i378 = icmp eq ptr %.sroa.0515.0554581843, null
  br i1 %.not.i.i.i378, label %_ZNSt6vectorImSaImEED2Ev.exit379, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit377
  %i.ve = ptrtoint ptr %.sroa.11520.0564570847 to i64
  %i.vf = ptrtoint ptr %.sroa.0515.0554581843 to i64
  %i.vg = sub i64 %i.ve, %i.vf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0515.0554581843, i64 noundef %i.vg) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit379

_ZNSt6vectorImSaImEED2Ev.exit379:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit377, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  %i.vh = load ptr, ptr %15, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  %i.vi = load ptr, ptr %14, align 8, !tbaa !91
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !105
  store ptr %i.vk, ptr %i.q, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #23
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vh, i64 440
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !105
  store ptr %i.vm, ptr %i.r, align 8, !tbaa !114
  %i.vn = load ptr, ptr %i.lt, align 8, !tbaa !105
  %i.vo = load i64, ptr %i.hj, align 8, !tbaa !96
  %i.vp = load i64, ptr %i.ej, align 8, !tbaa !61
  %i.vq = mul i64 %i.vp, %i.vo                    ; 14 uses
  %i.vr = load i64, ptr %i.hl, align 8, !tbaa !97 ; 3 uses
  %i.vs = mul i64 %i.vr, %i.vr                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #23
  %i.vt = load ptr, ptr %i.ip, align 8, !tbaa !66
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !62 ; 2 uses
  store i64 %i.vv, ptr %i.s, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #23
  %i.vw = mul i64 %i.vv, %i.vr
  store i64 %i.vw, ptr %i.t, align 8, !tbaa !62
  %i.vx = icmp ugt i64 %i.vq, 1152921504606846975
  br i1 %i.vx, label %bb.ds, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i380

bb.ds:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit379
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
          to label %.noexc386 unwind label %bb.eb

.noexc386:                                        ; preds = %bb.ds
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i380: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit379
  %.not.i.i.i.i381 = icmp eq i64 %i.vq, 0
  br i1 %.not.i.i.i.i381, label %._crit_edge708, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i380
  %i.vy = shl nuw nsw i64 %i.vq, 3                ; 3 uses
  %i.vz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vy) #21
          to label %.noexc387 unwind label %bb.eb ; 11 uses

.noexc387:                                        ; preds = %bb.dt
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %i.vq ; 5 uses
  store i64 0, ptr %i.vz, align 8, !tbaa !62
  %i.wb = add nsw i64 %i.vq, -1                   ; 4 uses
  %i.wc = icmp eq i64 %i.wb, 0                    ; 3 uses
  br i1 %i.wc, label %bb.du, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i382

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i382: ; preds = %.noexc387
  %i.wd = getelementptr i8, ptr %i.vz, i64 8
  %.idx.i.i.i.i.i.i.i383 = shl nuw nsw i64 %i.wb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.wd, i8 0, i64 %.idx.i.i.i.i.i.i.i383, i1 false), !tbaa !62
  br label %bb.du

bb.du:                                            ; preds = %.noexc387, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i382
  %i.we = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vy) #21
          to label %.noexc396 unwind label %_ZNSt6vectorImSaImEED2Ev.exit450.thread ; 10 uses

.noexc396:                                        ; preds = %bb.du
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.we, i64 %i.vq ; 4 uses
  store i64 0, ptr %i.we, align 8, !tbaa !62
  br i1 %i.wc, label %bb.dv, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i391

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i391: ; preds = %.noexc396
  %i.wg = getelementptr i8, ptr %i.we, i64 8
  %.idx.i.i.i.i.i.i.i392 = shl nuw nsw i64 %i.wb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.wg, i8 0, i64 %.idx.i.i.i.i.i.i.i392, i1 false), !tbaa !62
  br label %bb.dv

bb.dv:                                            ; preds = %.noexc396, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i391
  %i.wh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vy) #21
          to label %.noexc405 unwind label %_ZNSt6vectorImSaImEED2Ev.exit448.thread ; 9 uses

.noexc405:                                        ; preds = %bb.dv
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %i.vq ; 3 uses
  store i64 0, ptr %i.wh, align 8, !tbaa !62
  br i1 %i.wc, label %.lr.ph707, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit406

_ZNSt6vectorImSaImEEC2EmRKS0_.exit406:            ; preds = %.noexc405
  %i.wj = getelementptr i8, ptr %i.wh, i64 8
  %.idx.i.i.i.i.i.i.i401 = shl nuw nsw i64 %i.wb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.wj, i8 0, i64 %.idx.i.i.i.i.i.i.i401, i1 false), !tbaa !62
  %i.wk = trunc i64 %i.vq to i32                  ; 3 uses
  %i.wl = icmp sgt i32 %i.wk, 0
  br i1 %i.wl, label %.lr.ph707, label %._crit_edge708

.lr.ph707:                                        ; preds = %.noexc405, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit406
  %i.wm = phi i32 [ %i.wk, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit406 ], [ 1, %.noexc405 ] ; 2 uses
  %i.wn = load i64, ptr %i.t, align 8, !tbaa !62  ; 3 uses
  %wide.trip.count725 = and i64 %i.vq, 2147483647
  %xtraiter966 = and i64 %i.vq, 1
  %i.wo = icmp eq i64 %wide.trip.count725, 1
  br i1 %i.wo, label %.epil.preheader965, label %.lr.ph707.new

.lr.ph707.new:                                    ; preds = %.lr.ph707
  %unroll_iter969 = and i64 %i.vq, 2147483646
  br label %bb.ec

._crit_edge708.loopexit.unr-lcssa:                ; preds = %bb.ec
  %lcmp.mod967.not = icmp eq i64 %xtraiter966, 0
  br i1 %lcmp.mod967.not, label %._crit_edge708, label %.epil.preheader965

.epil.preheader965:                               ; preds = %._crit_edge708.loopexit.unr-lcssa, %.lr.ph707
  %indvars.iv722.epil.init = phi i64 [ 0, %.lr.ph707 ], [ %indvars.iv.next723.1, %._crit_edge708.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod968 = trunc i64 %i.vq to i1
  call void @llvm.assume(i1 %lcmp.mod968)
  %i.wp = mul i64 %i.vs, %indvars.iv722.epil.init
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %indvars.iv722.epil.init
  store i64 %i.wp, ptr %i.wq, align 8, !tbaa !62
  %i.wr = mul i64 %i.wn, %indvars.iv722.epil.init ; 2 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.we, i64 %indvars.iv722.epil.init
  store i64 %i.wr, ptr %i.ws, align 8, !tbaa !62
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %indvars.iv722.epil.init
  store i64 %i.wr, ptr %i.wt, align 8, !tbaa !62
  br label %._crit_edge708

._crit_edge708:                                   ; preds = %.epil.preheader965, %._crit_edge708.loopexit.unr-lcssa, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i380, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit406
  %i.wu = phi i32 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i380 ], [ %i.wk, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit406 ], [ %i.wm, %._crit_edge708.loopexit.unr-lcssa ], [ %i.wm, %.epil.preheader965 ]
  %.sroa.11.0904 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i380 ], [ %i.wi, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit406 ], [ %i.wi, %._crit_edge708.loopexit.unr-lcssa ], [ %i.wi, %.epil.preheader965 ] ; 2 uses
  %.sroa.0454.0902 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i380 ], [ %i.wh, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit406 ], [ %i.wh, %._crit_edge708.loopexit.unr-lcssa ], [ %i.wh, %.epil.preheader965 ] ; 7 uses
  %.sroa.11473.0624630898 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i380 ], [ %i.wa, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit406 ], [ %i.wa, %._crit_edge708.loopexit.unr-lcssa ], [ %i.wa, %.epil.preheader965 ] ; 3 uses
  %.sroa.0468.0617632896 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i380 ], [ %i.vz, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit406 ], [ %i.vz, %._crit_edge708.loopexit.unr-lcssa ], [ %i.vz, %.epil.preheader965 ] ; 6 uses
  %.sroa.0460.0638893 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i380 ], [ %i.we, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit406 ], [ %i.we, %._crit_edge708.loopexit.unr-lcssa ], [ %i.we, %.epil.preheader965 ] ; 6 uses
  %.sroa.11465.0644889 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i380 ], [ %i.wf, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit406 ], [ %i.wf, %._crit_edge708.loopexit.unr-lcssa ], [ %i.wf, %.epil.preheader965 ] ; 2 uses
  store i8 1, ptr %i.im, align 4, !tbaa !180
  %i.wv = load i64, ptr %i.hl, align 8, !tbaa !97
  %i.ww = trunc i64 %i.wv to i32                  ; 3 uses
  %i.wx = load i64, ptr %i.s, align 8, !tbaa !62
  %i.wy = trunc i64 %i.wx to i32                  ; 3 uses
  %i.wz = load ptr, ptr %i.r, align 8, !tbaa !114
  invoke void @_ZN2cv3dnn13fastGemmBatchEmPKmS2_S2_iiifPKfiiS4_iifPfiRNS0_11FastGemmOptE(i64 noundef %i.vq, ptr noundef %.sroa.0468.0617632896, ptr noundef %.sroa.0460.0638893, ptr noundef %.sroa.0454.0902, i32 noundef %i.ww, i32 noundef %i.wy, i32 noundef %i.ww, float noundef 1.000000e+00, ptr noundef %i.vn, i32 noundef %i.ww, i32 noundef 1, ptr noundef %i.hv, i32 noundef %i.wy, i32 noundef 1, float noundef 0.000000e+00, ptr noundef %i.wz, i32 noundef %i.wy, ptr noundef nonnull align 1 dereferenceable(5) %i.il)
          to label %bb.ed unwind label %bb.ev

bb.dw:                                            ; preds = %bb.dn, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit372
  %i.xa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dm, %bb.br
  %.pn192.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oh, %bb.br ], [ %i.xa, %bb.dw ], [ %.pn192.pn.pn.pn.pn, %bb.dm ] ; 2 uses
  %.not.i.i.i407 = icmp eq ptr %.sroa.0499.0853, null
  br i1 %.not.i.i.i407, label %_ZNSt6vectorImSaImEED2Ev.exit408, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.xb = ptrtoint ptr %.sroa.11504.0854 to i64
  %i.xc = ptrtoint ptr %.sroa.0499.0853 to i64
  %i.xd = sub i64 %i.xb, %i.xc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0499.0853, i64 noundef %i.xd) #22
end_hunk_1
