Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/polynomial_cache?download=true
inline.NumInlined: 295
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10polynomial5cache3imp6factorEPNS_10polynomialER10ref_vectorIS2_NS_7managerEE
define linkonce_odr hidden void @_ZN10polynomial5cache3imp6factorEPNS_10polynomialER10ref_vectorIS2_NS_7managerEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %3 = alloca %"class.polynomial::manager::factors", align 8 ; 9 uses
  %4 = alloca %"struct.polynomial::factor_params", align 4 ; 5 uses
  %5 = alloca %class.obj_ref, align 8             ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit, label %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i

_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread5.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.c, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.j = load ptr, ptr %.06.i.i, align 8, !tbaa !62
  %i.k = load ptr, ptr %2, align 8, !tbaa !65, !nonnull !60, !align !61
  tail call void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.i
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !66 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread5.i

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread5.i: ; preds = %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i
  %i.n = phi ptr [ %.pre.i, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i ], [ %i.c, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -4
  store i32 0, ptr %i.o, align 4, !tbaa !26
  br label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit: ; preds = %bb.a, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread5.i
  %i.p = tail call noundef ptr @_ZN10polynomial5cache3imp9mk_uniqueEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) ; 3 uses
  %i.q = tail call noundef i32 @_ZN10polynomial7manager2idEPKNS_10polynomialE(ptr noundef %i.p) ; 2 uses
  %i.r = add i32 %i.q, 2127912214
  %i.s = shl i32 %i.q, 12
  %i.t = add i32 %i.r, %i.s                       ; 2 uses
  %i.u = lshr i32 %i.t, 19
  %i.v = xor i32 %i.t, %i.u
  %i.w = xor i32 %i.v, -949894596                 ; 2 uses
  %i.x = add i32 %i.w, 374761393
  %i.y = shl i32 %i.w, 5
  %i.z = add i32 %i.x, %i.y                       ; 2 uses
  %i.aa = add i32 %i.z, -744332180
  %i.ab = shl i32 %i.z, 9
  %i.ac = xor i32 %i.aa, %i.ab                    ; 2 uses
  %i.ad = add i32 %i.ac, -42973499
  %i.ae = shl i32 %i.ac, 3
  %i.af = add i32 %i.ad, %i.ae                    ; 2 uses
  %i.ag = lshr i32 %i.af, 16
  %i.ah = xor i32 %i.af, %i.ag
  %i.ai = xor i32 %i.ah, -1252372727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !79, !nonnull !60, !align !61
  %i.al = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.ak, i64 noundef 24) ; 5 uses
  store ptr %i.p, ptr %i.al, align 8, !tbaa !84
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.ai, ptr %i.am, align 8, !tbaa !85
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr null, ptr %i.ao, align 8, !tbaa !87
  store ptr %i.al, ptr %i.a, align 8, !tbaa !88
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN10chashtableIPN10polynomial12factor_entryENS1_9hash_procENS1_7eq_procEE19insert_if_not_thereERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !88 ; 3 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %.not = icmp eq ptr %i.as, %i.ar
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !79, !nonnull !60, !align !61
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.at, i64 noundef 24, ptr noundef %i.as)
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !66  ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit47, label %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i39

_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i39: ; preds = %bb.b
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !26 ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.az
  %.not.i40 = icmp eq i32 %i.ax, 0
  br i1 %.not.i40, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread5.i46, label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i39, %.lr.ph.i.i41
  %.06.i.i42 = phi ptr [ %i.bd, %.lr.ph.i.i41 ], [ %i.au, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i39 ] ; 2 uses
  %i.bb = load ptr, ptr %.06.i.i42, align 8, !tbaa !62
  %i.bc = load ptr, ptr %2, align 8, !tbaa !65, !nonnull !60, !align !61
  call void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i42, i64 8 ; 2 uses
  %i.be = icmp ult ptr %i.bd, %i.ba
  br i1 %i.be, label %.lr.ph.i.i41, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i43, !llvm.loop !0

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i43: ; preds = %.lr.ph.i.i41
  %.pre.i44 = load ptr, ptr %i.b, align 8, !tbaa !66 ; 2 uses
  %.not.i.i45 = icmp eq ptr %.pre.i44, null
  br i1 %.not.i.i45, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit47, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread5.i46

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread5.i46: ; preds = %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i43, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i39
  %i.bf = phi ptr [ %.pre.i44, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i43 ], [ %i.au, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i39 ]
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 0, ptr %i.bg, align 4, !tbaa !26
  br label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit47

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit47: ; preds = %bb.b, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i43, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread5.i46
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 12 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !86
  %.not57 = icmp eq i32 %i.bi, 0
  br i1 %.not57, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit47
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE9push_backEPS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE9push_backEPS1_.exit ] ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !62 ; 2 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !65, !nonnull !60, !align !61
  call void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef %i.bm)
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !66  ; 4 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !26 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !26
  %i.bu = icmp eq i32 %i.br, %i.bt
  br i1 %i.bu, label %bb.e, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE9push_backEPS1_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @_ZN6vectorIPN10polynomial10polynomialELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !66 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !26
  br label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE9push_backEPS1_.exit

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE9push_backEPS1_.exit: ; preds = %bb.d, %bb.e
  %i.bv = phi i32 [ %.pre2.i.i, %bb.e ], [ %i.br, %bb.d ] ; 2 uses
  %i.bw = phi ptr [ %.pre.i.i, %bb.e ], [ %i.bo, %bb.d ] ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %i.by = zext i32 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.by
  store ptr %i.bm, ptr %i.bz, align 8, !tbaa !62
  %i.ca = add i32 %i.bv, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = load i32, ptr %i.bh, align 4, !tbaa !86
  %i.cc = zext i32 %i.cb to i64
  %i.cd = icmp samesign ult i64 %indvars.iv.next, %i.cc
  br i1 %i.cd, label %bb.c, label %.loopexit, !llvm.loop !122

bb.f:                                             ; preds = %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ce = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  call void @_ZN10polynomial7manager7factorsC1ERS0_(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
  %i.cf = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZN10polynomial13factor_paramsC1Ev(ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN10polynomial7manager6factorEPKNS_10polynomialERNS0_7factorsERKNS_13factor_paramsE(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.cg = load ptr, ptr %3, align 8, !tbaa !125   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZNK10polynomial7manager7factors16distinct_factorsEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !26
  br label %_ZNK10polynomial7manager7factors16distinct_factorsEv.exit

_ZNK10polynomial7manager7factors16distinct_factorsEv.exit: ; preds = %bb.i, %bb.h
  %.0.i.i = phi i32 [ %i.cj, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 %.0.i.i, ptr %i.cl, align 4, !tbaa !86
  %i.cm = load ptr, ptr %i.aj, align 8, !tbaa !79, !nonnull !60, !align !61
  %i.cn = zext i32 %.0.i.i to i64                 ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = invoke noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.cm, i64 noundef %i.co)
          to label %bb.j unwind label %6

bb.j:                                             ; preds = %_ZNK10polynomial7manager7factors16distinct_factorsEv.exit
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !87
  %.not58 = icmp eq i32 %.0.i.i, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.l

._crit_edge:                                      ; preds = %bb.s, %bb.j
  call void @_ZN10polynomial7manager7factorsD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.loopexit

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.x

6:                                                ; preds = %_ZNK10polynomial7manager7factors16distinct_factorsEv.exit
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %.lr.ph56, %bb.s
  %indvars.iv60 = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next61, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.cu = trunc nuw i64 %indvars.iv60 to i32
  invoke void @_ZNK10polynomial7manager7factorsixEj(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %3, i32 noundef %i.cu)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.cv = load ptr, ptr %5, align 8, !tbaa !90
  %i.cw = invoke noundef ptr @_ZN10polynomial5cache3imp9mk_uniqueEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.cv)
          to label %bb.n unwind label %bb.u       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.cx = load ptr, ptr %5, align 8, !tbaa !90    ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i48, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !91, !nonnull !60, !align !61
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull %i.cx)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #17
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.db = load ptr, ptr %2, align 8, !tbaa !65, !nonnull !60, !align !61
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef %i.cw)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !66  ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !26 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.dc, i64 -8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !26
  %i.di = icmp eq i32 %i.df, %i.dh
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %.noexc
  invoke void @_ZN6vectorIPN10polynomial10polynomialELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc52 unwind label %bb.w

.noexc52:                                         ; preds = %bb.r
  %.pre.i.i49 = load ptr, ptr %i.b, align 8, !tbaa !66 ; 2 uses
  %.phi.trans.insert.i.i50 = getelementptr inbounds i8, ptr %.pre.i.i49, i64 -4
  %.pre2.i.i51 = load i32, ptr %.phi.trans.insert.i.i50, align 4, !tbaa !26
  br label %bb.s

bb.s:                                             ; preds = %.noexc52, %bb.q
  %i.dj = phi i32 [ %.pre2.i.i51, %.noexc52 ], [ %i.df, %bb.q ] ; 2 uses
  %i.dk = phi ptr [ %.pre.i.i49, %.noexc52 ], [ %i.dc, %bb.q ] ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.dm = zext i32 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dm
  store ptr %i.cw, ptr %i.dn, align 8, !tbaa !62
  %i.do = add i32 %i.dj, 1
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !26
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !87
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv60
  store ptr %i.cw, ptr %i.ds, align 8, !tbaa !62
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next61, %i.cn
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !123

bb.t:                                             ; preds = %bb.l
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.m
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.du, %bb.u ], [ %i.dt, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.x

bb.w:                                             ; preds = %bb.r, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %6, %bb.w, %bb.v, %bb.k
  %.pn35.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.k ], [ %7, %6 ], [ %i.dv, %bb.w ], [ %.pn, %bb.v ]
  call void @_ZN10polynomial7manager7factorsD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  resume { ptr, i32 } %.pn35.pn.pn

.loopexit:                                        ; preds = %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE9push_backEPS1_.exit, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit47, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10polynomial5cache5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_Z7deallocIN10polynomial5cache3impEEvPT_.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59, !nonnull !60, !align !61
  tail call void @_ZN10polynomial5cache3impD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.a) #16
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 248) ; 2 uses
  tail call void @_ZN10polynomial5cache3impC2ERNS_7managerE(ptr noundef nonnull align 8 dereferenceable(248) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  store ptr %i.c, ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare noundef nonnull align 8 dereferenceable(520) ptr @_ZNK10polynomial7manager9allocatorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIcLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIcLb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIcLb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorIcLb0EjE7destroyEv.exit:                ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIPN10polynomial10polynomialELb0EjED2Ev.exit, label %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit

_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread6, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit, %.noexc
  %.06.i = phi ptr [ %i.k, %.noexc ], [ %i.b, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit ] ; 2 uses
  %i.i = load ptr, ptr %.06.i, align 8, !tbaa !62
  %i.j = load ptr, ptr %0, align 8, !tbaa !65, !nonnull !60, !align !61
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.i)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.h
  br i1 %i.l, label %.lr.ph.i, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit, !llvm.loop !0

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit: ; preds = %.noexc
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN6vectorIPN10polynomial10polynomialELb0EjED2Ev.exit, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread6

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread6: ; preds = %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit
  %i.m = phi ptr [ %.pre, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit ], [ %i.b, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit ]
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.n)
          to label %_ZN6vectorIPN10polynomial10polynomialELb0EjED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread6
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #17
  unreachable

_ZN6vectorIPN10polynomial10polynomialELb0EjED2Ev.exit: ; preds = %bb.a, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread6
  ret void

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10chashtableIPN10polynomial12factor_entryENS1_9hash_procENS1_7eq_procEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN10chashtableIPN10polynomial12factor_entryENS1_9hash_procENS1_7eq_procEE12delete_tableEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN10chashtableIPN10polynomial12factor_entryENS1_9hash_procENS1_7eq_procEE12delete_tableEv.exit unwind label %bb.c

_ZN10chashtableIPN10polynomial12factor_entryENS1_9hash_procENS1_7eq_procEE12delete_tableEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE12delete_tableEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE12delete_tableEv.exit unwind label %bb.c

_ZN10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE12delete_tableEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10chashtableIPN10polynomial10polynomialENS0_14poly_hash_procENS0_12poly_eq_procEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN10chashtableIPN10polynomial10polynomialENS0_14poly_hash_procENS0_12poly_eq_procEE12delete_tableEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN10chashtableIPN10polynomial10polynomialENS0_14poly_hash_procENS0_12poly_eq_procEE12delete_tableEv.exit unwind label %bb.c

_ZN10chashtableIPN10polynomial10polynomialENS0_14poly_hash_procENS0_12poly_eq_procEE12delete_tableEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #17
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #1

declare void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN10chashtableIPN10polynomial10polynomialENS0_14poly_hash_procENS0_12poly_eq_procEE19insert_if_not_thereERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK10chashtableIPN10polynomial10polynomialENS0_14poly_hash_procENS0_12poly_eq_procEE14has_free_cellsEv.exit, label %_ZNK10chashtableIPN10polynomial10polynomialENS0_14poly_hash_procENS0_12poly_eq_procEE14has_free_cellsEv.exit.thread

_ZNK10chashtableIPN10polynomial10polynomialENS0_14poly_hash_procENS0_12poly_eq_procEE14has_free_cellsEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
