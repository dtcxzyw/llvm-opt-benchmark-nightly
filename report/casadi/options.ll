Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/options?download=true
inline.NumInlined: 1118
inline.NumDeleted: 421
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6casadi7Options13word_distanceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %_ZNSt6vectorIxSaIxEED2Ev.exit68, label %.thread

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.c
  %i.j = icmp eq i64 %i.d, 0
  br i1 %i.j, label %_ZNSt6vectorIxSaIxEED2Ev.exit68, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.k = add nsw i64 %i.d, 1                      ; 10 uses
  %i.l = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #23
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.thread, label %.noexc56

.noexc56:                                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 3                  ; 4 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.m, i1 false), !tbaa !58
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k ; 4 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
          to label %.lr.ph.preheader unwind label %.thread117 ; 21 uses

.lr.ph.preheader:                                 ; preds = %.noexc56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.m, i1 false), !tbaa !58
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.k
  %i.r = ptrtoint ptr %i.q to i64                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.preheader202, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, 1152921504606846972      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x i64> %vec.ind, ptr %i.s, align 8, !tbaa !58
  store <2 x i64> %step.add, ptr %i.t, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader202

.lr.ph.preheader202:                              ; preds = %.lr.ph.preheader, %middle.block
  %.044128.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %i.v = icmp sgt i64 %i.b, 0
  br i1 %i.v, label %.lr.ph137, label %_ZNSt6vectorIxSaIxEED2Ev.exit

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %i.w = icmp slt i64 %i.b, 1
  call void @llvm.assume(i1 %i.w)
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

.lr.ph137:                                        ; preds = %._crit_edge
  %i.x = icmp sgt i64 %i.d, 0
  %i.y = shl nsw i64 %i.d, 3
  %i.z = add nsw i64 %i.y, 8                      ; 6 uses
  br i1 %i.x, label %.lr.ph131.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph137
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.aa = icmp ult i64 %i.b, 4
  br i1 %i.aa, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %.preheader

.lr.ph131.us:                                     ; preds = %.lr.ph137, %.loopexit.us
  %.043135.us = phi i64 [ %i.ab, %.loopexit.us ], [ 0, %.lr.ph137 ] ; 2 uses
  %i.ab = add nuw nsw i64 %.043135.us, 1          ; 3 uses
  store i64 %i.ab, ptr %i.p, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph131.us, %_ZSt7tolowerIcET_S0_RKSt6locale.exit75.us
  %.042129.us = phi i64 [ 0, %.lr.ph131.us ], [ %i.be, %_ZSt7tolowerIcET_S0_RKSt6locale.exit75.us ] ; 4 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.043135.us
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !31
  %i.af = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #21
  %i.ag = load ptr, ptr %2, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.af
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !68 ; 3 uses
  %.not.not.i.i.us = icmp eq ptr %i.ak, null
  br i1 %.not.not.i.i.us, label %.split139.us.invoke, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.us

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.us: ; preds = %bb.e
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef signext i8 %i.an(ptr noundef nonnull align 8 dereferenceable(570) %i.ak, i8 noundef signext %i.ae)
          to label %_ZSt7tolowerIcET_S0_RKSt6locale.exit.us unwind label %.loopexit126.split.us, !inline_history !70

_ZSt7tolowerIcET_S0_RKSt6locale.exit.us:          ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.us
  %i.ap = load ptr, ptr %1, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.042129.us
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !31
  %i.as = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #21
  %i.at = load ptr, ptr %2, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.as
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !68 ; 3 uses
  %.not.not.i.i71.us = icmp eq ptr %i.ax, null
  br i1 %.not.not.i.i71.us, label %.split139.us.invoke, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i72.us

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i72.us: ; preds = %_ZSt7tolowerIcET_S0_RKSt6locale.exit.us
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef signext i8 %i.ba(ptr noundef nonnull align 8 dereferenceable(570) %i.ax, i8 noundef signext %i.ar)
          to label %_ZSt7tolowerIcET_S0_RKSt6locale.exit75.us unwind label %.loopexit126.split.us, !inline_history !70

_ZSt7tolowerIcET_S0_RKSt6locale.exit75.us:        ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i72.us
  %.not55.us = icmp ne i8 %i.ao, %i.bb
  %spec.store.select.us = zext i1 %.not55.us to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.042129.us
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !58
  %i.be = add nuw nsw i64 %.042129.us, 1          ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !58
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.042129.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !58
  %i.bj = add nsw i64 %i.bi, %spec.store.select.us
  %i.bk = call i64 @llvm.smin.i64(i64 %i.bg, i64 %i.bd)
  %.sroa.speculated82.us = add nsw i64 %i.bk, 1
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.bj, i64 %.sroa.speculated82.us)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.be
  store i64 %.sroa.speculated.us, ptr %i.bl, align 8, !tbaa !58
  %exitcond145.not = icmp eq i64 %i.be, %i.d
  br i1 %exitcond145.not, label %.loopexit.us, label %bb.e, !llvm.loop !71

.loopexit.us:                                     ; preds = %_ZSt7tolowerIcET_S0_RKSt6locale.exit75.us
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.p, i64 %i.z, i1 false), !tbaa !58
  %exitcond146.not = icmp eq i64 %i.ab, %i.b
  br i1 %exitcond146.not, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %.lr.ph131.us, !llvm.loop !72

.loopexit126.split.us:                            ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i72.us, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.thread117:                                       ; preds = %.noexc56
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit80

.lr.ph:                                           ; preds = %.lr.ph.preheader202, %.lr.ph
  %.044128 = phi i64 [ %i.bo, %.lr.ph ], [ %.044128.ph, %.lr.ph.preheader202 ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.044128
  store i64 %.044128, ptr %i.bn, align 8, !tbaa !58
  %i.bo = add nuw i64 %.044128, 1
  %exitcond.not = icmp eq i64 %.044128, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa, %.preheader.preheader
  %.043135.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ca, %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.043135.epil = phi i64 [ %i.bp, %.preheader.epil ], [ %.043135.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.bp = add nuw nsw i64 %.043135.epil, 1        ; 2 uses
  store i64 %i.bp, ptr %i.p, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.p, i64 %i.z, i1 false), !tbaa !58
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %.preheader.epil, !llvm.loop !74

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa, %.preheader.epil, %.loopexit.us, %._crit_edge.thread, %._crit_edge
  %.sroa.0100.0115158177 = phi ptr [ null, %._crit_edge.thread ], [ %i.n, %.loopexit.us ], [ %i.n, %._crit_edge ], [ %i.n, %.preheader.epil ], [ %i.n, %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa ] ; 3 uses
  %.sroa.13106.0112160175 = phi ptr [ null, %._crit_edge.thread ], [ %i.o, %.loopexit.us ], [ %i.o, %._crit_edge ], [ %i.o, %.preheader.epil ], [ %i.o, %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa ]
  %.sroa.14.0162174 = phi i64 [ 0, %._crit_edge.thread ], [ %i.r, %.loopexit.us ], [ %i.r, %._crit_edge ], [ %i.r, %.preheader.epil ], [ %i.r, %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa ]
  %.sroa.090.0163172 = phi ptr [ null, %._crit_edge.thread ], [ %i.p, %.loopexit.us ], [ %i.p, %._crit_edge ], [ %i.p, %.preheader.epil ], [ %i.p, %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.090.0163172, i64 %i.d
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !58 ; 2 uses
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bs = ptrtoint ptr %.sroa.090.0163172 to i64
  %i.bt = sub i64 %.sroa.14.0162174, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0163172, i64 noundef %i.bt) #22
  %.not.i.i.i67 = icmp eq ptr %.sroa.0100.0115158177, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIxSaIxEED2Ev.exit68, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.bu = ptrtoint ptr %.sroa.13106.0112160175 to i64
  %i.bv = ptrtoint ptr %.sroa.0100.0115158177 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0115158177, i64 noundef %i.bw) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit68

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.043135 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ca, %.preheader ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.bx = or disjoint i64 %.043135, 1
  store i64 %i.bx, ptr %i.p, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.p, i64 %i.z, i1 false), !tbaa !58
  %i.by = or disjoint i64 %.043135, 2
  store i64 %i.by, ptr %i.p, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.p, i64 %i.z, i1 false), !tbaa !58
  %i.bz = or disjoint i64 %.043135, 3
  store i64 %i.bz, ptr %i.p, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.p, i64 %i.z, i1 false), !tbaa !58
  %i.ca = add nuw nsw i64 %.043135, 4             ; 3 uses
  store i64 %i.ca, ptr %i.p, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.p, i64 %i.z, i1 false), !tbaa !58
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa, label %.preheader, !llvm.loop !72

.split139.us.invoke:                              ; preds = %_ZSt7tolowerIcET_S0_RKSt6locale.exit.us, %bb.e
  invoke void @_ZSt16__throw_bad_castv() #23
          to label %.split139.us.cont unwind label %.loopexit.split-lp

.split139.us.cont:                                ; preds = %.split139.us.invoke
  unreachable

.loopexit.split-lp:                               ; preds = %.split139.us.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit126.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit126.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.idx = shl nuw nsw i64 %i.k, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %.idx) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit80

_ZNSt6vectorIxSaIxEED2Ev.exit80:                  ; preds = %.thread117, %bb.g
  %.pn124 = phi { ptr, i32 } [ %i.bm, %.thread117 ], [ %lpad.phi, %bb.g ]
  %.idx199 = shl nuw nsw i64 %i.k, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %.idx199) #22
  resume { ptr, i32 } %.pn124

_ZNSt6vectorIxSaIxEED2Ev.exit68:                  ; preds = %bb.f, %_ZNSt6vectorIxSaIxEED2Ev.exit, %.thread, %bb.c
  %.041.in = phi i64 [ %i.b, %.thread ], [ %i.d, %bb.c ], [ %i.br, %_ZNSt6vectorIxSaIxEED2Ev.exit ], [ %i.br, %bb.f ]
  %.041 = sitofp i64 %.041.in to double
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNSt6vectorIxSaIxEED2Ev.exit68
  %.1 = phi double [ %.041, %_ZNSt6vectorIxSaIxEED2Ev.exit68 ], [ 0.000000e+00, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ 0.000000e+00, %bb.b ]
  ret double %.1
}

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi7Options11suggestionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx(ptr dead_on_unwind noalias writable sret(%"class.std::vector.11") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::vector.16", align 8    ; 8 uses
  %5 = alloca %"struct.std::pair.21", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store double +inf, ptr %5, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !20
  store i8 0, ptr %i.c, align 8, !tbaa !31
  %i.e = icmp ugt i64 %3, 230584300921369395
  br i1 %i.e, label %bb.a, label %_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i

bb.a:                                             ; preds = %._crit_edge.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #23
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  unreachable

_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i: ; preds = %._crit_edge.i.i.i
  %.not.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEC2EmRKS8_.exit.i, label %_ZNSt15__new_allocatorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  %i.f = mul nuw nsw i64 %3, 40
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
          to label %_ZNSt12_Vector_baseISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEC2EmRKS8_.exit.i unwind label %bb.h

_ZNSt12_Vector_baseISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEC2EmRKS8_.exit.i: ; preds = %_ZNSt15__new_allocatorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  %.pr.i = phi ptr [ null, %_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i ], [ %i.g, %_ZNSt15__new_allocatorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 11 uses
  store ptr %.pr.i, ptr %4, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %.pr.i, i64 %3
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !83
  %i.j = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmS7_ET_S9_T0_RKT1_(ptr noundef %.pr.i, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.d unwind label %bb.b       ; 5 uses

bb.b:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEC2EmRKS8_.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx = mul nuw nsw i64 %3, 40
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %.idx) #22
  br label %.body

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEC2EmRKS8_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !84
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.c
  br i1 %i.n, label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.c, align 8, !tbaa !31
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #22
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  invoke void @_ZNK6casadi7Options12best_matchesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIdS6_ESaISB_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_T0_(ptr %.pr.i, ptr %i.j)
          to label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit unwind label %bb.i

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit: ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
  %.not32 = icmp eq ptr %.pr.i, %i.j
  br i1 %.not32, label %_ZSt8_DestroyIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.k

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZSt8_DestroyISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !31
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #22
  br label %_ZSt8_DestroyISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.y, %i.j
  br i1 %.not.i.i.i19, label %_ZSt8_DestroyIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !85

_ZSt8_DestroyIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, %bb.f
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i
  %.idx45 = mul nuw nsw i64 %3, 40
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %.idx45) #22
  br label %_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.k, %bb.c ], [ %i.k, %bb.b ]
end_hunk_0
begin_hunk_1_@_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6casadi7Options7is_saneERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6casadi7Options7has_dotERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %i.a, label %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not12.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not12.not.i, label %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.08.013.i = phi ptr [ %i.g, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 64
  %i.f = tail call noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  br i1 %i.f, label %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.08.013.i) #24 ; 2 uses
  %.not.not.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.not.i, label %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit.loopexit, label %.lr.ph.i

_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit.loopexit: ; preds = %.lr.ph.i, %bb.c
  %.ph = xor i1 %i.f, true
  br label %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit

_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit: ; preds = %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit.loopexit, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.ph, %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit.loopexit ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi7Options8sanitizeERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEEb(ptr dead_on_unwind noalias writable sret(%"class.std::map.24") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::map.24", align 8       ; 12 uses
  %5 = alloca %"class.std::map.24", align 8       ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.casadi::GenericType", align 8 ; 7 uses
  %8 = alloca %"class.std::map.24", align 8       ; 8 uses
  %9 = alloca %"class.casadi::GenericType", align 8 ; 12 uses
  %10 = alloca %"class.casadi::GenericType", align 8 ; 7 uses
  %11 = alloca %"class.std::map.24", align 8      ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.casadi::GenericType", align 8 ; 7 uses
  %15 = alloca %"class.std::map.24", align 8      ; 8 uses
  br i1 %2, label %bb.b, label %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.not12.not.i = icmp eq ptr %i.d, %i.e
  br i1 %.not12.not.i, label %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.08.013.i = phi ptr [ %i.h, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 64
  %i.g = tail call noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.g, label %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.08.013.i) #24 ; 2 uses
  %.not.not.i = icmp eq ptr %i.h, %i.e
  br i1 %.not.not.i, label %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit.thread, label %.lr.ph.i

_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit: ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.i, ptr %i.k, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.i, ptr %i.l, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !104
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not134 = icmp eq ptr %i.n, %i.e
  br i1 %.not134, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6casadi11GenericTypeaSERKS0_.exit, %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit
  invoke void @_ZN6casadi7Options8sanitizeERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEEb(ptr dead_on_unwind writable sret(%"class.std::map.24") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.j

.lr.ph:                                           ; preds = %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit, %_ZN6casadi11GenericTypeaSERKS0_.exit
  %.sroa.0105.0135 = phi ptr [ %i.u, %_ZN6casadi11GenericTypeaSERKS0_.exit ], [ %i.n, %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135, i64 64 ; 2 uses
  %i.q = invoke noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph
  br i1 %i.q, label %_ZN6casadi11GenericTypeaSERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZN6casadi11GenericTypeaSERKS0_.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZN6casadi11GenericTypeaSERKS0_.exit:             ; preds = %bb.f, %bb.d
  %i.u = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0105.0135) #24 ; 2 uses
  %.not.a = icmp eq ptr %i.u, %i.e
  br i1 %.not.a, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %._crit_edge
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !14
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.v)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

bb.j:                                             ; preds = %._crit_edge
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn65 = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.y, %bb.j ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ce

_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit.thread: ; preds = %bb.c, %bb.b, %bb.a
  %i.z = tail call noundef zeroext i1 @_ZN6casadi7Options7has_dotERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !102
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !103
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !104
  br i1 %i.z, label %bb.l, label %bb.ca

bb.l:                                             ; preds = %_ZN6casadi7Options8has_nullERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.af, align 8, !tbaa !102
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !103
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !79
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i64 0, ptr %i.al, align 8, !tbaa !20
  store i8 0, ptr %i.ak, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !57 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not111136 = icmp eq ptr %i.an, %i.ao
  br i1 %.not111136, label %._crit_edge140.thread, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.m

._crit_edge140:                                   ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit89
  %.pre = load i64, ptr %i.al, align 8, !tbaa !20
  %i.av = icmp eq i64 %.pre, 0
  br i1 %i.av, label %._crit_edge140.thread, label %bb.bn

bb.m:                                             ; preds = %.lr.ph139, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit89
  %.0140 = phi i64 [ undef, %.lr.ph139 ], [ %.0, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit89 ]
  %.sroa.0101.0137 = phi ptr [ %i.an, %.lr.ph139 ], [ %i.et, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit89 ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0101.0137, i64 32 ; 6 uses
  %i.ax = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i8 noundef signext 46, i64 noundef 0) #21 ; 3 uses
  %i.ay = icmp eq i64 %i.ax, -1
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull @.str.6, i64 noundef 0, i64 noundef 2) #21 ; 3 uses
  %.not = icmp eq i64 %i.az, -1
  %i.ba = add i64 %i.az, 2
  %spec.select69 = select i1 %.not, i64 %.0140, i64 %i.ba
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bb = add nuw i64 %i.ax, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.031 = phi i64 [ %i.ax, %bb.o ], [ %i.az, %bb.n ] ; 4 uses
  %.0 = phi i64 [ %i.bb, %bb.o ], [ %spec.select69, %bb.n ] ; 5 uses
  %i.bc = load i64, ptr %i.al, align 8, !tbaa !20 ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = icmp eq i64 %.031, -1
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0101.0137, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %.031, i64 %i.bg) ; 3 uses
  %i.bh = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.r
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.bc, i64 %spec.select.i.i)
  %i.bi = load ptr, ptr %6, align 8, !tbaa !24
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !24
  %bcmp = call i32 @bcmp(ptr %i.bj, ptr %i.bi, i64 %.sroa.speculated.i)
  %.not.i = icmp eq i32 %bcmp, 0
  %.not51 = icmp eq i64 %spec.select.i.i, %i.bc
  %or.cond = and i1 %.not51, %.not.i
  br i1 %or.cond, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread: ; preds = %bb.r, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZN6casadi7Options8sanitizeERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::map.24") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %5, i1 noundef zeroext false)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread
  invoke void @_ZN6casadi11GenericTypeC1ERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_St4lessIS7_ESaISt4pairIKS7_S0_EEE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6casadi11update_dictERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS6_ESaISt4pairIKS6_S7_EEERSB_RKS7_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext true)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %bb.u
  %i.bm = load ptr, ptr %i.ap, align 8, !tbaa !14
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.bm)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit69 unwind label %bb.w

bb.w:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit69: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  store i64 0, ptr %i.al, align 8, !tbaa !20
  %i.bp = load ptr, ptr %6, align 8, !tbaa !24
  store i8 0, ptr %i.bp, align 1, !tbaa !31
  %i.bq = load ptr, ptr %i.ag, align 8, !tbaa !14
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.bq)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit unwind label %bb.x

bb.x:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit69
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit69
  store ptr null, ptr %i.ag, align 8, !tbaa !14
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !57
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !103
  store i64 0, ptr %i.aj, align 8, !tbaa !104
  br label %bb.ad

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit70

bb.aa:                                            ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit70 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit70: ; preds = %bb.aa, %bb.z
  %.pn52 = phi { ptr, i32 } [ %i.bu, %bb.z ], [ %i.bv, %bb.aa ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #21
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit70, %bb.y
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit70 ], [ %i.bt, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.bz

bb.ad:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0101.0137, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !105
  store ptr %i.bz, ptr %9, align 8, !tbaa !105
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi11GenericTypeC2ERKS0_.exit unwind label %bb.ak

_ZN6casadi11GenericTypeC2ERKS0_.exit:             ; preds = %bb.ad
  %i.ca = invoke noundef zeroext i1 @_ZNK6casadi11GenericType7is_dictEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %_ZN6casadi11GenericTypeC2ERKS0_.exit
  br i1 %i.ca, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.cb = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6casadi11GenericType7as_dictB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZNK6casadi11GenericTypecvRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_St4lessIS7_ESaISt4pairIKS7_S0_EEEEv.exit unwind label %bb.am

_ZNK6casadi11GenericTypecvRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_St4lessIS7_ESaISt4pairIKS7_S0_EEEEv.exit: ; preds = %bb.af
  invoke void @_ZN6casadi7Options8sanitizeERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::map.24") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %i.cb, i1 noundef zeroext false)
          to label %bb.ag unwind label %bb.am

bb.ag:                                            ; preds = %_ZNK6casadi11GenericTypecvRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_St4lessIS7_ESaISt4pairIKS7_S0_EEEEv.exit
  invoke void @_ZN6casadi11GenericTypeC1ERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_St4lessIS7_ESaISt4pairIKS7_S0_EEE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN6casadi11GenericTypeaSEOS0_.exit unwind label %bb.ao ; 0 uses

_ZN6casadi11GenericTypeaSEOS0_.exit:              ; preds = %bb.ah
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit71 unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN6casadi11GenericTypeaSEOS0_.exit
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit71: ; preds = %_ZN6casadi11GenericTypeaSEOS0_.exit
  %i.cf = load ptr, ptr %i.aq, align 8, !tbaa !14
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.cf)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit72 unwind label %bb.aj

bb.aj:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit71
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit72: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit71
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ad
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit90

bb.al:                                            ; preds = %bb.bi, %_ZN6casadi11GenericTypeC2ERKS0_.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.am:                                            ; preds = %bb.af, %_ZNK6casadi11GenericTypecvRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_St4lessIS7_ESaISt4pairIKS7_S0_EEEEv.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %bb.ag
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit73
end_hunk_1
