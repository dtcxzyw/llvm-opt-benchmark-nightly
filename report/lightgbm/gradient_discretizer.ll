Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gradient_discretizer?download=true
inline.NumInlined: 717
inline.NumDeleted: 360
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS2_:bb.a
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27 ; 5 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v ; 2 uses
  %i.aa = add nsw i64 %i.v, -8                    ; 3 uses
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %xtraiter = and i64 %i.ac, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.noexc26, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.07.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.w, %.noexc26 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.noexc26 ]
  store double %i.o, ptr %.07.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !90

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc26
  %.07.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.w, %.noexc26 ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %i.aa, 56
  br i1 %i.ae, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store double %i.o, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8
  store double %i.o, ptr %i.af, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 16
  store double %i.o, ptr %i.ag, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 24
  store double %i.o, ptr %i.ah, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 32
  store double %i.o, ptr %i.ai, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 40
  store double %i.o, ptr %i.aj, align 8, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 48
  store double %i.o, ptr %i.ak, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 56
  store double %i.o, ptr %i.al, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.am, %i.z
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i33: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.loopexit

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.z, ptr %i.an, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc35 unwind label %bb.i   ; 5 uses

.noexc35:                                         ; preds = %.unr-lcssa
  store ptr %i.ao, ptr %5, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.t
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.v ; 3 uses
  %xtraiter77 = and i64 %i.ac, 7                  ; 2 uses
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.lr.ph.i.i.i.i.i.i.i.i.i29.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i29.prol

.lr.ph.i.i.i.i.i.i.i.i.i29.prol:                  ; preds = %.noexc35, %.lr.ph.i.i.i.i.i.i.i.i.i29.prol
  %.07.i.i.i.i.i.i.i.i.i30.prol = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i29.prol ], [ %i.ao, %.noexc35 ] ; 2 uses
  %prol.iter79 = phi i64 [ %prol.iter79.next, %.lr.ph.i.i.i.i.i.i.i.i.i29.prol ], [ 0, %.noexc35 ]
  store double %i.r, ptr %.07.i.i.i.i.i.i.i.i.i30.prol, align 8, !tbaa !39
  %i.as = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i30.prol, i64 8 ; 2 uses
  %prol.iter79.next = add i64 %prol.iter79, 1     ; 2 uses
  %prol.iter79.cmp.not = icmp eq i64 %prol.iter79.next, %xtraiter77
  br i1 %prol.iter79.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i29.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i29.prol, !llvm.loop !91

.lr.ph.i.i.i.i.i.i.i.i.i29.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i29.prol, %.noexc35
  %.07.i.i.i.i.i.i.i.i.i30.unr = phi ptr [ %i.ao, %.noexc35 ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i29.prol ]
  %i.at = icmp ult i64 %i.aa, 56
  br i1 %i.at, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i.i.i.i29:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i29.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i29
  %.07.i.i.i.i.i.i.i.i.i30 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i29 ], [ %.07.i.i.i.i.i.i.i.i.i30.unr, %.lr.ph.i.i.i.i.i.i.i.i.i29.prol.loopexit ] ; 9 uses
  store double %i.r, ptr %.07.i.i.i.i.i.i.i.i.i30, align 8, !tbaa !39
  %i.au = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i30, i64 8
  store double %i.r, ptr %i.au, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i30, i64 16
  store double %i.r, ptr %i.av, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i30, i64 24
  store double %i.r, ptr %i.aw, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i30, i64 32
  store double %i.r, ptr %i.ax, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i30, i64 40
  store double %i.r, ptr %i.ay, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i30, i64 48
  store double %i.r, ptr %i.az, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i30, i64 56
  store double %i.r, ptr %i.ba, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i30, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i31.7 = icmp eq ptr %i.bb, %i.ar
  br i1 %.not.i.i.i.i.i.i.i.i.i31.7, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i29, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i29.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i29, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i33
  %.0.i.i.i.i.i.i.i32 = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i33 ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i29 ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i29.prol.loopexit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i.i.i.i.i.i.i32, ptr %i.bc, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.be = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %bb.e unwind label %bb.b       ; 5 uses

bb.b:                                             ; preds = %.loopexit
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !43 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body unwind label %bb.d      ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #28
  unreachable

bb.e:                                             ; preds = %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %2, ptr %i.be, align 16, !tbaa !35
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !35
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %4, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !45
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %5, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !45
  store ptr %i.be, ptr %6, align 8, !tbaa !46
  store ptr @"_ZNSt17_Function_handlerIFviiiEZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS4_E3$_0E9_M_invokeERKSt9_Any_dataOiSA_SA_", ptr %i.bk, align 8, !tbaa !48
  store ptr @"_ZNSt17_Function_handlerIFviiiEZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.bd, align 8, !tbaa !43
  %i.bl = invoke noundef i32 @_ZN8LightGBM9Threading3ForIiEEiT_S2_S2_RKSt8functionIFviS2_S2_EE(i32 noundef 0, i32 noundef %1, i32 noundef 1024, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !43 ; 2 uses
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = invoke noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  %i.bq = load ptr, ptr %4, align 8, !tbaa !27    ; 4 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !39 ; 3 uses
  %i.bs = load ptr, ptr %5, align 8, !tbaa !27    ; 4 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !39 ; 3 uses
  %i.bu = icmp samesign ugt i32 %i.s, 1
  br i1 %i.bu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %wide.trip.count = zext nneg i32 %i.s to i64
  %i.bv = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter80 = and i64 %i.bv, 1
  %i.bw = icmp eq i32 %i.s, 2
  br i1 %i.bw, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bv, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.05864.epil.init = phi double [ %i.br, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.05963.epil.init = phi double [ %i.bt, %.lr.ph.preheader ], [ %.160.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod84 = trunc i64 %i.bv to i1
  call void @llvm.assume(i1 %lcmp.mod84)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.epil.init
  %i.by = load double, ptr %i.bx, align 8, !tbaa !39 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.epil.init
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !39 ; 2 uses
  %i.cb = fcmp olt double %.05864.epil.init, %i.by
  %.1.epil = select i1 %i.cb, double %i.by, double %.05864.epil.init
  %7 = fcmp olt double %.05963.epil.init, %i.ca
  %.160.epil = select i1 %7, double %i.ca, double %.05963.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt14_Function_baseD2Ev.exit
  %.059.lcssa = phi double [ %i.bt, %_ZNSt14_Function_baseD2Ev.exit ], [ %.160.1, %._crit_edge.loopexit.unr-lcssa ], [ %.160.epil, %.lr.ph.epil.preheader ] ; 3 uses
  %.058.lcssa = phi double [ %i.br, %_ZNSt14_Function_baseD2Ev.exit ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ] ; 3 uses
  %i.cc = invoke noundef i32 @_ZN8LightGBM7Network12num_machinesEv()
          to label %bb.m unwind label %bb.q

bb.i:                                             ; preds = %.unr-lcssa
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit46

bb.j:                                             ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %i.bd, align 8, !tbaa !43 ; 2 uses
  %.not.i37 = icmp eq ptr %i.cf, null
  br i1 %.not.i37, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body unwind label %bb.l      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #28
  unreachable

.body:                                            ; preds = %bb.k, %bb.j, %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.b ], [ %i.ce, %bb.k ], [ %i.bf, %bb.c ], [ %i.ce, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.ac

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.05864 = phi double [ %i.br, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ] ; 2 uses
  %.05963 = phi double [ %i.bt, %.lr.ph.preheader.new ], [ %.160.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !39 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !39 ; 2 uses
  %i.cn = fcmp olt double %.05864, %i.ck
  %.1 = select i1 %i.cn, double %i.ck, double %.05864 ; 2 uses
  %8 = fcmp olt double %.05963, %i.cm
  %.160 = select i1 %8, double %i.cm, double %.05963 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next
  %i.cp = load double, ptr %i.co, align 8, !tbaa !39 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !39 ; 2 uses
  %i.cs = fcmp olt double %.1, %i.cp
  %.1.1 = select i1 %i.cs, double %i.cp, double %.1 ; 3 uses
  %9 = fcmp olt double %.160, %i.cr
  %.160.1 = select i1 %9, double %i.cr, double %.160 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !92

bb.m:                                             ; preds = %._crit_edge
  %i.ct = icmp sgt i32 %i.cc, 1
  br i1 %i.ct, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %.058.lcssa, ptr %i.d, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store double %.058.lcssa, ptr %i.e, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store ptr @_ZZN8LightGBM7Network17GlobalSyncUpByMaxIdEET_S2_ENUlPKcPciiE_8__invokeES4_S5_ii, ptr %i.f, align 8, !tbaa !46
  invoke void @_ZN8LightGBM7Network9AllreduceEPciiS1_RKPFvPKcS1_iiE(ptr noundef nonnull %i.d, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  %i.cu = load double, ptr %i.e, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %.059.lcssa, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store double %.059.lcssa, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr @_ZZN8LightGBM7Network17GlobalSyncUpByMaxIdEET_S2_ENUlPKcPciiE_8__invokeES4_S5_ii, ptr %i.c, align 8, !tbaa !46
  invoke void @_ZN8LightGBM7Network9AllreduceEPciiS1_RKPFvPKcS1_iiE(ptr noundef nonnull %i.a, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  %i.cv = load double, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n, %._crit_edge
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.r:                                             ; preds = %bb.p, %bb.m
  %.261 = phi double [ %i.cv, %bb.p ], [ %.059.lcssa, %bb.m ] ; 3 uses
  %.2 = phi double [ %i.cu, %bb.p ], [ %.058.lcssa, %bb.m ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 5136
  store double %.2, ptr %i.cx, align 8, !tbaa !93
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 5144
  store double %.261, ptr %i.cy, align 8, !tbaa !94
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !64 ; 2 uses
  %i.db = sdiv i32 %i.da, 2
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 5152
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !95, !range !96, !noundef !65
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = insertelement <2 x i32> poison, i32 %i.db, i64 0
  %i.dh = insertelement <2 x i32> %i.dg, i32 %i.da, i64 1
  %i.di = sitofp <2 x i32> %i.dh to <2 x double>
  %i.dj = insertelement <2 x double> poison, double %.2, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %.261, i64 1
  %i.dl = fdiv <2 x double> %i.dk, %i.di          ; 3 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 0
  store double %i.dm, ptr %i.dc, align 8, !tbaa !66
  %i.dn = extractelement <2 x double> %i.dl, i64 1
  %.sink = select i1 %i.df, double %.261, double %i.dn ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 5160
  store double %.sink, ptr %i.do, align 8, !tbaa !67
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.dq = insertelement <2 x double> %i.dl, double %.sink, i64 1
  %i.dr = fdiv <2 x double> splat (double 1.000000e+00), %i.dq
  store <2 x double> %i.dr, ptr %i.dp, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 5080 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.du = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %i.ds, ptr noundef nonnull align 8 dereferenceable(5000) %i.dt, ptr noundef nonnull align 4 dereferenceable(8) %i.ds)
          to label %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit unwind label %bb.u

_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit: ; preds = %bb.r
  store i32 %i.du, ptr %i.j, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 5088
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !31
  store ptr %i.dw, ptr %i.k, align 8, !tbaa !68
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !97, !range !96, !noundef !65
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = load i8, ptr %i.dd, align 8, !tbaa !95, !range !96, !noundef !65
  %i.eb = trunc nuw i8 %i.ea to i1                ; 2 uses
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.s)
  br i1 %i.dz, label %bb.s, label %bb.w

bb.s:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit
  br i1 %i.eb, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS2_.omp_outlined, ptr nonnull %i.g, ptr nonnull %i.h, ptr nonnull %i.j, ptr nonnull %i.k, ptr nonnull %0)
  br label %bb.z

bb.u:                                             ; preds = %bb.r
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  br label %bb.ac

bb.v:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS2_.omp_outlined.3, ptr nonnull %i.g, ptr nonnull %i.h, ptr nonnull %i.j, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %i.i)
  br label %bb.z

bb.w:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit
  br i1 %i.eb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS2_.omp_outlined.4, ptr nonnull %i.g, ptr nonnull %i.h, ptr nonnull %i.k, ptr nonnull %0)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS2_.omp_outlined.5, ptr nonnull %i.g, ptr nonnull %i.h, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %i.i)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.t, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  %i.ed = load ptr, ptr %5, align 8, !tbaa !27    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !28
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ei) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.ej = load ptr, ptr %4, align 8, !tbaa !27    ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIdSaIdEED2Ev.exit44, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !28
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.eo) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit44

_ZNSt6vectorIdSaIdEED2Ev.exit44:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret void

bb.ac:                                            ; preds = %bb.u, %bb.q, %.body
  %.pn22 = phi { ptr, i32 } [ %i.ec, %bb.u ], [ %i.cw, %bb.q ], [ %.pn, %.body ] ; 2 uses
  %i.ep = load ptr, ptr %5, align 8, !tbaa !27    ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIdSaIdEED2Ev.exit46, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !28
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eu) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit46

_ZNSt6vectorIdSaIdEED2Ev.exit46:                  ; preds = %bb.ad, %bb.ac, %bb.i
  %.pn22.pn = phi { ptr, i32 } [ %i.cd, %bb.i ], [ %.pn22, %bb.ac ], [ %.pn22, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.ev = load ptr, ptr %4, align 8, !tbaa !27    ; 3 uses
  %.not.i.i.i47 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIdSaIdEED2Ev.exit48, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit46
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !28
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fa) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit48

_ZNSt6vectorIdSaIdEED2Ev.exit48:                  ; preds = %bb.ae, %_ZNSt6vectorIdSaIdEED2Ev.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  resume { ptr, i32 } %.pn22.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8LightGBM19GradientDiscretizer34discretized_gradients_and_hessiansEv(ptr noundef nonnull align 8 dereferenceable(5336) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5088
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  ret ptr %i.b
end_hunk_0
