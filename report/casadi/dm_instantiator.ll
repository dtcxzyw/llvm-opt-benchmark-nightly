Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/dm_instantiator?download=true
inline.NumInlined: 7137
inline.NumDeleted: 1380
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 116
begin_hunk_0_@_ZN6casadi6MatrixIdE8is_equalERKS1_S3_x:bb.a
bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  invoke void @_ZN6casadi6MatrixIdE7projectERKS1_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %15, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i1 noundef zeroext false)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.bj = invoke noundef zeroext i1 @_ZN6casadi6MatrixIdE8is_equalERKS1_S3_x(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %15, i64 noundef %2)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.w, %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %_ZN6casadi6MatrixIdED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #26
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i75, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i76, label %bb.y

bb.y:                                             ; preds = %_ZN6casadi6MatrixIdED2Ev.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !36
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i76

_ZNSt6vectorIdSaIdEED2Ev.exit.i76:                ; preds = %bb.y, %_ZN6casadi6MatrixIdED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %_ZN6casadi6MatrixIdED2Ev.exit77 unwind label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i76
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #26
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit77:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit77
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZN6casadi6MatrixIdED2Ev.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %.critedge

bb.ab:                                            ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.t
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.ad ], [ %i.ch, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #28
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.cg, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit78 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit78: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ai

bb.ah:                                            ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !37 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !37 ; 2 uses
  %.not101 = icmp eq ptr %i.cm, %i.co
  br i1 %.not101, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ah
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !37
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.083.0103 = phi ptr [ %i.cu, %.lr.ph ], [ %i.cq, %.lr.ph.preheader ] ; 2 uses
  %.sroa.080.0102 = phi ptr [ %i.cv, %.lr.ph ], [ %i.cm, %.lr.ph.preheader ] ; 2 uses
  %i.cr = load double, ptr %.sroa.080.0102, align 8, !tbaa !26
  %i.cs = load double, ptr %.sroa.083.0103, align 8, !tbaa !26
  %i.ct = fcmp oeq double %i.cr, %i.cs            ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.083.0103, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.080.0102, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.cv, %i.co
  %or.cond.not = select i1 %i.ct, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ah, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %.445 = phi i1 [ %i.bj, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ], [ true, %bb.ah ], [ %i.ct, %.lr.ph ]
  ret i1 %.445

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %bb.q, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit78
  %.pn48.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn.pn.pn89, %bb.q ], [ %.pn48.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit78 ], [ %.pn48.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn.pn.pn.pn

bb.aj:                                            ; preds = %bb.j
  unreachable
}

declare void @_ZNK6casadi8SparsityplERKS0_(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIdE4mminERKS1_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false), !noalias !530
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6casadi6MatrixIdEC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %_ZN6casadi14mmin_nonstaticIdEENS_6MatrixIT_EERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37, !noalias !530 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37, !noalias !530
  %i.g = icmp ne ptr %i.d, %i.f
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !530 ; 5 uses
  %i.i = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_denseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !530
  %i.j = select i1 %i.i, double +inf, double 0.000000e+00 ; 3 uses
  %.not7.i4.i = icmp ne ptr %i.d, null
  %.not7.i.i = and i1 %.not7.i4.i, %i.g
  %i.k = icmp sgt i64 %i.h, 0
  %or.cond.i.i = and i1 %.not7.i.i, %i.k
  br i1 %or.cond.i.i, label %.lr.ph.i.i.i.preheader, label %_ZN6casadi11casadi_mminIdEET_PKS1_xx.exit.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.h, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.n, %vector.body ] ; 2 uses
  %vec.phi2 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.o, %vector.body ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x double>, ptr %i.l, align 8, !tbaa !26, !noalias !530 ; 2 uses
  %wide.load3 = load <2 x double>, ptr %i.m, align 8, !tbaa !26, !noalias !530 ; 2 uses
  %i.n = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi, <2 x double> %wide.load) ; 2 uses
  %i.o = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi2, <2 x double> %wide.load3) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = fcmp uno <2 x double> %wide.load, %wide.load3
  %2 = freeze <2 x i1> %i.p
  %i.q = bitcast <2 x i1> %2 to i2
  %i.r = icmp ne i2 %i.q, 0                       ; 5 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  %i.t = or i1 %i.r, %i.s
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !528

middle.block:                                     ; preds = %vector.body
  %i.u = select i1 %i.r, <2 x double> %vec.phi, <2 x double> %i.n
  %i.v = select i1 %i.r, <2 x double> %vec.phi2, <2 x double> %i.o
  %i.w = select i1 %i.r, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.u, <2 x double> %i.v)
  %i.x = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %cmp.n = icmp ne i64 %i.h, %n.vec
  %.not = or i1 %cmp.n, %i.r
  br i1 %.not, label %.lr.ph.i.i.i.preheader4, label %_ZN6casadi11casadi_mminIdEET_PKS1_xx.exit.i

.lr.ph.i.i.i.preheader4:                          ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.08.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.067.i.i.i.ph = phi double [ %i.j, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader4, %.lr.ph.i.i.i
  %.08.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader4 ] ; 2 uses
  %.067.i.i.i = phi double [ %i.aa, %.lr.ph.i.i.i ], [ %.067.i.i.i.ph, %.lr.ph.i.i.i.preheader4 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !26, !noalias !530
  %i.aa = tail call nsz double @llvm.minnum.f64(double %.067.i.i.i, double %i.z) ; 2 uses
  %i.ab = add nuw nsw i64 %.08.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not.i.i.i, label %_ZN6casadi11casadi_mminIdEET_PKS1_xx.exit.i, label %.lr.ph.i.i.i, !llvm.loop !529

_ZN6casadi11casadi_mminIdEET_PKS1_xx.exit.i:      ; preds = %.lr.ph.i.i.i, %middle.block, %bb.c
  %.0.i.i = phi double [ %i.j, %bb.c ], [ %i.x, %middle.block ], [ %i.aa, %.lr.ph.i.i.i ]
  tail call void @_ZN6casadi6MatrixIdEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %.0.i.i)
  br label %_ZN6casadi14mmin_nonstaticIdEENS_6MatrixIT_EERKS3_.exit

_ZN6casadi14mmin_nonstaticIdEENS_6MatrixIT_EERKS3_.exit: ; preds = %bb.b, %_ZN6casadi11casadi_mminIdEET_PKS1_xx.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIdE4mmaxERKS1_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false), !noalias !535
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6casadi6MatrixIdEC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %_ZN6casadi14mmax_nonstaticIdEENS_6MatrixIT_EERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37, !noalias !535 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37, !noalias !535
  %i.g = icmp ne ptr %i.d, %i.f
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !535 ; 5 uses
  %i.i = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_denseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !535
  %i.j = select i1 %i.i, double -inf, double 0.000000e+00 ; 3 uses
  %.not7.i4.i = icmp ne ptr %i.d, null
  %.not7.i.i = and i1 %.not7.i4.i, %i.g
  %i.k = icmp sgt i64 %i.h, 0
  %or.cond.i.i = and i1 %.not7.i.i, %i.k
  br i1 %or.cond.i.i, label %.lr.ph.i.i.i.preheader, label %_ZN6casadi11casadi_mmaxIdEET_PKS1_xx.exit.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.h, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.n, %vector.body ] ; 2 uses
  %vec.phi2 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.o, %vector.body ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x double>, ptr %i.l, align 8, !tbaa !26, !noalias !535 ; 2 uses
  %wide.load3 = load <2 x double>, ptr %i.m, align 8, !tbaa !26, !noalias !535 ; 2 uses
  %i.n = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi, <2 x double> %wide.load) ; 2 uses
  %i.o = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi2, <2 x double> %wide.load3) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = fcmp uno <2 x double> %wide.load, %wide.load3
  %2 = freeze <2 x i1> %i.p
  %i.q = bitcast <2 x i1> %2 to i2
  %i.r = icmp ne i2 %i.q, 0                       ; 5 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  %i.t = or i1 %i.r, %i.s
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !533

middle.block:                                     ; preds = %vector.body
  %i.u = select i1 %i.r, <2 x double> %vec.phi, <2 x double> %i.n
  %i.v = select i1 %i.r, <2 x double> %vec.phi2, <2 x double> %i.o
  %i.w = select i1 %i.r, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.u, <2 x double> %i.v)
  %i.x = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %cmp.n = icmp ne i64 %i.h, %n.vec
  %.not = or i1 %cmp.n, %i.r
  br i1 %.not, label %.lr.ph.i.i.i.preheader4, label %_ZN6casadi11casadi_mmaxIdEET_PKS1_xx.exit.i

.lr.ph.i.i.i.preheader4:                          ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.08.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.067.i.i.i.ph = phi double [ %i.j, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader4, %.lr.ph.i.i.i
  %.08.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader4 ] ; 2 uses
  %.067.i.i.i = phi double [ %i.aa, %.lr.ph.i.i.i ], [ %.067.i.i.i.ph, %.lr.ph.i.i.i.preheader4 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !26, !noalias !535
  %i.aa = tail call nsz double @llvm.maxnum.f64(double %.067.i.i.i, double %i.z) ; 2 uses
  %i.ab = add nuw nsw i64 %.08.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not.i.i.i, label %_ZN6casadi11casadi_mmaxIdEET_PKS1_xx.exit.i, label %.lr.ph.i.i.i, !llvm.loop !534

_ZN6casadi11casadi_mmaxIdEET_PKS1_xx.exit.i:      ; preds = %.lr.ph.i.i.i, %middle.block, %bb.c
  %.0.i.i = phi double [ %i.j, %bb.c ], [ %i.x, %middle.block ], [ %i.aa, %.lr.ph.i.i.i ]
  tail call void @_ZN6casadi6MatrixIdEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %.0.i.i)
  br label %_ZN6casadi14mmax_nonstaticIdEENS_6MatrixIT_EERKS3_.exit

_ZN6casadi14mmax_nonstaticIdEENS_6MatrixIT_EERKS3_.exit: ; preds = %bb.b, %_ZN6casadi11casadi_mmaxIdEET_PKS1_xx.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIdE8simplifyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN6casadi6MatrixIdEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIdE8jacobianERKS1_S3_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessISA_ESaISt4pairIKSA_SB_EEE(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::vector.5", align 8    ; 8 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 62, ptr %i.a, align 8, !tbaa !51
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %7, align 8, !tbaa !46
  %i.e = load i64, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(62) %i.d, ptr noundef nonnull align 1 dereferenceable(62) @.str.73, i64 62, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.a unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.a:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49, !noalias !546
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, 4611686018427387902
  br i1 %i.k, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.392) #24
          to label %.noexc23 unwind label %bb.j

.noexc23:                                         ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %.noexc24 unwind label %bb.j   ; 6 uses

.noexc24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !50, !alias.scope !546
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc24
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !49   ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc24
  store ptr %i.n, ptr %5, align 8, !tbaa !46, !alias.scope !546
  %i.u = load i64, ptr %i.o, align 8, !tbaa !47
  store i64 %i.u, ptr %i.m, align 8, !tbaa !47, !alias.scope !546
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.v = phi i64 [ %i.r, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.v, ptr %i.x, align 8, !tbaa !49, !alias.scope !546
  store ptr %i.o, ptr %i.l, align 8, !tbaa !46
  store i64 0, ptr %i.w, align 8, !tbaa !49
  store i8 0, ptr %i.o, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.y, ptr %10, align 8, !tbaa !50, !alias.scope !547
  store i16 19780, ptr %i.y, align 8, !alias.scope !547
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 2, ptr %i.z, align 8, !tbaa !49, !alias.scope !547
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 18
  store i8 0, ptr %i.aa, align 2, !tbaa !47, !alias.scope !547
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.74, i64 noundef 27)
          to label %.noexc28 unwind label %bb.k   ; 6 uses

.noexc28:                                         ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.ac, ptr %9, align 8, !tbaa !50, !alias.scope !548
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !46 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

bb.e:                                             ; preds = %.noexc28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !49 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %.noexc28
  store ptr %i.ad, ptr %9, align 8, !tbaa !46, !alias.scope !548
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !47
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !47, !alias.scope !548
  %.phi.trans.insert.i26 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre.i27 = load i64, ptr %.phi.trans.insert.i26, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.e
  %i.al = phi i64 [ %i.ah, %bb.e ], [ %.pre.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !49, !alias.scope !548
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !46
  store i64 0, ptr %i.am, align 8, !tbaa !49
  store i8 0, ptr %i.ae, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !alias.scope !549
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #24
          to label %bb.r unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread: ; preds = %.noexc.i
  %i.ao = landingpad { ptr, i32 }
end_hunk_0
