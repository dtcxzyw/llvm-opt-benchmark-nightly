inline.NumInlined: 2450
inline.NumDeleted: 866
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK6casadi21BlazingSplineFunction12get_jacobianERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EESD_RKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SF_EEE:._crit_edge.i.i
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 8 uses
  %i.j = sdiv exact i64 %i.i, 24                  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.k, ptr %11, align 8, !tbaa !101
  store i8 67, ptr %i.k, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.l, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.m, align 1, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1392 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !275
  invoke void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %9, i64 noundef %i.o, i64 noundef 1)
          to label %.noexc294 unwind label %bb.k

.noexc294:                                        ; preds = %._crit_edge.i.i
  invoke void @_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i unwind label %bb.b

_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i: ; preds = %.noexc294
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.d unwind label %bb.a

bb.a:                                             ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

bb.b:                                             ; preds = %.noexc294
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #28
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !275
  br label %.body

bb.d:                                             ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !275
  %i.u = load ptr, ptr %11, align 8, !tbaa !98    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.k
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.w = load i64, ptr %i.k, align 8, !tbaa !99
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.y, ptr %13, align 8, !tbaa !101
  store i8 120, ptr %i.y, align 8, !tbaa !99
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.z, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.aa, align 1, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !278
  invoke void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %8, i64 noundef %i.j, i64 noundef 1)
          to label %.noexc301 unwind label %bb.l

.noexc301:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i300 unwind label %bb.f

_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i300: ; preds = %.noexc301
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i300
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #28
  unreachable

bb.f:                                             ; preds = %.noexc301
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i299 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #28
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i299: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !278
  br label %.body302

bb.h:                                             ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !278
  %i.ag = load ptr, ptr %13, align 8, !tbaa !98   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.y
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %bb.h
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !99
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.ak = add nsw i64 %i.j, 1                     ; 4 uses
  %i.al = icmp ugt i64 %i.ak, 1152921504606846975
  br i1 %i.al, label %bb.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #27
          to label %.noexc308 unwind label %bb.m

.noexc308:                                        ; preds = %bb.i
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.am = shl nuw nsw i64 %i.ak, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #24
          to label %.noexc309 unwind label %bb.m  ; 8 uses

.noexc309:                                        ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  store ptr %i.an, ptr %14, align 8, !tbaa !137
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !138
  store i64 0, ptr %i.an, align 8, !tbaa !151
  %i.aq = getelementptr i8, ptr %i.an, i64 8      ; 3 uses
  %i.ar = icmp eq ptr %i.e, %i.f
  br i1 %i.ar, label %bb.j, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc309
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.j, 3   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !151
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc309
  %.0.i.i.i.i.i = phi ptr [ %i.as, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aq, %.noexc309 ]
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.at, align 8, !tbaa !152
  store i64 1, ptr %i.an, align 8, !tbaa !151
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !91  ; 3 uses
  %xtraiter = and i64 %i.j, 1
  %i.av = icmp eq i64 %i.i, 24
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.j, -2
  br label %bb.n

._crit_edge.unr-lcssa:                            ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.0179719.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.dc, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod873 = trunc i64 %i.j to i1
  call void @llvm.assume(i1 %lcmp.mod873)
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.0179719.epil.init ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !139
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !135
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = add nsw i64 %i.bd, -4
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0179719.epil.init
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !151
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %83 = shl nuw nsw i64 %i.j, 3                   ; 3 uses
  %84 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %83) #24
          to label %.noexc314 unwind label %bb.o  ; 5 uses

.noexc314:                                        ; preds = %._crit_edge
  store ptr %84, ptr %15, align 8, !tbaa !137
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %84, i64 %i.j
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !138
  %i.bj = getelementptr inbounds nuw i8, ptr %84, i64 %83 ; 2 uses
  %i.bk = add nsw i64 %83, -8                     ; 2 uses
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1
  %xtraiter874 = and i64 %i.bm, 7                 ; 2 uses
  %lcmp.mod875.not = icmp eq i64 %xtraiter874, 0
  br i1 %lcmp.mod875.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.noexc314, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %84, %.noexc314 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.noexc314 ]
  store i64 3, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !151
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter874
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !281

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc314
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %84, %.noexc314 ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bo = icmp ult i64 %i.bk, 56
  br i1 %i.bo, label %.lr.ph.preheader.i.i.i.i.i.a, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 3, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !151
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 3, ptr %i.bp, align 8, !tbaa !151
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 3, ptr %i.bq, align 8, !tbaa !151
  %i.br = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 3, ptr %i.br, align 8, !tbaa !151
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 3, ptr %i.bs, align 8, !tbaa !151
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 3, ptr %i.bt, align 8, !tbaa !151
  %i.bu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 3, ptr %i.bu, align 8, !tbaa !151
  %i.bv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 3, ptr %i.bv, align 8, !tbaa !151
  %i.bw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.bw, %i.bj
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %.lr.ph.preheader.i.i.i.i.i.a, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !283

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.k ], [ %i.r, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i ]
  %i.by = load ptr, ptr %11, align 8, !tbaa !98   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.k
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %.body
  %i.ca = load i64, ptr %i.k, align 8, !tbaa !99
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.jn

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body302

.body302:                                         ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i299, %bb.l
  %eh.lpad-body303 = phi { ptr, i32 } [ %i.cc, %bb.l ], [ %i.ad, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i299 ]
  %i.cd = load ptr, ptr %13, align 8, !tbaa !98   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.y
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %.body302
  %i.cf = load i64, ptr %i.y, align 8, !tbaa !99
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %.body302, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.jm

bb.m:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit633

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %.0179719 = phi i64 [ 0, %.lr.ph.new ], [ %i.dc, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.n ]
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.0179719 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !139
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !135
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3
  %i.cq = add nsw i64 %i.cp, -4
  %i.cr = or disjoint i64 %.0179719, 1            ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cr
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !151
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.cr ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !139
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !135
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3
  %i.db = add nsw i64 %i.da, -4
  %i.dc = add nuw nsw i64 %.0179719, 2            ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dc
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !151
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.n, !llvm.loop !284

.lr.ph.preheader.i.i.i.i.i.a:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bj, ptr %i.de, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %85 = icmp samesign ugt i64 %i.j, 384307168202282325
  br i1 %85, label %86, label %.lr.ph.preheader.i.i.i.i.i

86:                                               ; preds = %.lr.ph.preheader.i.i.i.i.i.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #27
          to label %.noexc322 unwind label %bb.p

.noexc322:                                        ; preds = %86
  unreachable

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.preheader.i.i.i.i.i.a
  %87 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24
          to label %.lr.ph.preheader.i.i.i.i.i325 unwind label %bb.p ; 5 uses

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %._crit_edge723

.lr.ph.preheader.i.i.i.i.i325:                    ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %87, ptr %16, align 8, !tbaa !285
  %i.dj = getelementptr i8, ptr %87, i64 %i.i     ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %87, i8 0, i64 %i.i, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !288
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !289
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24
          to label %.lr.ph722 unwind label %bb.q  ; 5 uses

.lr.ph722:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i325
  store ptr %i.dm, ptr %17, align 8, !tbaa !290
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.i   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dm, i8 0, i64 %i.i, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !293
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !294
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %i.ds = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %bb.r

._crit_edge723:                                   ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit, %.thread
  %i.du = phi ptr [ %i.di, %.thread ], [ %i.dp, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ]
  %i.dv = phi ptr [ %i.dh, %.thread ], [ %i.do, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ]
  %i.dw = phi ptr [ %i.df, %.thread ], [ %i.dk, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ]
  %i.dx = phi ptr [ %i.dg, %.thread ], [ %i.dl, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ]
  %i.dy = phi ptr [ null, %.thread ], [ %87, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  %i.dz = phi ptr [ null, %.thread ], [ %i.dm, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN6casadi2MX7vertcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit unwind label %bb.at

bb.o:                                             ; preds = %._crit_edge
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit631

bb.p:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %86
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.q:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i325
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

bb.r:                                             ; preds = %.lr.ph722, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit
  %.0181720 = phi i64 [ 0, %.lr.ph722 ], [ %i.ek, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %87, i64 %.0181720
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %.0181720
  invoke void @_ZN6casadi13BSplineCommon16derivative_coeffINS_2MXEEET_xRKSt6vectorIdSaIdEERKS4_IxSaIxEESC_SC_RKS3_RS4_IS6_SaIS6_EERSA_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %19, i64 noundef %.0181720, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %i.ee)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ef = load ptr, ptr %i.ds, align 8, !tbaa !295 ; 4 uses
  %i.eg = load ptr, ptr %i.dt, align 8, !tbaa !298
  %.not.i.i = icmp eq ptr %i.ef, %i.eg
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = load ptr, ptr %19, align 8, !tbaa !299
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !299
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ef)
          to label %.noexc332 unwind label %bb.w

.noexc332:                                        ; preds = %bb.t
  %i.ei = load ptr, ptr %i.ds, align 8, !tbaa !295
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.ej, ptr %i.ds, align 8, !tbaa !295
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit

bb.u:                                             ; preds = %bb.s
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr %i.ef, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit unwind label %bb.w

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc332, %bb.u
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.ek = add nuw i64 %.0181720, 1                ; 2 uses
  %exitcond732.not = icmp eq i64 %i.ek, %i.j
  br i1 %exitcond732.not, label %._crit_edge723, label %bb.r, !llvm.loop !300

bb.v:                                             ; preds = %bb.r
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn285 = phi { ptr, i32 } [ %i.em, %bb.w ], [ %i.el, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.jh

_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit: ; preds = %._crit_edge723
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 1184
  invoke void @_ZN6casadi7combineERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS6_ESaISt4pairIKS6_S7_EEESG_b(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %21, ptr noundef nonnull align 8 dereferenceable(48) %i.en, ptr noundef nonnull align 8 dereferenceable(48) %i.eo, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.au

bb.y:                                             ; preds = %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  invoke void @_ZN6casadi7combineERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS6_ESaISt4pairIKS6_S7_EEESG_b(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %22, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %21, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.av

bb.z:                                             ; preds = %bb.y
  %i.ep = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.eq)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i: ; preds = %bb.z
  %i.et = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 8 uses
  store ptr null, ptr %i.ep, align 8, !tbaa !146
  %i.eu = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 4 uses
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !301
  %i.ev = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  store ptr %i.et, ptr %i.ev, align 8, !tbaa !302
  %i.ew = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 4 uses
  store i64 0, ptr %i.ew, align 8, !tbaa !303
  %i.ex = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !304 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !305
  store i32 %i.fa, ptr %i.et, align 8, !tbaa !305
  store ptr %i.ey, ptr %i.ep, align 8, !tbaa !146
  %i.fb = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.fd = load <2 x ptr>, ptr %i.fb, align 8, !tbaa !304
  store <2 x ptr> %i.fd, ptr %i.eu, align 8, !tbaa !304
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.et, ptr %i.fe, align 8, !tbaa !306
  %i.ff = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !303
  store i64 %i.fg, ptr %i.ew, align 8, !tbaa !303
  store ptr null, ptr %i.ex, align 8, !tbaa !146
  store ptr %i.ez, ptr %i.fb, align 8, !tbaa !301
  store ptr %i.ez, ptr %i.fc, align 8, !tbaa !302
  store i64 0, ptr %i.ff, align 8, !tbaa !303
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i, %bb.ab
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef null)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.fj = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.fj, ptr %25, align 8, !tbaa !101
  store i64 7953754288409502058, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 8, ptr %i.fk, align 8, !tbaa !100
  %i.fl = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i8 0, ptr %i.fl, align 8, !tbaa !99
  %i.fm = load ptr, ptr %1, align 8, !tbaa !110
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %24, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.ad unwind label %bb.aw

bb.ad:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  invoke void @_ZN6casadi7combineERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS6_ESaISt4pairIKS6_S7_EEESG_b(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %23, ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(48) %24, i1 noundef zeroext false)
          to label %bb.ae unwind label %bb.ax

bb.ae:                                            ; preds = %bb.ad
  %i.fp = load ptr, ptr %i.ep, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.fp)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i338 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i338: ; preds = %bb.ae
  store ptr null, ptr %i.ep, align 8, !tbaa !146
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !301
  store ptr %i.et, ptr %i.ev, align 8, !tbaa !302
  store i64 0, ptr %i.ew, align 8, !tbaa !303
  %i.fs = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !304 ; 3 uses
  %.not.i.i.i339 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i339, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit340, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i338
  %i.fu = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !305
  store i32 %i.fv, ptr %i.et, align 8, !tbaa !305
  store ptr %i.ft, ptr %i.ep, align 8, !tbaa !146
  %i.fw = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.fy = load <2 x ptr>, ptr %i.fw, align 8, !tbaa !304
  store <2 x ptr> %i.fy, ptr %i.eu, align 8, !tbaa !304
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.et, ptr %i.fz, align 8, !tbaa !306
  %i.ga = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !303
  store i64 %i.gb, ptr %i.ew, align 8, !tbaa !303
  store ptr null, ptr %i.fs, align 8, !tbaa !146
  store ptr %i.fu, ptr %i.fw, align 8, !tbaa !301
  store ptr %i.fu, ptr %i.fx, align 8, !tbaa !302
  store i64 0, ptr %i.ga, align 8, !tbaa !303
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit340

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit340: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i338, %bb.ag
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef null)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit341 unwind label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit340
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit341: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit340
  %i.ge = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.gf)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit342 unwind label %bb.ai

end_hunk_0
