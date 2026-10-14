Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/PlanNode?download=true
inline.NumInlined: 17231
inline.NumDeleted: 5947
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZSt10_ConstructIN8facebook5velox4core10WindowNodeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt10shared_ptrIKNS2_20FieldAccessTypedExprEESaISE_EESH_RSA_INS2_9SortOrderESaISI_EERSA_IS9_SaIS9_EERSA_INS3_8FunctionESaISP_EERbRSB_IKNS2_8PlanNodeEEEEvPT_DpOT0_:bb.a
  store i8 0, ptr %i.c, align 8, !tbaa !120
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !180  ; 3 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !181    ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i, label %.noexc20, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = icmp ugt i64 %i.r, 9223372036854775792
  br i1 %i.s, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i, !prof !122

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #42
          to label %.noexc unwind label %bb.ar

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #41
          to label %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i..noexc20_crit_edge unwind label %bb.ar

_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i..noexc20_crit_edge: ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i
  %.pre89 = load ptr, ptr %2, align 8, !tbaa !183
  %.pre90 = load ptr, ptr %i.m, align 8, !tbaa !183
  br label %.noexc20

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i..noexc20_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.pre90, %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i..noexc20_crit_edge ] ; 2 uses
  %i.v = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.pre89, %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i..noexc20_crit_edge ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.t, %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i..noexc20_crit_edge ] ; 5 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !181
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !180
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !182
  %i.aa = icmp eq ptr %i.v, %i.u
  br i1 %i.aa, label %.loopexit84, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc20, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.w, %.noexc20 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.aj, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.v, %.noexc20 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !184 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !185
  store <2 x ptr> %i.ad, ptr %.08.i.i.i.i.i, align 8, !tbaa !185
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !186
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !186
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.u
  br i1 %i.al, label %.loopexit84, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit84:                                      ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %.noexc20 ], [ %i.ak, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.x, align 8, !tbaa !180
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !180 ; 3 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !181   ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %.not.i.i.i.i21 = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i21, label %.noexc32, label %bb.g

bb.g:                                             ; preds = %.loopexit84
  %i.as = icmp ugt i64 %i.ar, 9223372036854775792
  br i1 %i.as, label %.noexc.i.i30, label %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i22, !prof !122

.noexc.i.i30:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #42
          to label %.noexc31 unwind label %bb.as

.noexc31:                                         ; preds = %.noexc.i.i30
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i22: ; preds = %bb.g
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #41
          to label %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i22..noexc32_crit_edge unwind label %bb.as

_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i22..noexc32_crit_edge: ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i22
  %.pre91 = load ptr, ptr %3, align 8, !tbaa !183
  %.pre92 = load ptr, ptr %i.am, align 8, !tbaa !183
  br label %.noexc32

.noexc32:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i22..noexc32_crit_edge, %.loopexit84
  %i.au = phi ptr [ %i.an, %.loopexit84 ], [ %.pre92, %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i22..noexc32_crit_edge ] ; 2 uses
  %i.av = phi ptr [ %i.ao, %.loopexit84 ], [ %.pre91, %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i22..noexc32_crit_edge ] ; 2 uses
  %i.aw = phi ptr [ null, %.loopexit84 ], [ %i.at, %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i22..noexc32_crit_edge ] ; 5 uses
  store ptr %i.aw, ptr %11, align 8, !tbaa !181
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !180
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ar
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !182
  %i.ba = icmp eq ptr %i.av, %i.au
  br i1 %i.ba, label %.loopexit83, label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %.noexc32, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i28
  %.08.i.i.i.i.i24 = phi ptr [ %i.bk, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i28 ], [ %i.aw, %.noexc32 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i25 = phi ptr [ %i.bj, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i28 ], [ %i.av, %.noexc32 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i25, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !184 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i25, align 8, !tbaa !185
  store <2 x ptr> %i.bd, ptr %.08.i.i.i.i.i24, align 8, !tbaa !185
  %.not.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i26, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i28, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i23
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !186
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !186
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i28

bb.j:                                             ; preds = %bb.h
  %i.bi = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i28

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i28: ; preds = %bb.j, %bb.i, %.lr.ph.i.i.i.i.i23
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i25, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i24, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.au
  br i1 %i.bl, label %.loopexit83, label %.lr.ph.i.i.i.i.i23, !llvm.loop !0

.loopexit83:                                      ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i28, %.noexc32
  %.0.lcssa.i.i.i.i.i29 = phi ptr [ %i.aw, %.noexc32 ], [ %i.bk, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i28 ]
  store ptr %.0.lcssa.i.i.i.i.i29, ptr %i.ax, align 8, !tbaa !180
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !313 ; 3 uses
  %i.bo = load ptr, ptr %4, align 8, !tbaa !277   ; 3 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i34 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i.i34, label %.noexc41, label %bb.k

bb.k:                                             ; preds = %.loopexit83
  %i.bs = icmp ugt i64 %i.br, 9223372036854775806
  br i1 %i.bs, label %.noexc.i.i39, label %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i, !prof !122

.noexc.i.i39:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #42
          to label %.noexc40 unwind label %bb.at

.noexc40:                                         ; preds = %.noexc.i.i39
  unreachable

_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #41
          to label %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge unwind label %bb.at

_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge: ; preds = %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i
  %.pre93 = load ptr, ptr %4, align 8, !tbaa !303
  %.pre94 = load ptr, ptr %i.bm, align 8, !tbaa !303
  br label %.noexc41

.noexc41:                                         ; preds = %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge, %.loopexit83
  %i.bu = phi ptr [ %i.bn, %.loopexit83 ], [ %.pre94, %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge ] ; 3 uses
  %i.bv = phi ptr [ %i.bo, %.loopexit83 ], [ %.pre93, %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge ] ; 7 uses
  %i.bw = phi ptr [ null, %.loopexit83 ], [ %i.bt, %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge ] ; 9 uses
  store ptr %i.bw, ptr %12, align 8, !tbaa !277
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.br
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !306
  %i.ca = icmp eq ptr %i.bv, %i.bu
  br i1 %i.ca, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc41
  %i.cb = ptrtoaddr ptr %i.bw to i64
  %i.cc = ptrtoaddr ptr %i.bv to i64              ; 2 uses
  %i.cd = ptrtoaddr ptr %i.bu to i64
  %i.ce = add i64 %i.cd, -2
  %i.cf = sub i64 %i.ce, %i.cc                    ; 3 uses
  %i.cg = lshr i64 %i.cf, 1
  %i.ch = add nuw i64 %i.cg, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.cf, 14
  %i.ci = sub i64 %i.cc, %i.cb
  %diff.check = icmp ugt i64 %i.ci, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i35.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check156 = icmp ult i64 %i.cf, 126
  br i1 %min.iters.check156, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cj = and i64 %i.ch, 56
  %n.vec = and i64 %i.ch, -64                     ; 4 uses
  %i.ck = shl i64 %n.vec, 1                       ; 2 uses
  %i.cl = getelementptr i8, ptr %i.bw, i64 %i.ck  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bv, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.cn ; 4 uses
  %next.gep157 = getelementptr i8, ptr %i.bv, i64 %i.cn ; 4 uses
  %i.co = getelementptr i8, ptr %next.gep157, i64 32
  %i.cp = getelementptr i8, ptr %next.gep157, i64 64
  %i.cq = getelementptr i8, ptr %next.gep157, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep157, align 1, !tbaa !133
  %wide.load158 = load <16 x i16>, ptr %i.co, align 1, !tbaa !133
  %wide.load159 = load <16 x i16>, ptr %i.cp, align 1, !tbaa !133
  %wide.load160 = load <16 x i16>, ptr %i.cq, align 1, !tbaa !133
  %i.cr = getelementptr i8, ptr %next.gep, i64 32
  %i.cs = getelementptr i8, ptr %next.gep, i64 64
  %i.ct = getelementptr i8, ptr %next.gep, i64 96
  store <16 x i16> %wide.load, ptr %next.gep, align 1, !tbaa !133
  store <16 x i16> %wide.load158, ptr %i.cr, align 1, !tbaa !133
  store <16 x i16> %wide.load159, ptr %i.cs, align 1, !tbaa !133
  store <16 x i16> %wide.load160, ptr %i.ct, align 1, !tbaa !133
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !3140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i35.preheader, label %vec.epilog.ph, !prof !316

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec162 = and i64 %i.ch, -8                   ; 3 uses
  %i.cv = shl i64 %n.vec162, 1                    ; 2 uses
  %i.cw = getelementptr i8, ptr %i.bw, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.bv, i64 %i.cv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index163 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next167, %vec.epilog.vector.body ] ; 2 uses
  %i.cy = shl i64 %index163, 1                    ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.bw, i64 %i.cy
  %next.gep165 = getelementptr i8, ptr %i.bv, i64 %i.cy
  %wide.load166 = load <8 x i16>, ptr %next.gep165, align 1, !tbaa !133
  store <8 x i16> %wide.load166, ptr %next.gep164, align 1, !tbaa !133
  %index.next167 = add nuw i64 %index163, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n168 = icmp eq i64 %i.ch, %n.vec162
  br i1 %cmp.n168, label %.loopexit, label %.lr.ph.i.i.i.i.i35.preheader

.lr.ph.i.i.i.i.i35.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.i36.ph = phi ptr [ %i.bw, %iter.check ], [ %i.cl, %vec.epilog.iter.check ], [ %i.cw, %vec.epilog.middle.block ]
  %.sroa.04.07.i.i.i.i.i37.ph = phi ptr [ %i.bv, %iter.check ], [ %i.cm, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i35

.lr.ph.i.i.i.i.i35:                               ; preds = %.lr.ph.i.i.i.i.i35.preheader, %.lr.ph.i.i.i.i.i35
  %.08.i.i.i.i.i36 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i35 ], [ %.08.i.i.i.i.i36.ph, %.lr.ph.i.i.i.i.i35.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i37 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i35 ], [ %.sroa.04.07.i.i.i.i.i37.ph, %.lr.ph.i.i.i.i.i35.preheader ] ; 2 uses
  %i.da = load i16, ptr %.sroa.04.07.i.i.i.i.i37, align 1, !tbaa !133
  store i16 %i.da, ptr %.08.i.i.i.i.i36, align 1, !tbaa !133
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i37, i64 2 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i36, i64 2 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.bu
  br i1 %i.dd, label %.loopexit, label %.lr.ph.i.i.i.i.i35, !llvm.loop !3142

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i35, %middle.block, %vec.epilog.middle.block, %.noexc41
  %.0.lcssa.i.i.i.i.i38 = phi ptr [ %i.bw, %.noexc41 ], [ %i.cw, %vec.epilog.middle.block ], [ %i.cl, %middle.block ], [ %i.dc, %.lr.ph.i.i.i.i.i35 ]
  store ptr %.0.lcssa.i.i.i.i.i38, ptr %i.bx, align 8, !tbaa !313
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !188 ; 3 uses
  %i.dg = load ptr, ptr %5, align 8, !tbaa !189   ; 3 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i42 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i.i.i.i42, label %.noexc45, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.dk = icmp ugt i64 %i.dj, 9223372036854775776
  br i1 %i.dk, label %.noexc.i.i43, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !122

.noexc.i.i43:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #42
          to label %.noexc44 unwind label %bb.au

.noexc44:                                         ; preds = %.noexc.i.i43
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #41
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc45_crit_edge unwind label %bb.au

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc45_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre95 = load ptr, ptr %5, align 8, !tbaa !191
  %.pre96 = load ptr, ptr %i.de, align 8, !tbaa !191
  br label %.noexc45

.noexc45:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc45_crit_edge, %.loopexit
  %i.dm = phi ptr [ %i.df, %.loopexit ], [ %.pre96, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc45_crit_edge ]
  %i.dn = phi ptr [ %i.dg, %.loopexit ], [ %.pre95, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc45_crit_edge ]
  %i.do = phi ptr [ null, %.loopexit ], [ %i.dl, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc45_crit_edge ] ; 4 uses
  store ptr %i.do, ptr %13, align 8, !tbaa !189
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !188
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dj
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !190
  %i.ds = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.dn, ptr %i.dm, ptr noundef %i.do)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %.noexc45
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %13, align 8, !tbaa !189  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !190
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dy) #43
  br label %.body

bb.o:                                             ; preds = %.noexc45
  store ptr %i.ds, ptr %i.dp, align 8, !tbaa !188
  invoke void @_ZNSt6vectorIN8facebook5velox4core10WindowNode8FunctionESaIS4_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.p unwind label %bb.av

bb.p:                                             ; preds = %bb.o
  %i.dz = load i8, ptr %7, align 1, !tbaa !133, !range !131, !noundef !132
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !184 ; 2 uses
  %i.ee = load <2 x ptr>, ptr %8, align 8, !tbaa !185
  store <2 x ptr> %i.ee, ptr %15, align 16, !tbaa !185
  %.not.i.i.i46 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i46, label %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 3 uses
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i47 = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i47, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !186
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.ef, align 4, !tbaa !186
  br label %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit

bb.s:                                             ; preds = %bb.q
  %i.ej = atomicrmw volatile add ptr %i.ef, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit

_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit: ; preds = %bb.p, %bb.r, %bb.s
  invoke void @_ZN8facebook5velox4core10WindowNodeC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISD_EESF_S9_INS1_9SortOrderESaISG_EES9_IS8_SaIS8_EES9_INS2_8FunctionESaISL_EEbSA_IKNS1_8PlanNodeEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 %11, ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 %13, ptr noundef nonnull align 8 %14, i1 noundef zeroext %i.ea, ptr noundef nonnull align 8 %15)
          to label %bb.t unwind label %bb.aw

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !184 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.em = load atomic i64, ptr %i.el acquire, align 8 ; 2 uses
  %i.en = icmp eq i64 %i.em, 4294967297
  %i.eo = trunc i64 %i.em to i32                  ; 2 uses
  br i1 %i.en, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.el, align 8, !tbaa !204
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 0, ptr %i.ep, align 4, !tbaa !205
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !139
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
end_hunk_0
begin_hunk_1_@_ZSt10_ConstructIN8facebook5velox4core17TopNRowNumberNodeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_12RankFunctionERSt6vectorISt10shared_ptrIKNS2_20FieldAccessTypedExprEESaISG_EESJ_RSC_INS2_9SortOrderESaISK_EERSt8optionalIS9_ElRSD_IKNS2_8PlanNodeEEEEvPT_DpOT0_:bb.a
  %i.m = load i32, ptr %2, align 4, !tbaa !542
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !180  ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !181    ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i, label %.noexc16, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.t = icmp ugt i64 %i.s, 9223372036854775792
  br i1 %i.t, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i, !prof !122

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #42
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #41
          to label %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i..noexc16_crit_edge unwind label %bb.ak

_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i..noexc16_crit_edge: ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i
  %.pre67 = load ptr, ptr %3, align 8, !tbaa !183
  %.pre68 = load ptr, ptr %i.n, align 8, !tbaa !183
  br label %.noexc16

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i..noexc16_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.v = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.pre68, %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i..noexc16_crit_edge ] ; 2 uses
  %i.w = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.pre67, %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i..noexc16_crit_edge ] ; 2 uses
  %i.x = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.u, %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i..noexc16_crit_edge ] ; 5 uses
  store ptr %i.x, ptr %10, align 8, !tbaa !181
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !180
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !182
  %i.ab = icmp eq ptr %i.w, %i.v
  br i1 %i.ab, label %.loopexit62, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc16, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.al, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.x, %.noexc16 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.w, %.noexc16 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !184 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !185
  store <2 x ptr> %i.ae, ptr %.08.i.i.i.i.i, align 8, !tbaa !185
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !186
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !186
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.v
  br i1 %i.am, label %.loopexit62, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit62:                                      ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc16
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %.noexc16 ], [ %i.al, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.y, align 8, !tbaa !180
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !180 ; 3 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !181   ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %.not.i.i.i.i17 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i.i.i17, label %.noexc28, label %bb.g

bb.g:                                             ; preds = %.loopexit62
  %i.at = icmp ugt i64 %i.as, 9223372036854775792
  br i1 %i.at, label %.noexc.i.i26, label %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i18, !prof !122

.noexc.i.i26:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #42
          to label %.noexc27 unwind label %bb.al

.noexc27:                                         ; preds = %.noexc.i.i26
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i18: ; preds = %bb.g
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #41
          to label %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i18..noexc28_crit_edge unwind label %bb.al

_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i18..noexc28_crit_edge: ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i18
  %.pre69 = load ptr, ptr %4, align 8, !tbaa !183
  %.pre70 = load ptr, ptr %i.an, align 8, !tbaa !183
  br label %.noexc28

.noexc28:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i18..noexc28_crit_edge, %.loopexit62
  %i.av = phi ptr [ %i.ao, %.loopexit62 ], [ %.pre70, %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i18..noexc28_crit_edge ] ; 2 uses
  %i.aw = phi ptr [ %i.ap, %.loopexit62 ], [ %.pre69, %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i18..noexc28_crit_edge ] ; 2 uses
  %i.ax = phi ptr [ null, %.loopexit62 ], [ %i.au, %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i18..noexc28_crit_edge ] ; 5 uses
  store ptr %i.ax, ptr %11, align 8, !tbaa !181
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !180
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.as
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !182
  %i.bb = icmp eq ptr %i.aw, %i.av
  br i1 %i.bb, label %.loopexit61, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.noexc28, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i24
  %.08.i.i.i.i.i20 = phi ptr [ %i.bl, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i24 ], [ %i.ax, %.noexc28 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i21 = phi ptr [ %i.bk, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i24 ], [ %i.aw, %.noexc28 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i21, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !184 ; 2 uses
  %i.be = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i21, align 8, !tbaa !185
  store <2 x ptr> %i.be, ptr %.08.i.i.i.i.i20, align 8, !tbaa !185
  %.not.i.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i22, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i24, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i.i.i.i.i.i.i23 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !186
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !186
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i24

bb.j:                                             ; preds = %bb.h
  %i.bj = atomicrmw volatile add ptr %i.bf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i24

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i24: ; preds = %bb.j, %bb.i, %.lr.ph.i.i.i.i.i19
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i21, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i20, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.av
  br i1 %i.bm, label %.loopexit61, label %.lr.ph.i.i.i.i.i19, !llvm.loop !0

.loopexit61:                                      ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i24, %.noexc28
  %.0.lcssa.i.i.i.i.i25 = phi ptr [ %i.ax, %.noexc28 ], [ %i.bl, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i24 ]
  store ptr %.0.lcssa.i.i.i.i.i25, ptr %i.ay, align 8, !tbaa !180
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !313 ; 3 uses
  %i.bp = load ptr, ptr %5, align 8, !tbaa !277   ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i30 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i.i.i.i30, label %.noexc37, label %bb.k

bb.k:                                             ; preds = %.loopexit61
  %i.bt = icmp ugt i64 %i.bs, 9223372036854775806
  br i1 %i.bt, label %.noexc.i.i35, label %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i, !prof !122

.noexc.i.i35:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #42
          to label %.noexc36 unwind label %bb.am

.noexc36:                                         ; preds = %.noexc.i.i35
  unreachable

_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #41
          to label %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i..noexc37_crit_edge unwind label %bb.am

_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i..noexc37_crit_edge: ; preds = %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i
  %.pre71 = load ptr, ptr %5, align 8, !tbaa !303
  %.pre72 = load ptr, ptr %i.bn, align 8, !tbaa !303
  br label %.noexc37

.noexc37:                                         ; preds = %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i..noexc37_crit_edge, %.loopexit61
  %i.bv = phi ptr [ %i.bo, %.loopexit61 ], [ %.pre72, %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i..noexc37_crit_edge ] ; 3 uses
  %i.bw = phi ptr [ %i.bp, %.loopexit61 ], [ %.pre71, %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i..noexc37_crit_edge ] ; 7 uses
  %i.bx = phi ptr [ null, %.loopexit61 ], [ %i.bu, %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i..noexc37_crit_edge ] ; 9 uses
  store ptr %i.bx, ptr %12, align 8, !tbaa !277
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bs
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !306
  %i.cb = icmp eq ptr %i.bw, %i.bv
  br i1 %i.cb, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc37
  %i.cc = ptrtoaddr ptr %i.bx to i64
  %i.cd = ptrtoaddr ptr %i.bw to i64              ; 2 uses
  %i.ce = ptrtoaddr ptr %i.bv to i64
  %i.cf = add i64 %i.ce, -2
  %i.cg = sub i64 %i.cf, %i.cd                    ; 3 uses
  %i.ch = lshr i64 %i.cg, 1
  %i.ci = add nuw i64 %i.ch, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.cg, 14
  %i.cj = sub i64 %i.cd, %i.cc
  %diff.check = icmp ugt i64 %i.cj, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i31.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check117 = icmp ult i64 %i.cg, 126
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ck = and i64 %i.ci, 56
  %n.vec = and i64 %i.ci, -64                     ; 4 uses
  %i.cl = shl i64 %n.vec, 1                       ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bx, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bw, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.co ; 4 uses
  %next.gep118 = getelementptr i8, ptr %i.bw, i64 %i.co ; 4 uses
  %i.cp = getelementptr i8, ptr %next.gep118, i64 32
  %i.cq = getelementptr i8, ptr %next.gep118, i64 64
  %i.cr = getelementptr i8, ptr %next.gep118, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep118, align 1, !tbaa !133
  %wide.load119 = load <16 x i16>, ptr %i.cp, align 1, !tbaa !133
  %wide.load120 = load <16 x i16>, ptr %i.cq, align 1, !tbaa !133
  %wide.load121 = load <16 x i16>, ptr %i.cr, align 1, !tbaa !133
  %i.cs = getelementptr i8, ptr %next.gep, i64 32
  %i.ct = getelementptr i8, ptr %next.gep, i64 64
  %i.cu = getelementptr i8, ptr %next.gep, i64 96
  store <16 x i16> %wide.load, ptr %next.gep, align 1, !tbaa !133
  store <16 x i16> %wide.load119, ptr %i.cs, align 1, !tbaa !133
  store <16 x i16> %wide.load120, ptr %i.ct, align 1, !tbaa !133
  store <16 x i16> %wide.load121, ptr %i.cu, align 1, !tbaa !133
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !3180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i31.preheader, label %vec.epilog.ph, !prof !316

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec123 = and i64 %i.ci, -8                   ; 3 uses
  %i.cw = shl i64 %n.vec123, 1                    ; 2 uses
  %i.cx = getelementptr i8, ptr %i.bx, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.bw, i64 %i.cw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next128, %vec.epilog.vector.body ] ; 2 uses
  %i.cz = shl i64 %index124, 1                    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.bx, i64 %i.cz
  %next.gep126 = getelementptr i8, ptr %i.bw, i64 %i.cz
  %wide.load127 = load <8 x i16>, ptr %next.gep126, align 1, !tbaa !133
  store <8 x i16> %wide.load127, ptr %next.gep125, align 1, !tbaa !133
  %index.next128 = add nuw i64 %index124, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.da, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3181

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n129 = icmp eq i64 %i.ci, %n.vec123
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph.i.i.i.i.i31.preheader

.lr.ph.i.i.i.i.i31.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.i32.ph = phi ptr [ %i.bx, %iter.check ], [ %i.cm, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  %.sroa.04.07.i.i.i.i.i33.ph = phi ptr [ %i.bw, %iter.check ], [ %i.cn, %vec.epilog.iter.check ], [ %i.cy, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i31

.lr.ph.i.i.i.i.i31:                               ; preds = %.lr.ph.i.i.i.i.i31.preheader, %.lr.ph.i.i.i.i.i31
  %.08.i.i.i.i.i32 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i31 ], [ %.08.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i31.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i33 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i31 ], [ %.sroa.04.07.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i31.preheader ] ; 2 uses
  %i.db = load i16, ptr %.sroa.04.07.i.i.i.i.i33, align 1, !tbaa !133
  store i16 %i.db, ptr %.08.i.i.i.i.i32, align 1, !tbaa !133
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i33, i64 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i32, i64 2 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.bv
  br i1 %i.de, label %.loopexit, label %.lr.ph.i.i.i.i.i31, !llvm.loop !3182

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i31, %middle.block, %vec.epilog.middle.block, %.noexc37
  %.0.lcssa.i.i.i.i.i34 = phi ptr [ %i.bx, %.noexc37 ], [ %i.cx, %vec.epilog.middle.block ], [ %i.cm, %middle.block ], [ %i.dd, %.lr.ph.i.i.i.i.i31 ]
  store ptr %.0.lcssa.i.i.i.i.i34, ptr %i.by, align 8, !tbaa !313
  %i.df = load i64, ptr %7, align 8, !tbaa !135
  %i.dg = trunc i64 %i.df to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !184 ; 2 uses
  %i.dk = load <2 x ptr>, ptr %8, align 8, !tbaa !185
  store <2 x ptr> %i.dk, ptr %13, align 16, !tbaa !185
  %.not.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i38 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i38, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !186
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !186
  br label %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit

bb.n:                                             ; preds = %bb.l
  %i.dp = atomicrmw volatile add ptr %i.dl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit

_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit: ; preds = %.loopexit, %bb.m, %bb.n
  invoke void @_ZN8facebook5velox4core17TopNRowNumberNodeC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_12RankFunctionESt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISE_EESG_SA_INS1_9SortOrderESaISH_EERKSt8optionalIS8_EiSB_IKNS1_8PlanNodeEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 %9, i32 noundef %i.m, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 %11, ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.dg, ptr noundef nonnull align 8 %13)
          to label %bb.o unwind label %bb.an

bb.o:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !184 ; 8 uses
  %.not.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.dr, align 8, !tbaa !204
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !205
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !139
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #40, !inline_history !1
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !139
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #40, !inline_history !1
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i39 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i39, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !186
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.du, %bb.s ], [ %i.ee, %bb.t ]
  %i.ef = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ef, label %bb.u, label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !122

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #40
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  %i.eg = load ptr, ptr %12, align 8, !tbaa !277  ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.eh = load ptr, ptr %i.ca, align 8, !tbaa !306
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #43
  br label %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.v
  %i.el = load ptr, ptr %11, align 8, !tbaa !181  ; 3 uses
  %i.em = load ptr, ptr %i.ay, align 8, !tbaa !180 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.el, %i.em
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fe, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i ], [ %i.el, %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !184 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 4 uses
  %i.eq = load atomic i64, ptr %i.ep acquire, align 8 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 4294967297
  %i.es = trunc i64 %i.eq to i32                  ; 2 uses
  br i1 %i.er, label %bb.x, label %bb.y

end_hunk_1
