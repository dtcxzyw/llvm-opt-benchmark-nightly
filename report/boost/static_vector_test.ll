Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 207
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 313
begin_hunk_0_@_Z14test_insert_ndIiLm10EEvRKT_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %4, align 8, !tbaa !111, !nonnull !112, !noundef !112
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store i32 101, ptr %i.s, align 4, !tbaa !41
  %i.t = add i64 %i.p, 1
  store i64 %i.t, ptr %i.f, align 8, !tbaa !109
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.u = load ptr, ptr %4, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.p
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.v, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc88.1 unwind label %bb.n

.noexc88.1:                                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1

_ZN5boost9container6vectorIivvE9push_backEOi.exit.1: ; preds = %.noexc88.1, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.w = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.e unwind label %bb.o       ; 5 uses

bb.e:                                             ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 101, ptr %i.x, align 4, !tbaa !41
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !106
  store ptr %i.d, ptr %i.w, align 8, !tbaa !105
  store ptr %i.w, ptr %i.e, align 8, !tbaa !106
  store ptr %i.w, ptr %i.y, align 8, !tbaa !105
  %i.aa = load i64, ptr %5, align 8, !tbaa !114
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %5, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 2, ptr %i.ac, align 8, !tbaa !41
  store i64 3, ptr %i.b, align 8, !tbaa !95
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 102, ptr %i.ad, align 8, !tbaa !41
  store i64 3, ptr %i.c, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 102, ptr %i.a, align 4, !tbaa !41
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !109 ; 4 uses
  %i.af = load i64, ptr %i.g, align 8, !tbaa !110
  %.not.i87.2 = icmp eq i64 %i.ae, %i.af
  br i1 %.not.i87.2, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %4, align 8, !tbaa !111, !nonnull !112, !noundef !112
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ae
  store i32 102, ptr %i.ah, align 4, !tbaa !41
  %i.ai = add i64 %i.ae, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !109
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.aj = load ptr, ptr %4, align 8, !tbaa !111
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ae
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.ak, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc88.2 unwind label %bb.n

.noexc88.2:                                       ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2

_ZN5boost9container6vectorIivvE9push_backEOi.exit.2: ; preds = %.noexc88.2, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.al = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.h unwind label %bb.o       ; 5 uses

bb.h:                                             ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 102, ptr %i.am, align 4, !tbaa !41
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !106 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !106
  store ptr %i.d, ptr %i.al, align 8, !tbaa !105
  store ptr %i.al, ptr %i.e, align 8, !tbaa !106
  store ptr %i.al, ptr %i.an, align 8, !tbaa !105
  %i.ap = load i64, ptr %5, align 8, !tbaa !114
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %5, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 3, ptr %i.ar, align 4, !tbaa !41
  store i64 4, ptr %i.b, align 8, !tbaa !95
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 103, ptr %i.as, align 4, !tbaa !41
  store i64 4, ptr %i.c, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 103, ptr %i.a, align 4, !tbaa !41
  %i.at = load i64, ptr %i.f, align 8, !tbaa !109 ; 4 uses
  %i.au = load i64, ptr %i.g, align 8, !tbaa !110
  %.not.i87.3 = icmp eq i64 %i.at, %i.au
  br i1 %.not.i87.3, label %bb.j, label %bb.i, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %4, align 8, !tbaa !111, !nonnull !112, !noundef !112
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.at
  store i32 103, ptr %i.aw, align 4, !tbaa !41
  %i.ax = add i64 %i.at, 1
  store i64 %i.ax, ptr %i.f, align 8, !tbaa !109
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.3

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.ay = load ptr, ptr %4, align 8, !tbaa !111
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.az, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc88.3 unwind label %bb.n

.noexc88.3:                                       ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.3

_ZN5boost9container6vectorIivvE9push_backEOi.exit.3: ; preds = %.noexc88.3, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ba = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.k unwind label %bb.o       ; 5 uses

bb.k:                                             ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 103, ptr %i.bb, align 4, !tbaa !41
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !106 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !106
  store ptr %i.d, ptr %i.ba, align 8, !tbaa !105
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !106
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !105
  %i.be = load i64, ptr %5, align 8, !tbaa !114
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %5, align 8, !tbaa !114
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 4, ptr %i.bg, align 8, !tbaa !41
  store i64 5, ptr %i.b, align 8, !tbaa !95
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 104, ptr %i.bh, align 8, !tbaa !41
  store i64 5, ptr %i.c, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 104, ptr %i.a, align 4, !tbaa !41
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !109 ; 4 uses
  %i.bj = load i64, ptr %i.g, align 8, !tbaa !110
  %.not.i87.4 = icmp eq i64 %i.bi, %i.bj
  br i1 %.not.i87.4, label %bb.m, label %bb.l, !prof !42

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %4, align 8, !tbaa !111, !nonnull !112, !noundef !112
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  store i32 104, ptr %i.bl, align 4, !tbaa !41
  %i.bm = add i64 %i.bi, 1
  store i64 %i.bm, ptr %i.f, align 8, !tbaa !109
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.4

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.bn = load ptr, ptr %4, align 8, !tbaa !111
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bi
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.bo, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc88.4 unwind label %bb.n

.noexc88.4:                                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.4

_ZN5boost9container6vectorIivvE9push_backEOi.exit.4: ; preds = %.noexc88.4, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.preheader135 unwind label %bb.o ; 5 uses

.preheader135:                                    ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i32 104, ptr %i.bq, align 4, !tbaa !41
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !106 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !106
  store ptr %i.d, ptr %i.bp, align 8, !tbaa !105
  store ptr %i.bp, ptr %i.e, align 8, !tbaa !106
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !105
  %i.bt = load i64, ptr %5, align 8, !tbaa !114
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %5, align 8, !tbaa !114
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.g, %bb.d, %bb.a
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ay

bb.o:                                             ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.4, %_ZN5boost9container6vectorIivvE9push_backEOi.exit.3, %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2, %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1, %_ZN5boost9container6vectorIivvE9push_backEOi.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.p:                                             ; preds = %._crit_edge140, %.preheader135
  %indvars.iv = phi i64 [ 5, %.preheader135 ], [ %indvars.iv.next, %._crit_edge140 ] ; 2 uses
  %.065141 = phi i64 [ 0, %.preheader135 ], [ %i.dc, %._crit_edge140 ] ; 7 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 20, i1 false)
  %.idx126 = shl nuw nsw i64 %.065141, 2          ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 %.idx126 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.065141, 5           ; 2 uses
  br i1 %.not.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = load i32, ptr %0, align 4, !tbaa !41, !noalias !691
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !41, !noalias !691
  store i64 6, ptr %i.bv, align 8, !tbaa !95, !noalias !691
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPiLb1EEERKi.exit

bb.r:                                             ; preds = %bb.p
  %gepdiff127 = sub nsw i64 20, %.idx126
  %i.cc = ashr exact i64 %gepdiff127, 2           ; 2 uses
  %i.cd = load i32, ptr %i.bx, align 8, !tbaa !41, !noalias !691
  store i32 %i.cd, ptr %i.bw, align 4, !tbaa !41, !noalias !691
  store i64 6, ptr %i.bv, align 8, !tbaa !95, !noalias !691
  %i.ce = add nsw i64 %i.cc, -1                   ; 2 uses
  %.not.i.i.i.i91 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i.i91, label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, label %bb.s, !prof !42

bb.s:                                             ; preds = %bb.r
  %i.cf = sub nsw i64 1, %i.cc                    ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cf
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.cf
  %i.ci = shl nsw i64 %i.ce, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cg, ptr nonnull align 4 %i.ch, i64 %i.ci, i1 false), !noalias !691
  br label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i

_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i: ; preds = %bb.s, %bb.r
  %i.cj = load i32, ptr %0, align 4, !tbaa !41, !noalias !691
  store i32 %i.cj, ptr %i.ca, align 4, !tbaa !41, !noalias !691
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPiLb1EEERKi.exit

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPiLb1EEERKi.exit: ; preds = %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, %bb.q
  %i.ck = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 384, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIiLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPiLb1EEERKi.exit
  %i.cl = load i64, ptr %i.bv, align 8, !tbaa !95
  %i.cm = icmp eq i64 %i.cl, 6
  %i.cn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.1, i32 noundef 385, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIiLm10EEvRKT_, i1 noundef zeroext %i.cm)
          to label %.preheader134 unwind label %bb.v ; 0 uses

.preheader134:                                    ; preds = %bb.t
  %.not = icmp eq i64 %.065141, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.w, %.preheader134
  %i.co = load i32, ptr %i.ca, align 4, !tbaa !41
  %i.cp = load i32, ptr %0, align 4, !tbaa !41
  %i.cq = icmp eq i32 %i.co, %i.cp
  %i.cr = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1, i32 noundef 388, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIiLm10EEvRKT_, i1 noundef zeroext %i.cq)
          to label %.preheader133 unwind label %bb.v ; 0 uses

.preheader133:                                    ; preds = %._crit_edge
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.065141
  br i1 %.not.i.i.i, label %._crit_edge140.thread, label %.lr.ph139

._crit_edge140.thread:                            ; preds = %.preheader133
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 28
  br label %bb.ac

.lr.ph139:                                        ; preds = %.preheader133
  %i.cs = trunc nuw nsw i64 %.065141 to i32
  br label %bb.y

bb.u:                                             ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPiLb1EEERKi.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.v:                                             ; preds = %._crit_edge, %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph:                                           ; preds = %.preheader134, %bb.w
  %.064137 = phi i64 [ %i.da, %bb.w ], [ 0, %.preheader134 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.064137
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !41
  %i.cx = trunc nuw nsw i64 %.064137 to i32
  %i.cy = icmp eq i32 %i.cw, %i.cx
  %i.cz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 387, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIiLm10EEvRKT_, i1 noundef zeroext %i.cy)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %.lr.ph
  %i.da = add nuw nsw i64 %.064137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.da, %.065141
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !674

bb.x:                                             ; preds = %.lr.ph
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

._crit_edge140:                                   ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.dc = add nuw nsw i64 %.065141, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br label %bb.p, !llvm.loop !675

bb.y:                                             ; preds = %.lr.ph139, %bb.z
  %.063138 = phi i64 [ 0, %.lr.ph139 ], [ %i.dj, %bb.z ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.063138
  %i.dd = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !41
  %i.df = trunc nuw nsw i64 %.063138 to i32
  %i.dg = add nuw nsw i32 %i.df, %i.cs
  %i.dh = icmp eq i32 %i.de, %i.dg
  %i.di = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, i32 noundef 390, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIiLm10EEvRKT_, i1 noundef zeroext %i.dh)
          to label %bb.z unwind label %bb.aa      ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.dj = add nuw nsw i64 %.063138, 1             ; 2 uses
  %exitcond158.not = icmp eq i64 %i.dj, %umax
  br i1 %exitcond158.not, label %._crit_edge140, label %bb.y, !llvm.loop !676

bb.aa:                                            ; preds = %bb.y
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %bb.v, %bb.x, %bb.aa
  %.pn76.pn = phi { ptr, i32 } [ %i.ct, %bb.u ], [ %i.db, %bb.x ], [ %i.dk, %bb.aa ], [ %i.cu, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ay

bb.ac:                                            ; preds = %._crit_edge151, %._crit_edge140.thread
  %indvars.iv162 = phi i64 [ 5, %._crit_edge140.thread ], [ %indvars.iv.next163, %._crit_edge151 ] ; 2 uses
  %.062152 = phi i64 [ 0, %._crit_edge140.thread ], [ %i.fv, %._crit_edge151 ] ; 8 uses
  %umax164 = call i64 @llvm.umax.i64(i64 %indvars.iv162, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i64 5, ptr %8, align 8, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 20, i1 false)
  %.idx123 = shl nuw nsw i64 %.062152, 2          ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 %.idx123 ; 7 uses
  %i.dm = icmp eq i64 %.062152, 5                 ; 2 uses
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.i, label %bb.ad

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ac
  %.pre.i.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !41, !noalias !692 ; 3 uses
  store i32 %.pre.i.i.i.i.i.i, ptr %9, align 4, !tbaa !41, !noalias !692
  store i32 %.pre.i.i.i.i.i.i, ptr %11, align 8, !tbaa !41, !noalias !692
  store i32 %.pre.i.i.i.i.i.i, ptr %12, align 4, !tbaa !41, !noalias !692
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %gepdiff = sub nsw i64 20, %.idx123             ; 2 uses
  %i.dn = ashr exact i64 %gepdiff, 2              ; 6 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.dn, 3
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %.not.i.i10.i.i.i.i = icmp eq i64 %.062152, 2
  br i1 %.not.i.i10.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i, label %bb.af, !prof !42

bb.af:                                            ; preds = %bb.ae
  %gepdiff124 = sub nsw i64 8, %.idx123           ; 2 uses
  %i.do = ashr exact i64 %gepdiff124, 2
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = getelementptr inbounds [4 x i8], ptr %9, i64 %i.dp
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dq, ptr nonnull align 4 %i.dl, i64 %gepdiff124, i1 false), !noalias !692
  br label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %bb.af, %bb.ae
  %.pre.i.i12.i.i.i.i = load i32, ptr %0, align 4, !tbaa !41, !noalias !692 ; 3 uses
  store i32 %.pre.i.i12.i.i.i.i, ptr %i.dl, align 4, !tbaa !41, !noalias !692
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %.pre.i.i12.i.i.i.i, ptr %i.dr, align 4, !tbaa !41, !noalias !692
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 %.pre.i.i12.i.i.i.i, ptr %i.ds, align 4, !tbaa !41, !noalias !692
  br label %.loopexit

.lr.ph.i39.i.i.i.i.i:                             ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dt, ptr nonnull align 4 %i.dl, i64 %gepdiff, i1 false), !noalias !692
  %.pre.i40.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !41, !noalias !692 ; 18 uses
  %i.du = add nsw i64 %i.dn, -1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i39.i.i.i.i.i
  %.07.i41.i.i.i.i.i.prol = phi i64 [ %i.dn, %.lr.ph.i39.i.i.i.i.i ], [ %i.dv, %bb.ag ]
  %.046.i42.i.i.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i39.i.i.i.i.i ], [ %i.dw, %bb.ag ] ; 2 uses
  %prol.iter = phi i64 [ 0, %.lr.ph.i39.i.i.i.i.i ], [ %prol.iter.next, %bb.ag ]
  %i.dv = add i64 %.07.i41.i.i.i.i.i.prol, -1     ; 2 uses
  store i32 %.pre.i40.i.i.i.i.i, ptr %.046.i42.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !692
  %i.dw = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.dn
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %bb.ag, !llvm.loop !681

.prol.loopexit:                                   ; preds = %bb.ag
  %i.dx = icmp ult i64 %i.du, 7
  br i1 %i.dx, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit44.i.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i.new

.lr.ph.i39.i.i.i.i.i.new:                         ; preds = %.prol.loopexit, %.lr.ph.i39.i.i.i.i.i.new
  %.07.i41.i.i.i.i.i = phi i64 [ %i.ef, %.lr.ph.i39.i.i.i.i.i.new ], [ %i.dv, %.prol.loopexit ]
  %.046.i42.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i39.i.i.i.i.i.new ], [ %i.dw, %.prol.loopexit ] ; 9 uses
  store i32 %.pre.i40.i.i.i.i.i, ptr %.046.i42.i.i.i.i.i, align 4, !tbaa !41, !noalias !692
  %i.dy = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 4
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.dy, align 4, !tbaa !41, !noalias !692
  %i.dz = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 8
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.dz, align 4, !tbaa !41, !noalias !692
  %i.ea = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 12
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.ea, align 4, !tbaa !41, !noalias !692
  %i.eb = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 16
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.eb, align 4, !tbaa !41, !noalias !692
  %i.ec = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 20
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.ec, align 4, !tbaa !41, !noalias !692
  %i.ed = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 24
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.ed, align 4, !tbaa !41, !noalias !692
  %i.ee = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 28
  %i.ef = add i64 %.07.i41.i.i.i.i.i, -8          ; 2 uses
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.ee, align 4, !tbaa !41, !noalias !692
  %i.eg = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 32
  %.not.i43.i.i.i.i.i.7 = icmp eq i64 %i.ef, 0
  br i1 %.not.i43.i.i.i.i.i.7, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit44.i.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i.new, !llvm.loop !682

_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit44.i.i.i.i.i: ; preds = %.lr.ph.i39.i.i.i.i.i.new, %.prol.loopexit
  %i.eh = sub nuw nsw i64 3, %i.dn                ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit44.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.prol = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.eh, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit44.i.i.i.i.i ]
  %.01416.i.i.i.i.i.i.i.prol = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %9, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit44.i.i.i.i.i ] ; 2 uses
  %prol.iter204 = phi i64 [ %prol.iter204.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit44.i.i.i.i.i ]
  %i.ei = add nsw i64 %.017.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  store i32 %.pre.i40.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !692
  %i.ej = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter204.next = add i64 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i64 %prol.iter204.next, %i.eh
  br i1 %prol.iter204.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !683

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol
  %i.ek = icmp ult i64 %i.dn, 3
  br i1 %i.ek, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.es, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i.i.i = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i32 %.pre.i40.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !692
  %i.el = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 4
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.el, align 4, !tbaa !41, !noalias !692
  %i.em = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.em, align 4, !tbaa !41, !noalias !692
  %i.en = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 12
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.en, align 4, !tbaa !41, !noalias !692
  %i.eo = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 16
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.eo, align 4, !tbaa !41, !noalias !692
  %i.ep = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 20
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.ep, align 4, !tbaa !41, !noalias !692
  %i.eq = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 24
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.eq, align 4, !tbaa !41, !noalias !692
  %i.er = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 28
  %i.es = add nsw i64 %.017.i.i.i.i.i.i.i, -8     ; 2 uses
  store i32 %.pre.i40.i.i.i.i.i, ptr %i.er, align 4, !tbaa !41, !noalias !692
  %i.et = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 32
  %.not.i.i45.i.i.i.i.i.7 = icmp eq i64 %i.es, 0
  br i1 %.not.i.i45.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i11.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.eu = load i64, ptr %8, align 8, !tbaa !93, !noalias !692
  %i.ev = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 400, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIiLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.ah unwind label %bb.ai     ; 0 uses

bb.ah:                                            ; preds = %.loopexit
  %i.ew = icmp eq i64 %i.eu, 5
  %i.ex = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 401, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIiLm10EEvRKT_, i1 noundef zeroext %i.ew)
          to label %.preheader129 unwind label %bb.aj ; 0 uses

.preheader129:                                    ; preds = %bb.ah
  %.not154 = icmp eq i64 %.062152, 0
  br i1 %.not154, label %.preheader128, label %.lr.ph143

.preheader128:                                    ; preds = %bb.ak, %.preheader129
  %invariant.gep144 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.062152 ; 4 uses
  %i.ey = load i32, ptr %invariant.gep144, align 4, !tbaa !41
  %i.ez = load i32, ptr %0, align 4, !tbaa !41
  %i.fa = icmp eq i32 %i.ey, %i.ez
  %i.fb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIiLm10EEvRKT_, i1 noundef zeroext %i.fa)
          to label %bb.am unwind label %bb.ao     ; 0 uses

bb.ai:                                            ; preds = %.loopexit
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aj:                                            ; preds = %bb.ah
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.lr.ph143:                                        ; preds = %.preheader129, %bb.ak
  %.061142 = phi i64 [ %i.fj, %bb.ak ], [ 0, %.preheader129 ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.061142
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !41
  %i.fg = trunc nuw nsw i64 %.061142 to i32
  %i.fh = icmp eq i32 %i.ff, %i.fg
  %i.fi = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 403, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIiLm10EEvRKT_, i1 noundef zeroext %i.fh)
          to label %bb.ak unwind label %bb.al     ; 0 uses

bb.ak:                                            ; preds = %.lr.ph143
  %i.fj = add nuw nsw i64 %.061142, 1             ; 2 uses
  %exitcond160.not = icmp eq i64 %i.fj, %.062152
  br i1 %exitcond160.not, label %.preheader128, label %.lr.ph143, !llvm.loop !684

bb.al:                                            ; preds = %.lr.ph143
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.lr.ph150:                                        ; preds = %.preheader
  %i.fl = trunc nuw nsw i64 %.062152 to i32
  br label %bb.ap

bb.am:                                            ; preds = %.preheader128
  %gep145.1 = getelementptr inbounds nuw i8, ptr %invariant.gep144, i64 4
  %i.fm = load i32, ptr %gep145.1, align 4, !tbaa !41
  %i.fn = load i32, ptr %0, align 4, !tbaa !41
  %i.fo = icmp eq i32 %i.fm, %i.fn
  %i.fp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIiLm10EEvRKT_, i1 noundef zeroext %i.fo)
          to label %bb.an unwind label %bb.ao     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %gep145.2 = getelementptr inbounds nuw i8, ptr %invariant.gep144, i64 8
  %i.fq = load i32, ptr %gep145.2, align 4, !tbaa !41
  %i.fr = load i32, ptr %0, align 4, !tbaa !41
  %i.fs = icmp eq i32 %i.fq, %i.fr
  %i.ft = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIiLm10EEvRKT_, i1 noundef zeroext %i.fs)
          to label %.preheader unwind label %bb.ao ; 0 uses

.preheader:                                       ; preds = %bb.an
  br i1 %i.dm, label %._crit_edge151.thread, label %.lr.ph150

._crit_edge151.thread:                            ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @_Z11test_insertIiLm10EN5boost9container13static_vectorIiLm10EvEES3_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.at unwind label %bb.ax

bb.ao:                                            ; preds = %bb.an, %bb.am, %.preheader128
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

._crit_edge151:                                   ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.fv = add nuw nsw i64 %.062152, 1
  %indvars.iv.next163 = add nsw i64 %indvars.iv162, -1
  br label %bb.ac, !llvm.loop !685

bb.ap:                                            ; preds = %.lr.ph150, %bb.aq
  %.0149 = phi i64 [ 0, %.lr.ph150 ], [ %i.gc, %bb.aq ] ; 3 uses
  %gep148 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep144, i64 %.0149
  %i.fw = getelementptr inbounds nuw i8, ptr %gep148, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !41
  %i.fy = trunc nuw nsw i64 %.0149 to i32
  %i.fz = add nuw nsw i32 %i.fy, %i.fl
  %i.ga = icmp eq i32 %i.fx, %i.fz
  %i.gb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 407, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIiLm10EEvRKT_, i1 noundef zeroext %i.ga)
          to label %bb.aq unwind label %bb.ar     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.gc = add nuw nsw i64 %.0149, 1               ; 2 uses
  %exitcond165.not = icmp eq i64 %i.gc, %umax164
  br i1 %exitcond165.not, label %._crit_edge151, label %bb.ap, !llvm.loop !686

bb.ar:                                            ; preds = %bb.ap
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %bb.ai, %bb.aj, %bb.al, %bb.ao, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %i.fc, %bb.ai ], [ %i.fk, %bb.al ], [ %i.fu, %bb.ao ], [ %i.gd, %bb.ar ], [ %i.fd, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ay

bb.at:                                            ; preds = %._crit_edge151.thread
  invoke void @_Z11test_insertIiLm10EN5boost9container13static_vectorIiLm10EvEENS1_6vectorIivvEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  invoke void @_Z11test_insertIiLm10EN5boost9container13static_vectorIiLm10EvEENS1_4listIivEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ge = load ptr, ptr %i.d, align 8, !tbaa !105, !noalias !693 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.ge, %i.d
  br i1 %.not8.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.av, %.lr.ph.i.i.i
  %.sroa.04.09.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i ], [ %i.ge, %bb.av ] ; 2 uses
  %i.gf = load ptr, ptr %.sroa.04.09.i.i.i, align 8, !tbaa !105 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i, i64 noundef 24) #25
  %.not.i.i.i99 = icmp eq ptr %i.gf, %i.d
  br i1 %.not.i.i.i99, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !6

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.gg = load i64, ptr %i.g, align 8, !tbaa !110 ; 2 uses
  %.not.i.i100 = icmp eq i64 %i.gg, 0
  br i1 %.not.i.i100, label %_ZN5boost9container6vectorIivvED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %i.gh = load ptr, ptr %4, align 8, !tbaa !115
  %i.gi = shl i64 %i.gg, 2
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gi) #25
  br label %_ZN5boost9container6vectorIivvED2Ev.exit

_ZN5boost9container6vectorIivvED2Ev.exit:         ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.ax:                                            ; preds = %bb.au, %bb.at, %._crit_edge151.thread
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %bb.n, %bb.o, %bb.ax, %bb.as, %bb.ab
  %.pn79.pn = phi { ptr, i32 } [ %i.gj, %bb.ax ], [ %.pn76.pn, %bb.ab ], [ %.pn.pn, %bb.as ], [ %i.bz, %bb.o ], [ %i.by, %bb.n ]
  %i.gk = load ptr, ptr %i.d, align 8, !tbaa !105, !noalias !694 ; 2 uses
  %.not8.i.i.i101 = icmp eq ptr %i.gk, %i.d
  br i1 %.not8.i.i.i101, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit105, label %.lr.ph.i.i.i102

.lr.ph.i.i.i102:                                  ; preds = %bb.ay, %.lr.ph.i.i.i102
  %.sroa.04.09.i.i.i103 = phi ptr [ %i.gl, %.lr.ph.i.i.i102 ], [ %i.gk, %bb.ay ] ; 2 uses
  %i.gl = load ptr, ptr %.sroa.04.09.i.i.i103, align 8, !tbaa !105 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i103, i64 noundef 24) #25
  %.not.i.i.i104 = icmp eq ptr %i.gl, %i.d
  br i1 %.not.i.i.i104, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit105, label %.lr.ph.i.i.i102, !llvm.loop !6

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit105: ; preds = %.lr.ph.i.i.i102, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.gm = load i64, ptr %i.g, align 8, !tbaa !110 ; 2 uses
  %.not.i.i106 = icmp eq i64 %i.gm, 0
  br i1 %.not.i.i106, label %_ZN5boost9container6vectorIivvED2Ev.exit107, label %bb.az

bb.az:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit105
  %i.gn = load ptr, ptr %4, align 8, !tbaa !115
  %i.go = shl i64 %i.gm, 2
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.go) #25
  br label %_ZN5boost9container6vectorIivvED2Ev.exit107

_ZN5boost9container6vectorIivvED2Ev.exit107:      ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit105, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn79.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z14test_insert_ndI8value_ndLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::vec_iterator.53", align 8 ; 15 uses
  %2 = alloca %"class.boost::container::static_vector.43", align 8 ; 14 uses
  %3 = alloca %"class.boost::container::static_vector.43", align 8 ; 10 uses
  %4 = alloca %"class.boost::container::vector.79", align 8 ; 22 uses
  %5 = alloca %"class.boost::container::list.83", align 8 ; 17 uses
  %6 = alloca %class.value_nd, align 4            ; 21 uses
  %7 = alloca %"class.boost::container::static_vector.43", align 8 ; 11 uses
  %8 = alloca %"class.boost::container::static_vector.43", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 14 uses
  store i64 0, ptr %5, align 8
  store ptr %i.c, ptr %i.c, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store i32 0, ptr %2, align 8, !tbaa !41
  store i64 1, ptr %i.a, align 8, !tbaa !120
  store i32 100, ptr %3, align 8, !tbaa !41
  store i64 1, ptr %i.b, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 100, ptr %6, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  invoke void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.53") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit unwind label %bb.n

_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.b unwind label %bb.o       ; 5 uses

bb.b:                                             ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 100, ptr %i.h, align 4, !tbaa !41
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !106
  store ptr %i.c, ptr %i.g, align 8, !tbaa !105
  store ptr %i.g, ptr %i.d, align 8, !tbaa !106
  store ptr %i.g, ptr %i.i, align 8, !tbaa !105
  %i.k = load i64, ptr %5, align 8, !tbaa !114
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %5, align 8, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.m, align 4, !tbaa !41
  store i64 2, ptr %i.a, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 101, ptr %i.n, align 4, !tbaa !41
  store i64 2, ptr %i.b, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 101, ptr %6, align 4, !tbaa !77
  %i.o = load i64, ptr %i.e, align 8, !tbaa !124  ; 4 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !125
  %.not.i87.1 = icmp eq i64 %i.o, %i.p
  br i1 %.not.i87.1, label %bb.d, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %4, align 8, !tbaa !126, !nonnull !112, !noundef !112
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store i32 101, ptr %i.r, align 4, !tbaa !41
  %i.s = add i64 %i.o, 1
  store i64 %i.s, ptr %i.e, align 8, !tbaa !124
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.1

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.t = load ptr, ptr %4, align 8, !tbaa !126
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.o
  invoke void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.53") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.u, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.1 unwind label %bb.n

.noexc88.1:                                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.1

_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.1: ; preds = %.noexc88.1, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.v = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.e unwind label %bb.o       ; 5 uses

bb.e:                                             ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.1
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 101, ptr %i.w, align 4, !tbaa !41
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !106
  store ptr %i.c, ptr %i.v, align 8, !tbaa !105
  store ptr %i.v, ptr %i.d, align 8, !tbaa !106
  store ptr %i.v, ptr %i.x, align 8, !tbaa !105
  %i.z = load i64, ptr %5, align 8, !tbaa !114
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %5, align 8, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 2, ptr %i.ab, align 8, !tbaa !41
  store i64 3, ptr %i.a, align 8, !tbaa !120
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 102, ptr %i.ac, align 8, !tbaa !41
  store i64 3, ptr %i.b, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 102, ptr %6, align 4, !tbaa !77
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !124 ; 4 uses
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !125
  %.not.i87.2 = icmp eq i64 %i.ad, %i.ae
  br i1 %.not.i87.2, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %4, align 8, !tbaa !126, !nonnull !112, !noundef !112
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ad
  store i32 102, ptr %i.ag, align 4, !tbaa !41
  %i.ah = add i64 %i.ad, 1
  store i64 %i.ah, ptr %i.e, align 8, !tbaa !124
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.2

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.ai = load ptr, ptr %4, align 8, !tbaa !126
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ad
  invoke void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.53") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.aj, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.2 unwind label %bb.n

.noexc88.2:                                       ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.2

_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.2: ; preds = %.noexc88.2, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ak = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.h unwind label %bb.o       ; 5 uses

bb.h:                                             ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 102, ptr %i.al, align 4, !tbaa !41
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !106
  store ptr %i.c, ptr %i.ak, align 8, !tbaa !105
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !106
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !105
  %i.ao = load i64, ptr %5, align 8, !tbaa !114
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %5, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 3, ptr %i.aq, align 4, !tbaa !41
  store i64 4, ptr %i.a, align 8, !tbaa !120
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 103, ptr %i.ar, align 4, !tbaa !41
  store i64 4, ptr %i.b, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 103, ptr %6, align 4, !tbaa !77
  %i.as = load i64, ptr %i.e, align 8, !tbaa !124 ; 4 uses
  %i.at = load i64, ptr %i.f, align 8, !tbaa !125
  %.not.i87.3 = icmp eq i64 %i.as, %i.at
  br i1 %.not.i87.3, label %bb.j, label %bb.i, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %4, align 8, !tbaa !126, !nonnull !112, !noundef !112
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  store i32 103, ptr %i.av, align 4, !tbaa !41
  %i.aw = add i64 %i.as, 1
  store i64 %i.aw, ptr %i.e, align 8, !tbaa !124
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.3

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.ax = load ptr, ptr %4, align 8, !tbaa !126
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.as
  invoke void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.53") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.ay, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.3 unwind label %bb.n

.noexc88.3:                                       ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.3

_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.3: ; preds = %.noexc88.3, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.az = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.k unwind label %bb.o       ; 5 uses

bb.k:                                             ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 103, ptr %i.ba, align 4, !tbaa !41
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !106
  store ptr %i.c, ptr %i.az, align 8, !tbaa !105
  store ptr %i.az, ptr %i.d, align 8, !tbaa !106
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !105
  %i.bd = load i64, ptr %5, align 8, !tbaa !114
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %5, align 8, !tbaa !114
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 4, ptr %i.bf, align 8, !tbaa !41
  store i64 5, ptr %i.a, align 8, !tbaa !120
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 104, ptr %i.bg, align 8, !tbaa !41
  store i64 5, ptr %i.b, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 104, ptr %6, align 4, !tbaa !77
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !124 ; 4 uses
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !125
  %.not.i87.4 = icmp eq i64 %i.bh, %i.bi
  br i1 %.not.i87.4, label %bb.m, label %bb.l, !prof !42

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %4, align 8, !tbaa !126, !nonnull !112, !noundef !112
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bh
  store i32 104, ptr %i.bk, align 4, !tbaa !41
  %i.bl = add i64 %i.bh, 1
  store i64 %i.bl, ptr %i.e, align 8, !tbaa !124
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.bm = load ptr, ptr %4, align 8, !tbaa !126
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bh
  invoke void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.53") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.bn, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.4 unwind label %bb.n

.noexc88.4:                                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4

_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4: ; preds = %.noexc88.4, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bo = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.preheader146 unwind label %bb.o ; 5 uses

.preheader146:                                    ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i32 104, ptr %i.bp, align 4, !tbaa !41
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !106
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !105
  store ptr %i.bo, ptr %i.d, align 8, !tbaa !106
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !105
  %i.bs = load i64, ptr %5, align 8, !tbaa !114
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %5, align 8, !tbaa !114
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.g, %bb.d, %bb.a
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.aw

bb.o:                                             ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.3, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.2, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.1, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread: ; preds = %._crit_edge151, %.preheader146
  %indvars.iv = phi i64 [ 5, %.preheader146 ], [ %indvars.iv.next, %._crit_edge151 ] ; 2 uses
  %.065152 = phi i64 [ 0, %.preheader146 ], [ %i.db, %._crit_edge151 ] ; 7 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false), !tbaa !41
  %.idx138 = shl nuw nsw i64 %.065152, 2          ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 %.idx138 ; 2 uses
  %.not.i.i.i91 = icmp eq i64 %.065152, 5         ; 2 uses
  br i1 %.not.i.i.i91, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread
  %i.ca = load i32, ptr %0, align 4, !tbaa !41, !noalias !717
  store i32 %i.ca, ptr %i.bv, align 4, !tbaa !41, !noalias !717
  store i64 6, ptr %i.bu, align 8, !tbaa !120, !noalias !717
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit

bb.q:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread
  %gepdiff139 = sub nsw i64 20, %.idx138
  %i.cb = ashr exact i64 %gepdiff139, 2           ; 2 uses
  %i.cc = load i32, ptr %i.bw, align 8, !tbaa !41, !noalias !717
  store i32 %i.cc, ptr %i.bv, align 4, !tbaa !41, !noalias !717
  store i64 6, ptr %i.bu, align 8, !tbaa !120, !noalias !717
  %i.cd = add nsw i64 %i.cb, -1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %bb.r, !prof !42

bb.r:                                             ; preds = %bb.q
  %i.ce = sub nsw i64 1, %i.cb                    ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ce
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ce
  %i.ch = shl nsw i64 %i.cd, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cf, ptr nonnull align 4 %i.cg, i64 %i.ch, i1 false), !noalias !717
  br label %_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i

_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i: ; preds = %bb.r, %bb.q
  %i.ci = load i32, ptr %0, align 4, !tbaa !41, !noalias !717
  store i32 %i.ci, ptr %i.bz, align 4, !tbaa !41, !noalias !717
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit: ; preds = %_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, %bb.p
  %i.cj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 384, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.t       ; 0 uses

bb.s:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit
  %i.ck = load i64, ptr %i.bu, align 8, !tbaa !120
  %i.cl = icmp eq i64 %i.ck, 6
  %i.cm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.1, i32 noundef 385, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.cl)
          to label %.preheader145 unwind label %bb.u ; 0 uses

.preheader145:                                    ; preds = %bb.s
  %.not = icmp eq i64 %.065152, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %.preheader145
  %i.cn = load i32, ptr %i.bz, align 4, !tbaa !77
  %i.co = load i32, ptr %0, align 4, !tbaa !77
  %i.cp = icmp eq i32 %i.cn, %i.co
  %i.cq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1, i32 noundef 388, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.cp)
          to label %.preheader144 unwind label %bb.u ; 0 uses

.preheader144:                                    ; preds = %._crit_edge
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.065152
  br i1 %.not.i.i.i91, label %._crit_edge151.thread, label %.lr.ph150

._crit_edge151.thread:                            ; preds = %.preheader144
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 4 uses
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 28
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 28
  br label %bb.ab

.lr.ph150:                                        ; preds = %.preheader144
  %i.cr = trunc nuw nsw i64 %.065152 to i32
  br label %bb.x

bb.t:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.u:                                             ; preds = %._crit_edge, %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.lr.ph:                                           ; preds = %.preheader145, %bb.v
  %.064148 = phi i64 [ %i.cz, %bb.v ], [ 0, %.preheader145 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.064148
  %i.cv = trunc nuw nsw i64 %.064148 to i32
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !77
  %i.cx = icmp eq i32 %i.cw, %i.cv
  %i.cy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 387, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.cx)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %.lr.ph
  %i.cz = add nuw nsw i64 %.064148, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cz, %.065152
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !699

bb.w:                                             ; preds = %.lr.ph
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

._crit_edge151:                                   ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.db = add nuw nsw i64 %.065152, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread, !llvm.loop !700

bb.x:                                             ; preds = %.lr.ph150, %bb.y
  %.063149 = phi i64 [ 0, %.lr.ph150 ], [ %i.di, %bb.y ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.063149
  %i.dc = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.dd = trunc nuw nsw i64 %.063149 to i32
  %i.de = add nuw nsw i32 %i.dd, %i.cr
  %i.df = load i32, ptr %i.dc, align 4, !tbaa !77
  %i.dg = icmp eq i32 %i.df, %i.de
  %i.dh = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, i32 noundef 390, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.dg)
          to label %bb.y unwind label %bb.z       ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.di = add nuw nsw i64 %.063149, 1             ; 2 uses
  %exitcond168.not = icmp eq i64 %i.di, %umax
  br i1 %exitcond168.not, label %._crit_edge151, label %bb.x, !llvm.loop !701

bb.z:                                             ; preds = %bb.x
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.t, %bb.u, %bb.w, %bb.z
  %.pn76.pn = phi { ptr, i32 } [ %i.cs, %bb.t ], [ %i.da, %bb.w ], [ %i.dj, %bb.z ], [ %i.ct, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aw

bb.ab:                                            ; preds = %._crit_edge162, %._crit_edge151.thread
  %indvars.iv172 = phi i64 [ 5, %._crit_edge151.thread ], [ %indvars.iv.next173, %._crit_edge162 ] ; 2 uses
  %.062163 = phi i64 [ 0, %._crit_edge151.thread ], [ %i.gz, %._crit_edge162 ] ; 9 uses
  %i.dk = shl i64 %.062163, 2
  %i.dl = sub i64 16, %i.dk                       ; 2 uses
  %i.dm = lshr exact i64 %i.dl, 2
  %i.dn = add nuw nsw i64 %i.dm, 1
  %umax174 = call i64 @llvm.umax.i64(i64 %indvars.iv172, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 5, ptr %9, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false), !tbaa !41
  %.idx135 = shl nuw nsw i64 %.062163, 2          ; 5 uses
  %.ptr209 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx135 ; 6 uses
  %i.do = icmp eq i64 %.062163, 5                 ; 2 uses
  br i1 %i.do, label %.lr.ph.i.i.i.i.i.i, label %bb.ac

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ab
  %.pre.i.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !41, !noalias !718 ; 3 uses
  store i32 %.pre.i.i.i.i.i.i, ptr %10, align 4, !tbaa !41, !noalias !718
  store i32 %.pre.i.i.i.i.i.i, ptr %14, align 8, !tbaa !41, !noalias !718
  store i32 %.pre.i.i.i.i.i.i, ptr %15, align 4, !tbaa !41, !noalias !718
  br label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %gepdiff = sub nsw i64 20, %.idx135
  %i.dp = ashr exact i64 %gepdiff, 2              ; 6 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.dp, 3
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i40.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.ac
  %i.dq = load <2 x i32>, ptr %11, align 8, !tbaa !41, !noalias !718
  store <2 x i32> %i.dq, ptr %10, align 4, !tbaa !41, !noalias !718
  %i.dr = load i32, ptr %12, align 8, !tbaa !41, !noalias !718
  store i32 %i.dr, ptr %13, align 4, !tbaa !41, !noalias !718
  %.not.i37.i.i.i.i.i = icmp eq i64 %.062163, 2
  br i1 %.not.i37.i.i.i.i.i, label %.lr.ph.i38.i.i.i.i.i, label %bb.ad, !prof !42

bb.ad:                                            ; preds = %.lr.ph.i.i10.i.i.i.i
  %gepdiff136 = sub nsw i64 8, %.idx135           ; 2 uses
  %i.ds = ashr exact i64 %gepdiff136, 2
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = getelementptr inbounds [4 x i8], ptr %10, i64 %i.dt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr nonnull align 4 %.ptr209, i64 %gepdiff136, i1 false), !noalias !718
  %.pre.i.i.i.pre = load i64, ptr %9, align 8, !tbaa !118, !noalias !718
  %i.dv = icmp eq i64 %.pre.i.i.i.pre, 5
  br label %.lr.ph.i38.i.i.i.i.i

.lr.ph.i38.i.i.i.i.i:                             ; preds = %bb.ad, %.lr.ph.i.i10.i.i.i.i
  %.pre.i.i.i = phi i1 [ %i.dv, %bb.ad ], [ true, %.lr.ph.i.i10.i.i.i.i ]
  %.pre.i.i12.i.i.i.i = load i32, ptr %0, align 4, !tbaa !41, !noalias !718 ; 3 uses
  store i32 %.pre.i.i12.i.i.i.i, ptr %.ptr209, align 4, !tbaa !41, !noalias !718
  %i.dw = getelementptr inbounds nuw i8, ptr %.ptr209, i64 4
  store i32 %.pre.i.i12.i.i.i.i, ptr %i.dw, align 4, !tbaa !41, !noalias !718
  %i.dx = getelementptr inbounds nuw i8, ptr %.ptr209, i64 8
  store i32 %.pre.i.i12.i.i.i.i, ptr %i.dx, align 4, !tbaa !41, !noalias !718
  br label %.loopexit

.lr.ph.i40.preheader.i.i.i.i.i:                   ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %.ptr209, i64 12 ; 2 uses
  %xtraiter = and i64 %i.dn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol

.lr.ph.i40.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i40.preheader.i.i.i.i.i, %.lr.ph.i40.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.idx.prol = phi i64 [ %.018.i.i.i.i.i.i.add.prol, %.lr.ph.i40.i.i.i.i.i.prol ], [ %.idx135, %.lr.ph.i40.preheader.i.i.i.i.i ] ; 2 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.ea, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.dy, %.lr.ph.i40.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i40.i.i.i.i.i.prol ], [ 0, %.lr.ph.i40.preheader.i.i.i.i.i ]
  %.018.i.i.i.i.i.i.ptr.prol = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx.prol
  %i.dz = load i32, ptr %.018.i.i.i.i.i.i.ptr.prol, align 4, !tbaa !41, !noalias !718
  store i32 %i.dz, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !718
  %.018.i.i.i.i.i.i.add.prol = add nuw nsw i64 %.018.i.i.i.i.i.i.idx.prol, 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol, !llvm.loop !706

.lr.ph.i40.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i40.i.i.i.i.i.prol, %.lr.ph.i40.preheader.i.i.i.i.i
  %.018.i.i.i.i.i.i.idx.unr = phi i64 [ %.idx135, %.lr.ph.i40.preheader.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.add.prol, %.lr.ph.i40.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.dy, %.lr.ph.i40.preheader.i.i.i.i.i ], [ %i.ea, %.lr.ph.i40.i.i.i.i.i.prol ]
  %i.eb = icmp ult i64 %i.dl, 28
  br i1 %i.eb, label %.lr.ph.i43.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i

.lr.ph.i40.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i
  %.018.i.i.i.i.i.i.idx = phi i64 [ %.018.i.i.i.i.i.i.add.7, %.lr.ph.i40.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.idx.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i40.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.018.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %i.ec = load i32, ptr %.018.i.i.i.i.i.i.ptr, align 4, !tbaa !41, !noalias !718
  store i32 %i.ec, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !718
  %i.ed = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ef = load i32, ptr %.018.i.i.i.i.i.i.ptr.1, align 4, !tbaa !41, !noalias !718
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !41, !noalias !718
  %i.eg = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ei = load i32, ptr %.018.i.i.i.i.i.i.ptr.2, align 4, !tbaa !41, !noalias !718
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !41, !noalias !718
  %i.ej = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.el = load i32, ptr %.018.i.i.i.i.i.i.ptr.3, align 4, !tbaa !41, !noalias !718
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !41, !noalias !718
  %i.em = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eo = load i32, ptr %.018.i.i.i.i.i.i.ptr.4, align 4, !tbaa !41, !noalias !718
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !41, !noalias !718
  %i.ep = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 20
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  %i.er = load i32, ptr %.018.i.i.i.i.i.i.ptr.5, align 4, !tbaa !41, !noalias !718
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !41, !noalias !718
  %i.es = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.eu = load i32, ptr %.018.i.i.i.i.i.i.ptr.6, align 4, !tbaa !41, !noalias !718
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !41, !noalias !718
  %i.ev = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 28
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.ew, i64 28
  %i.ex = load i32, ptr %.018.i.i.i.i.i.i.ptr.7, align 4, !tbaa !41, !noalias !718
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !41, !noalias !718
  %.018.i.i.i.i.i.i.add.7 = add nuw nsw i64 %.018.i.i.i.i.i.i.idx, 32
  %i.ey = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 32
  br label %.lr.ph.i40.i.i.i.i.i, !llvm.loop !13

.lr.ph.i43.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit
  %.pre.i44.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !41, !noalias !718 ; 18 uses
  %i.ez = add nsw i64 %i.dp, -1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i43.i.i.i.i.i
  %.07.i45.i.i.i.i.i.prol = phi i64 [ %i.dp, %.lr.ph.i43.i.i.i.i.i ], [ %i.fa, %bb.ae ]
  %.046.i46.i.i.i.i.i.prol = phi ptr [ %.ptr209, %.lr.ph.i43.i.i.i.i.i ], [ %i.fb, %bb.ae ] ; 2 uses
  %prol.iter217 = phi i64 [ 0, %.lr.ph.i43.i.i.i.i.i ], [ %prol.iter217.next, %bb.ae ]
  %i.fa = add i64 %.07.i45.i.i.i.i.i.prol, -1     ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.046.i46.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !718
  %i.fb = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter217.next = add i64 %prol.iter217, 1   ; 2 uses
  %prol.iter217.cmp.not = icmp eq i64 %prol.iter217.next, %i.dp
  br i1 %prol.iter217.cmp.not, label %.prol.loopexit, label %bb.ae, !llvm.loop !707

.prol.loopexit:                                   ; preds = %bb.ae
  %i.fc = icmp ult i64 %i.ez, 7
  br i1 %i.fc, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i, label %.lr.ph.i43.i.i.i.i.i.new

.lr.ph.i43.i.i.i.i.i.new:                         ; preds = %.prol.loopexit, %.lr.ph.i43.i.i.i.i.i.new
  %.07.i45.i.i.i.i.i = phi i64 [ %i.fk, %.lr.ph.i43.i.i.i.i.i.new ], [ %i.fa, %.prol.loopexit ]
  %.046.i46.i.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i43.i.i.i.i.i.new ], [ %i.fb, %.prol.loopexit ] ; 9 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.046.i46.i.i.i.i.i, align 4, !tbaa !41, !noalias !718
  %i.fd = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 4
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fd, align 4, !tbaa !41, !noalias !718
  %i.fe = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 8
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fe, align 4, !tbaa !41, !noalias !718
  %i.ff = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 12
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.ff, align 4, !tbaa !41, !noalias !718
  %i.fg = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 16
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fg, align 4, !tbaa !41, !noalias !718
  %i.fh = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 20
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fh, align 4, !tbaa !41, !noalias !718
  %i.fi = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 24
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fi, align 4, !tbaa !41, !noalias !718
  %i.fj = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 28
  %i.fk = add i64 %.07.i45.i.i.i.i.i, -8          ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fj, align 4, !tbaa !41, !noalias !718
  %i.fl = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 32
  %.not.i47.i.i.i.i.i.7 = icmp eq i64 %i.fk, 0
  br i1 %.not.i47.i.i.i.i.i.7, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i, label %.lr.ph.i43.i.i.i.i.i.new, !llvm.loop !708

_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i: ; preds = %.lr.ph.i43.i.i.i.i.i.new, %.prol.loopexit
  %i.fm = sub nuw nsw i64 3, %i.dp                ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.prol = phi i64 [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.fm, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ]
  %.01416.i.i.i.i.i.i.i.prol = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %10, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ] ; 2 uses
  %prol.iter220 = phi i64 [ %prol.iter220.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ]
  %i.fn = add nsw i64 %.017.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !718
  %i.fo = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter220.next = add i64 %prol.iter220, 1   ; 2 uses
  %prol.iter220.cmp.not = icmp eq i64 %prol.iter220.next, %i.fm
  br i1 %prol.iter220.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !709

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol
  %i.fp = icmp ult i64 %i.dp, 3
  br i1 %i.fp, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.fx, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i.i.i = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !718
  %i.fq = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 4
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fq, align 4, !tbaa !41, !noalias !718
  %i.fr = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fr, align 4, !tbaa !41, !noalias !718
  %i.fs = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 12
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fs, align 4, !tbaa !41, !noalias !718
  %i.ft = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 16
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.ft, align 4, !tbaa !41, !noalias !718
  %i.fu = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 20
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fu, align 4, !tbaa !41, !noalias !718
  %i.fv = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 24
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fv, align 4, !tbaa !41, !noalias !718
  %i.fw = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 28
  %i.fx = add nsw i64 %.017.i.i.i.i.i.i.i, -8     ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fw, align 4, !tbaa !41, !noalias !718
  %i.fy = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i38.i.i.i.i.i
  %i.fz = phi i1 [ %.pre.i.i.i, %.lr.ph.i38.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ga = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 400, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.af unwind label %bb.ag     ; 0 uses

bb.af:                                            ; preds = %.loopexit
  %i.gb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 401, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.fz)
          to label %.preheader141 unwind label %bb.ah ; 0 uses

.preheader141:                                    ; preds = %bb.af
  %.not165 = icmp eq i64 %.062163, 0
  br i1 %.not165, label %.preheader140, label %.lr.ph154

.preheader140:                                    ; preds = %bb.ai, %.preheader141
  %invariant.gep155 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.062163 ; 4 uses
  %i.gc = load i32, ptr %invariant.gep155, align 4, !tbaa !77
  %i.gd = load i32, ptr %0, align 4, !tbaa !77
  %i.ge = icmp eq i32 %i.gc, %i.gd
  %i.gf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.ge)
          to label %bb.ak unwind label %bb.am     ; 0 uses

bb.ag:                                            ; preds = %.loopexit
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ah:                                            ; preds = %bb.af
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.lr.ph154:                                        ; preds = %.preheader141, %bb.ai
  %.061153 = phi i64 [ %i.gn, %bb.ai ], [ 0, %.preheader141 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.061153
  %i.gj = trunc nuw nsw i64 %.061153 to i32
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !77
  %i.gl = icmp eq i32 %i.gk, %i.gj
  %i.gm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 403, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.gl)
          to label %bb.ai unwind label %bb.aj     ; 0 uses

bb.ai:                                            ; preds = %.lr.ph154
  %i.gn = add nuw nsw i64 %.061153, 1             ; 2 uses
  %exitcond170.not = icmp eq i64 %i.gn, %.062163
  br i1 %exitcond170.not, label %.preheader140, label %.lr.ph154, !llvm.loop !710

bb.aj:                                            ; preds = %.lr.ph154
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.lr.ph161:                                        ; preds = %.preheader
  %i.gp = trunc nuw nsw i64 %.062163 to i32
  br label %bb.an

bb.ak:                                            ; preds = %.preheader140
  %gep156.1 = getelementptr inbounds nuw i8, ptr %invariant.gep155, i64 4
  %i.gq = load i32, ptr %gep156.1, align 4, !tbaa !77
  %i.gr = load i32, ptr %0, align 4, !tbaa !77
  %i.gs = icmp eq i32 %i.gq, %i.gr
  %i.gt = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.gs)
          to label %bb.al unwind label %bb.am     ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %gep156.2 = getelementptr inbounds nuw i8, ptr %invariant.gep155, i64 8
  %i.gu = load i32, ptr %gep156.2, align 4, !tbaa !77
  %i.gv = load i32, ptr %0, align 4, !tbaa !77
  %i.gw = icmp eq i32 %i.gu, %i.gv
  %i.gx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.gw)
          to label %.preheader unwind label %bb.am ; 0 uses

.preheader:                                       ; preds = %bb.al
  br i1 %i.do, label %._crit_edge162.thread, label %.lr.ph161

._crit_edge162.thread:                            ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  invoke void @_Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.ar unwind label %bb.av

bb.am:                                            ; preds = %bb.al, %bb.ak, %.preheader140
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

._crit_edge162:                                   ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.gz = add nuw nsw i64 %.062163, 1
  %indvars.iv.next173 = add nsw i64 %indvars.iv172, -1
  br label %bb.ab, !llvm.loop !711

bb.an:                                            ; preds = %.lr.ph161, %bb.ao
  %.0160 = phi i64 [ 0, %.lr.ph161 ], [ %i.hg, %bb.ao ] ; 3 uses
  %gep159 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep155, i64 %.0160
  %i.ha = getelementptr inbounds nuw i8, ptr %gep159, i64 12
  %i.hb = trunc nuw nsw i64 %.0160 to i32
  %i.hc = add nuw nsw i32 %i.hb, %i.gp
  %i.hd = load i32, ptr %i.ha, align 4, !tbaa !77
  %i.he = icmp eq i32 %i.hd, %i.hc
  %i.hf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 407, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.he)
          to label %bb.ao unwind label %bb.ap     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.hg = add nuw nsw i64 %.0160, 1               ; 2 uses
  %exitcond175.not = icmp eq i64 %i.hg, %umax174
  br i1 %exitcond175.not, label %._crit_edge162, label %bb.an, !llvm.loop !712

bb.ap:                                            ; preds = %bb.an
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ag, %bb.ah, %bb.aj, %bb.am, %bb.ap
  %.pn.pn = phi { ptr, i32 } [ %i.gg, %bb.ag ], [ %i.go, %bb.aj ], [ %i.gy, %bb.am ], [ %i.hh, %bb.ap ], [ %i.gh, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aw

bb.ar:                                            ; preds = %._crit_edge162.thread
  invoke void @_Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  invoke void @_Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.hi = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !719 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.hi, %i.c
  br i1 %.not8.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i105

.lr.ph.i.i.i105:                                  ; preds = %bb.at, %.lr.ph.i.i.i105
  %.sroa.04.09.i.i.i = phi ptr [ %i.hj, %.lr.ph.i.i.i105 ], [ %i.hi, %bb.at ] ; 2 uses
  %i.hj = load ptr, ptr %.sroa.04.09.i.i.i, align 8, !tbaa !105 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i, i64 noundef 24) #25
  %.not.i.i.i106 = icmp eq ptr %i.hj, %i.c
  br i1 %.not.i.i.i106, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i105, !llvm.loop !7

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i105, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.hk = load i64, ptr %i.f, align 8, !tbaa !125 ; 2 uses
  %.not.i.i107 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i107, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %i.hl = load ptr, ptr %4, align 8, !tbaa !127
  %i.hm = shl i64 %i.hk, 2
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hm) #25
  br label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit

_ZN5boost9container6vectorI8value_ndvvED2Ev.exit: ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.av:                                            ; preds = %bb.as, %bb.ar, %._crit_edge162.thread
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %bb.n, %bb.o, %bb.av, %bb.aq, %bb.aa
  %.pn79.pn = phi { ptr, i32 } [ %i.hn, %bb.av ], [ %.pn76.pn, %bb.aa ], [ %.pn.pn, %bb.aq ], [ %i.by, %bb.o ], [ %i.bx, %bb.n ]
  %i.ho = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !720 ; 2 uses
  %.not8.i.i.i108 = icmp eq ptr %i.ho, %i.c
  br i1 %.not8.i.i.i108, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit112, label %.lr.ph.i.i.i109

.lr.ph.i.i.i109:                                  ; preds = %bb.aw, %.lr.ph.i.i.i109
  %.sroa.04.09.i.i.i110 = phi ptr [ %i.hp, %.lr.ph.i.i.i109 ], [ %i.ho, %bb.aw ] ; 2 uses
  %i.hp = load ptr, ptr %.sroa.04.09.i.i.i110, align 8, !tbaa !105 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i110, i64 noundef 24) #25
  %.not.i.i.i111 = icmp eq ptr %i.hp, %i.c
  br i1 %.not.i.i.i111, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit112, label %.lr.ph.i.i.i109, !llvm.loop !7

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit112: ; preds = %.lr.ph.i.i.i109, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.hq = load i64, ptr %i.f, align 8, !tbaa !125 ; 2 uses
  %.not.i.i113 = icmp eq i64 %i.hq, 0
  br i1 %.not.i.i113, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit114, label %bb.ax

bb.ax:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit112
  %i.hr = load ptr, ptr %4, align 8, !tbaa !127
  %i.hs = shl i64 %i.hq, 2
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hs) #25
  br label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit114

_ZN5boost9container6vectorI8value_ndvvED2Ev.exit114: ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit112, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn79.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z14test_insert_ndI14counting_valueLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::vec_iterator.56", align 8 ; 15 uses
  %2 = alloca %"class.boost::container::static_vector.29", align 8 ; 27 uses
  %3 = alloca %"class.boost::container::static_vector.29", align 8 ; 15 uses
  %4 = alloca %"class.boost::container::vector.108", align 8 ; 24 uses
  %5 = alloca %"class.boost::container::list.112", align 8 ; 18 uses
  %6 = alloca %class.counting_value, align 4      ; 22 uses
  %7 = alloca %"class.boost::container::static_vector.29", align 8 ; 17 uses
  %8 = alloca %"class.boost::container::static_vector.29", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 8 uses
  store i64 0, ptr %i.a, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 8 uses
  store i64 0, ptr %i.b, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  store i64 0, ptr %5, align 8
  store ptr %i.c, ptr %i.c, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 4 uses
  %i.h = add i64 %.pre, 1
  store i64 %i.h, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  store i32 0, ptr %2, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !80
  %i.j = add i64 %.pre, 2
  store i64 1, ptr %i.a, align 8, !tbaa !102
  store i64 %i.j, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  store i32 100, ptr %3, align 8, !tbaa !79
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !80
  %i.l = add i64 %.pre, 3
  store i64 1, ptr %i.b, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 100, ptr %6, align 4, !tbaa !79
  store i32 0, ptr %i.e, align 4, !tbaa !80
  store i64 %i.l, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.m = load i64, ptr %i.f, align 8, !tbaa !132  ; 4 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !133
  %.not.i87 = icmp eq i64 %i.m, %i.n
  br i1 %.not.i87, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %4, align 8, !tbaa !134, !nonnull !112, !noundef !112
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.m ; 2 uses
  store i32 100, ptr %i.p, align 4, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !80
  %i.r = add i64 %.pre, 4                         ; 2 uses
  store i64 %i.r, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.s = add i64 %i.m, 1
  store i64 %i.s, ptr %i.f, align 8, !tbaa !132
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.t = load ptr, ptr %4, align 8, !tbaa !134
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.m
  invoke void @_ZN5boost9container6vectorI14counting_valuevvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.56") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.u, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %6)
          to label %.noexc88 unwind label %bb.p

.noexc88:                                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre215 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit

_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit: ; preds = %.noexc88, %bb.b
  %i.v = phi i64 [ %.pre215, %.noexc88 ], [ %i.r, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i64 %i.v, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.w = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.d unwind label %bb.q       ; 6 uses

bb.d:                                             ; preds = %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 100, ptr %i.x, align 4, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !80
  %i.z = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 4 uses
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !106
  store ptr %i.c, ptr %i.w, align 8, !tbaa !105
  store ptr %i.w, ptr %i.d, align 8, !tbaa !106
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !105
  %i.ac = load i64, ptr %5, align 8, !tbaa !114
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %5, align 8, !tbaa !114
  %i.ae = add i64 %i.z, 1
  store i64 %i.ae, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1, ptr %i.af, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !80
  %i.ah = add i64 %i.z, 2
  store i64 2, ptr %i.a, align 8, !tbaa !102
  store i64 %i.ah, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 101, ptr %i.ai, align 8, !tbaa !79
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !80
  %i.ak = add i64 %i.z, 3
  store i64 2, ptr %i.b, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 101, ptr %6, align 4, !tbaa !79
  store i32 0, ptr %i.e, align 4, !tbaa !80
  store i64 %i.ak, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.al = load i64, ptr %i.f, align 8, !tbaa !132 ; 4 uses
  %i.am = load i64, ptr %i.g, align 8, !tbaa !133
  %.not.i87.1 = icmp eq i64 %i.al, %i.am
  br i1 %.not.i87.1, label %bb.f, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %4, align 8, !tbaa !134, !nonnull !112, !noundef !112
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al ; 2 uses
  store i32 101, ptr %i.ao, align 4, !tbaa !79
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 0, ptr %i.ap, align 4, !tbaa !80
  %i.aq = add i64 %i.z, 4                         ; 2 uses
  store i64 %i.aq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ar = add i64 %i.al, 1
  store i64 %i.ar, ptr %i.f, align 8, !tbaa !132
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.1

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.as = load ptr, ptr %4, align 8, !tbaa !134
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.al
  invoke void @_ZN5boost9container6vectorI14counting_valuevvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.56") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.at, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %6)
          to label %.noexc88.1 unwind label %bb.p

.noexc88.1:                                       ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre215.1 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.1

_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.1: ; preds = %.noexc88.1, %bb.e
  %i.au = phi i64 [ %.pre215.1, %.noexc88.1 ], [ %i.aq, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i64 %i.au, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.av = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.g unwind label %bb.q       ; 6 uses

bb.g:                                             ; preds = %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 101, ptr %i.aw, align 4, !tbaa !79
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store i32 0, ptr %i.ax, align 4, !tbaa !80
  %i.ay = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 4 uses
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !106
  store ptr %i.c, ptr %i.av, align 8, !tbaa !105
  store ptr %i.av, ptr %i.d, align 8, !tbaa !106
  store ptr %i.av, ptr %i.az, align 8, !tbaa !105
  %i.bb = load i64, ptr %5, align 8, !tbaa !114
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %5, align 8, !tbaa !114
  %i.bd = add i64 %i.ay, 1
  store i64 %i.bd, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 2, ptr %i.be, align 8, !tbaa !79
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.bf, align 4, !tbaa !80
  %i.bg = add i64 %i.ay, 2
  store i64 3, ptr %i.a, align 8, !tbaa !102
  store i64 %i.bg, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 102, ptr %i.bh, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.bi, align 4, !tbaa !80
  %i.bj = add i64 %i.ay, 3
  store i64 3, ptr %i.b, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 102, ptr %6, align 4, !tbaa !79
  store i32 0, ptr %i.e, align 4, !tbaa !80
  store i64 %i.bj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bk = load i64, ptr %i.f, align 8, !tbaa !132 ; 4 uses
  %i.bl = load i64, ptr %i.g, align 8, !tbaa !133
  %.not.i87.2 = icmp eq i64 %i.bk, %i.bl
  br i1 %.not.i87.2, label %bb.i, label %bb.h, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.bm = load ptr, ptr %4, align 8, !tbaa !134, !nonnull !112, !noundef !112
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk ; 2 uses
  store i32 102, ptr %i.bn, align 4, !tbaa !79
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 0, ptr %i.bo, align 4, !tbaa !80
  %i.bp = add i64 %i.ay, 4                        ; 2 uses
  store i64 %i.bp, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bq = add i64 %i.bk, 1
  store i64 %i.bq, ptr %i.f, align 8, !tbaa !132
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.2

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.br = load ptr, ptr %4, align 8, !tbaa !134
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bk
  invoke void @_ZN5boost9container6vectorI14counting_valuevvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.56") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.bs, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %6)
          to label %.noexc88.2 unwind label %bb.p

.noexc88.2:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre215.2 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.2

_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.2: ; preds = %.noexc88.2, %bb.h
  %i.bt = phi i64 [ %.pre215.2, %.noexc88.2 ], [ %i.bp, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i64 %i.bt, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.j unwind label %bb.q       ; 6 uses

bb.j:                                             ; preds = %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.2
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i32 102, ptr %i.bv, align 4, !tbaa !79
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store i32 0, ptr %i.bw, align 4, !tbaa !80
  %i.bx = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 4 uses
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !106
  store ptr %i.c, ptr %i.bu, align 8, !tbaa !105
  store ptr %i.bu, ptr %i.d, align 8, !tbaa !106
  store ptr %i.bu, ptr %i.by, align 8, !tbaa !105
  %i.ca = load i64, ptr %5, align 8, !tbaa !114
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %5, align 8, !tbaa !114
  %i.cc = add i64 %i.bx, 1
  store i64 %i.cc, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 3, ptr %i.cd, align 8, !tbaa !79
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 0, ptr %i.ce, align 4, !tbaa !80
  %i.cf = add i64 %i.bx, 2
  store i64 4, ptr %i.a, align 8, !tbaa !102
  store i64 %i.cf, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 103, ptr %i.cg, align 8, !tbaa !79
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.ch, align 4, !tbaa !80
  %i.ci = add i64 %i.bx, 3
  store i64 4, ptr %i.b, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 103, ptr %6, align 4, !tbaa !79
  store i32 0, ptr %i.e, align 4, !tbaa !80
  store i64 %i.ci, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.cj = load i64, ptr %i.f, align 8, !tbaa !132 ; 4 uses
  %i.ck = load i64, ptr %i.g, align 8, !tbaa !133
  %.not.i87.3 = icmp eq i64 %i.cj, %i.ck
  br i1 %.not.i87.3, label %bb.l, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.cl = load ptr, ptr %4, align 8, !tbaa !134, !nonnull !112, !noundef !112
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj ; 2 uses
  store i32 103, ptr %i.cm, align 4, !tbaa !79
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 0, ptr %i.cn, align 4, !tbaa !80
  %i.co = add i64 %i.bx, 4                        ; 2 uses
  store i64 %i.co, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.cp = add i64 %i.cj, 1
  store i64 %i.cp, ptr %i.f, align 8, !tbaa !132
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.3

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.cq = load ptr, ptr %4, align 8, !tbaa !134
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cj
  invoke void @_ZN5boost9container6vectorI14counting_valuevvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.56") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.cr, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %6)
          to label %.noexc88.3 unwind label %bb.p

.noexc88.3:                                       ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre215.3 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.3

_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.3: ; preds = %.noexc88.3, %bb.k
  %i.cs = phi i64 [ %.pre215.3, %.noexc88.3 ], [ %i.co, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i64 %i.cs, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ct = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.m unwind label %bb.q       ; 6 uses

bb.m:                                             ; preds = %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i32 103, ptr %i.cu, align 4, !tbaa !79
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  store i32 0, ptr %i.cv, align 4, !tbaa !80
  %i.cw = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 4 uses
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !106
  store ptr %i.c, ptr %i.ct, align 8, !tbaa !105
  store ptr %i.ct, ptr %i.d, align 8, !tbaa !106
  store ptr %i.ct, ptr %i.cx, align 8, !tbaa !105
  %i.cz = load i64, ptr %5, align 8, !tbaa !114
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %5, align 8, !tbaa !114
  %i.db = add i64 %i.cw, 1
  store i64 %i.db, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 4, ptr %i.dc, align 8, !tbaa !79
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 0, ptr %i.dd, align 4, !tbaa !80
  %i.de = add i64 %i.cw, 2
  store i64 5, ptr %i.a, align 8, !tbaa !102
  store i64 %i.de, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 104, ptr %i.df, align 8, !tbaa !79
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 0, ptr %i.dg, align 4, !tbaa !80
  %i.dh = add i64 %i.cw, 3
  store i64 5, ptr %i.b, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 104, ptr %6, align 4, !tbaa !79
  store i32 0, ptr %i.e, align 4, !tbaa !80
  store i64 %i.dh, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.di = load i64, ptr %i.f, align 8, !tbaa !132 ; 4 uses
  %i.dj = load i64, ptr %i.g, align 8, !tbaa !133
  %.not.i87.4 = icmp eq i64 %i.di, %i.dj
  br i1 %.not.i87.4, label %bb.o, label %bb.n, !prof !42

bb.n:                                             ; preds = %bb.m
  %i.dk = load ptr, ptr %4, align 8, !tbaa !134, !nonnull !112, !noundef !112
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.di ; 2 uses
  store i32 104, ptr %i.dl, align 4, !tbaa !79
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 0, ptr %i.dm, align 4, !tbaa !80
  %i.dn = add i64 %i.cw, 4                        ; 2 uses
  store i64 %i.dn, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.do = add i64 %i.di, 1
  store i64 %i.do, ptr %i.f, align 8, !tbaa !132
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.4

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.dp = load ptr, ptr %4, align 8, !tbaa !134
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.di
  invoke void @_ZN5boost9container6vectorI14counting_valuevvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.56") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.dq, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %6)
          to label %.noexc88.4 unwind label %bb.p

.noexc88.4:                                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre215.4 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.4

_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.4: ; preds = %.noexc88.4, %bb.n
  %i.dr = phi i64 [ %.pre215.4, %.noexc88.4 ], [ %i.dn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i64 %i.dr, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ds = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.preheader172 unwind label %bb.q ; 6 uses

.preheader172:                                    ; preds = %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i32 104, ptr %i.dt, align 4, !tbaa !79
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  store i32 0, ptr %i.du, align 4, !tbaa !80
  %i.dv = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !106
  store ptr %i.c, ptr %i.ds, align 8, !tbaa !105
  store ptr %i.ds, ptr %i.d, align 8, !tbaa !106
  store ptr %i.ds, ptr %i.dw, align 8, !tbaa !105
  %i.dy = load i64, ptr %5, align 8, !tbaa !114
  %i.dz = add i64 %i.dy, 1
  store i64 %i.dz, ptr %5, align 8, !tbaa !114
  store i64 %i.dv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 32
  br label %.lr.ph.i.i.i

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  %i.en = landingpad { ptr, i32 }
          cleanup
  %i.eo = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ep = add i64 %i.eo, -1
  store i64 %i.ep, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.av

bb.q:                                             ; preds = %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.4, %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.3, %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.2, %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.1, %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.es = add i64 %i.er, -1
  store i64 %i.es, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.av

.lr.ph.i.i.i:                                     ; preds = %.preheader172, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ %umax, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ], [ 5, %.preheader172 ]
  %.065190 = phi i64 [ %i.hn, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ], [ 0, %.preheader172 ] ; 8 uses
  %indvars.iv271 = phi i64 [ %indvars.iv.next, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ], [ 5, %.preheader172 ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.et = load <2 x i32>, ptr %2, align 8, !tbaa !41
  store <2 x i32> %i.et, ptr %7, align 8, !tbaa !41
  %i.eu = load <2 x i32>, ptr %i.ef, align 8, !tbaa !41
  store <2 x i32> %i.eu, ptr %i.eg, align 8, !tbaa !41
  %i.ev = load <2 x i32>, ptr %i.eh, align 8, !tbaa !41
  store <2 x i32> %i.ev, ptr %i.ei, align 8, !tbaa !41
  %i.ew = load <2 x i32>, ptr %i.ej, align 8, !tbaa !41
  store <2 x i32> %i.ew, ptr %i.ek, align 8, !tbaa !41
  %i.ex = load <2 x i32>, ptr %i.el, align 8, !tbaa !41
  store <2 x i32> %i.ex, ptr %i.em, align 8, !tbaa !41
  %i.ey = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 5
  store i64 %i.ey, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.idx166 = shl nuw nsw i64 %.065190, 3          ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 %.idx166 ; 2 uses
  %.not.i.i.i91 = icmp samesign eq i64 %.065190, 5
  br i1 %.not.i.i.i91, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.fa = load <2 x i32>, ptr %0, align 4, !tbaa !41, !noalias !738
  store <2 x i32> %i.fa, ptr %i.ec, align 8, !tbaa !41, !noalias !738
  %i.fb = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !738
  %i.fc = add i64 %i.fb, 1
  store i64 %i.fc, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !738
  store i64 6, ptr %i.ea, align 8, !tbaa !102, !noalias !738
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %gepdiff = sub nsw i64 40, %.idx166
  %i.fd = ashr exact i64 %gepdiff, 3              ; 2 uses
  %i.fe = load <2 x i32>, ptr %i.ed, align 8, !tbaa !41, !noalias !738
  store <2 x i32> %i.fe, ptr %i.ec, align 8, !tbaa !41, !noalias !738
  store i32 0, ptr %i.ed, align 8, !tbaa !79, !noalias !738
  store i32 0, ptr %i.ee, align 4, !tbaa !80, !noalias !738
  %i.ff = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !738
  %i.fg = add i64 %i.ff, 1
  store i64 %i.fg, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !738
  store i64 6, ptr %i.ea, align 8, !tbaa !102, !noalias !738
  %i.fh = add nsw i64 %i.fd, -1                   ; 4 uses
  %.not8.i.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.s
  %i.fi = add nsw i64 %i.fd, -2
  %xtraiter = and i64 %i.fh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.011.i.i.i.i.prol = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.prol ], [ %i.ec, %.lr.ph.i.i.i.i.preheader ]
  %.0610.i.i.i.i.prol = phi i64 [ %i.fj, %.lr.ph.i.i.i.i.prol ], [ %i.fh, %.lr.ph.i.i.i.i.preheader ]
  %.079.i.i.i.i.prol = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.prol ], [ %i.ed, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.fj = add i64 %.0610.i.i.i.i.prol, -1         ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -8 ; 4 uses
  %i.fl = getelementptr inbounds i8, ptr %.011.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -4
  %i.fn = load <2 x i32>, ptr %i.fk, align 4, !tbaa !41, !noalias !738
  store i32 0, ptr %i.fk, align 4, !tbaa !79, !noalias !738
  store <2 x i32> %i.fn, ptr %i.fl, align 4, !tbaa !41, !noalias !738
  store i32 0, ptr %i.fm, align 4, !tbaa !80, !noalias !738
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !725

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.011.i.i.i.i.unr = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.preheader ], [ %i.fl, %.lr.ph.i.i.i.i.prol ]
  %.0610.i.i.i.i.unr = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.preheader ], [ %i.fj, %.lr.ph.i.i.i.i.prol ]
  %.079.i.i.i.i.unr = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.preheader ], [ %i.fk, %.lr.ph.i.i.i.i.prol ]
  %i.fo = icmp ult i64 %i.fi, 3
  br i1 %i.fo, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.0610.i.i.i.i = phi i64 [ %i.gb, %.lr.ph.i.i.i.i ], [ %.0610.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.fp = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -8 ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -8
  %i.fr = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4
  %i.fs = load <2 x i32>, ptr %i.fp, align 4, !tbaa !41, !noalias !738
  store i32 0, ptr %i.fp, align 4, !tbaa !79, !noalias !738
  store <2 x i32> %i.fs, ptr %i.fq, align 4, !tbaa !41, !noalias !738
  store i32 0, ptr %i.fr, align 4, !tbaa !80, !noalias !738
  %i.ft = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -16 ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -16
  %i.fv = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -12
  %i.fw = load <2 x i32>, ptr %i.ft, align 4, !tbaa !41, !noalias !738
  store i32 0, ptr %i.ft, align 4, !tbaa !79, !noalias !738
  store <2 x i32> %i.fw, ptr %i.fu, align 4, !tbaa !41, !noalias !738
  store i32 0, ptr %i.fv, align 4, !tbaa !80, !noalias !738
  %i.fx = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -24 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -24
  %i.fz = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -20
  %i.ga = load <2 x i32>, ptr %i.fx, align 4, !tbaa !41, !noalias !738
  store i32 0, ptr %i.fx, align 4, !tbaa !79, !noalias !738
  store <2 x i32> %i.ga, ptr %i.fy, align 4, !tbaa !41, !noalias !738
  store i32 0, ptr %i.fz, align 4, !tbaa !80, !noalias !738
  %i.gb = add i64 %.0610.i.i.i.i, -4              ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -32 ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -32 ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -28
  %i.gf = load <2 x i32>, ptr %i.gc, align 4, !tbaa !41, !noalias !738
  store i32 0, ptr %i.gc, align 4, !tbaa !79, !noalias !738
  store <2 x i32> %i.gf, ptr %i.gd, align 4, !tbaa !41, !noalias !738
  store i32 0, ptr %i.ge, align 4, !tbaa !80, !noalias !738
  %.not.i.i.i.i.3 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !14

_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.s
  %i.gg = load <2 x i32>, ptr %0, align 4, !tbaa !41, !noalias !738
  store <2 x i32> %i.gg, ptr %i.ez, align 8, !tbaa !41, !noalias !738
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit: ; preds = %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, %bb.r
  %i.gh = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 384, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit
  %i.gi = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.1, i32 noundef 385, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext true)
          to label %.preheader171 unwind label %bb.v ; 0 uses

.preheader171:                                    ; preds = %bb.t
  %.not = icmp eq i64 %.065190, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader171
  %.pre216 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.gj = add i64 %.pre216, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.w, %.preheader171
  %i.gk = load <2 x i32>, ptr %i.ez, align 8
  %i.gl = load <2 x i32>, ptr %0, align 4
  %i.gm = icmp eq <2 x i32> %i.gk, %i.gl          ; 2 uses
  %i.gn = extractelement <2 x i1> %i.gm, i64 0
  %i.go = extractelement <2 x i1> %i.gm, i64 1
  %i.gp = select i1 %i.gn, i1 %i.go, i1 false
  %i.gq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1, i32 noundef 388, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.gp)
          to label %.preheader170 unwind label %bb.v ; 0 uses

.preheader170:                                    ; preds = %._crit_edge
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.065190
  %.not202 = icmp eq i64 %.065190, 5
  br i1 %.not202, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit.thread, label %.lr.ph188

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit.thread: ; preds = %.preheader170
  %_ZZN14counting_value1cEvE2co.promoted.i.i241 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.gr = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i241, -6
  store i64 %i.gr, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 6 uses
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 44
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 52
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 56
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 60
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %23 = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %.lr.ph.i.i.i99

.lr.ph188:                                        ; preds = %.preheader170
  %i.gs = trunc nuw nsw i64 %.065190 to i32
  %.pre217 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.gt = add i64 %.pre217, 1
  br label %bb.y

bb.u:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.preheader.i.i94

bb.v:                                             ; preds = %._crit_edge, %bb.t
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.preheader.i.i94

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %i.gw = phi i64 [ %i.hg, %bb.w ], [ %i.gj, %.lr.ph.preheader ]
  %.064186 = phi i64 [ %i.hi, %bb.w ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.064186 ; 2 uses
  %i.gy = trunc nuw nsw i64 %.064186 to i32
  store i64 %i.gw, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.gz = load i32, ptr %i.gx, align 8, !tbaa !79
  %i.ha = icmp eq i32 %i.gz, %i.gy
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = icmp eq i32 %i.hc, 0
  %i.he = select i1 %i.ha, i1 %i.hd, i1 false
  %i.hf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 387, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.he)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %.lr.ph
  %i.hg = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.hh = add i64 %i.hg, -1
  store i64 %i.hh, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.hi = add nuw nsw i64 %.064186, 1             ; 2 uses
  %exitcond205.not = icmp eq i64 %i.hi, %.065190
  br i1 %exitcond205.not, label %._crit_edge, label %.lr.ph, !llvm.loop !726

bb.x:                                             ; preds = %.lr.ph
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.hl = add i64 %i.hk, -1
  store i64 %i.hl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %.lr.ph.preheader.i.i94

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.z
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.hm = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, -6
  store i64 %i.hm, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.hn = add nuw nsw i64 %.065190, 1
  %indvars.iv.next = add nsw i64 %indvars.iv271, -1 ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv.next, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  br label %.lr.ph.i.i.i, !llvm.loop !727

bb.y:                                             ; preds = %.lr.ph188, %bb.z
  %i.ho = phi i64 [ %i.gt, %.lr.ph188 ], [ %i.hz, %bb.z ]
  %.063187 = phi i64 [ 0, %.lr.ph188 ], [ %i.ib, %bb.z ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %.063187 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.hq = trunc nuw nsw i64 %.063187 to i32
  %i.hr = add nuw nsw i32 %i.hq, %i.gs
  store i64 %i.ho, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.hs = load i32, ptr %i.hp, align 8, !tbaa !79
  %i.ht = icmp eq i32 %i.hs, %i.hr
  %i.hu = getelementptr inbounds nuw i8, ptr %gep, i64 12
  %i.hv = load i32, ptr %i.hu, align 4
  %i.hw = icmp eq i32 %i.hv, 0
  %i.hx = select i1 %i.ht, i1 %i.hw, i1 false
  %i.hy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, i32 noundef 390, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.hx)
          to label %bb.z unwind label %bb.aa      ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.hz = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.ia = add i64 %i.hz, -1
  store i64 %i.ia, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ib = add nuw nsw i64 %.063187, 1             ; 2 uses
  %exitcond206.not = icmp eq i64 %i.ib, %indvars.iv
  br i1 %exitcond206.not, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %bb.y, !llvm.loop !728

bb.aa:                                            ; preds = %bb.y
  %i.ic = landingpad { ptr, i32 }
          cleanup
  %i.id = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ie = add i64 %i.id, -1
  store i64 %i.ie, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %.lr.ph.preheader.i.i94

.lr.ph.preheader.i.i94:                           ; preds = %bb.u, %bb.v, %bb.x, %bb.aa
  %.pn76 = phi { ptr, i32 } [ %i.hj, %bb.x ], [ %i.ic, %bb.aa ], [ %i.gv, %bb.v ], [ %i.gu, %bb.u ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i95 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.if = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i95, -6
  store i64 %i.if, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.av

bb.ab:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114
  invoke void @_Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %bb.aq unwind label %bb.au

.lr.ph.i.i.i99:                                   ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit.thread, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114
  %indvars.iv210 = phi i64 [ 5, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit.thread ], [ %indvars.iv.next211, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114 ] ; 2 uses
  %.062201 = phi i64 [ 0, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit.thread ], [ %i.ko, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114 ] ; 7 uses
  %umax212 = call i64 @llvm.umax.i64(i64 %indvars.iv210, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 5, ptr %9, align 8, !tbaa !128
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i100 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ig = load <2 x i32>, ptr %2, align 8, !tbaa !41
  store <2 x i32> %i.ig, ptr %8, align 8, !tbaa !41
  %i.ih = load <2 x i32>, ptr %16, align 8, !tbaa !41
  store <2 x i32> %i.ih, ptr %17, align 8, !tbaa !41
  %i.ii = load <2 x i32>, ptr %18, align 8, !tbaa !41
  store <2 x i32> %i.ii, ptr %19, align 8, !tbaa !41
  %i.ij = load <2 x i32>, ptr %20, align 8, !tbaa !41
  store <2 x i32> %i.ij, ptr %21, align 8, !tbaa !41
  %i.ik = load <2 x i32>, ptr %22, align 8, !tbaa !41
  store <2 x i32> %i.ik, ptr %23, align 8, !tbaa !41
  %i.il = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i100, 5
  store i64 %i.il, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.062201 ; 5 uses
  %i.in = icmp samesign eq i64 %.062201, 5
  br i1 %i.in, label %._crit_edge.i.i.i.i.i.i, label %bb.ac

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i99
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !739
  %.pre.i.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !79, !noalias !739 ; 3 uses
  %.pre19.i.i.i.i.i.i = load i32, ptr %i.eb, align 4, !tbaa !80, !noalias !739 ; 3 uses
  store i32 %.pre.i.i.i.i.i.i, ptr %10, align 8, !tbaa !79, !noalias !739
  store i32 %.pre19.i.i.i.i.i.i, ptr %11, align 4, !tbaa !80, !noalias !739
  store i32 %.pre.i.i.i.i.i.i, ptr %12, align 8, !tbaa !79, !noalias !739
  store i32 %.pre19.i.i.i.i.i.i, ptr %13, align 4, !tbaa !80, !noalias !739
  store i32 %.pre.i.i.i.i.i.i, ptr %14, align 8, !tbaa !79, !noalias !739
  store i32 %.pre19.i.i.i.i.i.i, ptr %15, align 4, !tbaa !80, !noalias !739
  %i.io = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i, 3
  store i64 %i.io, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !739
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i.i99
  invoke void @_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_21insert_n_copies_proxyIS5_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull %i.im, ptr noundef nonnull %10, i64 noundef 3, ptr nonnull align 4 dereferenceable(8) %0)
          to label %.noexc109 unwind label %.loopexit

.noexc109:                                        ; preds = %bb.ac
  %.pre.i.i.i = load i64, ptr %9, align 8, !tbaa !128, !noalias !739
  %i.ip = add i64 %.pre.i.i.i, 3
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc109, %._crit_edge.i.i.i.i.i.i
  %i.iq = phi i64 [ %i.ip, %.noexc109 ], [ 8, %._crit_edge.i.i.i.i.i.i ]
  store i64 %i.iq, ptr %9, align 8, !tbaa !128, !noalias !739
  %i.ir = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 400, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.ae unwind label %bb.af     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.is = load i64, ptr %9, align 8, !tbaa !102
  %i.it = icmp eq i64 %i.is, 8
  %i.iu = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 401, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.it)
          to label %.preheader168 unwind label %bb.ag ; 0 uses

.preheader168:                                    ; preds = %bb.ae
  %.not203 = icmp eq i64 %.062201, 0
  br i1 %.not203, label %.preheader167, label %.lr.ph192.preheader

.lr.ph192.preheader:                              ; preds = %.preheader168
  %.pre218 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.iv = add i64 %.pre218, 1
  br label %.lr.ph192

.preheader167:                                    ; preds = %bb.ah, %.preheader168
  %i.iw = load <2 x i32>, ptr %i.im, align 8
  %i.ix = load <2 x i32>, ptr %0, align 4
  %i.iy = icmp eq <2 x i32> %i.iw, %i.ix          ; 2 uses
  %i.iz = extractelement <2 x i1> %i.iy, i64 0
  %i.ja = extractelement <2 x i1> %i.iy, i64 1
  %i.jb = select i1 %i.iz, i1 %i.ja, i1 false
  %i.jc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.jb)
          to label %bb.aj unwind label %bb.al     ; 0 uses

.loopexit:                                        ; preds = %bb.ac
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.af:                                            ; preds = %bb.ad
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ag:                                            ; preds = %bb.ae
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %bb.ah
  %i.jf = phi i64 [ %i.jp, %bb.ah ], [ %i.iv, %.lr.ph192.preheader ]
  %.061191 = phi i64 [ %i.jr, %bb.ah ], [ 0, %.lr.ph192.preheader ] ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.061191 ; 2 uses
  %i.jh = trunc nuw nsw i64 %.061191 to i32
  store i64 %i.jf, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ji = load i32, ptr %i.jg, align 8, !tbaa !79
  %i.jj = icmp eq i32 %i.ji, %i.jh
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = icmp eq i32 %i.jl, 0
  %i.jn = select i1 %i.jj, i1 %i.jm, i1 false
  %i.jo = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 403, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.jn)
          to label %bb.ah unwind label %bb.ai     ; 0 uses

bb.ah:                                            ; preds = %.lr.ph192
  %i.jp = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.jq = add i64 %i.jp, -1
  store i64 %i.jq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.jr = add nuw nsw i64 %.061191, 1             ; 2 uses
  %exitcond208.not = icmp eq i64 %i.jr, %.062201
  br i1 %exitcond208.not, label %.preheader167, label %.lr.ph192, !llvm.loop !733

bb.ai:                                            ; preds = %.lr.ph192
  %i.js = landingpad { ptr, i32 }
          cleanup
  %i.jt = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ju = add i64 %i.jt, -1
  store i64 %i.ju, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.ap

.lr.ph199:                                        ; preds = %.preheader
  %i.jv = trunc nuw nsw i64 %.062201 to i32
  %.pre219 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.jw = add i64 %.pre219, 1
  br label %bb.am

bb.aj:                                            ; preds = %.preheader167
  %gep194.1 = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.jx = load <2 x i32>, ptr %gep194.1, align 8
  %i.jy = load <2 x i32>, ptr %0, align 4
  %i.jz = icmp eq <2 x i32> %i.jx, %i.jy          ; 2 uses
  %i.ka = extractelement <2 x i1> %i.jz, i64 0
  %i.kb = extractelement <2 x i1> %i.jz, i64 1
  %i.kc = select i1 %i.ka, i1 %i.kb, i1 false
  %i.kd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.kc)
          to label %bb.ak unwind label %bb.al     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %gep194.2 = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.ke = load <2 x i32>, ptr %gep194.2, align 8
  %i.kf = load <2 x i32>, ptr %0, align 4
  %i.kg = icmp eq <2 x i32> %i.ke, %i.kf          ; 2 uses
  %i.kh = extractelement <2 x i1> %i.kg, i64 0
  %i.ki = extractelement <2 x i1> %i.kg, i64 1
  %i.kj = select i1 %i.kh, i1 %i.ki, i1 false
  %i.kk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.kj)
          to label %.preheader unwind label %bb.al ; 0 uses

.preheader:                                       ; preds = %bb.ak
  %.not204 = icmp eq i64 %.062201, 5
  br i1 %.not204, label %._crit_edge200, label %.lr.ph199

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.preheader167
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

._crit_edge200:                                   ; preds = %bb.an, %.preheader
  %i.km = load i64, ptr %9, align 8, !tbaa !102   ; 2 uses
  %.not3.i.i111 = icmp eq i64 %i.km, 0
  br i1 %.not3.i.i111, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114, label %.lr.ph.preheader.i.i112

.lr.ph.preheader.i.i112:                          ; preds = %._crit_edge200
  %_ZZN14counting_value1cEvE2co.promoted.i.i113 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.kn = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i113, %i.km
  store i64 %i.kn, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114: ; preds = %._crit_edge200, %.lr.ph.preheader.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ko = add nuw nsw i64 %.062201, 1             ; 2 uses
  %indvars.iv.next211 = add nsw i64 %indvars.iv210, -1
  %exitcond214.not = icmp eq i64 %i.ko, 6
  br i1 %exitcond214.not, label %bb.ab, label %.lr.ph.i.i.i99, !llvm.loop !734

bb.am:                                            ; preds = %.lr.ph199, %bb.an
  %i.kp = phi i64 [ %i.jw, %.lr.ph199 ], [ %i.la, %bb.an ]
  %.0198 = phi i64 [ 0, %.lr.ph199 ], [ %i.lc, %bb.an ] ; 3 uses
  %gep197 = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %.0198 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %gep197, i64 24
  %i.kr = trunc nuw nsw i64 %.0198 to i32
  %i.ks = add nuw nsw i32 %i.kr, %i.jv
  store i64 %i.kp, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.kt = load i32, ptr %i.kq, align 8, !tbaa !79
  %i.ku = icmp eq i32 %i.kt, %i.ks
  %i.kv = getelementptr inbounds nuw i8, ptr %gep197, i64 28
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = icmp eq i32 %i.kw, 0
  %i.ky = select i1 %i.ku, i1 %i.kx, i1 false
  %i.kz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 407, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.ky)
          to label %bb.an unwind label %bb.ao     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.la = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.lb = add i64 %i.la, -1
  store i64 %i.lb, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.lc = add nuw nsw i64 %.0198, 1               ; 2 uses
  %exitcond213.not = icmp eq i64 %i.lc, %umax212
  br i1 %exitcond213.not, label %._crit_edge200, label %bb.am, !llvm.loop !735

end_hunk_0
begin_hunk_1_@_Z15test_emplace_2pI14counting_valueLm10EEvv:bb.a

.noexc71:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.h, %thread-pre-split, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.046 = extractvalue { ptr, i32 } %i.d, 1
  %.047 = extractvalue { ptr, i32 } %i.d, 0
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25
  %i.f = icmp eq i32 %.046, %i.e
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.047) #25 ; 0 uses
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %thread-pre-split unwind label %bb.k

thread-pre-split:                                 ; preds = %bb.f, %bb.h
  %i.i = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.1, i32 noundef 581, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.preheader unwind label %bb.c ; 0 uses

.preheader154.preheader:                          ; preds = %thread-pre-split
  %i.j = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.l = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.1 unwind label %bb.l ; 0 uses

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.preheader154.9
  %i.m = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.o = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.1, i32 noundef 592, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.preheader unwind label %bb.m ; 0 uses

bb.g:                                             ; preds = %bb.d
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 580, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_end_catch()
          to label %thread-pre-split unwind label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75 unwind label %bb.aa

bb.j:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75 unwind label %bb.aa

bb.k:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

.preheader154.1:                                  ; preds = %.preheader154.preheader
  %i.s = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.2 unwind label %bb.l ; 0 uses

.preheader154.2:                                  ; preds = %.preheader154.1
  %i.t = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.3 unwind label %bb.l ; 0 uses

.preheader154.3:                                  ; preds = %.preheader154.2
  %i.u = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.4 unwind label %bb.l ; 0 uses

.preheader154.4:                                  ; preds = %.preheader154.3
  %i.v = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.5 unwind label %bb.l ; 0 uses

.preheader154.5:                                  ; preds = %.preheader154.4
  %i.w = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.6 unwind label %bb.l ; 0 uses

.preheader154.6:                                  ; preds = %.preheader154.5
  %i.x = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.7 unwind label %bb.l ; 0 uses

.preheader154.7:                                  ; preds = %.preheader154.6
  %i.y = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.8 unwind label %bb.l ; 0 uses

.preheader154.8:                                  ; preds = %.preheader154.7
  %i.z = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.9 unwind label %bb.l ; 0 uses

.preheader154.9:                                  ; preds = %.preheader154.8
  %i.aa = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %.preheader154.9, %.preheader154.8, %.preheader154.7, %.preheader154.6, %.preheader154.5, %.preheader154.4, %.preheader154.3, %.preheader154.2, %.preheader154.1, %.preheader154.preheader
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

.preheader153.preheader:                          ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.ae = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.1 unwind label %bb.n ; 0 uses

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75: ; preds = %bb.c, %bb.l, %bb.i, %bb.j, %bb.k
  %.pn67.ph = phi { ptr, i32 } [ %i.q, %bb.j ], [ %i.r, %bb.k ], [ %i.p, %bb.i ], [ %i.c, %bb.c ], [ %i.ab, %bb.l ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i74.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ah = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i74.pre, -10
  store i64 %i.ah, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.z

bb.m:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit83

.preheader153.1:                                  ; preds = %.preheader153.preheader
  %i.aj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.2 unwind label %bb.n ; 0 uses

.preheader153.2:                                  ; preds = %.preheader153.1
  %i.ak = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.3 unwind label %bb.n ; 0 uses

.preheader153.3:                                  ; preds = %.preheader153.2
  %i.al = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.4 unwind label %bb.n ; 0 uses

.preheader153.4:                                  ; preds = %.preheader153.3
  %i.am = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.5 unwind label %bb.n ; 0 uses

.preheader153.5:                                  ; preds = %.preheader153.4
  %i.an = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.6 unwind label %bb.n ; 0 uses

.preheader153.6:                                  ; preds = %.preheader153.5
  %i.ao = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.7 unwind label %bb.n ; 0 uses

.preheader153.7:                                  ; preds = %.preheader153.6
  %i.ap = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.8 unwind label %bb.n ; 0 uses

.preheader153.8:                                  ; preds = %.preheader153.7
  %i.aq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.9 unwind label %bb.n ; 0 uses

.preheader153.9:                                  ; preds = %.preheader153.8
  %i.ar = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %.preheader153.9, %.preheader153.8, %.preheader153.7, %.preheader153.6, %.preheader153.5, %.preheader153.4, %.preheader153.3, %.preheader153.2, %.preheader153.1, %.preheader153.preheader
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit83

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader: ; preds = %.preheader153.9
  %i.av = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.aw = add i64 %i.av, -6                       ; 2 uses
  store i64 %i.aw, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.lr.ph.i.i.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit83: ; preds = %bb.n, %bb.m
  %.pn65 = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.as, %bb.n ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i82 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.bg = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i82, -10
  store i64 %i.bg, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.z

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = phi i64 [ %i.aw, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ], [ %i.eb, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97 ] ; 3 uses
  %indvars.iv189 = phi i64 [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ], [ %indvars.iv.next190, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97 ] ; 8 uses
  %indvars.iv185 = phi i32 [ 5, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ], [ %indvars.iv.next186, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97 ] ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %indvars.iv185, i32 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  store <2 x i32> <i32 0, i32 100>, ptr %0, align 8, !tbaa !41
  store <2 x i32> <i32 1, i32 101>, ptr %i.bc, align 8, !tbaa !41
  store <2 x i32> <i32 2, i32 102>, ptr %i.bd, align 8, !tbaa !41
  store <2 x i32> <i32 3, i32 103>, ptr %i.be, align 8, !tbaa !41
  store <2 x i32> <i32 4, i32 104>, ptr %i.bf, align 8, !tbaa !41
  %i.bh = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 5
  store i64 %i.bh, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.idx151 = shl nuw nsw i64 %indvars.iv189, 3    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.idx151 ; 4 uses
  %i.bj = add nuw nsw i64 %indvars.iv189, 100     ; 2 uses
  %i.bk = or disjoint i64 %indvars.iv189, 200     ; 2 uses
  %.not.i.i.i92 = icmp eq i64 %indvars.iv189, 5   ; 2 uses
  br i1 %.not.i.i.i92, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i
  store i32 105, ptr %i.ay, align 8, !tbaa !79, !noalias !1336
  store i32 205, ptr %i.ba, align 4, !tbaa !80, !noalias !1336
  %i.bl = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 6
  store i64 %i.bl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1336
  store i64 6, ptr %i.ax, align 8, !tbaa !102, !noalias !1336
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %gepdiff = sub nsw i64 40, %.idx151
  %i.bm = ashr exact i64 %gepdiff, 3              ; 2 uses
  %i.bn = load <2 x i32>, ptr %i.az, align 8, !tbaa !41, !noalias !1336
  store <2 x i32> %i.bn, ptr %i.ay, align 8, !tbaa !41, !noalias !1336
  store i32 0, ptr %i.az, align 8, !tbaa !79, !noalias !1336
  store i32 0, ptr %i.bb, align 4, !tbaa !80, !noalias !1336
  %i.bo = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 6
  store i64 %i.bo, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1336
  store i64 6, ptr %i.ax, align 8, !tbaa !102, !noalias !1336
  %i.bp = add nsw i64 %i.bm, -1                   ; 4 uses
  %.not8.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.p
  %i.bq = add nsw i64 %i.bm, -2
  %xtraiter = and i64 %i.bp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.011.i.i.i.i.prol = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.prol ], [ %i.ay, %.lr.ph.i.i.i.i.preheader ]
  %.0610.i.i.i.i.prol = phi i64 [ %i.br, %.lr.ph.i.i.i.i.prol ], [ %i.bp, %.lr.ph.i.i.i.i.preheader ]
  %.079.i.i.i.i.prol = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.prol ], [ %i.az, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.br = add i64 %.0610.i.i.i.i.prol, -1         ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -8 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.011.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -4
  %i.bv = load <2 x i32>, ptr %i.bs, align 4, !tbaa !41, !noalias !1336
  store i32 0, ptr %i.bs, align 4, !tbaa !79, !noalias !1336
  store <2 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !41, !noalias !1336
  store i32 0, ptr %i.bu, align 4, !tbaa !80, !noalias !1336
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1332

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.011.i.i.i.i.unr = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.prol ]
  %.0610.i.i.i.i.unr = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.preheader ], [ %i.br, %.lr.ph.i.i.i.i.prol ]
  %.079.i.i.i.i.unr = phi ptr [ %i.az, %.lr.ph.i.i.i.i.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.prol ]
  %i.bw = icmp ult i64 %i.bq, 3
  br i1 %i.bw, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.0610.i.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i.i ], [ %.0610.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.bx = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -8 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -8
  %i.bz = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4
  %i.ca = load <2 x i32>, ptr %i.bx, align 4, !tbaa !41, !noalias !1336
  store i32 0, ptr %i.bx, align 4, !tbaa !79, !noalias !1336
  store <2 x i32> %i.ca, ptr %i.by, align 4, !tbaa !41, !noalias !1336
  store i32 0, ptr %i.bz, align 4, !tbaa !80, !noalias !1336
  %i.cb = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -16 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -12
  %i.ce = load <2 x i32>, ptr %i.cb, align 4, !tbaa !41, !noalias !1336
  store i32 0, ptr %i.cb, align 4, !tbaa !79, !noalias !1336
  store <2 x i32> %i.ce, ptr %i.cc, align 4, !tbaa !41, !noalias !1336
  store i32 0, ptr %i.cd, align 4, !tbaa !80, !noalias !1336
  %i.cf = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -24 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -24
  %i.ch = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -20
  %i.ci = load <2 x i32>, ptr %i.cf, align 4, !tbaa !41, !noalias !1336
  store i32 0, ptr %i.cf, align 4, !tbaa !79, !noalias !1336
  store <2 x i32> %i.ci, ptr %i.cg, align 4, !tbaa !41, !noalias !1336
  store i32 0, ptr %i.ch, align 4, !tbaa !80, !noalias !1336
  %i.cj = add i64 %.0610.i.i.i.i, -4              ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -32 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -32 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -28
  %i.cn = load <2 x i32>, ptr %i.ck, align 4, !tbaa !41, !noalias !1336
  store i32 0, ptr %i.ck, align 4, !tbaa !79, !noalias !1336
  store <2 x i32> %i.cn, ptr %i.cl, align 4, !tbaa !41, !noalias !1336
  store i32 0, ptr %i.cm, align 4, !tbaa !80, !noalias !1336
  %.not.i.i.i.i.3 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !14

_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.p
  %i.co = trunc nuw nsw i64 %i.bj to i32
  store i32 %i.co, ptr %i.bi, align 8, !tbaa !79, !noalias !1336
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.cq = trunc nuw nsw i64 %i.bk to i32
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !80, !noalias !1336
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit: ; preds = %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, %bb.o
  %i.cr = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.1, i32 noundef 612, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit
  %i.cs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.1, i32 noundef 613, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader unwind label %bb.s ; 0 uses

.preheader:                                       ; preds = %bb.q
  %.not = icmp eq i64 %indvars.iv189, 0
  %.pre213 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ct = add i64 %.pre213, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %i.cu = phi i64 [ %.pre213, %.preheader ], [ %i.du, %bb.t ]
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.cw = load i32, ptr %i.bi, align 8, !tbaa !79
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp eq i64 %i.bj, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp eq i64 %i.bk, %i.db
  %i.dd = select i1 %i.cy, i1 %i.dc, i1 false
  %i.de = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 616, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext %i.dd)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.r:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

bb.s:                                             ; preds = %bb.q
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %i.dh = phi i64 [ %i.ct, %.lr.ph.preheader ], [ %i.dt, %bb.t ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.dj = add nuw nsw i64 %indvars.iv, 100
  store i64 %i.dh, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.dk = load i32, ptr %i.di, align 8, !tbaa !79
  %i.dl = zext i32 %i.dk to i64
  %i.dm = icmp eq i64 %indvars.iv, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp eq i64 %i.dj, %i.dp
  %i.dr = select i1 %i.dm, i1 %i.dq, i1 false
  %i.ds = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.1, i32 noundef 615, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext %i.dr)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %.lr.ph
  %i.dt = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.du = add i64 %i.dt, -1                       ; 2 uses
  store i64 %i.du, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv189
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1333

bb.u:                                             ; preds = %.lr.ph
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.dx = add i64 %i.dw, -1
  store i64 %i.dx, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

bb.v:                                             ; preds = %._crit_edge
  %i.dy = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 4 uses
  %i.dz = add i64 %i.dy, -1
  store i64 %i.dz, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br i1 %.not.i.i.i92, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97.thread, label %.lr.ph172.preheader

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97.thread: ; preds = %bb.v
  %i.ea = add i64 %i.dy, -7
  store i64 %i.ea, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %1 = add i64 %i.dy, -12
  store i64 %1, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  ret void

.lr.ph172.preheader:                              ; preds = %bb.v
  %wide.trip.count187 = zext i32 %umax to i64
  br label %.lr.ph172

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97: ; preds = %bb.x
  %i.eb = add i64 %i.et, -7                       ; 2 uses
  store i64 %i.eb, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1
  %indvars.iv.next186 = add nsw i32 %indvars.iv185, -1
  br label %.lr.ph.i.i.i, !llvm.loop !1334

bb.w:                                             ; preds = %._crit_edge
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %i.ed = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ee = add i64 %i.ed, -1
  store i64 %i.ee, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %bb.x
  %i.ef = phi i64 [ %i.dy, %.lr.ph172.preheader ], [ %i.et, %bb.x ]
  %indvars.iv182 = phi i64 [ 0, %.lr.ph172.preheader ], [ %indvars.iv.next183, %bb.x ] ; 2 uses
  %i.eg = add nuw nsw i64 %indvars.iv182, %indvars.iv189 ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = add nuw nsw i64 %i.eg, 100
  store i64 %i.ef, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ek = load i32, ptr %i.ei, align 8, !tbaa !79
  %i.el = zext i32 %i.ek to i64
  %i.em = icmp eq i64 %i.eg, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = zext i32 %i.eo to i64
  %i.eq = icmp eq i64 %i.ej, %i.ep
  %i.er = select i1 %i.em, i1 %i.eq, i1 false
  %i.es = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.1, i32 noundef 618, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext %i.er)
          to label %bb.x unwind label %bb.y       ; 0 uses

bb.x:                                             ; preds = %.lr.ph172
  %i.et = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 3 uses
  %i.eu = add i64 %i.et, -1
  store i64 %i.eu, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count187
  br i1 %exitcond188.not, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97, label %.lr.ph172, !llvm.loop !1335

bb.y:                                             ; preds = %.lr.ph172
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ex = add i64 %i.ew, -1
  store i64 %i.ex, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105: ; preds = %bb.r, %bb.s, %bb.u, %bb.w, %bb.y
  %.pn60 = phi { ptr, i32 } [ %i.dv, %bb.u ], [ %i.ev, %bb.y ], [ %i.ec, %bb.w ], [ %i.dg, %bb.s ], [ %i.df, %bb.r ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i100 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8 ; 2 uses
  %i.ey = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i100, -6
  store i64 %i.ey, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %i.ez = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i100, -11
  store i64 %i.ez, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.z

bb.z:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit83, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75
  %.pn67.pn = phi { ptr, i32 } [ %.pn67.ph, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75 ], [ %.pn65, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit83 ], [ %.pn60, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105 ]
  resume { ptr, i32 } %.pn67.pn

bb.aa:                                            ; preds = %bb.j, %bb.i
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  tail call void @__clang_call_terminate(ptr %i.fb) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z12test_sv_elemIiLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i:
  %1 = alloca %"class.boost::container::vec_iterator.291", align 8 ; 4 uses
  %2 = alloca %"class.boost::container::vec_iterator.291", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::static_vector.284", align 16 ; 13 uses
  %4 = alloca %"class.boost::container::static_vector.19", align 16 ; 6 uses
  %5 = alloca %"class.boost::container::vec_iterator.290", align 8 ; 3 uses
  %6 = alloca %"class.boost::container::static_vector.19", align 16 ; 6 uses
  %7 = alloca %"class.boost::container::vec_iterator.290", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 480 ; 3 uses
  %.pre.i.i.i = load i32, ptr %0, align 4, !tbaa !41 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 5, ptr %i.b, align 8, !tbaa !93
  %i.c = insertelement <4 x i32> poison, i32 %.pre.i.i.i, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  store <4 x i32> %i.d, ptr %3, align 16
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.pre.i.i.i, ptr %.sroa.762.0..sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 5, ptr %i.f, align 8, !tbaa !93
  store <4 x i32> %i.d, ptr %i.e, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 %.pre.i.i.i, ptr %.sroa.7.0..sroa_idx, align 16
  store i64 2, ptr %i.a, align 16, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 5, ptr %i.g, align 8, !tbaa !93
  store <4 x i32> %i.d, ptr %4, align 16, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.pre.i.i.i, ptr %i.h, align 16, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %3, ptr %2, align 8, !tbaa !1344, !noalias !1345
  call void @_ZN5boost9container6vectorINS0_13static_vectorIiLm10EvEENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS4_20insert_emplace_proxyIS6_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.290") align 8 %5, ptr noundef nonnull align 8 dereferenceable(488) %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1, ptr nonnull align 8 dereferenceable(48) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.i = load i64, ptr %i.a, align 16, !tbaa !167, !noalias !1346
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 5, ptr %i.j, align 8, !tbaa !93
  %.pre.i.i.i43 = load i32, ptr %0, align 4, !tbaa !41 ; 2 uses
  %i.k = insertelement <4 x i32> poison, i32 %.pre.i.i.i43, i64 0
  %i.l = shufflevector <4 x i32> %i.k, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.l, ptr %6, align 16, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.pre.i.i.i43, ptr %i.m, align 16, !tbaa !41
  %i.n = getelementptr inbounds [48 x i8], ptr %3, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.n, ptr %1, align 8, !tbaa !1344, !noalias !1347
  call void @_ZN5boost9container6vectorINS0_13static_vectorIiLm10EvEENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS4_20insert_emplace_proxyIS6_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.290") align 8 %7, ptr noundef nonnull align 8 dereferenceable(488) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 1, ptr nonnull align 8 dereferenceable(48) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.o = load i64, ptr %i.a, align 16, !tbaa !167
  %.not.i51 = icmp eq i64 %i.o, 10
  br i1 %.not.i51, label %.noexc53, label %.lr.ph.preheader.i.i.i.i.i.i, !prof !42

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

.noexc53:                                         ; preds = %.lr.ph.i.i.i
  call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_13static_vectorIiLm10EvEELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z12test_sv_elemI8value_ndLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i:
  %1 = alloca %"class.boost::container::static_vector.298", align 16 ; 13 uses
  %2 = alloca %"class.boost::container::static_vector.43", align 16 ; 6 uses
  %3 = alloca %"class.boost::container::static_vector.43", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 3 uses
  %.pre.i.i.i = load i32, ptr %0, align 4, !tbaa !41 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 5, ptr %i.b, align 8, !tbaa !118
  %i.c = insertelement <4 x i32> poison, i32 %.pre.i.i.i, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  store <4 x i32> %i.d, ptr %1, align 16, !tbaa !41
  %.sroa.776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.pre.i.i.i, ptr %.sroa.776.0..sroa_idx, align 16, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 5, ptr %i.f, align 8, !tbaa !118
  store <4 x i32> %i.d, ptr %i.e, align 16, !tbaa !41
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %.pre.i.i.i, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !41
  store i64 2, ptr %i.a, align 16, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 5, ptr %i.g, align 8, !tbaa !118
  store <4 x i32> %i.d, ptr %2, align 16, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.pre.i.i.i, ptr %i.h, align 16, !tbaa !41
  call void @_ZN5boost9container6vectorINS0_13static_vectorI8value_ndLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS5_20insert_emplace_proxyIS7_JS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull %1, i64 noundef 1, ptr nonnull align 8 dereferenceable(48) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.i = load i64, ptr %i.a, align 16, !tbaa !172, !noalias !1350 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 5, ptr %i.j, align 8, !tbaa !118
  %.pre.i.i.i48 = load i32, ptr %0, align 4, !tbaa !41 ; 2 uses
  %i.k = insertelement <4 x i32> poison, i32 %.pre.i.i.i48, i64 0
  %i.l = shufflevector <4 x i32> %i.k, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.l, ptr %3, align 16, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.pre.i.i.i48, ptr %i.m, align 16, !tbaa !41
  %.not.i.i54 = icmp eq i64 %i.i, 10
  br i1 %.not.i.i54, label %.noexc56, label %_ZN5boost9container6vectorINS0_13static_vectorI8value_ndLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i55, !prof !42

.noexc56:                                         ; preds = %.lr.ph.i.i.i
  call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_13static_vectorI8value_ndLm10EvEELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container6vectorINS0_13static_vectorI8value_ndLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i55: ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds [48 x i8], ptr %1, i64 %i.i
  call void @_ZN5boost9container6vectorINS0_13static_vectorI8value_ndLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS5_20insert_emplace_proxyIS7_JS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull %i.n, i64 noundef 1, ptr nonnull align 8 dereferenceable(48) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.o = load i64, ptr %i.a, align 16, !tbaa !172
  %.not.i59 = icmp eq i64 %i.o, 10
  br i1 %.not.i59, label %.noexc61, label %.lr.ph.preheader.i.i.i.i.i.i, !prof !42

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI8value_ndLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

.noexc61:                                         ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI8value_ndLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i55
  call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_13static_vectorI8value_ndLm10EvEELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z12test_sv_elemI14counting_valueLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i.i.i.i.i:
  %1 = alloca %"class.boost::container::static_vector.310", align 8 ; 30 uses
  %2 = alloca %"class.boost::container::static_vector.29", align 8 ; 15 uses
  %3 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 4 uses
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 5, ptr %i.b, align 8, !tbaa !128
  %i.c = load <2 x i32>, ptr %0, align 4, !tbaa !41 ; 3 uses
  %i.d = shufflevector <2 x i32> %i.c, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.e = extractelement <2 x i32> %i.c, i64 1     ; 11 uses
  %i.f = extractelement <2 x i32> %i.c, i64 0     ; 11 uses
  store <8 x i32> %i.d, ptr %1, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.e, ptr %i.h, align 4, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 5, ptr %i.j, align 8, !tbaa !128
  store i32 %i.f, ptr %i.i, align 8, !tbaa !79
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 %i.e, ptr %i.k, align 4, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.f, ptr %i.l, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 100
end_hunk_1
