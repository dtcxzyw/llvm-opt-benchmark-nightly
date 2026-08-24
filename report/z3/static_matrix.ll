Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/static_matrix?download=true
inline.NumInlined: 1395
inline.NumDeleted: 604
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE3setEjjRKS1_:bb.a
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.ao, ptr %i.z, align 8, !tbaa !122
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  store i32 %2, ptr %4, align 8, !tbaa !59, !alias.scope !161
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.r, ptr %i.ap, align 4, !tbaa !71, !alias.scope !161
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !44, !alias.scope !161
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 4, !alias.scope !161
  %i.at = and i8 %i.as, -4                        ; 2 uses
  store i8 %i.at, ptr %i.ar, align 4, !alias.scope !161
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.au, align 8, !tbaa !47, !alias.scope !161
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store i32 1, ptr %i.av, align 8, !tbaa !44, !alias.scope !161
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 4, !alias.scope !161
  %i.ay = and i8 %i.ax, -4
  store i8 %i.ay, ptr %i.aw, align 4, !alias.scope !161
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.az, align 8, !tbaa !47, !alias.scope !161
  %i.ba = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !161 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bc = load i8, ptr %i.bb, align 4, !noalias !161
  %i.bd = and i8 %i.bc, 1
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit
  %i.bf = load i32, ptr %3, align 8, !tbaa !44, !noalias !161
  store i32 %i.bf, ptr %i.aq, align 8, !tbaa !44, !alias.scope !161
  store i8 %i.at, ptr %i.ar, align 4, !alias.scope !161
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i

bb.h:                                             ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bi = load i8, ptr %i.bh, align 4, !noalias !161
  %i.bj = and i8 %i.bi, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i
  %i.bl = load i32, ptr %i.bg, align 8, !tbaa !44, !noalias !161
  store i32 %i.bl, ptr %i.av, align 8, !tbaa !44, !alias.scope !161
  %i.bm = load i8, ptr %i.aw, align 4, !alias.scope !161
  %i.bn = and i8 %i.bm, -2
  store i8 %i.bn, ptr %i.aw, align 4, !alias.scope !161
  br label %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE13make_row_cellEjjRKS1_.exit

bb.j:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.bg)
  br label %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE13make_row_cellEjjRKS1_.exit

_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE13make_row_cellEjjRKS1_.exit: ; preds = %bb.i, %bb.j
  %i.bo = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit unwind label %bb.m ; 0 uses

_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit: ; preds = %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE13make_row_cellEjjRKS1_.exit
  %i.bp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.av)
          to label %_ZN2lp8row_cellI8rationalED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i.i, %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #22
  unreachable

_ZN2lp8row_cellI8rationalED2Ev.exit:              ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZN2lp8row_cellI8rationalED2Ev.exit
  ret void

bb.m:                                             ; preds = %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE13make_row_cellEjjRKS1_.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2lp8row_cellI8rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.bs
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp13static_matrixI8rationalS1_E27pivot_row_to_row_given_cellEjRNS_8row_cellINS_12empty_structEEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(9) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.rational, align 8            ; 17 uses
  %5 = alloca %class.rational, align 8            ; 8 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = zext i32 %i.a to i64                     ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = zext i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  store i32 0, ptr %4, align 8, !tbaa !44, !alias.scope !164
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.m = load i8, ptr %i.l, align 4, !alias.scope !164
  %i.n = and i8 %i.m, -4                          ; 2 uses
  store i8 %i.n, ptr %i.l, align 4, !alias.scope !164
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !47, !alias.scope !164
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 1, ptr %i.p, align 8, !tbaa !44, !alias.scope !164
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.r = load i8, ptr %i.q, align 4, !alias.scope !164
  %i.s = and i8 %i.r, -4
  store i8 %i.s, ptr %i.q, align 4, !alias.scope !164
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.t, align 8, !tbaa !47, !alias.scope !164
  %i.u = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !164 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.w = load i8, ptr %i.v, align 4, !noalias !164
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = load i32, ptr %i.k, align 8, !tbaa !44, !noalias !164
  store i32 %i.z, ptr %4, align 8, !tbaa !44, !alias.scope !164
  store i8 %i.n, ptr %i.l, align 4, !alias.scope !164
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ac = load i8, ptr %i.ab, align 4, !noalias !164
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !44, !noalias !164
  store i32 %i.af, ptr %i.p, align 8, !tbaa !44, !alias.scope !164
  %i.ag = load i8, ptr %i.q, align 4, !alias.scope !164
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.q, align 4, !alias.scope !164
  br label %_ZN8rationalC2ERKS_.exit.i

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  br label %_ZN8rationalC2ERKS_.exit.i

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.e, %bb.d
  %i.ai = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !164
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZngRK8rational.exit unwind label %bb.f

common.resume:                                    ; preds = %bb.aa, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %.pn.pn.pn.pn, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
  br label %common.resume

_ZngRK8rational.exit:                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.c ; 8 uses
  %i.am = load i32, ptr %i.f, align 4, !tbaa !27
  %i.an = zext i32 %i.am to i64
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.ao, i64 %i.an
  invoke void @_ZN2lp13static_matrixI8rationalS1_E14remove_elementERSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EERS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.ap)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZngRK8rational.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !80 ; 2 uses
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !40 ; 4 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 40                ; 4 uses
  %.not.i = icmp eq ptr %i.ar, %i.as              ; 2 uses
  br i1 %.not.i, label %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !132
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !59
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !27
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.be = and i64 %indvars.iv.next.i, 4294967295
  %i.bf = icmp ugt i64 %i.aw, %i.be
  br i1 %i.bf, label %bb.h, label %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit, !llvm.loop !167

_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit: ; preds = %bb.h, %bb.g
  %i.bg = zext i32 %1 to i64
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !23 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !23 ; 2 uses
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.j

.preheader.loopexit:                              ; preds = %_ZN2lp6addmulER8rationalRKS0_S3_.exit
  %.pre.pre = load ptr, ptr %i.al, align 8, !tbaa !40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit
  %.pre = phi ptr [ %.pre.pre, %.preheader.loopexit ], [ %i.as, %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit ] ; 6 uses
  br i1 %.not.i, label %._crit_edge, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !132 ; 5 uses
  %xtraiter = and i64 %i.aw, 3                    ; 3 uses
  %6 = icmp ult i64 %i.aw, 4
  br i1 %6, label %.epil.preheader, label %.lr.ph57.new

.lr.ph57.new:                                     ; preds = %.lr.ph57
  %unroll_iter = and i64 %i.aw, -4
  br label %bb.v

bb.i:                                             ; preds = %_ZngRK8rational.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.j:                                             ; preds = %.lr.ph, %_ZN2lp6addmulER8rationalRKS0_S3_.exit
  %.sroa.052.055 = phi ptr [ %i.bj, %.lr.ph ], [ %i.cl, %_ZN2lp6addmulER8rationalRKS0_S3_.exit ] ; 4 uses
  %i.bs = load i32, ptr %.sroa.052.055, align 8, !tbaa !59 ; 3 uses
  %i.bt = icmp eq i32 %i.bs, %3
  br i1 %i.bt, label %_ZN2lp6addmulER8rationalRKS0_S3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !132
  %i.bv = zext i32 %i.bs to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !27 ; 2 uses
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.052.055, i64 8
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2lp13static_matrixI8rationalS1_E15add_new_elementEjjRKS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.a, i32 noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i unwind label %bb.o

.noexc.i:                                         ; preds = %bb.n
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %.noexc.i, %bb.n
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN2lp6addmulER8rationalRKS0_S3_.exit

bb.p:                                             ; preds = %bb.t
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.q:                                             ; preds = %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.r ], [ %i.ce, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.aa

bb.t:                                             ; preds = %bb.k
  %i.cg = sext i32 %i.bx to i64
  %i.ch = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.ch, i64 %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.052.055, i64 8
  invoke void @_ZN8rational6addmulERKS_S1_(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN2lp6addmulER8rationalRKS0_S3_.exit unwind label %bb.p

_ZN2lp6addmulER8rationalRKS0_S3_.exit:            ; preds = %bb.t, %_ZN8rationalD2Ev.exit, %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.052.055, i64 40 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bl
  br i1 %i.cm, label %.preheader.loopexit, label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph57
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod75 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.cn = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv.epil
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !27
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cp
  store i32 -1, ptr %i.cq, align 4, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.u, !llvm.loop !168

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.u, %.preheader
  %i.cr = load ptr, ptr %i.aq, align 8, !tbaa !80
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %.pre to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 40                ; 2 uses
  %i.cw = and i64 %i.cv, 4294967295
  %.not58 = icmp eq i64 %i.cw, 0
  br i1 %.not58, label %._crit_edge61, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %._crit_edge
  %i.cx = and i64 %i.cv, 4294967295
  br label %.lr.ph60

bb.v:                                             ; preds = %bb.v, %.lr.ph57.new
  %indvars.iv = phi i64 [ 0, %.lr.ph57.new ], [ %indvars.iv.next.3, %bb.v ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph57.new ], [ %niter.next.3, %bb.v ]
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !27
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.da
  store i32 -1, ptr %i.db, align 4, !tbaa !27
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !27
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.df
  store i32 -1, ptr %i.dg, align 4, !tbaa !27
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !27
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dk
  store i32 -1, ptr %i.dl, align 4, !tbaa !27
  %i.dm = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 120
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !27
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dp
  store i32 -1, ptr %i.dq, align 4, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.v, !llvm.loop !170

._crit_edge61:                                    ; preds = %bb.z, %._crit_edge
  %i.dr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i50 unwind label %bb.w

.noexc.i50:                                       ; preds = %._crit_edge61
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZN8rationalD2Ev.exit51 unwind label %bb.w

bb.w:                                             ; preds = %.noexc.i50, %._crit_edge61
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #22
  unreachable

_ZN8rationalD2Ev.exit51:                          ; preds = %.noexc.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %bb.z
  %indvars.iv64 = phi i64 [ %i.cx, %.lr.ph60.preheader ], [ %i.du, %bb.z ]
  %i.du = add nsw i64 %indvars.iv64, -1           ; 3 uses
  %i.dv = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.dw = getelementptr inbounds nuw [40 x i8], ptr %i.dv, i64 %i.du ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !44
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.x, label %bb.z

bb.x:                                             ; preds = %.lr.ph60
  invoke void @_ZN2lp13static_matrixI8rationalS1_E14remove_elementERSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EERS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.dw)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.x, %.lr.ph60
  %.not.wide = icmp eq i64 %i.du, 0
  br i1 %.not.wide, label %._crit_edge61, label %.lr.ph60, !llvm.loop !171

bb.aa:                                            ; preds = %bb.p, %bb.s, %bb.y, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.br, %bb.i ], [ %i.ea, %bb.y ], [ %.pn, %bb.s ], [ %i.cd, %bb.p ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
end_hunk_0
begin_hunk_1_@_ZN2lp13static_matrixI8rationalS1_E15add_new_elementEjjRKS1_:bb.a
  %i.ay = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %_ZN2lp8row_cellI8rationalED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc.i.i, %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #22
  unreachable

_ZN2lp8row_cellI8rationalED2Ev.exit:              ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !72  ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !122
  %.not.i.i = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2lp8row_cellI8rationalED2Ev.exit
  store i32 %1, ptr %i.bb, align 4, !tbaa !27
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.ax, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !27
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store ptr %i.be, ptr %i.p, align 8, !tbaa !72
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit

bb.h:                                             ; preds = %_ZN2lp8row_cellI8rationalED2Ev.exit
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !74  ; 5 uses
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775800
  br i1 %i.bj, label %bb.i, label %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bk = sdiv exact i64 %i.bi, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bl, i64 768614336404564650)
  %i.bo = select i1 %i.bm, i64 768614336404564650, i64 %i.bn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bp = mul nuw nsw i64 %i.bo, 12
  %i.bq = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.bp) ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi ; 2 uses
  store i32 %1, ptr %i.br, align 4, !tbaa !27
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %i.ax, ptr %.sroa.5.0..sroa_idx14, align 4, !tbaa !27
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.bb
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i ], [ %i.bq, %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i ], [ %i.bf, %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !123, !alias.scope !173
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.bb
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !128

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bq, %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  %.not.i23.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bf)
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.bq, ptr %i.h, align 8, !tbaa !74
  store ptr %i.bu, ptr %i.p, align 8, !tbaa !72
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bv, ptr %i.bc, align 8, !tbaa !122
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit: ; preds = %bb.g, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i
  ret void

bb.k:                                             ; preds = %_ZN2lp8row_cellI8rationalEC2EjjRKS1_.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2lp8row_cellI8rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.bw
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE27pivot_row_to_row_given_cellEjRNS_8row_cellINS_12empty_structEEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(9) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.rational, align 8            ; 17 uses
  %5 = alloca %class.rational, align 8            ; 8 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = zext i32 %i.a to i64                     ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = zext i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  store i32 0, ptr %4, align 8, !tbaa !44, !alias.scope !177
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.m = load i8, ptr %i.l, align 4, !alias.scope !177
  %i.n = and i8 %i.m, -4                          ; 2 uses
  store i8 %i.n, ptr %i.l, align 4, !alias.scope !177
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !47, !alias.scope !177
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 1, ptr %i.p, align 8, !tbaa !44, !alias.scope !177
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.r = load i8, ptr %i.q, align 4, !alias.scope !177
  %i.s = and i8 %i.r, -4
  store i8 %i.s, ptr %i.q, align 4, !alias.scope !177
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.t, align 8, !tbaa !47, !alias.scope !177
  %i.u = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !177 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.w = load i8, ptr %i.v, align 4, !noalias !177
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = load i32, ptr %i.k, align 8, !tbaa !44, !noalias !177
  store i32 %i.z, ptr %4, align 8, !tbaa !44, !alias.scope !177
  store i8 %i.n, ptr %i.l, align 4, !alias.scope !177
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ac = load i8, ptr %i.ab, align 4, !noalias !177
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !44, !noalias !177
  store i32 %i.af, ptr %i.p, align 8, !tbaa !44, !alias.scope !177
  %i.ag = load i8, ptr %i.q, align 4, !alias.scope !177
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.q, align 4, !alias.scope !177
  br label %_ZN8rationalC2ERKS_.exit.i

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  br label %_ZN8rationalC2ERKS_.exit.i

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.e, %bb.d
  %i.ai = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !177
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZngRK8rational.exit unwind label %bb.f

common.resume:                                    ; preds = %bb.aa, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %.pn.pn.pn.pn, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
  br label %common.resume

_ZngRK8rational.exit:                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.c ; 8 uses
  %i.am = load i32, ptr %i.f, align 4, !tbaa !27
  %i.an = zext i32 %i.am to i64
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.ao, i64 %i.an
  invoke void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE14remove_elementERSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EERS7_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.ap)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZngRK8rational.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !80 ; 2 uses
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !40 ; 4 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 40                ; 4 uses
  %.not.i = icmp eq ptr %i.ar, %i.as              ; 2 uses
  br i1 %.not.i, label %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !132
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !59
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !27
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.be = and i64 %indvars.iv.next.i, 4294967295
  %i.bf = icmp ugt i64 %i.aw, %i.be
  br i1 %i.bf, label %bb.h, label %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit, !llvm.loop !180

_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit: ; preds = %bb.h, %bb.g
  %i.bg = zext i32 %1 to i64
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !23 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !23 ; 2 uses
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.j

.preheader.loopexit:                              ; preds = %_ZN2lp6addmulER8rationalRKS0_S3_.exit
  %.pre.pre = load ptr, ptr %i.al, align 8, !tbaa !40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit
  %.pre = phi ptr [ %.pre.pre, %.preheader.loopexit ], [ %i.as, %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit ] ; 6 uses
  br i1 %.not.i, label %._crit_edge, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !132 ; 5 uses
  %xtraiter = and i64 %i.aw, 3                    ; 3 uses
  %6 = icmp ult i64 %i.aw, 4
  br i1 %6, label %.epil.preheader, label %.lr.ph57.new

.lr.ph57.new:                                     ; preds = %.lr.ph57
  %unroll_iter = and i64 %i.aw, -4
  br label %bb.v

bb.i:                                             ; preds = %_ZngRK8rational.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.j:                                             ; preds = %.lr.ph, %_ZN2lp6addmulER8rationalRKS0_S3_.exit
  %.sroa.052.055 = phi ptr [ %i.bj, %.lr.ph ], [ %i.cl, %_ZN2lp6addmulER8rationalRKS0_S3_.exit ] ; 4 uses
  %i.bs = load i32, ptr %.sroa.052.055, align 8, !tbaa !59 ; 3 uses
  %i.bt = icmp eq i32 %i.bs, %3
  br i1 %i.bt, label %_ZN2lp6addmulER8rationalRKS0_S3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !132
  %i.bv = zext i32 %i.bs to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !27 ; 2 uses
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.052.055, i64 8
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE15add_new_elementEjjRKS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.a, i32 noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i unwind label %bb.o

.noexc.i:                                         ; preds = %bb.n
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %.noexc.i, %bb.n
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN2lp6addmulER8rationalRKS0_S3_.exit

bb.p:                                             ; preds = %bb.t
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.q:                                             ; preds = %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.r ], [ %i.ce, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.aa

bb.t:                                             ; preds = %bb.k
  %i.cg = sext i32 %i.bx to i64
  %i.ch = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.ch, i64 %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.052.055, i64 8
  invoke void @_ZN8rational6addmulERKS_S1_(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN2lp6addmulER8rationalRKS0_S3_.exit unwind label %bb.p

_ZN2lp6addmulER8rationalRKS0_S3_.exit:            ; preds = %bb.t, %_ZN8rationalD2Ev.exit, %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.052.055, i64 40 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bl
  br i1 %i.cm, label %.preheader.loopexit, label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph57
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod75 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.cn = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv.epil
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !27
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cp
  store i32 -1, ptr %i.cq, align 4, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.u, !llvm.loop !181

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.u, %.preheader
  %i.cr = load ptr, ptr %i.aq, align 8, !tbaa !80
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %.pre to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 40                ; 2 uses
  %i.cw = and i64 %i.cv, 4294967295
  %.not58 = icmp eq i64 %i.cw, 0
  br i1 %.not58, label %._crit_edge61, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %._crit_edge
  %i.cx = and i64 %i.cv, 4294967295
  br label %.lr.ph60

bb.v:                                             ; preds = %bb.v, %.lr.ph57.new
  %indvars.iv = phi i64 [ 0, %.lr.ph57.new ], [ %indvars.iv.next.3, %bb.v ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph57.new ], [ %niter.next.3, %bb.v ]
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !27
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.da
  store i32 -1, ptr %i.db, align 4, !tbaa !27
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !27
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.df
  store i32 -1, ptr %i.dg, align 4, !tbaa !27
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !27
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dk
  store i32 -1, ptr %i.dl, align 4, !tbaa !27
  %i.dm = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 120
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !27
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dp
  store i32 -1, ptr %i.dq, align 4, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.v, !llvm.loop !182

._crit_edge61:                                    ; preds = %bb.z, %._crit_edge
  %i.dr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i50 unwind label %bb.w

.noexc.i50:                                       ; preds = %._crit_edge61
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZN8rationalD2Ev.exit51 unwind label %bb.w

bb.w:                                             ; preds = %.noexc.i50, %._crit_edge61
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #22
  unreachable

_ZN8rationalD2Ev.exit51:                          ; preds = %.noexc.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %bb.z
  %indvars.iv64 = phi i64 [ %i.cx, %.lr.ph60.preheader ], [ %i.du, %bb.z ]
  %i.du = add nsw i64 %indvars.iv64, -1           ; 3 uses
  %i.dv = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.dw = getelementptr inbounds nuw [40 x i8], ptr %i.dv, i64 %i.du ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !44
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.x, label %bb.z

bb.x:                                             ; preds = %.lr.ph60
  invoke void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE14remove_elementERSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EERS7_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.dw)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.x, %.lr.ph60
  %.not.wide = icmp eq i64 %i.du, 0
  br i1 %.not.wide, label %._crit_edge61, label %.lr.ph60, !llvm.loop !183

bb.aa:                                            ; preds = %bb.p, %bb.s, %bb.y, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.br, %bb.i ], [ %i.ea, %bb.y ], [ %.pn, %bb.s ], [ %i.cd, %bb.p ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
end_hunk_1
begin_hunk_2_@_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE15add_new_elementEjjRKS1_:bb.a
  %.not.i23.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bf)
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.bq, ptr %i.h, align 8, !tbaa !74
  store ptr %i.bu, ptr %i.p, align 8, !tbaa !72
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bv, ptr %i.bc, align 8, !tbaa !122
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit: ; preds = %bb.g, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i
  ret void

bb.k:                                             ; preds = %_ZN2lp8row_cellI8rationalEC2EjjRKS1_.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2lp8row_cellI8rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.bw
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE37pivot_row_to_row_given_cell_with_signEjRNS_8row_cellINS_12empty_structEEEji(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(9) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.rational, align 8            ; 12 uses
  %6 = alloca %class.rational, align 8            ; 9 uses
  %7 = alloca %class.rational, align 8            ; 16 uses
  %8 = alloca %class.rational, align 8            ; 8 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = zext i32 %i.a to i64                     ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = zext i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  store i32 0, ptr %7, align 8, !tbaa !44, !alias.scope !188
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.m = load i8, ptr %i.l, align 4, !alias.scope !188
  %i.n = and i8 %i.m, -4                          ; 2 uses
  store i8 %i.n, ptr %i.l, align 4, !alias.scope !188
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !47, !alias.scope !188
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store i32 1, ptr %i.p, align 8, !tbaa !44, !alias.scope !188
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.r = load i8, ptr %i.q, align 4, !alias.scope !188
  %i.s = and i8 %i.r, -4
  store i8 %i.s, ptr %i.q, align 4, !alias.scope !188
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr null, ptr %i.t, align 8, !tbaa !47, !alias.scope !188
  %i.u = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !188 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.w = load i8, ptr %i.v, align 4, !noalias !188
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = load i32, ptr %i.k, align 8, !tbaa !44, !noalias !188
  store i32 %i.z, ptr %7, align 8, !tbaa !44, !alias.scope !188
  store i8 %i.n, ptr %i.l, align 4, !alias.scope !188
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ac = load i8, ptr %i.ab, align 4, !noalias !188
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !44, !noalias !188
  store i32 %i.af, ptr %i.p, align 8, !tbaa !44, !alias.scope !188
  %i.ag = load i8, ptr %i.q, align 4, !alias.scope !188
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.q, align 4, !alias.scope !188
  br label %_ZN8rationalC2ERKS_.exit.i

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  br label %_ZN8rationalC2ERKS_.exit.i

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.e, %bb.d
  %i.ai = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !188
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZngRK8rational.exit unwind label %bb.f

common.resume:                                    ; preds = %bb.ah, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %.pn.pn.pn.pn.pn, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #21
  br label %common.resume

_ZngRK8rational.exit:                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !191
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 4, !noalias !191
  %i.am = and i8 %i.al, -4
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !47, !noalias !191
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i32 1, ptr %i.ao, align 8, !tbaa !44, !noalias !191
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 4, !noalias !191
  %i.ar = and i8 %i.aq, -4
  store i8 %i.ar, ptr %i.ap, align 4, !noalias !191
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.as, align 8, !tbaa !47, !noalias !191
  %i.at = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !191
  store i32 %4, ptr %5, align 8, !tbaa !44, !noalias !191
  store i8 %i.am, ptr %i.ak, align 4, !noalias !191
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_ZngRK8rational.exit
  store i32 1, ptr %i.ao, align 8, !tbaa !44, !noalias !191
  %i.au = load i8, ptr %i.ap, align 4, !noalias !191
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.ap, align 4, !noalias !191
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.noexc
  %i.aw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !191 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i.i unwind label %bb.h

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i.i, %bb.g
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #22
  unreachable

bb.i:                                             ; preds = %.noexc
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !191
  br label %.body

bb.j:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !191
  %i.ba = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i, %bb.j
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.c ; 8 uses
  %i.bf = load i32, ptr %i.f, align 4, !tbaa !27
  %i.bg = zext i32 %i.bf to i64
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %i.bg
  invoke void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE14remove_elementERSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EERS7_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.bi)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %_ZN8rationalD2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80 ; 2 uses
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !40 ; 4 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 40                ; 4 uses
  %.not.i = icmp eq ptr %i.bk, %i.bl              ; 2 uses
  br i1 %.not.i, label %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !132
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !59
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bu
  %i.bw = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !27
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.bx = and i64 %indvars.iv.next.i, 4294967295
  %i.by = icmp ugt i64 %i.bp, %i.bx
  br i1 %i.by, label %bb.m, label %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit, !llvm.loop !180

_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit: ; preds = %bb.m, %bb.l
  %i.bz = zext i32 %1 to i64
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.bz ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !23 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !23 ; 2 uses
  %i.cf = icmp eq ptr %i.cc, %i.ce
  br i1 %i.cf, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.p

.preheader.loopexit:                              ; preds = %_ZN2lp6addmulER8rationalRKS0_S3_.exit
  %.pre.pre = load ptr, ptr %i.be, align 8, !tbaa !40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit
  %.pre = phi ptr [ %.pre.pre, %.preheader.loopexit ], [ %i.bl, %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit ] ; 6 uses
  br i1 %.not.i, label %._crit_edge, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !132 ; 5 uses
  %xtraiter = and i64 %i.bp, 3                    ; 3 uses
  %9 = icmp ult i64 %i.bp, 4
  br i1 %9, label %.epil.preheader, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %i.bp, -4
  br label %bb.ab

bb.n:                                             ; preds = %_ZngRK8rational.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ck, %bb.n ], [ %i.az, %bb.i ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ah

bb.o:                                             ; preds = %_ZN8rationalD2Ev.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.p:                                             ; preds = %.lr.ph, %_ZN2lp6addmulER8rationalRKS0_S3_.exit
  %.sroa.058.061 = phi ptr [ %i.cc, %.lr.ph ], [ %i.df, %_ZN2lp6addmulER8rationalRKS0_S3_.exit ] ; 4 uses
  %i.cm = load i32, ptr %.sroa.058.061, align 8, !tbaa !59 ; 3 uses
  %i.cn = icmp eq i32 %i.cm, %3
  br i1 %i.cn, label %_ZN2lp6addmulER8rationalRKS0_S3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !132
  %i.cp = zext i32 %i.cm to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !27 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, -1
  br i1 %i.cs, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.058.061, i64 8
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE15add_new_elementEjjRKS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.a, i32 noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cu = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i53 unwind label %bb.u

.noexc.i53:                                       ; preds = %bb.t
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %_ZN8rationalD2Ev.exit54 unwind label %bb.u

bb.u:                                             ; preds = %.noexc.i53, %bb.t
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #22
  unreachable

_ZN8rationalD2Ev.exit54:                          ; preds = %.noexc.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZN2lp6addmulER8rationalRKS0_S3_.exit

bb.v:                                             ; preds = %bb.z
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.r
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.x ], [ %i.cy, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ag

bb.z:                                             ; preds = %bb.q
  %i.da = sext i32 %i.cr to i64
  %i.db = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.db, i64 %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.058.061, i64 8
  invoke void @_ZN8rational6addmulERKS_S1_(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN2lp6addmulER8rationalRKS0_S3_.exit unwind label %bb.v

_ZN2lp6addmulER8rationalRKS0_S3_.exit:            ; preds = %bb.z, %_ZN8rationalD2Ev.exit54, %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.058.061, i64 40 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ce
  br i1 %i.dg, label %.preheader.loopexit, label %bb.p

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph63
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.aa ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aa ]
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv.epil
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !27
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dj
  store i32 -1, ptr %i.dk, align 4, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.aa, !llvm.loop !194

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.aa, %.preheader
  %i.dl = load ptr, ptr %i.bj, align 8, !tbaa !80
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %.pre to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = sdiv exact i64 %i.do, 40                ; 2 uses
  %i.dq = and i64 %i.dp, 4294967295
  %.not64 = icmp eq i64 %i.dq, 0
  br i1 %.not64, label %._crit_edge67, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %._crit_edge
  %i.dr = and i64 %i.dp, 4294967295
  br label %.lr.ph66

bb.ab:                                            ; preds = %bb.ab, %.lr.ph63.new
  %indvars.iv = phi i64 [ 0, %.lr.ph63.new ], [ %indvars.iv.next.3, %bb.ab ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph63.new ], [ %niter.next.3, %bb.ab ]
  %i.ds = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !27
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.du
  store i32 -1, ptr %i.dv, align 4, !tbaa !27
  %i.dw = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !27
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dz
  store i32 -1, ptr %i.ea, align 4, !tbaa !27
  %i.eb = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !27
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ee
  store i32 -1, ptr %i.ef, align 4, !tbaa !27
  %i.eg = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 120
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !27
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ej
  store i32 -1, ptr %i.ek, align 4, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !195

._crit_edge67:                                    ; preds = %bb.af, %._crit_edge
  %i.el = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.el, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i56 unwind label %bb.ac

.noexc.i56:                                       ; preds = %._crit_edge67
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.em)
          to label %_ZN8rationalD2Ev.exit57 unwind label %bb.ac

bb.ac:                                            ; preds = %.noexc.i56, %._crit_edge67
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #22
  unreachable

_ZN8rationalD2Ev.exit57:                          ; preds = %.noexc.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %bb.af
  %indvars.iv70 = phi i64 [ %i.dr, %.lr.ph66.preheader ], [ %i.ep, %bb.af ]
  %i.ep = add nsw i64 %indvars.iv70, -1           ; 3 uses
  %i.eq = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.er = getelementptr inbounds nuw [40 x i8], ptr %i.eq, i64 %i.ep ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !44
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph66
  invoke void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE14remove_elementERSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EERS7_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.er)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %.lr.ph66
  %.not.wide = icmp eq i64 %i.ep, 0
  br i1 %.not.wide, label %._crit_edge67, label %.lr.ph66, !llvm.loop !196

bb.ag:                                            ; preds = %bb.v, %bb.y, %bb.ae, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.o ], [ %i.ev, %bb.ae ], [ %.pn, %bb.y ], [ %i.cx, %bb.v ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.body
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ag ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN2lp13static_matrixI8rationalS1_E37pivot_row_to_row_given_cell_with_signEjRNS_8row_cellINS_12empty_structEEEji(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(9) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.rational, align 8            ; 12 uses
  %6 = alloca %class.rational, align 8            ; 9 uses
  %7 = alloca %class.rational, align 8            ; 16 uses
  %8 = alloca %class.rational, align 8            ; 8 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = zext i32 %i.a to i64                     ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = zext i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  store i32 0, ptr %7, align 8, !tbaa !44, !alias.scope !197
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.m = load i8, ptr %i.l, align 4, !alias.scope !197
  %i.n = and i8 %i.m, -4                          ; 2 uses
  store i8 %i.n, ptr %i.l, align 4, !alias.scope !197
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !47, !alias.scope !197
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store i32 1, ptr %i.p, align 8, !tbaa !44, !alias.scope !197
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.r = load i8, ptr %i.q, align 4, !alias.scope !197
  %i.s = and i8 %i.r, -4
  store i8 %i.s, ptr %i.q, align 4, !alias.scope !197
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr null, ptr %i.t, align 8, !tbaa !47, !alias.scope !197
  %i.u = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !197 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.w = load i8, ptr %i.v, align 4, !noalias !197
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = load i32, ptr %i.k, align 8, !tbaa !44, !noalias !197
  store i32 %i.z, ptr %7, align 8, !tbaa !44, !alias.scope !197
  store i8 %i.n, ptr %i.l, align 4, !alias.scope !197
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ac = load i8, ptr %i.ab, align 4, !noalias !197
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !44, !noalias !197
  store i32 %i.af, ptr %i.p, align 8, !tbaa !44, !alias.scope !197
  %i.ag = load i8, ptr %i.q, align 4, !alias.scope !197
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.q, align 4, !alias.scope !197
  br label %_ZN8rationalC2ERKS_.exit.i

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  br label %_ZN8rationalC2ERKS_.exit.i

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.e, %bb.d
  %i.ai = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !197
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZngRK8rational.exit unwind label %bb.f

common.resume:                                    ; preds = %bb.ah, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %.pn.pn.pn.pn.pn, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #21
  br label %common.resume

_ZngRK8rational.exit:                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !200
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 4, !noalias !200
  %i.am = and i8 %i.al, -4
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !47, !noalias !200
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i32 1, ptr %i.ao, align 8, !tbaa !44, !noalias !200
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 4, !noalias !200
  %i.ar = and i8 %i.aq, -4
  store i8 %i.ar, ptr %i.ap, align 4, !noalias !200
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.as, align 8, !tbaa !47, !noalias !200
  %i.at = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !200
  store i32 %4, ptr %5, align 8, !tbaa !44, !noalias !200
  store i8 %i.am, ptr %i.ak, align 4, !noalias !200
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_ZngRK8rational.exit
  store i32 1, ptr %i.ao, align 8, !tbaa !44, !noalias !200
  %i.au = load i8, ptr %i.ap, align 4, !noalias !200
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.ap, align 4, !noalias !200
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.noexc
  %i.aw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !200 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i.i unwind label %bb.h

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i.i, %bb.g
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #22
  unreachable

bb.i:                                             ; preds = %.noexc
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !200
  br label %.body

bb.j:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !200
  %i.ba = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i, %bb.j
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.c ; 8 uses
  %i.bf = load i32, ptr %i.f, align 4, !tbaa !27
  %i.bg = zext i32 %i.bf to i64
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %i.bg
  invoke void @_ZN2lp13static_matrixI8rationalS1_E14remove_elementERSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EERS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.bi)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %_ZN8rationalD2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80 ; 2 uses
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !40 ; 4 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 40                ; 4 uses
  %.not.i = icmp eq ptr %i.bk, %i.bl              ; 2 uses
  br i1 %.not.i, label %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !132
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !59
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bu
  %i.bw = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !27
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.bx = and i64 %indvars.iv.next.i, 4294967295
  %i.by = icmp ugt i64 %i.bp, %i.bx
  br i1 %i.by, label %bb.m, label %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit, !llvm.loop !167

_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit: ; preds = %bb.m, %bb.l
  %i.bz = zext i32 %1 to i64
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.bz ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !23 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !23 ; 2 uses
  %i.cf = icmp eq ptr %i.cc, %i.ce
  br i1 %i.cf, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.p

.preheader.loopexit:                              ; preds = %_ZN2lp6addmulER8rationalRKS0_S3_.exit
  %.pre.pre = load ptr, ptr %i.be, align 8, !tbaa !40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit
  %.pre = phi ptr [ %.pre.pre, %.preheader.loopexit ], [ %i.bl, %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit ] ; 6 uses
  br i1 %.not.i, label %._crit_edge, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !132 ; 5 uses
  %xtraiter = and i64 %i.bp, 3                    ; 3 uses
  %9 = icmp ult i64 %i.bp, 4
  br i1 %9, label %.epil.preheader, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %i.bp, -4
  br label %bb.ab

bb.n:                                             ; preds = %_ZngRK8rational.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ck, %bb.n ], [ %i.az, %bb.i ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ah

bb.o:                                             ; preds = %_ZN8rationalD2Ev.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.p:                                             ; preds = %.lr.ph, %_ZN2lp6addmulER8rationalRKS0_S3_.exit
  %.sroa.058.061 = phi ptr [ %i.cc, %.lr.ph ], [ %i.df, %_ZN2lp6addmulER8rationalRKS0_S3_.exit ] ; 4 uses
  %i.cm = load i32, ptr %.sroa.058.061, align 8, !tbaa !59 ; 3 uses
  %i.cn = icmp eq i32 %i.cm, %3
  br i1 %i.cn, label %_ZN2lp6addmulER8rationalRKS0_S3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !132
  %i.cp = zext i32 %i.cm to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !27 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, -1
  br i1 %i.cs, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.058.061, i64 8
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2lp13static_matrixI8rationalS1_E15add_new_elementEjjRKS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.a, i32 noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cu = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i53 unwind label %bb.u

.noexc.i53:                                       ; preds = %bb.t
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %_ZN8rationalD2Ev.exit54 unwind label %bb.u

bb.u:                                             ; preds = %.noexc.i53, %bb.t
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #22
  unreachable

_ZN8rationalD2Ev.exit54:                          ; preds = %.noexc.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZN2lp6addmulER8rationalRKS0_S3_.exit

bb.v:                                             ; preds = %bb.z
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.r
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.x ], [ %i.cy, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ag

bb.z:                                             ; preds = %bb.q
  %i.da = sext i32 %i.cr to i64
  %i.db = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.db, i64 %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.058.061, i64 8
  invoke void @_ZN8rational6addmulERKS_S1_(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN2lp6addmulER8rationalRKS0_S3_.exit unwind label %bb.v

_ZN2lp6addmulER8rationalRKS0_S3_.exit:            ; preds = %bb.z, %_ZN8rationalD2Ev.exit54, %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.058.061, i64 40 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ce
  br i1 %i.dg, label %.preheader.loopexit, label %bb.p

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph63
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.aa ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aa ]
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv.epil
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !27
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dj
  store i32 -1, ptr %i.dk, align 4, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.aa, !llvm.loop !203

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.aa, %.preheader
  %i.dl = load ptr, ptr %i.bj, align 8, !tbaa !80
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %.pre to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = sdiv exact i64 %i.do, 40                ; 2 uses
  %i.dq = and i64 %i.dp, 4294967295
  %.not64 = icmp eq i64 %i.dq, 0
  br i1 %.not64, label %._crit_edge67, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %._crit_edge
  %i.dr = and i64 %i.dp, 4294967295
  br label %.lr.ph66

bb.ab:                                            ; preds = %bb.ab, %.lr.ph63.new
  %indvars.iv = phi i64 [ 0, %.lr.ph63.new ], [ %indvars.iv.next.3, %bb.ab ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph63.new ], [ %niter.next.3, %bb.ab ]
  %i.ds = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !27
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.du
  store i32 -1, ptr %i.dv, align 4, !tbaa !27
  %i.dw = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !27
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dz
  store i32 -1, ptr %i.ea, align 4, !tbaa !27
  %i.eb = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !27
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ee
  store i32 -1, ptr %i.ef, align 4, !tbaa !27
  %i.eg = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 120
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !27
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ej
  store i32 -1, ptr %i.ek, align 4, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !204

._crit_edge67:                                    ; preds = %bb.af, %._crit_edge
  %i.el = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.el, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i56 unwind label %bb.ac

.noexc.i56:                                       ; preds = %._crit_edge67
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.em)
          to label %_ZN8rationalD2Ev.exit57 unwind label %bb.ac

bb.ac:                                            ; preds = %.noexc.i56, %._crit_edge67
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #22
  unreachable

_ZN8rationalD2Ev.exit57:                          ; preds = %.noexc.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %bb.af
  %indvars.iv70 = phi i64 [ %i.dr, %.lr.ph66.preheader ], [ %i.ep, %bb.af ]
  %i.ep = add nsw i64 %indvars.iv70, -1           ; 3 uses
  %i.eq = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.er = getelementptr inbounds nuw [40 x i8], ptr %i.eq, i64 %i.ep ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !44
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph66
  invoke void @_ZN2lp13static_matrixI8rationalS1_E14remove_elementERSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EERS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.er)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %.lr.ph66
  %.not.wide = icmp eq i64 %i.ep, 0
  br i1 %.not.wide, label %._crit_edge67, label %.lr.ph66, !llvm.loop !205

bb.ag:                                            ; preds = %bb.v, %bb.y, %bb.ae, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.o ], [ %i.ev, %bb.ae ], [ %.pn, %bb.y ], [ %i.cx, %bb.v ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.body
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ag ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE8add_rowsERKS1_jj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.rational, align 8            ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = zext i32 %3 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !40   ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 40                  ; 4 uses
  %.not.i = icmp eq ptr %i.f, %i.g                ; 2 uses
  br i1 %.not.i, label %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 8, !tbaa !59
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p
  %i.r = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.r, ptr %i.q, align 4, !tbaa !27
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.s = and i64 %indvars.iv.next.i, 4294967295
  %i.t = icmp ugt i64 %i.k, %i.s
  br i1 %i.t, label %bb.b, label %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit, !llvm.loop !180

_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit: ; preds = %bb.b, %bb.a
  %i.u = zext i32 %2 to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23   ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

.preheader.loopexit:                              ; preds = %bb.i
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit
  %.pre = phi ptr [ %.pre.pre, %.preheader.loopexit ], [ %i.g, %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EE.exit ] ; 6 uses
  br i1 %.not.i, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !132 ; 5 uses
  %xtraiter = and i64 %i.k, 3                     ; 3 uses
  %5 = icmp ult i64 %i.k, 4
  br i1 %5, label %.epil.preheader, label %.lr.ph38.new

.lr.ph38.new:                                     ; preds = %.lr.ph38
  %unroll_iter = and i64 %i.k, -4
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.033.036 = phi ptr [ %i.w, %.lr.ph ], [ %i.au, %bb.i ] ; 4 uses
  %i.ae = load i32, ptr %.sroa.033.036, align 8, !tbaa !59 ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !132
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.033.036, i64 8
  call void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
  invoke void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE15add_new_elementEjjRKS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %3, i32 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %bb.e
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.ao

bb.h:                                             ; preds = %bb.c
  %i.ap = sext i32 %i.ai to i64
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.033.036, i64 8
  call void @_ZN8rational6addmulERKS_S1_(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN8rationalD2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.033.036, i64 40 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.y
  br i1 %i.av, label %.preheader.loopexit, label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph38
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod55 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod55)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv.epil
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !27
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ay
  store i32 -1, ptr %i.az, align 4, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.j, !llvm.loop !206

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.j, %.preheader
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %.pre to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = sdiv exact i64 %i.bd, 40                ; 2 uses
  %i.bf = and i64 %i.be, 4294967295
  %.not39 = icmp eq i64 %i.bf, 0
  br i1 %.not39, label %._crit_edge42, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %._crit_edge
  %i.bg = and i64 %i.be, 4294967295
  br label %.lr.ph41

bb.k:                                             ; preds = %bb.k, %.lr.ph38.new
  %indvars.iv = phi i64 [ 0, %.lr.ph38.new ], [ %indvars.iv.next.3, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph38.new ], [ %niter.next.3, %bb.k ]
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bj
  store i32 -1, ptr %i.bk, align 4, !tbaa !27
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !27
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bo
  store i32 -1, ptr %i.bp, align 4, !tbaa !27
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !27
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bt
  store i32 -1, ptr %i.bu, align 4, !tbaa !27
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !27
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.by
  store i32 -1, ptr %i.bz, align 4, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !207

._crit_edge42:                                    ; preds = %bb.m, %._crit_edge
  ret void

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %bb.m
  %indvars.iv45 = phi i64 [ %i.bg, %.lr.ph41.preheader ], [ %i.ca, %bb.m ]
  %i.ca = add nsw i64 %indvars.iv45, -1           ; 3 uses
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %i.ca ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !44
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph41
  call void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE14remove_elementERSt6vectorINS_8row_cellIS1_EE13std_allocatorIS7_EERS7_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.cc)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph41
  %.not.wide = icmp eq i64 %i.ca, 0
  br i1 %.not.wide, label %._crit_edge42, label %.lr.ph41, !llvm.loop !208
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp13static_matrixI8rationalS1_E8add_rowsERKS1_jj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.rational, align 8            ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = zext i32 %3 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !40   ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 40                  ; 4 uses
  %.not.i = icmp eq ptr %i.f, %i.g                ; 2 uses
  br i1 %.not.i, label %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 8, !tbaa !59
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p
  %i.r = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.r, ptr %i.q, align 4, !tbaa !27
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.s = and i64 %indvars.iv.next.i, 4294967295
  %i.t = icmp ugt i64 %i.k, %i.s
  br i1 %i.t, label %bb.b, label %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit, !llvm.loop !167

_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit: ; preds = %bb.b, %bb.a
  %i.u = zext i32 %2 to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23   ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

.preheader.loopexit:                              ; preds = %bb.i
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit
  %.pre = phi ptr [ %.pre.pre, %.preheader.loopexit ], [ %i.g, %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit ] ; 6 uses
  br i1 %.not.i, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !132 ; 5 uses
  %xtraiter = and i64 %i.k, 3                     ; 3 uses
  %5 = icmp ult i64 %i.k, 4
  br i1 %5, label %.epil.preheader, label %.lr.ph38.new

.lr.ph38.new:                                     ; preds = %.lr.ph38
  %unroll_iter = and i64 %i.k, -4
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.033.036 = phi ptr [ %i.w, %.lr.ph ], [ %i.au, %bb.i ] ; 4 uses
  %i.ae = load i32, ptr %.sroa.033.036, align 8, !tbaa !59 ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !132
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.033.036, i64 8
  call void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
  invoke void @_ZN2lp13static_matrixI8rationalS1_E15add_new_elementEjjRKS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %3, i32 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %bb.e
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.ao

bb.h:                                             ; preds = %bb.c
  %i.ap = sext i32 %i.ai to i64
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.033.036, i64 8
  call void @_ZN8rational6addmulERKS_S1_(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN8rationalD2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.033.036, i64 40 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.y
  br i1 %i.av, label %.preheader.loopexit, label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph38
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod55 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod55)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv.epil
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !27
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ay
  store i32 -1, ptr %i.az, align 4, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.j, !llvm.loop !209

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.j, %.preheader
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %.pre to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = sdiv exact i64 %i.bd, 40                ; 2 uses
  %i.bf = and i64 %i.be, 4294967295
  %.not39 = icmp eq i64 %i.bf, 0
  br i1 %.not39, label %._crit_edge42, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %._crit_edge
  %i.bg = and i64 %i.be, 4294967295
  br label %.lr.ph41

bb.k:                                             ; preds = %bb.k, %.lr.ph38.new
  %indvars.iv = phi i64 [ 0, %.lr.ph38.new ], [ %indvars.iv.next.3, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph38.new ], [ %niter.next.3, %bb.k ]
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bj
  store i32 -1, ptr %i.bk, align 4, !tbaa !27
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !27
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bo
  store i32 -1, ptr %i.bp, align 4, !tbaa !27
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !27
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bt
  store i32 -1, ptr %i.bu, align 4, !tbaa !27
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !27
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.by
  store i32 -1, ptr %i.bz, align 4, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !210

._crit_edge42:                                    ; preds = %bb.m, %._crit_edge
  ret void

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %bb.m
  %indvars.iv45 = phi i64 [ %i.bg, %.lr.ph41.preheader ], [ %i.ca, %bb.m ]
  %i.ca = add nsw i64 %indvars.iv45, -1           ; 3 uses
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %i.ca ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !44
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph41
  call void @_ZN2lp13static_matrixI8rationalS1_E14remove_elementERSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EERS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.cc)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph41
  %.not.wide = icmp eq i64 %i.ca, 0
  br i1 %.not.wide, label %._crit_edge42, label %.lr.ph41, !llvm.loop !211
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp13static_matrixI8rationalS1_E28pivot_term_to_row_given_cellINS_8lar_termEEEvRKT_RNS_8row_cellINS_12empty_structEEEji(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 4 dereferenceable(9) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.rational, align 8            ; 12 uses
  %6 = alloca %class.rational, align 8            ; 9 uses
  %7 = alloca %class.rational, align 8            ; 16 uses
  %8 = alloca %class.rational, align 8            ; 8 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = zext i32 %i.a to i64                     ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = zext i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  store i32 0, ptr %7, align 8, !tbaa !44, !alias.scope !212
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.m = load i8, ptr %i.l, align 4, !alias.scope !212
  %i.n = and i8 %i.m, -4                          ; 2 uses
  store i8 %i.n, ptr %i.l, align 4, !alias.scope !212
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !47, !alias.scope !212
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store i32 1, ptr %i.p, align 8, !tbaa !44, !alias.scope !212
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.r = load i8, ptr %i.q, align 4, !alias.scope !212
  %i.s = and i8 %i.r, -4
  store i8 %i.s, ptr %i.q, align 4, !alias.scope !212
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr null, ptr %i.t, align 8, !tbaa !47, !alias.scope !212
  %i.u = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !212 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.w = load i8, ptr %i.v, align 4, !noalias !212
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = load i32, ptr %i.k, align 8, !tbaa !44, !noalias !212
  store i32 %i.z, ptr %7, align 8, !tbaa !44, !alias.scope !212
  store i8 %i.n, ptr %i.l, align 4, !alias.scope !212
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ac = load i8, ptr %i.ab, align 4, !noalias !212
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !44, !noalias !212
  store i32 %i.af, ptr %i.p, align 8, !tbaa !44, !alias.scope !212
  %i.ag = load i8, ptr %i.q, align 4, !alias.scope !212
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.q, align 4, !alias.scope !212
  br label %_ZN8rationalC2ERKS_.exit.i

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  br label %_ZN8rationalC2ERKS_.exit.i

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.e, %bb.d
  %i.ai = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !212
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZngRK8rational.exit unwind label %bb.f

common.resume:                                    ; preds = %bb.aj, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %.pn54.pn.pn.pn.pn, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #21
  br label %common.resume

_ZngRK8rational.exit:                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !215
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 4, !noalias !215
  %i.am = and i8 %i.al, -4
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !47, !noalias !215
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i32 1, ptr %i.ao, align 8, !tbaa !44, !noalias !215
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 4, !noalias !215
  %i.ar = and i8 %i.aq, -4
  store i8 %i.ar, ptr %i.ap, align 4, !noalias !215
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.as, align 8, !tbaa !47, !noalias !215
  %i.at = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !215
  store i32 %4, ptr %5, align 8, !tbaa !44, !noalias !215
  store i8 %i.am, ptr %i.ak, align 4, !noalias !215
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %_ZngRK8rational.exit
  store i32 1, ptr %i.ao, align 8, !tbaa !44, !noalias !215
  %i.au = load i8, ptr %i.ap, align 4, !noalias !215
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.ap, align 4, !noalias !215
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.noexc
  %i.aw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42, !noalias !215 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i.i unwind label %bb.h

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i.i, %bb.g
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #22
  unreachable

bb.i:                                             ; preds = %.noexc
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !215
  br label %.body

bb.j:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !215
  %i.ba = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i, %bb.j
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.c ; 8 uses
  %i.bf = load i32, ptr %i.f, align 4, !tbaa !27
  %i.bg = zext i32 %i.bf to i64
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %i.bg
  invoke void @_ZN2lp13static_matrixI8rationalS1_E14remove_elementERSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EERS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.bi)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZN8rationalD2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80 ; 2 uses
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !40 ; 4 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 40                ; 4 uses
  %.not.i = icmp eq ptr %i.bk, %i.bl              ; 2 uses
  br i1 %.not.i, label %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !132
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !59
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bu
  %i.bw = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !27
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.bx = and i64 %indvars.iv.next.i, 4294967295
  %i.by = icmp ugt i64 %i.bp, %i.bx
  br i1 %i.by, label %bb.m, label %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit, !llvm.loop !167

_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit: ; preds = %bb.m, %bb.l
  %i.bz = load ptr, ptr %1, align 8, !tbaa !218   ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !221 ; 2 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.cc, 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i.i.i ; 4 uses
  %.not1.i.i.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not1.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit, %bb.n
  %.sroa.0.0.i.i.i = phi ptr [ %i.ch, %bb.n ], [ %i.bz, %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !222
  %i.cg = icmp eq i32 %i.cf, 2
  br i1 %i.cg, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, %i.cd
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !226

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.n, %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit
  %.sroa.0.1.i.i.i = phi ptr [ %i.bz, %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.cd, %bb.n ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.bz, i64 %i.cc ; 2 uses
  %.not7475 = icmp eq ptr %.sroa.0.1.i.i.i, %i.ci
  br i1 %.not7475, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.q

.preheader.loopexit:                              ; preds = %_ZN2lp8lar_term14const_iteratorppEv.exit
  %.pre.pre = load ptr, ptr %i.be, align 8, !tbaa !40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.loopexit
  %.pre = phi ptr [ %.pre.pre, %.preheader.loopexit ], [ %i.bl, %.loopexit ] ; 6 uses
  br i1 %.not.i, label %._crit_edge, label %.lr.ph78

.lr.ph78:                                         ; preds = %.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !132 ; 5 uses
  %xtraiter = and i64 %i.bp, 3                    ; 3 uses
  %9 = icmp ult i64 %i.bp, 4
  br i1 %9, label %.epil.preheader, label %.lr.ph78.new

.lr.ph78.new:                                     ; preds = %.lr.ph78
  %unroll_iter = and i64 %i.bp, -4
  br label %bb.ad

bb.o:                                             ; preds = %_ZngRK8rational.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.cn, %bb.o ], [ %i.az, %bb.i ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.aj

bb.p:                                             ; preds = %_ZN8rationalD2Ev.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.q:                                             ; preds = %.lr.ph, %_ZN2lp8lar_term14const_iteratorppEv.exit
  %.sroa.072.076 = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph ], [ %.sroa.072.2, %_ZN2lp8lar_term14const_iteratorppEv.exit ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.072.076, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !227 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.072.076, i64 16 ; 2 uses
  %i.cs = icmp eq i32 %i.cq, %3
  br i1 %i.cs, label %_ZN2lp6addmulER8rationalRKS0_S3_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !132
  %i.cu = zext i32 %i.cq to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !27 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, -1
  br i1 %i.cx, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.cr)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2lp13static_matrixI8rationalS1_E15add_new_elementEjjRKS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.a, i32 noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cy = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i62 unwind label %bb.v

.noexc.i62:                                       ; preds = %bb.u
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.ck)
          to label %_ZN8rationalD2Ev.exit63 unwind label %bb.v

bb.v:                                             ; preds = %.noexc.i62, %bb.u
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #22
  unreachable

_ZN8rationalD2Ev.exit63:                          ; preds = %.noexc.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZN2lp6addmulER8rationalRKS0_S3_.exit

bb.w:                                             ; preds = %bb.aa
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %bb.s
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.y ], [ %i.dc, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ai

bb.aa:                                            ; preds = %bb.r
  %i.de = sext i32 %i.cw to i64
  %i.df = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.dg = getelementptr inbounds nuw [40 x i8], ptr %i.df, i64 %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  invoke void @_ZN8rational6addmulERKS_S1_(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN2lp6addmulER8rationalRKS0_S3_.exit unwind label %bb.w

_ZN2lp6addmulER8rationalRKS0_S3_.exit:            ; preds = %bb.aa, %_ZN8rationalD2Ev.exit63, %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.072.076, i64 48 ; 3 uses
  %.not1.i.i.i.i = icmp eq ptr %i.di, %i.cd
  br i1 %.not1.i.i.i.i, label %_ZN2lp8lar_term14const_iteratorppEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN2lp6addmulER8rationalRKS0_S3_.exit, %bb.ab
  %.sroa.072.1 = phi ptr [ %i.dm, %bb.ab ], [ %i.di, %_ZN2lp6addmulER8rationalRKS0_S3_.exit ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.072.1, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !222
  %i.dl = icmp eq i32 %i.dk, 2
  br i1 %i.dl, label %_ZN2lp8lar_term14const_iteratorppEv.exit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.072.1, i64 48 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dm, %i.cd
  br i1 %.not.i.i.i.i, label %_ZN2lp8lar_term14const_iteratorppEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !226

_ZN2lp8lar_term14const_iteratorppEv.exit:         ; preds = %.lr.ph.i.i.i.i, %bb.ab, %_ZN2lp6addmulER8rationalRKS0_S3_.exit
  %.sroa.072.2 = phi ptr [ %i.di, %_ZN2lp6addmulER8rationalRKS0_S3_.exit ], [ %i.dm, %bb.ab ], [ %.sroa.072.1, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not74 = icmp eq ptr %.sroa.072.2, %i.ci
  br i1 %.not74, label %.preheader.loopexit, label %bb.q

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph78
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ac ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.dn = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv.epil
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !27
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dp
  store i32 -1, ptr %i.dq, align 4, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.ac, !llvm.loop !228

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ac, %.preheader
  %i.dr = load ptr, ptr %i.bj, align 8, !tbaa !80
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %.pre to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = sdiv exact i64 %i.du, 40                ; 2 uses
  %i.dw = and i64 %i.dv, 4294967295
  %.not79 = icmp eq i64 %i.dw, 0
  br i1 %.not79, label %._crit_edge82, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %._crit_edge
  %i.dx = and i64 %i.dv, 4294967295
  br label %.lr.ph81

bb.ad:                                            ; preds = %bb.ad, %.lr.ph78.new
  %indvars.iv = phi i64 [ 0, %.lr.ph78.new ], [ %indvars.iv.next.3, %bb.ad ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph78.new ], [ %niter.next.3, %bb.ad ]
  %i.dy = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !27
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ea
  store i32 -1, ptr %i.eb, align 4, !tbaa !27
  %i.ec = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !27
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ef
  store i32 -1, ptr %i.eg, align 4, !tbaa !27
  %i.eh = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !27
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ek
  store i32 -1, ptr %i.el, align 4, !tbaa !27
  %i.em = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 120
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !27
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ep
  store i32 -1, ptr %i.eq, align 4, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !229

._crit_edge82:                                    ; preds = %bb.ah, %._crit_edge
  %i.er = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.er, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i66 unwind label %bb.ae

.noexc.i66:                                       ; preds = %._crit_edge82
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.er, ptr noundef nonnull align 8 dereferenceable(16) %i.es)
          to label %_ZN8rationalD2Ev.exit67 unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc.i66, %._crit_edge82
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #22
  unreachable

_ZN8rationalD2Ev.exit67:                          ; preds = %.noexc.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %bb.ah
  %indvars.iv85 = phi i64 [ %i.dx, %.lr.ph81.preheader ], [ %i.ev, %bb.ah ]
  %i.ev = add nsw i64 %indvars.iv85, -1           ; 3 uses
  %i.ew = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.ex = getelementptr inbounds nuw [40 x i8], ptr %i.ew, i64 %i.ev ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !44
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.lr.ph81
  invoke void @_ZN2lp13static_matrixI8rationalS1_E14remove_elementERSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EERS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.ex)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %.lr.ph81
  %.not.wide = icmp eq i64 %i.ev, 0
  br i1 %.not.wide, label %._crit_edge82, label %.lr.ph81, !llvm.loop !230

bb.ai:                                            ; preds = %bb.w, %bb.z, %bb.ag, %bb.p
  %.pn54.pn.pn.pn = phi { ptr, i32 } [ %i.co, %bb.p ], [ %i.fb, %bb.ag ], [ %i.db, %bb.w ], [ %.pn, %bb.z ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.body
  %.pn54.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn, %bb.ai ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp13static_matrixI8rationalS1_E15add_term_to_rowINS_8lar_termEEEvRKS1_RKT_j(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator.63", align 1 ; 4 uses
  %6 = alloca %"class.std::vector.29", align 8    ; 6 uses
  %7 = alloca %class.rational, align 8            ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = zext i32 %3 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !40   ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 40                  ; 4 uses
  %.not.i = icmp eq ptr %i.f, %i.g                ; 2 uses
  br i1 %.not.i, label %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 8, !tbaa !59
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p
  %i.r = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.r, ptr %i.q, align 4, !tbaa !27
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.s = and i64 %indvars.iv.next.i, 4294967295
  %i.t = icmp ugt i64 %i.k, %i.s
  br i1 %i.t, label %bb.b, label %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit, !llvm.loop !167

_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit: ; preds = %bb.b, %bb.a
  %i.u = load ptr, ptr %2, align 8, !tbaa !218    ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !221  ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.x, 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i ; 4 uses
  %.not1.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not1.i.i.i.i.i, label %_ZNK2lp8lar_term5beginEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ac, %bb.c ], [ %i.u, %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !222
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %_ZNK2lp8lar_term5beginEv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNK2lp8lar_term5beginEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !226

_ZNK2lp8lar_term5beginEv.exit:                    ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit
  %.sroa.0.1.i.i.i = phi ptr [ %i.u, %_ZN2lp13static_matrixI8rationalS1_E29scan_row_strip_to_work_vectorERKSt6vectorINS_8row_cellIS1_EE13std_allocatorIS5_EE.exit ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.x ; 2 uses
  %.not5153 = icmp eq ptr %.sroa.0.1.i.i.i, %i.ad
  br i1 %.not5153, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2lp8lar_term5beginEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.d

.preheader.loopexit:                              ; preds = %_ZN2lp8lar_term14const_iteratorppEv.exit
  %.pre68.pre = load ptr, ptr %i.d, align 8, !tbaa !40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZNK2lp8lar_term5beginEv.exit
  %.pre68 = phi ptr [ %.pre68.pre, %.preheader.loopexit ], [ %i.g, %_ZNK2lp8lar_term5beginEv.exit ] ; 6 uses
  br i1 %.not.i, label %._crit_edge, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !132 ; 5 uses
  %xtraiter = and i64 %i.k, 3                     ; 3 uses
  %8 = icmp ult i64 %i.k, 4
  br i1 %8, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.k, -4
  br label %bb.ab

bb.d:                                             ; preds = %.lr.ph, %_ZN2lp8lar_term14const_iteratorppEv.exit
  %.sroa.049.054 = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph ], [ %.sroa.049.2, %_ZN2lp8lar_term14const_iteratorppEv.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.049.054, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !227 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.049.054, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !132
  %i.ap = zext i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !27 ; 2 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 2 uses
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 24
  %i.az = trunc i64 %i.ay to i32
  %.not1.i = icmp ult i32 %i.am, %i.az
  br i1 %.not1.i, label %_ZN2lp13static_matrixI8rationalS1_E17add_columns_up_toEj.exit, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.e, %_ZN2lp13static_matrixI8rationalS1_E10add_columnEv.exit
  %i.ba = phi ptr [ %i.du, %_ZN2lp13static_matrixI8rationalS1_E10add_columnEv.exit ], [ %i.au, %bb.e ] ; 5 uses
  %i.bb = phi ptr [ %i.dn, %_ZN2lp13static_matrixI8rationalS1_E10add_columnEv.exit ], [ %i.at, %bb.e ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bc = load ptr, ptr %i.ah, align 8, !tbaa !113
  %.not.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i, label %bb.f, label %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.thread.i

_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.thread.i: ; preds = %.lr.ph.i36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  store ptr %i.bd, ptr %i.ag, align 8, !tbaa !70
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit.i

bb.f:                                             ; preds = %.lr.ph.i36
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.ba to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.g, label %_ZNKSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.bi = sdiv exact i64 %i.bg, 24                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 384307168202282325)
  %i.bm = select i1 %i.bk, i64 384307168202282325, i64 %i.bl ; 3 uses
  %.not.i.i = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.bn = mul nuw nsw i64 %i.bm, 24
  %i.bo = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.bn)
          to label %.noexc43 unwind label %.loopexit ; 5 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE12_M_check_lenEmPKc.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i41

.lr.ph.i.i.i.i41:                                 ; preds = %.noexc43, %.lr.ph.i.i.i.i41
  %.012.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i41 ], [ %i.bo, %.noexc43 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i41 ], [ %i.ba, %.noexc43 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.bq = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !34, !alias.scope !234, !noalias !231
  store <2 x ptr> %i.bq, ptr %.012.i.i.i.i, align 8, !tbaa !34, !alias.scope !231, !noalias !234
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !122, !alias.scope !234, !noalias !231
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !122, !alias.scope !231, !noalias !234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !234, !noalias !231
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.bu, %i.bb
  br i1 %.not.i.i.i.i42, label %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i41, !llvm.loop !236

_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i41, %.noexc43
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bo, %.noexc43 ], [ %i.bv, %.lr.ph.i.i.i.i41 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ba, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ba)
          to label %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.i unwind label %.loopexit

_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.i: ; preds = %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.h
  store ptr %i.bo, ptr %i.af, align 8, !tbaa !31
  store ptr %i.bw, ptr %i.ag, align 8, !tbaa !70
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !113
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit.i

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.i, %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.thread.i
  %i.by = phi ptr [ %i.bd, %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.thread.i ], [ %i.bw, %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !132 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit.i
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !27 ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !27
  %i.cf = icmp eq i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.k, label %_ZN2lp13static_matrixI8rationalS1_E10add_columnEv.exit

bb.j:                                             ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit.i
  %i.cg = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.cg, align 4, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 0, ptr %i.ch, align 4, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.ae, align 8, !tbaa !132
  br label %_ZN6vectorIiLb1EjE13expand_vectorEv.exit

bb.k:                                             ; preds = %bb.i
  %i.cj = mul i32 %i.cc, 3
  %i.ck = add i32 %i.cj, 1
  %i.cl = lshr i32 %i.ck, 1                       ; 3 uses
  %i.cm = shl i32 %i.cl, 2
  %i.cn = add i32 %i.cm, 8                        ; 2 uses
  %.not.i40 = icmp ugt i32 %i.cl, %i.cc
  br i1 %.not.i40, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.co = shl i32 %i.cc, 2
  %i.cp = add i32 %i.co, 8
  %.not27.i = icmp ugt i32 %i.cn, %i.cp
  br i1 %.not27.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cq = call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cq, align 8, !tbaa !237
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 3 uses
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !239
  %i.ct = load ptr, ptr %4, align 8, !tbaa !242   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !244 ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 16
  call void @llvm.assume(i1 %i.cy)
  %i.cz = add nuw nsw i64 %i.cx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(1) %i.cu, i64 %i.cz, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !242
  %i.da = load i64, ptr %i.cu, align 8, !tbaa !245
  store i64 %i.da, ptr %i.cs, align 8, !tbaa !245
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !244
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.o
  %i.db = phi i64 [ %i.cx, %bb.o ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !244
  store ptr %i.cu, ptr %4, align 8, !tbaa !242
  store i64 0, ptr %i.dc, align 8, !tbaa !244
  store i8 0, ptr %i.cu, align 8, !tbaa !245
  invoke void @__cxa_throw(ptr nonnull %i.cq, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.s unwind label %bb.p

bb.p:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %4, align 8, !tbaa !242   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cu
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.p
end_hunk_2
begin_hunk_3_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  store ptr %i.h, ptr %0, align 8, !tbaa !242
  store i64 %i.c, ptr %i.a, align 8, !tbaa !245
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !245
  store i8 %i.j, ptr %i.i, align 1, !tbaa !245
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !244
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !245
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17default_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !237
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !245
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !153
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #20 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !144
  %i.g = sub nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #20
          to label %_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !151
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE15_M_create_nodesEPPS4_S8_.exit, !llvm.loop !292

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #21 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !151
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #23
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i, !llvm.loop !152

_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #24
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #22
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #21 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !144
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !153
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #24
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE15_M_create_nodesEPPS4_S8_.exit: ; preds = %_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !293
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !151 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !294
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !295
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !293
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !151 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !294
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !295
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !296
  %i.aq = and i64 %1, 63
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !297
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #22
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 0}
!9 = !{!"_ZTSSt15_Rb_tree_header", !10, i64 0, !14, i64 32}
!10 = !{!"_ZTSSt18_Rb_tree_node_base", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!11 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!12 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!9, !12, i64 8}
!16 = !{!9, !12, i64 16}
!17 = !{!9, !12, i64 24}
!18 = !{!9, !14, i64 32}
!19 = !{!20, !21, i64 8}
!20 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS4_EES5_IS7_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"p1 _ZTSSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE", !13, i64 0}
!22 = !{!20, !21, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSN2lp8row_cellI8rationalEE", !13, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!5, !5, i64 0}
!28 = !{!12, !12, i64 0}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2lp8row_cellINS1_12empty_structEEE13std_allocatorIS4_EES5_IS7_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTSSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE", !13, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSN2lp8row_cellINS_12empty_structEEE", !13, i64 0}
!36 = !{!37, !5, i64 0}
!37 = !{!"_ZTSN2lp8row_cellINS_12empty_structEEE", !5, i64 0, !5, i64 4, !38, i64 8}
!38 = !{!"_ZTSN2lp12empty_structE"}
!39 = !{!37, !5, i64 4}
!40 = !{!41, !24, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!42 = !{!43, !43, i64 0}
!43 = !{!"p1 _ZTS11mpq_managerILb1EE", !13, i64 0}
!44 = !{!45, !5, i64 0}
!45 = !{!"_ZTS3mpz", !5, i64 0, !5, i64 4, !5, i64 4, !46, i64 8}
!46 = !{!"p1 _ZTS8mpz_cell", !13, i64 0}
!47 = !{!45, !46, i64 8}
!48 = !{!21, !21, i64 0}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTSSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !51, i64 0, !14, i64 8, !53, i64 16, !14, i64 24, !55, i64 32, !54, i64 48}
!51 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !52, i64 0}
!52 = !{!"any p2 pointer", !13, i64 0}
!53 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !54, i64 0}
!54 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!55 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !56, i64 0, !14, i64 8}
!56 = !{!"float", !6, i64 0}
!57 = !{!50, !14, i64 8}
!58 = !{!55, !56, i64 0}
!59 = !{!60, !5, i64 0}
!60 = !{!"_ZTSN2lp8row_cellI8rationalEE", !5, i64 0, !5, i64 4, !61, i64 8}
!61 = !{!"_ZTS8rational", !62, i64 0}
!62 = !{!"_ZTS3mpq", !45, i64 0, !45, i64 16}
!63 = !{!50, !14, i64 24}
!64 = !{!53, !54, i64 0}
!65 = distinct !{!65, !26}
!66 = !{!54, !54, i64 0}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !26}
!69 = distinct !{!69, !26}
!70 = !{!32, !33, i64 8}
!71 = !{!60, !5, i64 4}
!72 = !{!73, !35, i64 8}
!73 = !{!"_ZTSNSt12_Vector_baseIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!74 = !{!73, !35, i64 0}
!75 = !{!50, !54, i64 16}
!76 = distinct !{!76, !26}
!77 = !{!33, !33, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIjLb0EEEEEE", !13, i64 0}
!80 = !{!41, !24, i64 8}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!83 = distinct !{!83, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!84 = distinct !{!84, !26}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!87 = distinct !{!87, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_Z3absRK8rational: argument 0"}
!90 = distinct !{!90, !"_Z3absRK8rational"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_Z3absRK8rational: argument 0"}
!93 = distinct !{!93, !"_Z3absRK8rational"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_Z3absRK8rational: argument 0"}
!96 = distinct !{!96, !"_Z3absRK8rational"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_Z3absRK8rational: argument 0:Peel0"}
!99 = distinct !{!99, !"_Z3absRK8rational"}
!100 = !{!101}
!101 = distinct !{!101, !99, !"_Z3absRK8rational: argument 0"}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.peeled.count", i32 1}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_Z3absRK8rational: argument 0:Peel0"}
!106 = distinct !{!106, !"_Z3absRK8rational"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"_Z3absRK8rational: argument 0"}
!109 = distinct !{!109, !103}
!110 = !{!20, !21, i64 16}
!111 = distinct !{!111, !26}
!112 = distinct !{!112, !26}
!113 = !{!32, !33, i64 16}
!114 = distinct !{!114, !26}
!115 = !{!116, !117, i64 0}
!116 = !{!"_ZTSN2lp13static_matrixI8rationalS1_E3refE", !117, i64 0, !5, i64 8, !5, i64 12}
!117 = !{!"p1 _ZTSN2lp13static_matrixI8rationalS1_EE", !13, i64 0}
!118 = !{}
!119 = !{i64 8}
!120 = !{!116, !5, i64 8}
!121 = !{!116, !5, i64 12}
!122 = !{!73, !35, i64 16}
!123 = !{i64 0, i64 4, !27, i64 4, i64 4, !27}
!124 = !{!125, !127}
!125 = distinct !{!125, !126, !"_ZSt19__relocate_object_aIN2lp8row_cellINS0_12empty_structEEES3_13std_allocatorIS3_EEvPT_PT0_RT1_: argument 0"}
!126 = distinct !{!126, !"_ZSt19__relocate_object_aIN2lp8row_cellINS0_12empty_structEEES3_13std_allocatorIS3_EEvPT_PT0_RT1_"}
!127 = distinct !{!127, !126, !"_ZSt19__relocate_object_aIN2lp8row_cellINS0_12empty_structEEES3_13std_allocatorIS3_EEvPT_PT0_RT1_: argument 1"}
!128 = distinct !{!128, !26}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN2lp13static_matrixI8rationalS1_E13make_row_cellEjjRKS1_: argument 0"}
!131 = distinct !{!131, !"_ZN2lp13static_matrixI8rationalS1_E13make_row_cellEjjRKS1_"}
!132 = !{!133, !134, i64 0}
!133 = !{!"_ZTS6vectorIiLb1EjE", !134, i64 0}
!134 = !{!"p1 int", !13, i64 0}
!135 = distinct !{!135, !26}
!136 = distinct !{!136, !26}
!137 = !{!138, !134, i64 0}
!138 = !{!"_ZTSNSt12_Vector_baseIj13std_allocatorIjEE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!139 = !{!140, !141, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseI8rational13std_allocatorIS0_EE17_Vector_impl_dataE", !141, i64 0, !141, i64 8, !141, i64 16}
!141 = !{!"p1 _ZTS8rational", !13, i64 0}
!142 = !{!140, !141, i64 8}
!143 = distinct !{!143, !26}
!144 = !{!145, !146, i64 0}
!145 = !{!"_ZTSNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE16_Deque_impl_dataE", !146, i64 0, !14, i64 8, !147, i64 16, !147, i64 48}
!146 = !{!"p2 _ZTSN2lp13static_matrixI8rationalS1_E3dimE", !52, i64 0}
!147 = !{!"_ZTSSt15_Deque_iteratorIN2lp13static_matrixI8rationalS2_E3dimERS4_PS4_E", !148, i64 0, !148, i64 8, !148, i64 16, !146, i64 24}
!148 = !{!"p1 _ZTSN2lp13static_matrixI8rationalS1_E3dimE", !13, i64 0}
!149 = !{!145, !146, i64 40}
!150 = !{!145, !146, i64 72}
!151 = !{!148, !148, i64 0}
!152 = distinct !{!152, !26}
!153 = !{!145, !14, i64 8}
!154 = distinct !{!154, !26}
!155 = distinct !{!155, !26}
!156 = distinct !{!156, !26}
!157 = !{!158, !160}
!158 = distinct !{!158, !159, !"_ZSt19__relocate_object_aIN2lp8row_cellINS0_12empty_structEEES3_13std_allocatorIS3_EEvPT_PT0_RT1_: argument 0"}
!159 = distinct !{!159, !"_ZSt19__relocate_object_aIN2lp8row_cellINS0_12empty_structEEES3_13std_allocatorIS3_EEvPT_PT0_RT1_"}
!160 = distinct !{!160, !159, !"_ZSt19__relocate_object_aIN2lp8row_cellINS0_12empty_structEEES3_13std_allocatorIS3_EEvPT_PT0_RT1_: argument 1"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE13make_row_cellEjjRKS1_: argument 0"}
!163 = distinct !{!163, !"_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE13make_row_cellEjjRKS1_"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZngRK8rational: argument 0"}
!166 = distinct !{!166, !"_ZngRK8rational"}
!167 = distinct !{!167, !26}
!168 = distinct !{!168, !169}
!169 = !{!"llvm.loop.unroll.disable"}
end_hunk_3
