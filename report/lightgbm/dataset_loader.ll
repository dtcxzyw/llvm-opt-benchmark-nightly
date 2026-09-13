Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dataset_loader?download=true
inline.NumInlined: 4751
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN8LightGBM13DatasetLoader31ConstructBinMappersFromTextDataEiiRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKNS_6ParserEPNS_7DatasetE:bb.a
  br label %bb.fz

.loopexit510:                                     ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %.preheader509, %bb.bi
  invoke void @_ZN8LightGBM7Dataset17set_feature_namesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(864) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %bb.bx unwind label %bb.bb

bb.bx:                                            ; preds = %.loopexit510
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.ob = load i32, ptr %i.hk, align 4, !tbaa !253 ; 3 uses
  %i.oc = sext i32 %i.ob to i64                   ; 2 uses
  %i.od = icmp slt i32 %i.ob, 0
  br i1 %i.od, label %bb.by, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
          to label %.noexc214 unwind label %bb.cf

.noexc214:                                        ; preds = %bb.by
  unreachable

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.bx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i213 = icmp eq i32 %i.ob, 0
  br i1 %.not.i.i.i.i213, label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  store i64 0, ptr %17, align 8
  br label %bb.bz

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.oe = shl nuw nsw i64 %i.oc, 3                ; 3 uses
  %i.of = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oe) #37
          to label %.noexc215 unwind label %bb.cf ; 4 uses

.noexc215:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.of, ptr %17, align 8, !tbaa !256
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.oc
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.of, i8 0, i64 %i.oe, i1 false), !tbaa !259
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.of, i64 %i.oe
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc215, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %i.og, %.noexc215 ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc215 ]
  %i.oh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.oi, align 8, !tbaa !260
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.oh, align 8, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.oj = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !100, !align !109
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 308
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !262
  %i.om = sext i32 %i.ol to i64
  %i.on = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.oo = load ptr, ptr %3, align 8, !tbaa !112
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = ptrtoint ptr %i.oo to i64
  %i.or = sub i64 %i.op, %i.oq
  %i.os = ashr exact i64 %i.or, 5
  %i.ot = mul i64 %i.os, %i.om
  %i.ou = uitofp i64 %i.ot to double
  %i.ov = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !213
  %i.ox = sitofp i32 %i.ow to double
  %i.oy = fdiv double %i.ou, %i.ox
  %i.oz = fptosi double %i.oy to i32
  store i32 %i.oz, ptr %i.h, align 4, !tbaa !134
  %i.pa = icmp eq i32 %2, 1
  br i1 %i.pa, label %bb.ca, label %bb.ch

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, i8 0, i64 48, i1 false)
  %i.pb = invoke i32 @OMP_NUM_THREADS()
          to label %bb.cb unwind label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %i.i, i32 %i.pb)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 7, ptr nonnull @_ZN8LightGBM13DatasetLoader31ConstructBinMappersFromTextDataEiiRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKNS_6ParserEPNS_7DatasetE.omp_outlined, ptr nonnull %9, ptr nonnull %0, ptr nonnull %17, ptr nonnull %3, ptr nonnull %i.h, ptr nonnull %13, ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.pc = load ptr, ptr %18, align 8, !tbaa !264  ; 2 uses
  %.not.i216 = icmp eq ptr %i.pc, null
  br i1 %.not.i216, label %_ZN21ThreadExceptionHelperD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.cb
  store ptr %i.pc, ptr %8, align 8, !tbaa !264
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 dereferenceable(8) %8) #36
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.cd:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.pd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pe = load ptr, ptr %8, align 8, !tbaa !264
  %.not.i3.i = icmp eq ptr %i.pe, null
  br i1 %.not.i3.i, label %.body217, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br label %.body217

_ZN21ThreadExceptionHelperD2Ev.exit:              ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.ey

bb.cf:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.by
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.cg:                                            ; preds = %bb.ca
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.body217:                                         ; preds = %bb.cd, %bb.ce, %bb.cg
  %eh.lpad-body218 = phi { ptr, i32 } [ %i.pg, %bb.cg ], [ %i.pd, %bb.ce ], [ %i.pd, %bb.cd ]
  call void @_ZN21ThreadExceptionHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit352

bb.ch:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.ph = sext i32 %2 to i64                      ; 5 uses
  %i.pi = icmp slt i32 %2, 0
  br i1 %i.pi, label %bb.ci, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
          to label %.noexc221 unwind label %bb.cm

.noexc221:                                        ; preds = %bb.ci
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ch
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %.not.i.i.i.i220 = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i220, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.pj = shl nuw nsw i64 %i.ph, 2                ; 2 uses
  %i.pk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pj) #37
          to label %.noexc222 unwind label %bb.cm ; 4 uses

.noexc222:                                        ; preds = %bb.cj
  store ptr %i.pk, ptr %19, align 8, !tbaa !215
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.ph
  %i.pm = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.pl, ptr %i.pm, align 8, !tbaa !216
  store i32 0, ptr %i.pk, align 4, !tbaa !134
  %i.pn = getelementptr i8, ptr %i.pk, i64 4      ; 3 uses
  %i.po = add nsw i64 %i.ph, -1                   ; 3 uses
  %i.pp = icmp eq i64 %i.po, 0                    ; 2 uses
  br i1 %i.pp, label %bb.ck, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc222
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.po, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.pn, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !134
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.ck

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  br label %bb.cl

bb.ck:                                            ; preds = %.noexc222, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.pq, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.pn, %.noexc222 ]
  %i.pr = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %.0.i.i.i.i.i.ph, ptr %i.pr, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.ps = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pj) #37
          to label %.noexc230 unwind label %bb.cn ; 6 uses

.noexc230:                                        ; preds = %bb.ck
  store ptr %i.ps, ptr %20, align 8, !tbaa !215
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %i.ph
  %i.pu = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.pt, ptr %i.pu, align 8, !tbaa !216
  store i32 0, ptr %i.ps, align 4, !tbaa !134
  %i.pv = getelementptr i8, ptr %i.ps, i64 4      ; 3 uses
  br i1 %i.pp, label %bb.cl, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225: ; preds = %.noexc230
  %.idx.i.i.i.i.i.i.i226 = shl nuw nsw i64 %i.po, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.pv, i8 0, i64 %.idx.i.i.i.i.i.i.i226, i1 false), !tbaa !134
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %.idx.i.i.i.i.i.i.i226
  br label %bb.cl

bb.cl:                                            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225, %.noexc230, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228
  %i.px = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228 ], [ %i.ps, %.noexc230 ], [ %i.ps, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225 ] ; 9 uses
  %.0.i.i.i.i.i227 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228 ], [ %i.pv, %.noexc230 ], [ %i.pw, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225 ]
  %i.py = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %.0.i.i.i.i.i227, ptr %i.py, align 8, !tbaa !214
  %i.pz = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.qa = add nsw i32 %2, -1                      ; 7 uses
  %i.qb = add i32 %i.qa, %i.pz
  %i.qc = sdiv i32 %i.qb, %2
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.qc, i32 1) ; 6 uses
  %i.qd = load ptr, ptr %19, align 8, !tbaa !215  ; 14 uses
  store i32 0, ptr %i.qd, align 4, !tbaa !134
  br i1 %i.hl, label %.lver.check, label %._crit_edge536

.lver.check:                                      ; preds = %bb.cl
  %wide.trip.count = zext nneg i32 %i.qa to i64   ; 5 uses
  %i.qe = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep784 = getelementptr i8, ptr %i.px, i64 %i.qe
  %i.qf = getelementptr i8, ptr %i.qd, i64 %i.qe
  %scevgep785 = getelementptr i8, ptr %i.qf, i64 4
  %bound0786 = icmp ult ptr %i.px, %scevgep785
  %bound1787 = icmp ult ptr %i.qd, %scevgep784
  %found.conflict788 = and i1 %bound0786, %bound1787
  br i1 %found.conflict788, label %.ph.lver.orig.preheader, label %.ph

.ph.lver.orig.preheader:                          ; preds = %.lver.check
  %xtraiter801 = and i64 %wide.trip.count, 1
  %i.qg = icmp eq i32 %i.qa, 1
  br i1 %i.qg, label %.ph.lver.orig.epil.preheader, label %.ph.lver.orig.preheader.new

.ph.lver.orig.preheader.new:                      ; preds = %.ph.lver.orig.preheader
  %unroll_iter806 = and i64 %wide.trip.count, 2147483646
  br label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.ph.lver.orig, %.ph.lver.orig.preheader.new
  %i.qh = phi i32 [ 0, %.ph.lver.orig.preheader.new ], [ %i.qu, %.ph.lver.orig ]
  %indvars.iv562.lver.orig = phi i64 [ 0, %.ph.lver.orig.preheader.new ], [ %indvars.iv.next563.lver.orig.1, %.ph.lver.orig ] ; 4 uses
  %niter807 = phi i64 [ 0, %.ph.lver.orig.preheader.new ], [ %niter807.next.1, %.ph.lver.orig ]
  %i.qi = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv562.lver.orig
  %i.qk = sub nsw i32 %i.qi, %i.qh
  %.sroa.speculated.lver.orig = call i32 @llvm.smin.i32(i32 %i.qk, i32 %spec.store.select) ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %indvars.iv562.lver.orig
  store i32 %.sroa.speculated.lver.orig, ptr %i.ql, align 4, !tbaa !134
  %i.qm = load i32, ptr %i.qj, align 4, !tbaa !134
  %i.qn = add nsw i32 %i.qm, %.sroa.speculated.lver.orig ; 2 uses
  %indvars.iv.next563.lver.orig = or disjoint i64 %indvars.iv562.lver.orig, 1 ; 3 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv.next563.lver.orig
  store i32 %i.qn, ptr %i.qo, align 4, !tbaa !134
  %i.qp = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv.next563.lver.orig
  %i.qr = sub nsw i32 %i.qp, %i.qn
  %.sroa.speculated.lver.orig.1 = call i32 @llvm.smin.i32(i32 %i.qr, i32 %spec.store.select) ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %indvars.iv.next563.lver.orig
  store i32 %.sroa.speculated.lver.orig.1, ptr %i.qs, align 4, !tbaa !134
  %i.qt = load i32, ptr %i.qq, align 4, !tbaa !134
  %i.qu = add nsw i32 %i.qt, %.sroa.speculated.lver.orig.1 ; 3 uses
  %indvars.iv.next563.lver.orig.1 = add nuw nsw i64 %indvars.iv562.lver.orig, 2 ; 3 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv.next563.lver.orig.1
  store i32 %i.qu, ptr %i.qv, align 4, !tbaa !134
  %niter807.next.1 = add nuw i64 %niter807, 2     ; 2 uses
  %niter807.ncmp.1 = icmp eq i64 %niter807.next.1, %unroll_iter806
  br i1 %niter807.ncmp.1, label %._crit_edge536.loopexit.unr-lcssa, label %.ph.lver.orig, !llvm.loop !562

.ph:                                              ; preds = %.lver.check
  %load_initial = load i32, ptr %i.qd, align 4    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.qw = icmp eq i32 %i.qa, 1
  br i1 %i.qw, label %.epil.preheader, label %.ph.new

.ph.new:                                          ; preds = %.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.co

bb.cm:                                            ; preds = %bb.cj, %bb.ci
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit317

bb.cn:                                            ; preds = %bb.ck
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit315

._crit_edge536.loopexit.unr-lcssa:                ; preds = %.ph.lver.orig
  %lcmp.mod804.not = icmp eq i64 %xtraiter801, 0
  br i1 %lcmp.mod804.not, label %._crit_edge536, label %.ph.lver.orig.epil.preheader

.ph.lver.orig.epil.preheader:                     ; preds = %._crit_edge536.loopexit.unr-lcssa, %.ph.lver.orig.preheader
  %.epil.init803 = phi i32 [ 0, %.ph.lver.orig.preheader ], [ %i.qu, %._crit_edge536.loopexit.unr-lcssa ]
  %indvars.iv562.lver.orig.epil.init = phi i64 [ 0, %.ph.lver.orig.preheader ], [ %indvars.iv.next563.lver.orig.1, %._crit_edge536.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod805 = trunc i32 %i.qa to i1
  call void @llvm.assume(i1 %lcmp.mod805)
  %i.qz = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv562.lver.orig.epil.init
  %i.rb = sub nsw i32 %i.qz, %.epil.init803
  %.sroa.speculated.lver.orig.epil = call i32 @llvm.smin.i32(i32 %i.rb, i32 %spec.store.select) ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %indvars.iv562.lver.orig.epil.init
  store i32 %.sroa.speculated.lver.orig.epil, ptr %i.rc, align 4, !tbaa !134
  %i.rd = load i32, ptr %i.ra, align 4, !tbaa !134
  %i.re = add nsw i32 %i.rd, %.sroa.speculated.lver.orig.epil
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv562.lver.orig.epil.init
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  store i32 %i.re, ptr %i.rg, align 4, !tbaa !134
  br label %._crit_edge536

._crit_edge536.loopexit798.unr-lcssa:             ; preds = %bb.co
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge536, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge536.loopexit798.unr-lcssa, %.ph
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.ph ], [ %i.sc, %._crit_edge536.loopexit798.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.ph ], [ %i.sc, %._crit_edge536.loopexit798.unr-lcssa ]
  %indvars.iv562.epil.init = phi i64 [ 0, %.ph ], [ %indvars.iv.next563.1, %._crit_edge536.loopexit798.unr-lcssa ] ; 2 uses
  %lcmp.mod800 = trunc i32 %i.qa to i1
  call void @llvm.assume(i1 %lcmp.mod800)
  %i.rh = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.ri = sub nsw i32 %i.rh, %.epil.init
  %.sroa.speculated.epil = call i32 @llvm.smin.i32(i32 %i.ri, i32 %spec.store.select) ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %indvars.iv562.epil.init
  store i32 %.sroa.speculated.epil, ptr %i.rj, align 4, !tbaa !134
  %i.rk = add nsw i32 %store_forwarded.epil.init, %.sroa.speculated.epil
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv562.epil.init
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  store i32 %i.rk, ptr %i.rm, align 4, !tbaa !134
  br label %._crit_edge536

._crit_edge536:                                   ; preds = %.epil.preheader, %._crit_edge536.loopexit798.unr-lcssa, %.ph.lver.orig.epil.preheader, %._crit_edge536.loopexit.unr-lcssa, %bb.cl
  %i.rn = load i32, ptr %i.hk, align 4, !tbaa !253
  %23 = sext i32 %i.qa to i64                     ; 4 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %23
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !134
  %i.rq = sub nsw i32 %i.rn, %i.rp
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %23
  store i32 %i.rq, ptr %i.rr, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %21, i8 0, i64 48, i1 false)
  %i.rs = invoke i32 @OMP_NUM_THREADS()
          to label %bb.cp unwind label %bb.cw

bb.co:                                            ; preds = %bb.co, %.ph.new
  %store_forwarded = phi i32 [ %load_initial, %.ph.new ], [ %i.sc, %bb.co ]
  %i.rt = phi i32 [ 0, %.ph.new ], [ %i.sc, %bb.co ]
  %indvars.iv562 = phi i64 [ 0, %.ph.new ], [ %indvars.iv.next563.1, %bb.co ] ; 3 uses
  %niter = phi i64 [ 0, %.ph.new ], [ %niter.next.1, %bb.co ]
  %i.ru = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.rv = sub nsw i32 %i.ru, %i.rt
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.rv, i32 %spec.store.select) ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %indvars.iv562
  store i32 %.sroa.speculated, ptr %i.rw, align 4, !tbaa !134
  %i.rx = add nsw i32 %store_forwarded, %.sroa.speculated ; 3 uses
  %indvars.iv.next563 = or disjoint i64 %indvars.iv562, 1 ; 2 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv.next563
  store i32 %i.rx, ptr %i.ry, align 4, !tbaa !134
  %i.rz = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.sa = sub nsw i32 %i.rz, %i.rx
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.sa, i32 %spec.store.select) ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %indvars.iv.next563
  store i32 %.sroa.speculated.1, ptr %i.sb, align 4, !tbaa !134
  %i.sc = add nsw i32 %i.rx, %.sroa.speculated.1  ; 5 uses
  %indvars.iv.next563.1 = add nuw nsw i64 %indvars.iv562, 2 ; 3 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv.next563.1
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !134
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge536.loopexit798.unr-lcssa, label %bb.co, !llvm.loop !562

bb.cp:                                            ; preds = %._crit_edge536
  call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %i.i, i32 %i.rs)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 10, ptr nonnull @_ZN8LightGBM13DatasetLoader31ConstructBinMappersFromTextDataEiiRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKNS_6ParserEPNS_7DatasetE.omp_outlined.93, ptr nonnull %i.f, ptr nonnull %20, ptr nonnull %0, ptr nonnull %19, ptr nonnull %17, ptr nonnull %9, ptr nonnull %3, ptr nonnull %i.h, ptr nonnull %13, ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.se = load ptr, ptr %21, align 8, !tbaa !264  ; 2 uses
  %.not.i233 = icmp eq ptr %i.se, null
  br i1 %.not.i233, label %_ZN21ThreadExceptionHelper7ReThrowEv.exit239, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i234

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i234: ; preds = %bb.cp
  store ptr %i.se, ptr %7, align 8, !tbaa !264
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 dereferenceable(8) %7) #36
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i234
  unreachable

bb.cr:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i234
  %i.sf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sg = load ptr, ptr %7, align 8, !tbaa !264
  %.not.i3.i235 = icmp eq ptr %i.sg, null
  br i1 %.not.i3.i235, label %.body237, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  br label %.body237

_ZN21ThreadExceptionHelper7ReThrowEv.exit239:     ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.sh = load i32, ptr %i.f, align 4, !tbaa !134 ; 2 uses
  %i.si = sext i32 %i.sh to i64                   ; 2 uses
  %i.sj = load ptr, ptr %20, align 8, !tbaa !215  ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.si
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !134
  %i.sm = icmp sgt i32 %i.sl, 0
  br i1 %i.sm, label %.lr.ph539, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

.lr.ph539:                                        ; preds = %_ZN21ThreadExceptionHelper7ReThrowEv.exit239
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.cx

._crit_edge540:                                   ; preds = %.loopexit506
  %i.sr = zext nneg i32 %.197 to i64              ; 3 uses
  %i.ss = icmp slt i32 %.197, 0
  br i1 %i.ss, label %bb.ct, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.ct:                                            ; preds = %._crit_edge540
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
          to label %.noexc242 unwind label %bb.df

.noexc242:                                        ; preds = %bb.ct
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge540
  %.not.i.i.i.i240 = icmp eq i32 %.197, 0
  br i1 %.not.i.i.i.i240, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.st = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sr) #37
          to label %.noexc243 unwind label %bb.df ; 5 uses

.noexc243:                                        ; preds = %bb.cu
  %i.su = getelementptr i8, ptr %i.st, i64 %i.sr  ; 2 uses
  store i8 0, ptr %i.st, align 1, !tbaa !106
  %i.sv = add nsw i64 %i.sr, -1                   ; 2 uses
  %i.sw = icmp eq i64 %i.sv, 0
  br i1 %i.sw, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.cv

bb.cv:                                            ; preds = %.noexc243
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.sx, i8 0, i64 %i.sv, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

bb.cw:                                            ; preds = %._crit_edge536
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.body237

bb.cx:                                            ; preds = %.lr.ph539, %.loopexit506
  %i.sz = phi ptr [ %i.sj, %.lr.ph539 ], [ %i.uh, %.loopexit506 ] ; 3 uses
  %i.ta = phi i32 [ %i.sh, %.lr.ph539 ], [ %i.ui, %.loopexit506 ] ; 3 uses
  %indvars.iv565 = phi i64 [ 0, %.lr.ph539 ], [ %indvars.iv.next566, %.loopexit506 ] ; 3 uses
  %i.tb = phi i64 [ %i.si, %.lr.ph539 ], [ %i.uj, %.loopexit506 ]
  %.096537 = phi i32 [ 0, %.lr.ph539 ], [ %.197, %.loopexit506 ] ; 4 uses
  %i.tc = load ptr, ptr %19, align 8, !tbaa !215
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.tb
  %i.te = load i32, ptr %i.td, align 4, !tbaa !134
  %i.tf = trunc nuw nsw i64 %indvars.iv565 to i32
  %i.tg = add nsw i32 %i.te, %i.tf                ; 4 uses
  %i.th = load i64, ptr %i.sn, align 8, !tbaa !181
  %.not.not.i.i.i = icmp eq i64 %i.th, 0
  br i1 %.not.not.i.i.i, label %.preheader558, label %bb.cz

.preheader558:                                    ; preds = %bb.cx, %bb.cy
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.cy ], [ %i.sq, %bb.cx ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i245 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i245, label %.loopexit505, label %bb.cy

bb.cy:                                            ; preds = %.preheader558
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !134
  %i.tk = icmp eq i32 %i.tg, %i.tj
  br i1 %i.tk, label %.loopexit506, label %.preheader558, !llvm.loop !13

bb.cz:                                            ; preds = %bb.cx
  %i.tl = sext i32 %i.tg to i64
  %i.tm = load i64, ptr %i.sp, align 8, !tbaa !94 ; 2 uses
  %i.tn = urem i64 %i.tl, %i.tm                   ; 2 uses
  %i.to = load ptr, ptr %i.so, align 8, !tbaa !93
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %i.tn
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.tq, null
  br i1 %.not.i.i.i.i.i, label %.loopexit505, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !137 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !134
  %i.tu = icmp eq i32 %i.tg, %i.tt
  br i1 %i.tu, label %.loopexit506, label %.lr.ph.i.i.i.i.i

bb.db:                                            ; preds = %bb.dc
  %i.tv = icmp eq i32 %i.tg, %i.ty
  br i1 %i.tv, label %.loopexit506, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.da, %bb.db
  %.020.i.i.i.i.i = phi ptr [ %i.tw, %bb.db ], [ %i.tr, %bb.da ]
  %i.tw = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !137 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.tw, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit505, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !134 ; 2 uses
  %i.tz = sext i32 %i.ty to i64
  %i.ua = urem i64 %i.tz, %i.tm
  %.not19.i.i.i.i.i = icmp eq i64 %i.ua, %i.tn
  br i1 %.not19.i.i.i.i.i, label %bb.db, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !7

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.dc
  br label %.loopexit505, !llvm.loop !7

.loopexit505:                                     ; preds = %.lr.ph.i.i.i.i.i, %.preheader558, %..loopexit_crit_edge21.i.i.i.i.i, %bb.cz
  %i.ub = load ptr, ptr %17, align 8, !tbaa !256
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv565
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !265
  %i.ue = invoke noundef i64 @_ZNK8LightGBM9BinMapper11SizesInByteEv(ptr noundef nonnull align 8 dereferenceable(160) %i.ud)
          to label %bb.dd unwind label %bb.de

bb.dd:                                            ; preds = %.loopexit505
  %i.uf = trunc i64 %i.ue to i32
  %i.ug = add nsw i32 %.096537, %i.uf
  %.pre588 = load i32, ptr %i.f, align 4, !tbaa !134
  %.pre589 = load ptr, ptr %20, align 8, !tbaa !215
  br label %.loopexit506

.loopexit506:                                     ; preds = %bb.db, %bb.cy, %bb.da, %bb.dd
  %i.uh = phi ptr [ %.pre589, %bb.dd ], [ %i.sz, %bb.cy ], [ %i.sz, %bb.da ], [ %i.sz, %bb.db ] ; 2 uses
  %i.ui = phi i32 [ %.pre588, %bb.dd ], [ %i.ta, %bb.cy ], [ %i.ta, %bb.da ], [ %i.ta, %bb.db ] ; 2 uses
  %.197 = phi i32 [ %i.ug, %bb.dd ], [ %.096537, %bb.cy ], [ %.096537, %bb.da ], [ %.096537, %bb.db ] ; 6 uses
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %i.uj = sext i32 %i.ui to i64                   ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.uj
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !134
  %i.um = sext i32 %i.ul to i64
  %i.un = icmp slt i64 %indvars.iv.next566, %i.um
  br i1 %i.un, label %bb.cx, label %._crit_edge540, !llvm.loop !563

bb.de:                                            ; preds = %.loopexit505
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %.body237

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %_ZN21ThreadExceptionHelper7ReThrowEv.exit239, %bb.cv, %.noexc243, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.096.lcssa726729 = phi i32 [ %.197, %bb.cv ], [ %.197, %.noexc243 ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ 0, %_ZN21ThreadExceptionHelper7ReThrowEv.exit239 ]
  %.sroa.0447.0 = phi ptr [ %i.st, %bb.cv ], [ %i.st, %.noexc243 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZN21ThreadExceptionHelper7ReThrowEv.exit239 ] ; 8 uses
  %.sroa.11452.0 = phi ptr [ %i.su, %bb.cv ], [ %i.su, %.noexc243 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZN21ThreadExceptionHelper7ReThrowEv.exit239 ] ; 2 uses
  %i.up = load i32, ptr %i.f, align 4, !tbaa !134
  %i.uq = sext i32 %i.up to i64                   ; 2 uses
  %i.ur = load ptr, ptr %20, align 8, !tbaa !215
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.uq
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !134
  %i.uu = icmp sgt i32 %i.ut, 0
  br i1 %i.uu, label %.lr.ph544, label %._crit_edge545

.lr.ph544:                                        ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.dg

._crit_edge545:                                   ; preds = %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  invoke void @_ZN8LightGBM7Network11GlobalArrayIiEESt6vectorIT_SaIS3_EES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.19") align 8 %22, i32 noundef %.096.lcssa726729)
          to label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i261 unwind label %bb.ds

bb.df:                                            ; preds = %bb.cu, %bb.ct
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %.body237

bb.dg:                                            ; preds = %.lr.ph544, %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit
  %indvars.iv568 = phi i64 [ 0, %.lr.ph544 ], [ %indvars.iv.next569, %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit ] ; 5 uses
  %i.va = phi i64 [ %i.uq, %.lr.ph544 ], [ %i.wm, %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit ]
  %.094542 = phi ptr [ %.sroa.0447.0, %.lr.ph544 ], [ %.1, %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit ] ; 5 uses
  %i.vb = load ptr, ptr %19, align 8, !tbaa !215
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.va
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !134
  %i.ve = trunc nuw nsw i64 %indvars.iv568 to i32
  %i.vf = add nsw i32 %i.vd, %i.ve                ; 4 uses
  %i.vg = load i64, ptr %i.uv, align 8, !tbaa !181
  %.not.not.i.i.i246 = icmp eq i64 %i.vg, 0
  br i1 %.not.not.i.i.i246, label %.preheader555, label %bb.di

.preheader555:                                    ; preds = %bb.dg, %bb.dh
  %.sroa.06.0.in.i.i.i256 = phi ptr [ %.sroa.06.0.i.i.i257, %bb.dh ], [ %i.uy, %bb.dg ]
  %.sroa.06.0.i.i.i257 = load ptr, ptr %.sroa.06.0.in.i.i.i256, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i258 = icmp eq ptr %.sroa.06.0.i.i.i257, null
  br i1 %.not.i.i.i258, label %.loopexit502, label %bb.dh

bb.dh:                                            ; preds = %.preheader555
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i257, i64 8
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !134
  %i.vj = icmp eq i32 %i.vf, %i.vi
  br i1 %i.vj, label %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit, label %.preheader555, !llvm.loop !13

bb.di:                                            ; preds = %bb.dg
  %i.vk = sext i32 %i.vf to i64
  %i.vl = load i64, ptr %i.ux, align 8, !tbaa !94 ; 2 uses
  %i.vm = urem i64 %i.vk, %i.vl                   ; 2 uses
  %i.vn = load ptr, ptr %i.uw, align 8, !tbaa !93
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %i.vm
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i.i247 = icmp eq ptr %i.vp, null
  br i1 %.not.i.i.i.i.i247, label %.loopexit502, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !137 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !134
  %i.vt = icmp eq i32 %i.vf, %i.vs
  br i1 %i.vt, label %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit, label %.lr.ph.i.i.i.i.i248

bb.dk:                                            ; preds = %bb.dl
  %i.vu = icmp eq i32 %i.vf, %i.vx
  br i1 %i.vu, label %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit, label %.lr.ph.i.i.i.i.i248, !llvm.loop !7

.lr.ph.i.i.i.i.i248:                              ; preds = %bb.dj, %bb.dk
  %.020.i.i.i.i.i249 = phi ptr [ %i.vv, %bb.dk ], [ %i.vq, %bb.dj ]
  %i.vv = load ptr, ptr %.020.i.i.i.i.i249, align 8, !tbaa !137 ; 3 uses
  %.not18.i.i.i.i.i250 = icmp eq ptr %i.vv, null
  br i1 %.not18.i.i.i.i.i250, label %.loopexit502, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.i.i.i.i248
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !134 ; 2 uses
  %i.vy = sext i32 %i.vx to i64
  %i.vz = urem i64 %i.vy, %i.vl
  %.not19.i.i.i.i.i251 = icmp eq i64 %i.vz, %i.vm
  br i1 %.not19.i.i.i.i.i251, label %bb.dk, label %..loopexit_crit_edge21.i.i.i.i.i252, !llvm.loop !7

..loopexit_crit_edge21.i.i.i.i.i252:              ; preds = %bb.dl
  br label %.loopexit502, !llvm.loop !7

.loopexit502:                                     ; preds = %.lr.ph.i.i.i.i.i248, %.preheader555, %..loopexit_crit_edge21.i.i.i.i.i252, %bb.di
  %i.wa = load ptr, ptr %17, align 8, !tbaa !256
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %indvars.iv568
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !265
  invoke void @_ZNK8LightGBM9BinMapper6CopyToEPc(ptr noundef nonnull align 8 dereferenceable(160) %i.wc, ptr noundef %.094542)
          to label %bb.dm unwind label %bb.do

bb.dm:                                            ; preds = %.loopexit502
  %i.wd = load ptr, ptr %17, align 8, !tbaa !256
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.wd, i64 %indvars.iv568
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !265
  %i.wg = invoke noundef i64 @_ZNK8LightGBM9BinMapper11SizesInByteEv(ptr noundef nonnull align 8 dereferenceable(160) %i.wf)
          to label %bb.dn unwind label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.wh = getelementptr inbounds nuw i8, ptr %.094542, i64 %i.wg ; 2 uses
  %i.wi = load ptr, ptr %17, align 8, !tbaa !256
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %indvars.iv568 ; 2 uses
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !265 ; 3 uses
  store ptr null, ptr %i.wj, align 8, !tbaa !265
  %.not.i.i260 = icmp eq ptr %i.wk, null
  br i1 %.not.i.i260, label %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN8LightGBM9BinMapperEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN8LightGBM9BinMapperEEclEPS1_.exit.i.i: ; preds = %bb.dn
  call void @_ZN8LightGBM9BinMapperD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.wk) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.wk, i64 noundef 160) #35
  br label %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.dk, %bb.dh, %bb.dj, %_ZNKSt14default_deleteIN8LightGBM9BinMapperEEclEPS1_.exit.i.i, %bb.dn
  %.1 = phi ptr [ %i.wh, %_ZNKSt14default_deleteIN8LightGBM9BinMapperEEclEPS1_.exit.i.i ], [ %i.wh, %bb.dn ], [ %.094542, %bb.dh ], [ %.094542, %bb.dj ], [ %.094542, %bb.dk ]
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1 ; 2 uses
  %i.wl = load i32, ptr %i.f, align 4, !tbaa !134
  %i.wm = sext i32 %i.wl to i64                   ; 2 uses
  %i.wn = load ptr, ptr %20, align 8, !tbaa !215
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %i.wm
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !134
  %i.wq = sext i32 %i.wp to i64
  %i.wr = icmp slt i64 %indvars.iv.next569, %i.wq
  br i1 %i.wr, label %bb.dg, label %._crit_edge545, !llvm.loop !564

bb.do:                                            ; preds = %bb.dm, %.loopexit502
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i261: ; preds = %._crit_edge545
  %i.wt = shl nuw nsw i64 %i.ph, 2                ; 4 uses
  %i.wu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wt) #37
          to label %.noexc265 unwind label %bb.dt ; 11 uses

.noexc265:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i261
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.wu, i8 0, i64 %i.wt, i1 false), !tbaa !134
  %.pre591 = load ptr, ptr %22, align 8, !tbaa !215 ; 6 uses
  br i1 %i.hl, label %.lr.ph547, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge

.lr.ph547:                                        ; preds = %.noexc265
  %wide.trip.count574 = zext nneg i32 %2 to i64
  %.pre590 = load i32, ptr %i.wu, align 4, !tbaa !134 ; 2 uses
  %i.wv = add nsw i64 %wide.trip.count574, -1     ; 2 uses
  %xtraiter808 = and i64 %i.wv, 3                 ; 3 uses
  %i.ww = add nsw i32 %2, -2
  %i.wx = icmp ult i32 %i.ww, 3
  br i1 %i.wx, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader, label %.lr.ph547.new

.lr.ph547.new:                                    ; preds = %.lr.ph547
  %unroll_iter813 = and i64 %i.wv, -4
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %lcmp.mod811.not = icmp eq i64 %xtraiter808, 0
  br i1 %lcmp.mod811.not, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph547
  %.epil.init810 = phi i32 [ %.pre590, %.lr.ph547 ], [ %i.yl, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv571.epil.init = phi i64 [ 1, %.lr.ph547 ], [ %indvars.iv.next572.3, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod812 = icmp ne i64 %xtraiter808, 0
  call void @llvm.assume(i1 %lcmp.mod812)
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil:       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader
  %i.wy = phi i32 [ %.epil.init810, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader ], [ %i.xc, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil ]
  %indvars.iv571.epil = phi i64 [ %indvars.iv571.epil.init, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader ], [ %indvars.iv.next572.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader ], [ %epil.iter.next, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil ]
  %i.wz = getelementptr [4 x i8], ptr %.pre591, i64 %indvars.iv571.epil
  %i.xa = getelementptr i8, ptr %i.wz, i64 -4
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !134
  %i.xc = add nsw i32 %i.xb, %i.wy                ; 2 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv571.epil
  store i32 %i.xc, ptr %i.xd, align 4, !tbaa !134
  %indvars.iv.next572.epil = add nuw nsw i64 %indvars.iv571.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter808
  br i1 %epil.iter.cmp.not, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil, !llvm.loop !565

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil, %.noexc265
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %23
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !134
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.pre591, i64 %23
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !134
  %i.xi = add nsw i32 %i.xh, %i.xf                ; 4 uses
  %i.xj = sext i32 %i.xi to i64                   ; 3 uses
  %i.xk = icmp slt i32 %i.xi, 0
  br i1 %i.xk, label %bb.dp, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i266

bb.dp:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
          to label %.noexc270 unwind label %bb.ec

.noexc270:                                        ; preds = %bb.dp
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i266: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge
  %.not.i.i.i.i267 = icmp eq i32 %i.xi, 0
  br i1 %.not.i.i.i.i267, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit272, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i266
  %i.xl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xj) #37
          to label %.noexc271 unwind label %bb.ec ; 5 uses

.noexc271:                                        ; preds = %bb.dq
  %i.xm = getelementptr i8, ptr %i.xl, i64 %i.xj  ; 2 uses
  store i8 0, ptr %i.xl, align 1, !tbaa !106
  %i.xn = add nsw i64 %i.xj, -1                   ; 2 uses
  %i.xo = icmp eq i64 %i.xn, 0
  br i1 %i.xo, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit272, label %bb.dr

bb.dr:                                            ; preds = %.noexc271
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xl, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.xp, i8 0, i64 %i.xn, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit272

bb.ds:                                            ; preds = %._crit_edge545
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit311

bb.dt:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i261
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %.lr.ph547.new
  %i.xs = phi i32 [ %.pre590, %.lr.ph547.new ], [ %i.yl, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ]
  %indvars.iv571 = phi i64 [ 1, %.lr.ph547.new ], [ %indvars.iv.next572.3, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ] ; 6 uses
  %niter814 = phi i64 [ 0, %.lr.ph547.new ], [ %niter814.next.3, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ]
  %i.xt = getelementptr [4 x i8], ptr %.pre591, i64 %indvars.iv571
  %i.xu = getelementptr i8, ptr %i.xt, i64 -4
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !134
  %i.xw = add nsw i32 %i.xv, %i.xs                ; 2 uses
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv571
  store i32 %i.xw, ptr %i.xx, align 4, !tbaa !134
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %i.xy = getelementptr [4 x i8], ptr %.pre591, i64 %indvars.iv.next572
  %i.xz = getelementptr i8, ptr %i.xy, i64 -4
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !134
  %i.yb = add nsw i32 %i.ya, %i.xw                ; 2 uses
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv.next572
  store i32 %i.yb, ptr %i.yc, align 4, !tbaa !134
  %indvars.iv.next572.1 = add nuw nsw i64 %indvars.iv571, 2 ; 2 uses
  %i.yd = getelementptr [4 x i8], ptr %.pre591, i64 %indvars.iv.next572.1
  %i.ye = getelementptr i8, ptr %i.yd, i64 -4
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !134
  %i.yg = add nsw i32 %i.yf, %i.yb                ; 2 uses
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv.next572.1
  store i32 %i.yg, ptr %i.yh, align 4, !tbaa !134
  %indvars.iv.next572.2 = add nuw nsw i64 %indvars.iv571, 3 ; 2 uses
  %i.yi = getelementptr [4 x i8], ptr %.pre591, i64 %indvars.iv.next572.2
  %i.yj = getelementptr i8, ptr %i.yi, i64 -4
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !134
  %i.yl = add nsw i32 %i.yk, %i.yg                ; 3 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv.next572.2
  store i32 %i.yl, ptr %i.ym, align 4, !tbaa !134
  %indvars.iv.next572.3 = add nuw nsw i64 %indvars.iv571, 4 ; 2 uses
  %niter814.next.3 = add nuw i64 %niter814, 4     ; 2 uses
  %niter814.ncmp.3 = icmp eq i64 %niter814.next.3, %unroll_iter813
  br i1 %niter814.ncmp.3, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge.loopexit.unr-lcssa, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, !llvm.loop !566

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit272:            ; preds = %bb.dr, %.noexc271, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i266
  %.sroa.0430.0 = phi ptr [ %i.xl, %bb.dr ], [ %i.xl, %.noexc271 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i266 ] ; 8 uses
  %.sroa.11.0 = phi ptr [ %i.xm, %bb.dr ], [ %i.xm, %.noexc271 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i266 ] ; 2 uses
  %i.yn = load ptr, ptr %22, align 8, !tbaa !215
  invoke void @_ZN8LightGBM7Network9AllgatherEPcPKiS3_S1_i(ptr noundef %.sroa.0447.0, ptr noundef nonnull %i.wu, ptr noundef %i.yn, ptr noundef %.sroa.0430.0, i32 noundef %i.xi)
          to label %.preheader unwind label %bb.ed

.preheader:                                       ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit272
  %i.yo = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.yp = icmp sgt i32 %i.yo, 0
  br i1 %i.yp, label %.lr.ph550, label %._crit_edge551

.lr.ph550:                                        ; preds = %.preheader
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.ee

._crit_edge551:                                   ; preds = %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EEaSEDn.exit, %.preheader
  %.not.i.i.i273 = icmp eq ptr %.sroa.0430.0, null
  br i1 %.not.i.i.i273, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.du

bb.du:                                            ; preds = %._crit_edge551
  %i.yu = ptrtoint ptr %.sroa.11.0 to i64
  %i.yv = ptrtoint ptr %.sroa.0430.0 to i64
  %i.yw = sub i64 %i.yu, %i.yv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0430.0, i64 noundef %i.yw) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge551, %bb.du
  call void @_ZdlPvm(ptr noundef nonnull %i.wu, i64 noundef %i.wt) #35
  %i.yx = load ptr, ptr %22, align 8, !tbaa !215  ; 3 uses
  %.not.i.i.i275 = icmp eq ptr %i.yx, null
  br i1 %.not.i.i.i275, label %_ZNSt6vectorIiSaIiEED2Ev.exit276, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.yy = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !216
  %i.za = ptrtoint ptr %i.yz to i64
  %i.zb = ptrtoint ptr %i.yx to i64
  %i.zc = sub i64 %i.za, %i.zb
  call void @_ZdlPvm(ptr noundef nonnull %i.yx, i64 noundef %i.zc) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit276

_ZNSt6vectorIiSaIiEED2Ev.exit276:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %.not.i.i.i277 = icmp eq ptr %.sroa.0447.0, null
  br i1 %.not.i.i.i277, label %_ZNSt6vectorIcSaIcEED2Ev.exit278, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit276
  %i.zd = ptrtoint ptr %.sroa.11452.0 to i64
  %i.ze = ptrtoint ptr %.sroa.0447.0 to i64
  %i.zf = sub i64 %i.zd, %i.ze
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0447.0, i64 noundef %i.zf) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit278

_ZNSt6vectorIcSaIcEED2Ev.exit278:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit276, %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.zg = load ptr, ptr %21, align 8, !tbaa !264  ; 2 uses
  %.not.i.i279 = icmp eq ptr %i.zg, null
  br i1 %.not.i.i279, label %_ZN21ThreadExceptionHelperD2Ev.exit283, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i280

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i280: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit278
  store ptr %i.zg, ptr %6, align 8, !tbaa !264
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 dereferenceable(8) %6) #36
          to label %bb.dx unwind label %bb.dy

bb.dx:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i280
  unreachable

bb.dy:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i280
  %i.zh = landingpad { ptr, i32 }
          catch ptr null
  %i.zi = load ptr, ptr %6, align 8, !tbaa !264
  %.not.i3.i.i281 = icmp eq ptr %i.zi, null
  br i1 %.not.i3.i.i281, label %.body.i282, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  br label %.body.i282

.body.i282:                                       ; preds = %bb.dz, %bb.dy
  %i.zj = extractvalue { ptr, i32 } %i.zh, 0
  call void @__clang_call_terminate(ptr %i.zj) #34
  unreachable

_ZN21ThreadExceptionHelperD2Ev.exit283:           ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit278
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.zk = load ptr, ptr %20, align 8, !tbaa !215  ; 3 uses
  %.not.i.i.i284 = icmp eq ptr %i.zk, null
  br i1 %.not.i.i.i284, label %_ZNSt6vectorIiSaIiEED2Ev.exit285, label %bb.ea

bb.ea:                                            ; preds = %_ZN21ThreadExceptionHelperD2Ev.exit283
  %i.zl = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !216
  %i.zn = ptrtoint ptr %i.zm to i64
  %i.zo = ptrtoint ptr %i.zk to i64
  %i.zp = sub i64 %i.zn, %i.zo
  call void @_ZdlPvm(ptr noundef nonnull %i.zk, i64 noundef %i.zp) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit285

_ZNSt6vectorIiSaIiEED2Ev.exit285:                 ; preds = %_ZN21ThreadExceptionHelperD2Ev.exit283, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.zq = load ptr, ptr %19, align 8, !tbaa !215  ; 3 uses
  %.not.i.i.i286 = icmp eq ptr %i.zq, null
  br i1 %.not.i.i.i286, label %_ZNSt6vectorIiSaIiEED2Ev.exit287, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit285
  %i.zr = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !216
  %i.zt = ptrtoint ptr %i.zs to i64
  %i.zu = ptrtoint ptr %i.zq to i64
  %i.zv = sub i64 %i.zt, %i.zu
  call void @_ZdlPvm(ptr noundef nonnull %i.zq, i64 noundef %i.zv) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit287

_ZNSt6vectorIiSaIiEED2Ev.exit287:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit285, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
end_hunk_0
begin_hunk_1_@_ZN8LightGBM13DatasetLoader23ConstructFromSampleDataEPPdPPiiPKimil:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.fb = load ptr, ptr %16, align 8, !tbaa !107  ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.en
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.af
  %i.fd = load i64, ptr %i.en, align 8, !tbaa !106
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.ff = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !100, !align !109
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 308
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !262
  %i.fi = sext i32 %i.fh to i64
  %i.fj = load i64, ptr %i.i, align 8, !tbaa !111
  %i.fk = mul i64 %i.fj, %i.fi
  %i.fl = uitofp i64 %i.fk to double
  %i.fm = sitofp i64 %7 to double
  %i.fn = fdiv double %i.fl, %i.fm
  %i.fo = fptosi double %i.fn to i32
  store i32 %i.fo, ptr %i.j, align 4, !tbaa !134
  %i.fp = invoke noundef i32 @_ZN8LightGBM7Network12num_machinesEv()
          to label %bb.ag unwind label %bb.ap

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.fq = icmp eq i32 %i.fp, 1
  br i1 %i.fq, label %bb.ah, label %bb.ar

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %17, i8 0, i64 48, i1 false)
  %i.fr = invoke i32 @OMP_NUM_THREADS()
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %i.l, i32 %i.fr)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 9, ptr nonnull @_ZN8LightGBM13DatasetLoader23ConstructFromSampleDataEPPdPPiiPKimil.omp_outlined, ptr nonnull %i.g, ptr nonnull %0, ptr nonnull %11, ptr nonnull %i.f, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull %i.j, ptr nonnull %15, ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.fs = load ptr, ptr %17, align 8, !tbaa !264  ; 2 uses
  %.not.i = icmp eq ptr %i.fs, null
  br i1 %.not.i, label %_ZN21ThreadExceptionHelperD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.ai
  store ptr %i.fs, ptr %10, align 8, !tbaa !264
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 dereferenceable(8) %10) #36
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.ak:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load ptr, ptr %10, align 8, !tbaa !264
  %.not.i3.i = icmp eq ptr %i.fu, null
  br i1 %.not.i3.i, label %.body143, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  br label %.body143

_ZN21ThreadExceptionHelperD2Ev.exit:              ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.dn

bb.am:                                            ; preds = %.noexc.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

bb.an:                                            ; preds = %.noexc.i137
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.ao:                                            ; preds = %bb.ae
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = load ptr, ptr %16, align 8, !tbaa !107  ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.en
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.ao
  %i.ga = load i64, ptr %i.en, align 8, !tbaa !106
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.ap:                                            ; preds = %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.aq:                                            ; preds = %bb.ah
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body143

.body143:                                         ; preds = %bb.ak, %bb.al, %bb.aq
  %eh.lpad-body144 = phi { ptr, i32 } [ %i.gd, %bb.aq ], [ %i.ft, %bb.al ], [ %i.ft, %bb.ak ]
  call void @_ZN21ThreadExceptionHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.eb

bb.ar:                                            ; preds = %bb.ag
  %i.ge = invoke noundef i32 @_ZN8LightGBM7Network12num_machinesEv()
          to label %bb.as unwind label %bb.ay     ; 9 uses

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  %i.gf = invoke noundef i32 @_ZN8LightGBM7Network4rankEv()
          to label %bb.at unwind label %bb.az

bb.at:                                            ; preds = %bb.as
  store i32 %i.gf, ptr %i.k, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.gg = sext i32 %i.ge to i64                   ; 5 uses
  %i.gh = icmp slt i32 %i.ge, 0
  br i1 %i.gh, label %bb.au, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
          to label %.noexc150 unwind label %bb.ba

.noexc150:                                        ; preds = %bb.au
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.at
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %.not.i.i.i.i149 = icmp eq i32 %i.ge, 0
  br i1 %.not.i.i.i.i149, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i157, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.gi = shl nuw nsw i64 %i.gg, 2                ; 2 uses
  %i.gj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #37
          to label %.noexc151 unwind label %bb.ba ; 4 uses

.noexc151:                                        ; preds = %bb.av
  store ptr %i.gj, ptr %18, align 8, !tbaa !215
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gg
  %i.gl = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !216
  store i32 0, ptr %i.gj, align 4, !tbaa !134
  %i.gm = getelementptr i8, ptr %i.gj, i64 4      ; 3 uses
  %i.gn = add nsw i64 %i.gg, -1                   ; 3 uses
  %i.go = icmp eq i64 %i.gn, 0                    ; 2 uses
  br i1 %i.go, label %bb.aw, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc151
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.gn, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.gm, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !134
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.aw

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i157: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br label %bb.ax

bb.aw:                                            ; preds = %.noexc151, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.gp, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.gm, %.noexc151 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.0.i.i.i.i.i.ph, ptr %i.gq, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #37
          to label %.noexc159 unwind label %bb.bb ; 6 uses

.noexc159:                                        ; preds = %bb.aw
  store ptr %i.gr, ptr %19, align 8, !tbaa !215
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gg
  %i.gt = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !216
  store i32 0, ptr %i.gr, align 4, !tbaa !134
  %i.gu = getelementptr i8, ptr %i.gr, i64 4      ; 3 uses
  br i1 %i.go, label %bb.ax, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i154

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i154: ; preds = %.noexc159
  %.idx.i.i.i.i.i.i.i155 = shl nuw nsw i64 %i.gn, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.gu, i8 0, i64 %.idx.i.i.i.i.i.i.i155, i1 false), !tbaa !134
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.idx.i.i.i.i.i.i.i155
  br label %bb.ax

bb.ax:                                            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i154, %.noexc159, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i157
  %i.gw = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i157 ], [ %i.gr, %.noexc159 ], [ %i.gr, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i154 ] ; 9 uses
  %.0.i.i.i.i.i156 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i157 ], [ %i.gu, %.noexc159 ], [ %i.gv, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i154 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %.0.i.i.i.i.i156, ptr %i.gx, align 8, !tbaa !214
  %i.gy = add nsw i32 %.066, -1
  %i.gz = add i32 %i.gy, %i.ge
  %i.ha = sdiv i32 %i.gz, %i.ge
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.ha, i32 1) ; 6 uses
  %i.hb = load ptr, ptr %18, align 8, !tbaa !215  ; 14 uses
  store i32 0, ptr %i.hb, align 4, !tbaa !134
  %i.hc = add nsw i32 %i.ge, -1                   ; 6 uses
  %i.hd = icmp samesign ugt i32 %i.ge, 1          ; 2 uses
  br i1 %i.hd, label %.lver.check, label %._crit_edge

.lver.check:                                      ; preds = %bb.ax
  %wide.trip.count = zext nneg i32 %i.hc to i64   ; 5 uses
  %i.he = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.gw, i64 %i.he
  %i.hf = getelementptr i8, ptr %i.hb, i64 %i.he
  %scevgep475 = getelementptr i8, ptr %i.hf, i64 4
  %bound0 = icmp ult ptr %i.gw, %scevgep475
  %bound1 = icmp ult ptr %i.hb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.ph.lver.orig.preheader, label %.ph

.ph.lver.orig.preheader:                          ; preds = %.lver.check
  %xtraiter488 = and i64 %wide.trip.count, 1
  %i.hg = icmp eq i32 %i.hc, 1
  br i1 %i.hg, label %.ph.lver.orig.epil.preheader, label %.ph.lver.orig.preheader.new

.ph.lver.orig.preheader.new:                      ; preds = %.ph.lver.orig.preheader
  %unroll_iter493 = and i64 %wide.trip.count, 2147483646
  br label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.ph.lver.orig, %.ph.lver.orig.preheader.new
  %i.hh = phi i32 [ 0, %.ph.lver.orig.preheader.new ], [ %i.hs, %.ph.lver.orig ]
  %indvars.iv.lver.orig = phi i64 [ 0, %.ph.lver.orig.preheader.new ], [ %indvars.iv.next.lver.orig.1, %.ph.lver.orig ] ; 4 uses
  %niter494 = phi i64 [ 0, %.ph.lver.orig.preheader.new ], [ %niter494.next.1, %.ph.lver.orig ]
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.lver.orig
  %i.hj = sub nsw i32 %.066, %i.hh
  %.sroa.speculated.lver.orig = call i32 @llvm.smin.i32(i32 %i.hj, i32 %spec.store.select) ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.lver.orig
  store i32 %.sroa.speculated.lver.orig, ptr %i.hk, align 4, !tbaa !134
  %i.hl = load i32, ptr %i.hi, align 4, !tbaa !134
  %i.hm = add nsw i32 %i.hl, %.sroa.speculated.lver.orig ; 2 uses
  %indvars.iv.next.lver.orig = or disjoint i64 %indvars.iv.lver.orig, 1 ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.next.lver.orig
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !134
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.next.lver.orig
  %i.hp = sub nsw i32 %.066, %i.hm
  %.sroa.speculated.lver.orig.1 = call i32 @llvm.smin.i32(i32 %i.hp, i32 %spec.store.select) ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next.lver.orig
  store i32 %.sroa.speculated.lver.orig.1, ptr %i.hq, align 4, !tbaa !134
  %i.hr = load i32, ptr %i.ho, align 4, !tbaa !134
  %i.hs = add nsw i32 %i.hr, %.sroa.speculated.lver.orig.1 ; 3 uses
  %indvars.iv.next.lver.orig.1 = add nuw nsw i64 %indvars.iv.lver.orig, 2 ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.next.lver.orig.1
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !134
  %niter494.next.1 = add nuw i64 %niter494, 2     ; 2 uses
  %niter494.ncmp.1 = icmp eq i64 %niter494.next.1, %unroll_iter493
  br i1 %niter494.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.ph.lver.orig, !llvm.loop !737

.ph:                                              ; preds = %.lver.check
  %load_initial = load i32, ptr %i.hb, align 4    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.hu = icmp eq i32 %i.hc, 1
  br i1 %i.hu, label %.epil.preheader, label %.ph.new

.ph.new:                                          ; preds = %.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.bc

bb.ay:                                            ; preds = %bb.ar
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.az:                                            ; preds = %bb.as
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.ba:                                            ; preds = %bb.av, %bb.au
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

bb.bb:                                            ; preds = %bb.aw
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit242

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.ph.lver.orig
  %lcmp.mod491.not = icmp eq i64 %xtraiter488, 0
  br i1 %lcmp.mod491.not, label %._crit_edge, label %.ph.lver.orig.epil.preheader

.ph.lver.orig.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.ph.lver.orig.preheader
  %.epil.init490 = phi i32 [ 0, %.ph.lver.orig.preheader ], [ %i.hs, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.lver.orig.epil.init = phi i64 [ 0, %.ph.lver.orig.preheader ], [ %indvars.iv.next.lver.orig.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod492 = trunc i32 %i.hc to i1
  call void @llvm.assume(i1 %lcmp.mod492)
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.lver.orig.epil.init
  %i.ia = sub nsw i32 %.066, %.epil.init490
  %.sroa.speculated.lver.orig.epil = call i32 @llvm.smin.i32(i32 %i.ia, i32 %spec.store.select) ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.lver.orig.epil.init
  store i32 %.sroa.speculated.lver.orig.epil, ptr %i.ib, align 4, !tbaa !134
  %i.ic = load i32, ptr %i.hz, align 4, !tbaa !134
  %i.id = add nsw i32 %i.ic, %.sroa.speculated.lver.orig.epil
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.lver.orig.epil.init
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store i32 %i.id, ptr %i.if, align 4, !tbaa !134
  br label %._crit_edge

._crit_edge.loopexit485.unr-lcssa:                ; preds = %bb.bc
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit485.unr-lcssa, %.ph
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.ph ], [ %i.ix, %._crit_edge.loopexit485.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.ph ], [ %i.ix, %._crit_edge.loopexit485.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit485.unr-lcssa ] ; 2 uses
  %lcmp.mod487 = trunc i32 %i.hc to i1
  call void @llvm.assume(i1 %lcmp.mod487)
  %i.ig = sub nsw i32 %.066, %.epil.init
  %.sroa.speculated.epil = call i32 @llvm.smin.i32(i32 %i.ig, i32 %spec.store.select) ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.epil.init
  store i32 %.sroa.speculated.epil, ptr %i.ih, align 4, !tbaa !134
  %i.ii = add nsw i32 %store_forwarded.epil.init, %.sroa.speculated.epil
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.epil.init
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store i32 %i.ii, ptr %i.ik, align 4, !tbaa !134
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit485.unr-lcssa, %.ph.lver.orig.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.ax
  %23 = sext i32 %i.hc to i64                     ; 4 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %23
  %i.im = load i32, ptr %i.il, align 4, !tbaa !134
  %i.in = sub nsw i32 %.066, %i.im
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %23
  store i32 %i.in, ptr %i.io, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %20, i8 0, i64 48, i1 false)
  %i.ip = invoke i32 @OMP_NUM_THREADS()
          to label %bb.bd unwind label %bb.bk

bb.bc:                                            ; preds = %bb.bc, %.ph.new
  %store_forwarded = phi i32 [ %load_initial, %.ph.new ], [ %i.ix, %bb.bc ]
  %i.iq = phi i32 [ 0, %.ph.new ], [ %i.ix, %bb.bc ]
  %indvars.iv = phi i64 [ 0, %.ph.new ], [ %indvars.iv.next.1, %bb.bc ] ; 3 uses
  %niter = phi i64 [ 0, %.ph.new ], [ %niter.next.1, %bb.bc ]
  %i.ir = sub nsw i32 %.066, %i.iq
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ir, i32 %spec.store.select) ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv
  store i32 %.sroa.speculated, ptr %i.is, align 4, !tbaa !134
  %i.it = add nsw i32 %store_forwarded, %.sroa.speculated ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.next
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !134
  %i.iv = sub nsw i32 %.066, %i.it
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.iv, i32 %spec.store.select) ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next
  store i32 %.sroa.speculated.1, ptr %i.iw, align 4, !tbaa !134
  %i.ix = add nsw i32 %i.it, %.sroa.speculated.1  ; 5 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.next.1
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !134
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit485.unr-lcssa, label %bb.bc, !llvm.loop !737

bb.bd:                                            ; preds = %._crit_edge
  call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %i.l, i32 %i.ip)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 12, ptr nonnull @_ZN8LightGBM13DatasetLoader23ConstructFromSampleDataEPPdPPiiPKimil.omp_outlined.66, ptr nonnull %i.k, ptr nonnull %19, ptr nonnull %0, ptr nonnull %18, ptr nonnull %11, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull %i.j, ptr nonnull %15, ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.iz = load ptr, ptr %20, align 8, !tbaa !264  ; 2 uses
  %.not.i161 = icmp eq ptr %i.iz, null
  br i1 %.not.i161, label %_ZN21ThreadExceptionHelper7ReThrowEv.exit167, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i162

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i162: ; preds = %bb.bd
  store ptr %i.iz, ptr %9, align 8, !tbaa !264
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 dereferenceable(8) %9) #36
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i162
  unreachable

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i162
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jb = load ptr, ptr %9, align 8, !tbaa !264
  %.not.i3.i163 = icmp eq ptr %i.jb, null
  br i1 %.not.i3.i163, label %.body165, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  br label %.body165

_ZN21ThreadExceptionHelper7ReThrowEv.exit167:     ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.jc = load i32, ptr %i.k, align 4, !tbaa !134 ; 2 uses
  %i.jd = sext i32 %i.jc to i64                   ; 2 uses
  %i.je = load ptr, ptr %19, align 8, !tbaa !215  ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jd
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !134
  %i.jh = icmp sgt i32 %i.jg, 0
  br i1 %i.jh, label %.lr.ph341, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

.lr.ph341:                                        ; preds = %_ZN21ThreadExceptionHelper7ReThrowEv.exit167
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.bl

._crit_edge342:                                   ; preds = %.loopexit325
  %i.jm = zext nneg i32 %.164 to i64              ; 3 uses
  %i.jn = icmp slt i32 %.164, 0
  br i1 %i.jn, label %bb.bh, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.bh:                                            ; preds = %._crit_edge342
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
          to label %.noexc170 unwind label %bb.bt

.noexc170:                                        ; preds = %bb.bh
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge342
  %.not.i.i.i.i168 = icmp eq i32 %.164, 0
  br i1 %.not.i.i.i.i168, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.jo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jm) #37
          to label %.noexc171 unwind label %bb.bt ; 5 uses

.noexc171:                                        ; preds = %bb.bi
  %i.jp = getelementptr i8, ptr %i.jo, i64 %i.jm  ; 2 uses
  store i8 0, ptr %i.jo, align 1, !tbaa !106
  %i.jq = add nsw i64 %i.jm, -1                   ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.bj

bb.bj:                                            ; preds = %.noexc171
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.js, i8 0, i64 %i.jq, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

bb.bk:                                            ; preds = %._crit_edge
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %.body165

bb.bl:                                            ; preds = %.lr.ph341, %.loopexit325
  %i.ju = phi ptr [ %i.je, %.lr.ph341 ], [ %i.lc, %.loopexit325 ] ; 3 uses
  %i.jv = phi i32 [ %i.jc, %.lr.ph341 ], [ %i.ld, %.loopexit325 ] ; 3 uses
  %indvars.iv365 = phi i64 [ 0, %.lr.ph341 ], [ %indvars.iv.next366, %.loopexit325 ] ; 3 uses
  %i.jw = phi i64 [ %i.jd, %.lr.ph341 ], [ %i.le, %.loopexit325 ]
  %.063339 = phi i32 [ 0, %.lr.ph341 ], [ %.164, %.loopexit325 ] ; 4 uses
  %i.jx = load ptr, ptr %18, align 8, !tbaa !215
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.jw
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !134
  %i.ka = trunc nuw nsw i64 %indvars.iv365 to i32
  %i.kb = add nsw i32 %i.jz, %i.ka                ; 4 uses
  %i.kc = load i64, ptr %i.ji, align 8, !tbaa !181
  %.not.not.i.i.i = icmp eq i64 %i.kc, 0
  br i1 %.not.not.i.i.i, label %.preheader361, label %bb.bn

.preheader361:                                    ; preds = %bb.bl, %bb.bm
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.bm ], [ %i.jl, %bb.bl ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit324, label %bb.bm

bb.bm:                                            ; preds = %.preheader361
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !134
  %i.kf = icmp eq i32 %i.kb, %i.ke
  br i1 %i.kf, label %.loopexit325, label %.preheader361, !llvm.loop !13

bb.bn:                                            ; preds = %bb.bl
  %i.kg = sext i32 %i.kb to i64
  %i.kh = load i64, ptr %i.jk, align 8, !tbaa !94 ; 2 uses
  %i.ki = urem i64 %i.kg, %i.kh                   ; 2 uses
  %i.kj = load ptr, ptr %i.jj, align 8, !tbaa !93
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.ki
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i.i.i, label %.loopexit324, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !137 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !134
  %i.kp = icmp eq i32 %i.kb, %i.ko
  br i1 %i.kp, label %.loopexit325, label %.lr.ph.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bq
  %i.kq = icmp eq i32 %i.kb, %i.kt
  br i1 %i.kq, label %.loopexit325, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bo, %bb.bp
  %.020.i.i.i.i.i = phi ptr [ %i.kr, %bb.bp ], [ %i.km, %bb.bo ]
  %i.kr = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !137 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.kr, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit324, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !134 ; 2 uses
  %i.ku = sext i32 %i.kt to i64
  %i.kv = urem i64 %i.ku, %i.kh
  %.not19.i.i.i.i.i = icmp eq i64 %i.kv, %i.ki
  br i1 %.not19.i.i.i.i.i, label %bb.bp, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !7

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.bq
  br label %.loopexit324, !llvm.loop !7

.loopexit324:                                     ; preds = %.lr.ph.i.i.i.i.i, %.preheader361, %..loopexit_crit_edge21.i.i.i.i.i, %bb.bn
  %i.kw = load ptr, ptr %11, align 8, !tbaa !256
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv365
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !265
  %i.kz = invoke noundef i64 @_ZNK8LightGBM9BinMapper11SizesInByteEv(ptr noundef nonnull align 8 dereferenceable(160) %i.ky)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %.loopexit324
  %i.la = trunc i64 %i.kz to i32
  %i.lb = add nsw i32 %.063339, %i.la
  %.pre389 = load i32, ptr %i.k, align 4, !tbaa !134
  %.pre390 = load ptr, ptr %19, align 8, !tbaa !215
  br label %.loopexit325

.loopexit325:                                     ; preds = %bb.bp, %bb.bm, %bb.bo, %bb.br
  %i.lc = phi ptr [ %.pre390, %bb.br ], [ %i.ju, %bb.bm ], [ %i.ju, %bb.bo ], [ %i.ju, %bb.bp ] ; 2 uses
  %i.ld = phi i32 [ %.pre389, %bb.br ], [ %i.jv, %bb.bm ], [ %i.jv, %bb.bo ], [ %i.jv, %bb.bp ] ; 2 uses
  %.164 = phi i32 [ %i.lb, %bb.br ], [ %.063339, %bb.bm ], [ %.063339, %bb.bo ], [ %.063339, %bb.bp ] ; 6 uses
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %i.le = sext i32 %i.ld to i64                   ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !134
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp slt i64 %indvars.iv.next366, %i.lh
  br i1 %i.li, label %bb.bl, label %._crit_edge342, !llvm.loop !738

bb.bs:                                            ; preds = %.loopexit324
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body165

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %_ZN21ThreadExceptionHelper7ReThrowEv.exit167, %bb.bj, %.noexc171, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.063.lcssa457460 = phi i32 [ %.164, %bb.bj ], [ %.164, %.noexc171 ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ 0, %_ZN21ThreadExceptionHelper7ReThrowEv.exit167 ]
  %.sroa.0283.0 = phi ptr [ %i.jo, %bb.bj ], [ %i.jo, %.noexc171 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZN21ThreadExceptionHelper7ReThrowEv.exit167 ] ; 8 uses
  %.sroa.11288.0 = phi ptr [ %i.jp, %bb.bj ], [ %i.jp, %.noexc171 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZN21ThreadExceptionHelper7ReThrowEv.exit167 ] ; 2 uses
  %i.lk = load i32, ptr %i.k, align 4, !tbaa !134
  %i.ll = sext i32 %i.lk to i64                   ; 2 uses
  %i.lm = load ptr, ptr %19, align 8, !tbaa !215
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.ll
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !134
  %i.lp = icmp sgt i32 %i.lo, 0
  br i1 %i.lp, label %.lr.ph346, label %._crit_edge347

.lr.ph346:                                        ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.bu

._crit_edge347:                                   ; preds = %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  invoke void @_ZN8LightGBM7Network11GlobalArrayIiEESt6vectorIT_SaIS3_EES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.19") align 8 %21, i32 noundef %.063.lcssa457460)
          to label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i188 unwind label %bb.cg

bb.bt:                                            ; preds = %bb.bi, %bb.bh
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.body165

bb.bu:                                            ; preds = %.lr.ph346, %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit
  %indvars.iv368 = phi i64 [ 0, %.lr.ph346 ], [ %indvars.iv.next369, %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit ] ; 5 uses
  %i.lv = phi i64 [ %i.ll, %.lr.ph346 ], [ %i.nh, %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit ]
  %.061344 = phi ptr [ %.sroa.0283.0, %.lr.ph346 ], [ %.1, %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit ] ; 5 uses
  %i.lw = load ptr, ptr %18, align 8, !tbaa !215
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.lv
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !134
  %i.lz = trunc nuw nsw i64 %indvars.iv368 to i32
  %i.ma = add nsw i32 %i.ly, %i.lz                ; 4 uses
  %i.mb = load i64, ptr %i.lq, align 8, !tbaa !181
  %.not.not.i.i.i173 = icmp eq i64 %i.mb, 0
  br i1 %.not.not.i.i.i173, label %.preheader358, label %bb.bw

.preheader358:                                    ; preds = %bb.bu, %bb.bv
  %.sroa.06.0.in.i.i.i183 = phi ptr [ %.sroa.06.0.i.i.i184, %bb.bv ], [ %i.lt, %bb.bu ]
  %.sroa.06.0.i.i.i184 = load ptr, ptr %.sroa.06.0.in.i.i.i183, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i185 = icmp eq ptr %.sroa.06.0.i.i.i184, null
  br i1 %.not.i.i.i185, label %.loopexit321, label %bb.bv

bb.bv:                                            ; preds = %.preheader358
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i184, i64 8
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !134
  %i.me = icmp eq i32 %i.ma, %i.md
  br i1 %i.me, label %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit, label %.preheader358, !llvm.loop !13

bb.bw:                                            ; preds = %bb.bu
  %i.mf = sext i32 %i.ma to i64
  %i.mg = load i64, ptr %i.ls, align 8, !tbaa !94 ; 2 uses
  %i.mh = urem i64 %i.mf, %i.mg                   ; 2 uses
  %i.mi = load ptr, ptr %i.lr, align 8, !tbaa !93
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.mh
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i.i174 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i.i.i174, label %.loopexit321, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !137 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !134
  %i.mo = icmp eq i32 %i.ma, %i.mn
  br i1 %i.mo, label %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit, label %.lr.ph.i.i.i.i.i175

bb.by:                                            ; preds = %bb.bz
  %i.mp = icmp eq i32 %i.ma, %i.ms
  br i1 %i.mp, label %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit, label %.lr.ph.i.i.i.i.i175, !llvm.loop !7

.lr.ph.i.i.i.i.i175:                              ; preds = %bb.bx, %bb.by
  %.020.i.i.i.i.i176 = phi ptr [ %i.mq, %bb.by ], [ %i.ml, %bb.bx ]
  %i.mq = load ptr, ptr %.020.i.i.i.i.i176, align 8, !tbaa !137 ; 3 uses
  %.not18.i.i.i.i.i177 = icmp eq ptr %i.mq, null
  br i1 %.not18.i.i.i.i.i177, label %.loopexit321, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i.i.i.i175
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !134 ; 2 uses
  %i.mt = sext i32 %i.ms to i64
  %i.mu = urem i64 %i.mt, %i.mg
  %.not19.i.i.i.i.i178 = icmp eq i64 %i.mu, %i.mh
  br i1 %.not19.i.i.i.i.i178, label %bb.by, label %..loopexit_crit_edge21.i.i.i.i.i179, !llvm.loop !7

..loopexit_crit_edge21.i.i.i.i.i179:              ; preds = %bb.bz
  br label %.loopexit321, !llvm.loop !7

.loopexit321:                                     ; preds = %.lr.ph.i.i.i.i.i175, %.preheader358, %..loopexit_crit_edge21.i.i.i.i.i179, %bb.bw
  %i.mv = load ptr, ptr %11, align 8, !tbaa !256
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %indvars.iv368
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !265
  invoke void @_ZNK8LightGBM9BinMapper6CopyToEPc(ptr noundef nonnull align 8 dereferenceable(160) %i.mx, ptr noundef %.061344)
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %.loopexit321
  %i.my = load ptr, ptr %11, align 8, !tbaa !256
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %indvars.iv368
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !265
  %i.nb = invoke noundef i64 @_ZNK8LightGBM9BinMapper11SizesInByteEv(ptr noundef nonnull align 8 dereferenceable(160) %i.na)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.nc = getelementptr inbounds nuw i8, ptr %.061344, i64 %i.nb ; 2 uses
  %i.nd = load ptr, ptr %11, align 8, !tbaa !256
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv368 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !265 ; 3 uses
  store ptr null, ptr %i.ne, align 8, !tbaa !265
  %.not.i.i187 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i187, label %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN8LightGBM9BinMapperEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN8LightGBM9BinMapperEEclEPS1_.exit.i.i: ; preds = %bb.cb
  call void @_ZN8LightGBM9BinMapperD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.nf) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.nf, i64 noundef 160) #35
  br label %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.by, %bb.bv, %bb.bx, %_ZNKSt14default_deleteIN8LightGBM9BinMapperEEclEPS1_.exit.i.i, %bb.cb
  %.1 = phi ptr [ %i.nc, %_ZNKSt14default_deleteIN8LightGBM9BinMapperEEclEPS1_.exit.i.i ], [ %i.nc, %bb.cb ], [ %.061344, %bb.bv ], [ %.061344, %bb.bx ], [ %.061344, %bb.by ]
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %i.ng = load i32, ptr %i.k, align 4, !tbaa !134
  %i.nh = sext i32 %i.ng to i64                   ; 2 uses
  %i.ni = load ptr, ptr %19, align 8, !tbaa !215
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nh
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !134
  %i.nl = sext i32 %i.nk to i64
  %i.nm = icmp slt i64 %indvars.iv.next369, %i.nl
  br i1 %i.nm, label %bb.bu, label %._crit_edge347, !llvm.loop !739

bb.cc:                                            ; preds = %bb.ca, %.loopexit321
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i188: ; preds = %._crit_edge347
  %i.no = shl nuw nsw i64 %i.gg, 2                ; 4 uses
  %i.np = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.no) #37
          to label %.noexc192 unwind label %bb.ch ; 11 uses

.noexc192:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i188
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.np, i8 0, i64 %i.no, i1 false), !tbaa !134
  %.pre392 = load ptr, ptr %21, align 8, !tbaa !215 ; 6 uses
  br i1 %i.hd, label %.lr.ph349, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge

.lr.ph349:                                        ; preds = %.noexc192
  %wide.trip.count374 = zext nneg i32 %i.ge to i64
  %.pre391 = load i32, ptr %i.np, align 4, !tbaa !134 ; 2 uses
  %i.nq = add nsw i64 %wide.trip.count374, -1     ; 2 uses
  %xtraiter495 = and i64 %i.nq, 3                 ; 3 uses
  %i.nr = add nsw i32 %i.ge, -2
  %i.ns = icmp ult i32 %i.nr, 3
  br i1 %i.ns, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader, label %.lr.ph349.new

.lr.ph349.new:                                    ; preds = %.lr.ph349
  %unroll_iter500 = and i64 %i.nq, -4
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %lcmp.mod498.not = icmp eq i64 %xtraiter495, 0
  br i1 %lcmp.mod498.not, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph349
  %.epil.init497 = phi i32 [ %.pre391, %.lr.ph349 ], [ %i.pg, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv371.epil.init = phi i64 [ 1, %.lr.ph349 ], [ %indvars.iv.next372.3, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod499 = icmp ne i64 %xtraiter495, 0
  call void @llvm.assume(i1 %lcmp.mod499)
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil:       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader
  %i.nt = phi i32 [ %.epil.init497, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader ], [ %i.nx, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil ]
  %indvars.iv371.epil = phi i64 [ %indvars.iv371.epil.init, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader ], [ %indvars.iv.next372.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil.preheader ], [ %epil.iter.next, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil ]
  %i.nu = getelementptr [4 x i8], ptr %.pre392, i64 %indvars.iv371.epil
  %i.nv = getelementptr i8, ptr %i.nu, i64 -4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !134
  %i.nx = add nsw i32 %i.nw, %i.nt                ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv371.epil
  store i32 %i.nx, ptr %i.ny, align 4, !tbaa !134
  %indvars.iv.next372.epil = add nuw nsw i64 %indvars.iv371.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter495
  br i1 %epil.iter.cmp.not, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil, !llvm.loop !740

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.epil, %.noexc192
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %23
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !134
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.pre392, i64 %23
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !134
  %i.od = add nsw i32 %i.oc, %i.oa                ; 4 uses
  %i.oe = sext i32 %i.od to i64                   ; 3 uses
  %i.of = icmp slt i32 %i.od, 0
  br i1 %i.of, label %bb.cd, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i193

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
          to label %.noexc197 unwind label %bb.cq

.noexc197:                                        ; preds = %bb.cd
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i193: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge
  %.not.i.i.i.i194 = icmp eq i32 %i.od, 0
  br i1 %.not.i.i.i.i194, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit199, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i193
  %i.og = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oe) #37
          to label %.noexc198 unwind label %bb.cq ; 5 uses

.noexc198:                                        ; preds = %bb.ce
  %i.oh = getelementptr i8, ptr %i.og, i64 %i.oe  ; 2 uses
  store i8 0, ptr %i.og, align 1, !tbaa !106
  %i.oi = add nsw i64 %i.oe, -1                   ; 2 uses
  %i.oj = icmp eq i64 %i.oi, 0
  br i1 %i.oj, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit199, label %bb.cf

bb.cf:                                            ; preds = %.noexc198
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ok, i8 0, i64 %i.oi, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit199

bb.cg:                                            ; preds = %._crit_edge347
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit238

bb.ch:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i188
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %.lr.ph349.new
  %i.on = phi i32 [ %.pre391, %.lr.ph349.new ], [ %i.pg, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ]
  %indvars.iv371 = phi i64 [ 1, %.lr.ph349.new ], [ %indvars.iv.next372.3, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ] ; 6 uses
  %niter501 = phi i64 [ 0, %.lr.ph349.new ], [ %niter501.next.3, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ]
  %i.oo = getelementptr [4 x i8], ptr %.pre392, i64 %indvars.iv371
  %i.op = getelementptr i8, ptr %i.oo, i64 -4
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !134
  %i.or = add nsw i32 %i.oq, %i.on                ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv371
  store i32 %i.or, ptr %i.os, align 4, !tbaa !134
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %i.ot = getelementptr [4 x i8], ptr %.pre392, i64 %indvars.iv.next372
  %i.ou = getelementptr i8, ptr %i.ot, i64 -4
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !134
  %i.ow = add nsw i32 %i.ov, %i.or                ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv.next372
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !134
  %indvars.iv.next372.1 = add nuw nsw i64 %indvars.iv371, 2 ; 2 uses
  %i.oy = getelementptr [4 x i8], ptr %.pre392, i64 %indvars.iv.next372.1
  %i.oz = getelementptr i8, ptr %i.oy, i64 -4
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !134
  %i.pb = add nsw i32 %i.pa, %i.ow                ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv.next372.1
  store i32 %i.pb, ptr %i.pc, align 4, !tbaa !134
  %indvars.iv.next372.2 = add nuw nsw i64 %indvars.iv371, 3 ; 2 uses
  %i.pd = getelementptr [4 x i8], ptr %.pre392, i64 %indvars.iv.next372.2
  %i.pe = getelementptr i8, ptr %i.pd, i64 -4
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !134
  %i.pg = add nsw i32 %i.pf, %i.pb                ; 3 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv.next372.2
  store i32 %i.pg, ptr %i.ph, align 4, !tbaa !134
  %indvars.iv.next372.3 = add nuw nsw i64 %indvars.iv371, 4 ; 2 uses
  %niter501.next.3 = add nuw i64 %niter501, 4     ; 2 uses
  %niter501.ncmp.3 = icmp eq i64 %niter501.next.3, %unroll_iter500
  br i1 %niter501.ncmp.3, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge.loopexit.unr-lcssa, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, !llvm.loop !741

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit199:            ; preds = %bb.cf, %.noexc198, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i193
  %.sroa.0266.0 = phi ptr [ %i.og, %bb.cf ], [ %i.og, %.noexc198 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i193 ] ; 8 uses
  %.sroa.11.0 = phi ptr [ %i.oh, %bb.cf ], [ %i.oh, %.noexc198 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i193 ] ; 2 uses
  %i.pi = load ptr, ptr %21, align 8, !tbaa !215
  invoke void @_ZN8LightGBM7Network9AllgatherEPcPKiS3_S1_i(ptr noundef %.sroa.0283.0, ptr noundef nonnull %i.np, ptr noundef %i.pi, ptr noundef %.sroa.0266.0, i32 noundef %i.od)
          to label %.preheader unwind label %bb.cr

.preheader:                                       ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit199
  br i1 %.not.i.i.i.i, label %._crit_edge353, label %.lr.ph352

.lr.ph352:                                        ; preds = %.preheader
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count379 = zext nneg i32 %.066 to i64
  br label %bb.cs

._crit_edge353:                                   ; preds = %_ZNSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EEaSEDn.exit, %.preheader
  %.not.i.i.i200 = icmp eq ptr %.sroa.0266.0, null
  br i1 %.not.i.i.i200, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge353
  %i.pn = ptrtoint ptr %.sroa.11.0 to i64
  %i.po = ptrtoint ptr %.sroa.0266.0 to i64
  %i.pp = sub i64 %i.pn, %i.po
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0266.0, i64 noundef %i.pp) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge353, %bb.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.np, i64 noundef %i.no) #35
  %i.pq = load ptr, ptr %21, align 8, !tbaa !215  ; 3 uses
  %.not.i.i.i202 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i202, label %_ZNSt6vectorIiSaIiEED2Ev.exit203, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.pr = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !216
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %i.pq to i64
  %i.pv = sub i64 %i.pt, %i.pu
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef %i.pv) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit203

_ZNSt6vectorIiSaIiEED2Ev.exit203:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %.not.i.i.i204 = icmp eq ptr %.sroa.0283.0, null
  br i1 %.not.i.i.i204, label %_ZNSt6vectorIcSaIcEED2Ev.exit205, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit203
  %i.pw = ptrtoint ptr %.sroa.11288.0 to i64
  %i.px = ptrtoint ptr %.sroa.0283.0 to i64
  %i.py = sub i64 %i.pw, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0283.0, i64 noundef %i.py) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit205

_ZNSt6vectorIcSaIcEED2Ev.exit205:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit203, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.pz = load ptr, ptr %20, align 8, !tbaa !264  ; 2 uses
  %.not.i.i206 = icmp eq ptr %i.pz, null
  br i1 %.not.i.i206, label %_ZN21ThreadExceptionHelperD2Ev.exit210, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i207

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i207: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit205
  store ptr %i.pz, ptr %8, align 8, !tbaa !264
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 dereferenceable(8) %8) #36
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i207
  unreachable

bb.cm:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i207
  %i.qa = landingpad { ptr, i32 }
          catch ptr null
  %i.qb = load ptr, ptr %8, align 8, !tbaa !264
  %.not.i3.i.i208 = icmp eq ptr %i.qb, null
  br i1 %.not.i3.i.i208, label %.body.i209, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br label %.body.i209

.body.i209:                                       ; preds = %bb.cn, %bb.cm
  %i.qc = extractvalue { ptr, i32 } %i.qa, 0
  call void @__clang_call_terminate(ptr %i.qc) #34
  unreachable

_ZN21ThreadExceptionHelperD2Ev.exit210:           ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit205
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.qd = load ptr, ptr %19, align 8, !tbaa !215  ; 3 uses
  %.not.i.i.i211 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i211, label %_ZNSt6vectorIiSaIiEED2Ev.exit212, label %bb.co

bb.co:                                            ; preds = %_ZN21ThreadExceptionHelperD2Ev.exit210
  %i.qe = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !216
  %i.qg = ptrtoint ptr %i.qf to i64
  %i.qh = ptrtoint ptr %i.qd to i64
  %i.qi = sub i64 %i.qg, %i.qh
  call void @_ZdlPvm(ptr noundef nonnull %i.qd, i64 noundef %i.qi) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit212

_ZNSt6vectorIiSaIiEED2Ev.exit212:                 ; preds = %_ZN21ThreadExceptionHelperD2Ev.exit210, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.qj = load ptr, ptr %18, align 8, !tbaa !215  ; 3 uses
  %.not.i.i.i213 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i.i213, label %_ZNSt6vectorIiSaIiEED2Ev.exit214, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit212
  %i.qk = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !216
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = ptrtoint ptr %i.qj to i64
  %i.qo = sub i64 %i.qm, %i.qn
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef %i.qo) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit214

_ZNSt6vectorIiSaIiEED2Ev.exit214:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit212, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
end_hunk_1
