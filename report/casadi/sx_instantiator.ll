Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sx_instantiator?download=true
inline.NumInlined: 12553
inline.NumDeleted: 2538
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN6casadi6MatrixINS_6SXElemEE3cseERKSt6vectorIS2_SaIS2_EE:._crit_edge.i.i
  %.0173664 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #30, !noalias !1461
  invoke void @_ZN6casadi6SXElemC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %53, double noundef 0.000000e+00)
          to label %.noexc284 unwind label %bb.v

.noexc284:                                        ; preds = %bb.o
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.de, i64 %.0173664
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKNS_8SparsityERKS1_b(ptr noundef nonnull align 8 dereferenceable(40) %61, ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %53, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.noexc284
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #30, !noalias !1461
  br label %.body285

bb.q:                                             ; preds = %.noexc284
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #30, !noalias !1461
  %i.di = load ptr, ptr %i.cg, align 8, !tbaa !123 ; 3 uses
  %i.dj = load ptr, ptr %i.ch, align 8, !tbaa !124
  %.not.i.i287 = icmp eq ptr %i.di, %i.dj
  br i1 %.not.i.i287, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.di, ptr noundef nonnull align 8 dereferenceable(40) %61)
          to label %.noexc288 unwind label %bb.w

.noexc288:                                        ; preds = %bb.r
  %i.dk = load ptr, ptr %i.cg, align 8, !tbaa !123
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  store ptr %i.dl, ptr %i.cg, align 8, !tbaa !123
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit

bb.s:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.di, ptr noundef nonnull align 8 dereferenceable(40) %61)
          to label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit unwind label %bb.w

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit: ; preds = %.noexc288, %bb.s
  %i.dm = load ptr, ptr %i.ci, align 8, !tbaa !57 ; 3 uses
  %i.dn = load ptr, ptr %i.cj, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.dm, %i.dn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %i.dm, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #30
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, %i.dn
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ci, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit
  %i.dp = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dm, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.dq = load ptr, ptr %i.ck, align 8, !tbaa !59
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.dt) #31
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i: ; preds = %bb.t, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit:          ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  %i.dw = add nuw nsw i64 %.0173664, 1            ; 2 uses
  %i.dx = load ptr, ptr %i.cd, align 8, !tbaa !123
  %i.dy = load ptr, ptr %1, align 8, !tbaa !125   ; 2 uses
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = sdiv exact i64 %i.eb, 40
  %i.ed = icmp ult i64 %i.dw, %i.ec
  br i1 %i.ed, label %bb.o, label %._crit_edge, !llvm.loop !1450

bb.v:                                             ; preds = %bb.o
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body285

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %61) #30
  br label %.body285

.body285:                                         ; preds = %bb.v, %bb.p, %bb.w
  %.pn273 = phi { ptr, i32 } [ %i.ef, %bb.w ], [ %i.ee, %bb.v ], [ %i.dh, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  br label %bb.iy

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  %i.eg = invoke noundef i64 @_ZNK6casadi8Function6sz_argEv(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.y unwind label %bb.ag      ; 5 uses

bb.y:                                             ; preds = %bb.x
  %i.eh = icmp ugt i64 %i.eg, 1152921504606846975
  br i1 %i.eh, label %bb.z, label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.481) #28
          to label %.noexc292 unwind label %bb.ah

.noexc292:                                        ; preds = %bb.z
  unreachable

_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.y
  %.not.i.i.i.i291 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i.i.i291, label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.ei = shl nuw nsw i64 %i.eg, 3
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #29
          to label %.noexc293 unwind label %bb.ah ; 5 uses

.noexc293:                                        ; preds = %bb.aa
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eg ; 2 uses
  store ptr null, ptr %i.ej, align 8, !tbaa !60
  %i.el = add nsw i64 %i.eg, -1                   ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit, label %_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc293
  %i.en = getelementptr i8, ptr %i.ej, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.el, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.en, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !60
  br label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit

_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit: ; preds = %_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc293, %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %.sroa.12604.0 = phi ptr [ %i.ek, %_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ek, %.noexc293 ], [ null, %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  %.sroa.0598.0 = phi ptr [ %i.ej, %_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ej, %.noexc293 ], [ null, %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 8 uses
  %i.eo = invoke noundef i64 @_ZNK6casadi8Function6sz_resEv(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.ab unwind label %bb.ai     ; 5 uses

bb.ab:                                            ; preds = %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit
  %i.ep = icmp ugt i64 %i.eo, 1152921504606846975
  br i1 %i.ep, label %bb.ac, label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.481) #28
          to label %.noexc297 unwind label %bb.aj

.noexc297:                                        ; preds = %bb.ac
  unreachable

_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.ab
  %.not.i.i.i.i294 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i.i.i294, label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.eq = shl nuw nsw i64 %i.eo, 3
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #29
          to label %.noexc298 unwind label %bb.aj ; 5 uses

.noexc298:                                        ; preds = %bb.ad
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eo ; 2 uses
  store ptr null, ptr %i.er, align 8, !tbaa !60
  %i.et = add nsw i64 %i.eo, -1                   ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit, label %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc298
  %i.ev = getelementptr i8, ptr %i.er, i64 8
  %.idx.i.i.i.i.i.i.i295 = shl nuw nsw i64 %i.et, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ev, i8 0, i64 %.idx.i.i.i.i.i.i.i295, i1 false), !tbaa !60
  br label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc298, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.12.0 = phi ptr [ %i.es, %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.es, %.noexc298 ], [ null, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sroa.0591.0 = phi ptr [ %i.er, %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.er, %.noexc298 ], [ null, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 11 uses
  %i.ew = load ptr, ptr %i.cd, align 8, !tbaa !123 ; 2 uses
  %i.ex = load ptr, ptr %1, align 8, !tbaa !125   ; 2 uses
  %.not685 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not685, label %._crit_edge667, label %.lr.ph666

.lr.ph666:                                        ; preds = %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %.fr907 = freeze i64 %i.fa
  %i.fb = sdiv i64 %.fr907, 40                    ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !123
  %i.fe = load ptr, ptr %0, align 8, !tbaa !125   ; 8 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = sdiv exact i64 %i.fh, 40                ; 5 uses
  %i.fj = add nsw i64 %i.fb, -1
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fj, i64 %i.fi)
  %i.fl = add nsw i64 %i.fk, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.fl, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph666
  %.0172665.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph666 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph666
  %90 = add nsw i64 %i.fb, -1
  %umin = call i64 @llvm.umin.i64(i64 %90, i64 %i.fi) ; 2 uses
  %i.fm = shl nsw i64 %umin, 3
  %i.fn = getelementptr i8, ptr %.sroa.0591.0, i64 %i.fm
  %scevgep = getelementptr i8, ptr %i.fn, i64 8
  %scevgep905 = getelementptr i8, ptr %i.fe, i64 16
  %i.fo = mul i64 %umin, 40
  %i.fp = getelementptr i8, ptr %i.fe, i64 %i.fo
  %scevgep906 = getelementptr i8, ptr %i.fp, i64 32
  %bound0 = icmp ult ptr %.sroa.0591.0, %scevgep906
  %bound1 = icmp ult ptr %scevgep905, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fq = and i64 %i.fl, 3                        ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  %i.fs = select i1 %i.fr, i64 4, i64 %i.fq
  %n.vec = sub i64 %i.fl, %i.fs                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ft = getelementptr inbounds nuw [40 x i8], ptr %i.fe, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw [40 x i8], ptr %i.fe, i64 %index ; 2 uses
  %i.fv = getelementptr inbounds nuw [40 x i8], ptr %i.fe, i64 %index ; 2 uses
  %i.fw = getelementptr inbounds nuw [40 x i8], ptr %i.fe, i64 %index ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 96
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 136
  %i.gb = load ptr, ptr %i.fx, align 8, !tbaa !60, !alias.scope !1462
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !60, !alias.scope !1462
  %i.gd = insertelement <2 x ptr> poison, ptr %i.gb, i64 0
  %i.ge = insertelement <2 x ptr> %i.gd, ptr %i.gc, i64 1 ; 2 uses
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !60, !alias.scope !1462
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !60, !alias.scope !1462
  %i.gh = insertelement <2 x ptr> poison, ptr %i.gf, i64 0
  %i.gi = insertelement <2 x ptr> %i.gh, ptr %i.gg, i64 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fu, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 104
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 144
  %i.gn = load ptr, ptr %i.gj, align 8, !tbaa !60, !alias.scope !1462
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !60, !alias.scope !1462
  %i.gp = insertelement <2 x ptr> poison, ptr %i.gn, i64 0
  %i.gq = insertelement <2 x ptr> %i.gp, ptr %i.go, i64 1
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !60, !alias.scope !1462
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !60, !alias.scope !1462
  %i.gt = insertelement <2 x ptr> poison, ptr %i.gr, i64 0
  %i.gu = insertelement <2 x ptr> %i.gt, ptr %i.gs, i64 1
  %i.gv = icmp eq <2 x ptr> %i.ge, %i.gq
  %i.gw = icmp eq <2 x ptr> %i.gi, %i.gu
  %i.gx = select <2 x i1> %i.gv, <2 x ptr> splat (ptr null), <2 x ptr> %i.ge
  %i.gy = select <2 x i1> %i.gw, <2 x ptr> splat (ptr null), <2 x ptr> %i.gi
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0591.0, i64 %index ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <2 x ptr> %i.gx, ptr %i.gz, align 8, !tbaa !60, !alias.scope !1463, !noalias !1462
  store <2 x ptr> %i.gy, ptr %i.ha, align 8, !tbaa !60, !alias.scope !1463, !noalias !1462
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1454

._crit_edge667:                                   ; preds = %bb.al, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #30
  %i.hc = getelementptr inbounds nuw i8, ptr %64, i64 48 ; 2 uses
  store ptr %i.hc, ptr %64, align 8, !tbaa !359
  %i.hd = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 3 uses
  store i64 1, ptr %i.hd, align 8, !tbaa !360
  %i.he = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %64, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hf, align 8, !tbaa !1464
  %i.hg = getelementptr inbounds nuw i8, ptr %64, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(496) %65)
          to label %.noexc299 unwind label %bb.au

.noexc299:                                        ; preds = %._crit_edge667
  %i.hh = getelementptr inbounds nuw i8, ptr %65, i64 392 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, i8 0, i64 24, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %65, i64 416
  %i.hj = getelementptr inbounds nuw i8, ptr %65, i64 16
  invoke void @_ZN6casadi17SerializingStreamC1ERSo(ptr noundef nonnull align 8 dereferenceable(73) %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %i.hj)
          to label %_ZN6casadi21IncrementalSerializerC2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc299
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hh) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(496) %65) #30
  br label %.body300

bb.af:                                            ; preds = %._crit_edge
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  br label %bb.ix

bb.ag:                                            ; preds = %bb.x
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EED2Ev.exit572

bb.ah:                                            ; preds = %bb.aa, %bb.z
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EED2Ev.exit572

bb.ai:                                            ; preds = %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EED2Ev.exit570

bb.aj:                                            ; preds = %bb.ad, %bb.ac
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EED2Ev.exit570

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.al
  %.0172665 = phi i64 [ %i.hx, %bb.al ], [ %.0172665.ph, %scalar.ph.preheader ] ; 4 uses
  %exitcond.not = icmp eq i64 %.0172665, %i.fi
  br i1 %exitcond.not, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %scalar.ph
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.482, i64 noundef %i.fi, i64 noundef %i.fi) #28
          to label %.noexc303 unwind label %bb.am

.noexc303:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %scalar.ph
  %i.hq = getelementptr inbounds nuw [40 x i8], ptr %i.fe, i64 %.0172665 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !60 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !60
  %i.hv = icmp eq ptr %i.hs, %i.hu
  %spec.select.i = select i1 %i.hv, ptr null, ptr %i.hs
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0591.0, i64 %.0172665
  store ptr %spec.select.i, ptr %i.hw, align 8, !tbaa !60
  %i.hx = add nuw i64 %.0172665, 1                ; 2 uses
  %exitcond713.not = icmp eq i64 %i.hx, %i.fb
  br i1 %exitcond713.not, label %._crit_edge667, label %scalar.ph, !llvm.loop !1455

bb.am:                                            ; preds = %bb.ak
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

_ZN6casadi21IncrementalSerializerC2Ev.exit:       ; preds = %.noexc299
  %i.hz = getelementptr inbounds nuw i8, ptr %i.cc, i64 1440
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !60
  %i.ib = getelementptr inbounds nuw i8, ptr %i.cc, i64 1392
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #30
  %i.id = getelementptr inbounds nuw i8, ptr %66, i64 48 ; 2 uses
  store ptr %i.id, ptr %66, align 8, !tbaa !362
  %i.ie = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 3 uses
  store i64 1, ptr %i.ie, align 8, !tbaa !363
  %i.if = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %66, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ig, align 8, !tbaa !1464
  %i.ih = getelementptr inbounds nuw i8, ptr %66, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.cc, i64 1360
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !269 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.cc, i64 1368
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !269 ; 2 uses
  %.not628678 = icmp eq ptr %i.ij, %i.il
  br i1 %.not628678, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8FunctionEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph682

.lr.ph682:                                        ; preds = %_ZN6casadi21IncrementalSerializerC2Ev.exit
  %i.im = getelementptr inbounds nuw i8, ptr %i.cc, i64 1584
  %i.in = getelementptr inbounds nuw i8, ptr %i.cc, i64 1592
  %i.io = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %74, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %74, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %74, i64 40
  %i.it = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %75, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 4 uses
  br label %bb.av

._crit_edge683:                                   ; preds = %bb.is
  %.pre715 = load ptr, ptr %i.if, align 8, !tbaa !364 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pre715, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8FunctionEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i304

.lr.ph.i.i.i.i304:                                ; preds = %._crit_edge683, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.jf, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi8FunctionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %.pre715, %._crit_edge683 ] ; 5 uses
  %i.jf = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !213 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jh) #30
end_hunk_0
