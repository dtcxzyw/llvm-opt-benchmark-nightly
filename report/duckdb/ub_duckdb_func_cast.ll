Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_cast?download=true
inline.NumInlined: 41041
inline.NumDeleted: 4767
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 235
begin_hunk_0_@_ZSt4swapIN6duckdb18UnionBoundCastDataEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_:bb.a
  store i64 0, ptr %i.p, align 8, !tbaa !136
  store i8 0, ptr %i.h, align 8, !tbaa !129
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s) #28
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !325
  store i64 %i.v, ptr %i.t, align 8, !tbaa !325
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !76
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !76
  store ptr null, ptr %i.z, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !329
  store i8 %i.ac, ptr %i.b, align 8, !tbaa !329
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !134 ; 6 uses
  %i.af = icmp eq ptr %i.ae, %i.h
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !134 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN6duckdb18UnionBoundCastDataC2EOS0_.exit
  br i1 %i.ai, label %bb.c, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN6duckdb18UnionBoundCastDataC2EOS0_.exit
  br i1 %i.ai, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !136 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %.not21.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.d, !prof !159

bb.d:                                             ; preds = %bb.c
  switch i64 %i.ak, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !129
  store i8 %i.am, ptr %i.ae, align 1, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !136 ; 2 uses
  store i64 %i.an, ptr %i.p, align 8, !tbaa !136
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !129
  %.pre.i.i = load ptr, ptr %i.ad, align 8, !tbaa !134
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !134
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !136
  store i64 %i.ar, ptr %i.p, align 8, !tbaa !136
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !129
  store i64 %i.as, ptr %i.h, align 8, !tbaa !129
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.at = load i64, ptr %i.h, align 8, !tbaa !129
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !136
  store i64 %i.av, ptr %i.p, align 8, !tbaa !136
  %i.aw = load i64, ptr %i.ah, align 8, !tbaa !129
  store i64 %i.aw, ptr %i.h, align 8, !tbaa !129
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !134
  store i64 %i.at, ptr %i.ah, align 8, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !134
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.c
  %i.ax = phi ptr [ %i.ae, %bb.g ], [ %i.ah, %bb.h ], [ %i.ag, %bb.c ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !136
  store i8 0, ptr %i.ax, align 1, !tbaa !129
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ba = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.az) #28 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !325
  store i64 %i.bc, ptr %i.u, align 8, !tbaa !325
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !76
  store ptr null, ptr %i.be, align 8, !tbaa !76
  %i.bg = load ptr, ptr %i.z, align 8, !tbaa !76  ; 3 uses
  store ptr %i.bf, ptr %i.z, align 8, !tbaa !76
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !78
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #28, !inline_history !45
  br label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i
  %i.bk = load i8, ptr %i.a, align 8, !tbaa !329
  store i8 %i.bk, ptr %i.ab, align 8, !tbaa !329
  %i.bl = load ptr, ptr %i.ad, align 8, !tbaa !134 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !134 ; 5 uses
  %i.bp = icmp eq ptr %i.bo, %i.f                 ; 2 uses
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit
  br i1 %i.bp, label %bb.i, label %.thread.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5: ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit
  br i1 %i.bp, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.bq = load i64, ptr %i.q, align 8, !tbaa !136 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  switch i64 %i.bq, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !129
  store i8 %i.bs, ptr %i.bl, align 1, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bo, i64 %i.bq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12: ; preds = %bb.k, %bb.j, %bb.i
  %i.bt = load i64, ptr %i.q, align 8, !tbaa !136 ; 2 uses
  store i64 %i.bt, ptr %i.ay, align 8, !tbaa !136
  %i.bu = load ptr, ptr %i.ad, align 8, !tbaa !134
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !129
  %.pre.i.i13 = load ptr, ptr %i.d, align 8, !tbaa !134
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i8

.thread.i.i15:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  store ptr %i.bo, ptr %i.ad, align 8, !tbaa !134
  %i.bw = load <2 x i64>, ptr %i.q, align 8, !tbaa !129
  store <2 x i64> %i.bw, ptr %i.ay, align 8, !tbaa !129
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5
  %i.bx = load i64, ptr %i.bm, align 8, !tbaa !129
  store ptr %i.bo, ptr %i.ad, align 8, !tbaa !134
  %i.by = load <2 x i64>, ptr %i.q, align 8, !tbaa !129
  store <2 x i64> %i.by, ptr %i.ay, align 8, !tbaa !129
  %.not.i.i7 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !134
  store i64 %i.bx, ptr %i.f, align 8, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i8

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6, %.thread.i.i15
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i8: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12
  %i.bz = phi ptr [ %i.bl, %bb.l ], [ %i.f, %bb.m ], [ %.pre.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12 ]
  store i64 0, ptr %i.q, align 8, !tbaa !136
  store i8 0, ptr %i.bz, align 1, !tbaa !129
  %i.ca = load i8, ptr %i.r, align 8, !tbaa !109
  store i8 %i.ca, ptr %i.az, align 8, !tbaa !109
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !239
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !239
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.cg = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !155
  %i.ch = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !155
  store <2 x ptr> %i.cg, ptr %i.ce, align 8, !tbaa !155
  store <2 x ptr> %i.ch, ptr %i.cf, align 8, !tbaa !155
  %i.ci = load i64, ptr %i.t, align 8, !tbaa !325
  store i64 %i.ci, ptr %i.bb, align 8, !tbaa !325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 16, i1 false)
  %i.cj = load ptr, ptr %i.y, align 8, !tbaa !76
  store ptr null, ptr %i.y, align 8, !tbaa !76
  %i.ck = load ptr, ptr %i.be, align 8, !tbaa !76 ; 3 uses
  store ptr %i.cj, ptr %i.be, align 8, !tbaa !76
  %.not.i.i.i.i.i.i.i9 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i9, label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16.thread, label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %2, align 8, !tbaa !78
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !78
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ck) #28, !inline_history !45
  %.pr18 = load ptr, ptr %i.y, align 8, !tbaa !76 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %2, align 8, !tbaa !78
  %.not.i.i.i = icmp eq ptr %.pr18, null
  br i1 %.not.i.i.i, label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i: ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16
  %i.co = load ptr, ptr %.pr18, align 8, !tbaa !78
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr18) #28, !inline_history !44
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i

_ZN6duckdb13BoundCastInfoD2Ev.exit.i:             ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16.thread, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i, %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #28, !inline_history !481
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !134 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.f
  br i1 %i.cs, label %_ZN6duckdb18UnionBoundCastDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.cr) #30, !inline_history !481
  br label %_ZN6duckdb18UnionBoundCastDataD2Ev.exit

_ZN6duckdb18UnionBoundCastDataD2Ev.exit:          ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb18UnionBoundCastDataESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnionBoundCastData", align 8 ; 16 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.022 = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.0.022, %1
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.not21.i.i = icmp eq ptr %3, %0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.0.025 = phi ptr [ %.sroa.0.022, %.lr.ph ], [ %.sroa.0.0, %bb.m ] ; 5 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.025, %bb.m ] ; 10 uses
  %i.v = call noundef zeroext i1 %2(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.025, ptr noundef nonnull align 8 dereferenceable(104) %0), !inline_history !46
  br i1 %i.v, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %3, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %.pn24, i64 112
  %i.x = load i8, ptr %i.w, align 8, !tbaa !329
  store i8 %i.x, ptr %i.b, align 8, !tbaa !329
  %i.y = getelementptr inbounds nuw i8, ptr %.pn24, i64 120 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !135
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !134  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn24, i64 136 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn24, i64 128
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !136 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.z, ptr %i.c, align 8, !tbaa !134
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !129
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !129
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn24, i64 128 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !136
  store i64 %i.ai, ptr %i.e, align 8, !tbaa !136
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !134
  store i64 0, ptr %i.ah, align 8, !tbaa !136
  store i8 0, ptr %i.aa, align 8, !tbaa !129
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn24, i64 152
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn24, i64 176
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !325
  store i64 %i.al, ptr %i.g, align 8, !tbaa !325
  %i.am = getelementptr inbounds nuw i8, ptr %.pn24, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.pn24, i64 200 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !76
  store i64 %i.ao, ptr %i.i, align 8, !tbaa !76
  store ptr null, ptr %i.an, align 8, !tbaa !76
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn24, i64 208
  %i.aq = call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN6duckdb18UnionBoundCastDataES5_EET0_T_S7_S6_(ptr noundef nonnull %0, ptr noundef nonnull %.sroa.0.025, ptr noundef nonnull %i.ap) ; 0 uses
  %i.ar = load i8, ptr %i.b, align 8, !tbaa !329
  store i8 %i.ar, ptr %i.j, align 8, !tbaa !329
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !134 ; 6 uses
  %i.at = icmp eq ptr %i.as, %i.l
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !134 ; 6 uses
  %i.av = icmp eq ptr %i.au, %i.d                 ; 2 uses
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.e
  br i1 %i.av, label %bb.f, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.e
  br i1 %i.av, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !136 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.g, !prof !159

bb.g:                                             ; preds = %bb.f
  switch i64 %i.aw, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !129
  store i8 %i.ay, ptr %i.as, align 1, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.au, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.az = load i64, ptr %i.e, align 8, !tbaa !136 ; 2 uses
  store i64 %i.az, ptr %i.m, align 8, !tbaa !136
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 0, ptr %i.bb, align 1, !tbaa !129
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !134
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  store ptr %i.au, ptr %i.k, align 8, !tbaa !134
  %i.bc = load <2 x i64>, ptr %i.e, align 8, !tbaa !129
  store <2 x i64> %i.bc, ptr %i.m, align 8, !tbaa !129
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !129
  store ptr %i.au, ptr %i.k, align 8, !tbaa !134
  %i.be = load <2 x i64>, ptr %i.e, align 8, !tbaa !129
  store <2 x i64> %i.be, ptr %i.m, align 8, !tbaa !129
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.as, ptr %i.c, align 8, !tbaa !134
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.d, ptr %i.c, align 8, !tbaa !134
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f
  %i.bf = phi ptr [ %i.as, %bb.j ], [ %i.d, %bb.k ], [ %i.au, %bb.f ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.e, align 8, !tbaa !136
  store i8 0, ptr %i.bf, align 1, !tbaa !129
  %i.bg = load i8, ptr %i.f, align 8, !tbaa !109
  store i8 %i.bg, ptr %i.n, align 8, !tbaa !109
  %i.bh = load i8, ptr %i.o, align 1, !tbaa !239
  store i8 %i.bh, ptr %i.p, align 1, !tbaa !239
  %i.bi = load <2 x ptr>, ptr %i.r, align 8, !tbaa !155
  %i.bj = load <2 x ptr>, ptr %i.q, align 8, !tbaa !155
  store <2 x ptr> %i.bi, ptr %i.q, align 8, !tbaa !155
  store <2 x ptr> %i.bj, ptr %i.r, align 8, !tbaa !155
  %i.bk = load i64, ptr %i.g, align 8, !tbaa !325
  store i64 %i.bk, ptr %i.s, align 8, !tbaa !325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 16, i1 false)
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !76
  store ptr null, ptr %i.i, align 8, !tbaa !76
  %i.bm = load ptr, ptr %i.u, align 8, !tbaa !76  ; 3 uses
  store ptr %i.bl, ptr %i.u, align 8, !tbaa !76
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit.thread, label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %3, align 8, !tbaa !78
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !78
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bm) #28, !inline_history !45
  %.pr20 = load ptr, ptr %i.i, align 8, !tbaa !76 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %3, align 8, !tbaa !78
  %.not.i.i.i = icmp eq ptr %.pr20, null
  br i1 %.not.i.i.i, label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i: ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit
  %i.bq = load ptr, ptr %.pr20, align 8, !tbaa !78
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr20) #28, !inline_history !44
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i

_ZN6duckdb13BoundCastInfoD2Ev.exit.i:             ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit.thread, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i, %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #28, !inline_history !481
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.d
  br i1 %i.bu, label %_ZN6duckdb18UnionBoundCastDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bt) #30, !inline_history !481
  br label %_ZN6duckdb18UnionBoundCastDataD2Ev.exit

_ZN6duckdb18UnionBoundCastDataD2Ev.exit:          ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb18UnionBoundCastDataESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_(ptr nonnull %.sroa.0.025, ptr %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb18UnionBoundCastDataD2Ev.exit, %bb.l
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 104 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1489

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb18UnionBoundCastDataESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::UnionBoundCastData", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %2, align 8, !tbaa !78
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !329
  store i8 %i.c, ptr %i.a, align 8, !tbaa !329
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !135
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !134  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !136  ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %_ZN6duckdb18UnionBoundCastDataC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %i.d, align 8, !tbaa !134
  %i.n = load i64, ptr %i.h, align 8, !tbaa !129
  store i64 %i.n, ptr %i.f, align 8, !tbaa !129
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !136
  br label %_ZN6duckdb18UnionBoundCastDataC2EOS0_.exit

_ZN6duckdb18UnionBoundCastDataC2EOS0_.exit:       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store i64 %i.o, ptr %i.q, align 8, !tbaa !136
  store ptr %i.h, ptr %i.e, align 8, !tbaa !134
  store i64 0, ptr %i.p, align 8, !tbaa !136
  store i8 0, ptr %i.h, align 8, !tbaa !129
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s) #28
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !325
  store i64 %i.v, ptr %i.t, align 8, !tbaa !325
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !76
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !76
  store ptr null, ptr %i.z, align 8, !tbaa !76
  br label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit:       ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit.backedge, %_ZN6duckdb18UnionBoundCastDataC2EOS0_.exit
  %.sroa.018.0 = phi ptr [ %0, %_ZN6duckdb18UnionBoundCastDataC2EOS0_.exit ], [ %.sroa.0.0, %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit.backedge ] ; 35 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.018.0, i64 -104 ; 2 uses
  %i.ab = invoke noundef zeroext i1 %1(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0)
          to label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN6duckdb18UnionBoundCastDataES5_EEclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit unwind label %bb.i, !inline_history !1490

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN6duckdb18UnionBoundCastDataES5_EEclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit: ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit
  br i1 %i.ab, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN6duckdb18UnionBoundCastDataES5_EEclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit
  %i.ac = getelementptr inbounds i8, ptr %.sroa.018.0, i64 -96
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !329
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 8
  store i8 %i.ad, ptr %i.ae, align 8, !tbaa !329
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.018.0, i64 -88 ; 4 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !134 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 32 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !134 ; 5 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.018.0, i64 -72 ; 4 uses
  %i.am = icmp eq ptr %i.ak, %i.al                ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.c
  br i1 %i.am, label %bb.d, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.c
  br i1 %i.am, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.an = getelementptr inbounds i8, ptr %.sroa.018.0, i64 -80 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !136 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  switch i64 %i.ao, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !129
  store i8 %i.aq, ptr %i.ah, align 1, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ak, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !136 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 24
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !136
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !129
  %.pre.i.i = load ptr, ptr %i.ag, align 8, !tbaa !134
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 24
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !134
  %i.aw = getelementptr inbounds i8, ptr %.sroa.018.0, i64 -80
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !tbaa !129
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !129
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ay = load i64, ptr %i.ai, align 8, !tbaa !129
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !134
  %i.az = getelementptr inbounds i8, ptr %.sroa.018.0, i64 -80
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 24
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !tbaa !129
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !tbaa !129
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !134
  store i64 %i.ay, ptr %i.al, align 8, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !134
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.bc = phi ptr [ %i.ah, %bb.g ], [ %i.al, %bb.h ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.bd = getelementptr inbounds i8, ptr %.sroa.018.0, i64 -80
  store i64 0, ptr %i.bd, align 8, !tbaa !136
  store i8 0, ptr %i.bc, align 1, !tbaa !129
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 48
  %i.bf = getelementptr inbounds i8, ptr %.sroa.018.0, i64 -56
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bf) #28 ; 0 uses
  %i.bh = getelementptr inbounds i8, ptr %.sroa.018.0, i64 -32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !325
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 72
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !325
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 80
  %i.bl = getelementptr inbounds i8, ptr %.sroa.018.0, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 96 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.018.0, i64 -8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !76
  store ptr null, ptr %i.bn, align 8, !tbaa !76
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !76 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !76
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit.backedge, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit.backedge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i
  br label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit, !llvm.loop !1491

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !78
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bp) #28, !inline_history !45
  br label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit.backedge

bb.i:                                             ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb18UnionBoundCastDataD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.bt

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN6duckdb18UnionBoundCastDataES5_EEclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit
  %i.bu = load i8, ptr %i.a, align 8, !tbaa !329
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 8
  store i8 %i.bu, ptr %i.bv, align 8, !tbaa !329
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 16 ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !134 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 32 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !134 ; 6 uses
  %i.cb = icmp eq ptr %i.ca, %i.f                 ; 2 uses
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.j
  br i1 %i.cb, label %bb.k, label %.thread.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2: ; preds = %bb.j
  br i1 %i.cb, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i3

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.cc = load i64, ptr %i.q, align 8, !tbaa !136 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cd)
  %.not21.i.i8 = icmp eq ptr %2, %.sroa.018.0
  br i1 %.not21.i.i8, label %_ZN6duckdb11LogicalTypeaSEOS0_.exit, label %bb.l, !prof !159

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cc, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !129
  store i8 %i.ce, ptr %i.bx, align 1, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.ca, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9: ; preds = %bb.n, %bb.m, %bb.l
  %i.cf = load i64, ptr %i.q, align 8, !tbaa !136 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 24
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !136
  %i.ch = load ptr, ptr %i.bw, align 8, !tbaa !134
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 0, ptr %i.ci, align 1, !tbaa !129
  %.pre.i.i10 = load ptr, ptr %i.d, align 8, !tbaa !134
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit

.thread.i.i12:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 24
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !134
  %i.ck = load <2 x i64>, ptr %i.q, align 8, !tbaa !129
  store <2 x i64> %i.ck, ptr %i.cj, align 8, !tbaa !129
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2
  %i.cl = load i64, ptr %i.by, align 8, !tbaa !129
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !134
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 24
  %i.cn = load <2 x i64>, ptr %i.q, align 8, !tbaa !129
  store <2 x i64> %i.cn, ptr %i.cm, align 8, !tbaa !129
  %.not.i.i4 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i4, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i3
  store ptr %i.bx, ptr %i.d, align 8, !tbaa !134
  store i64 %i.cl, ptr %i.f, align 8, !tbaa !129
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i3, %.thread.i.i12
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit

_ZN6duckdb11LogicalTypeaSEOS0_.exit:              ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9, %bb.o, %bb.p
  %i.co = phi ptr [ %i.bx, %bb.o ], [ %i.f, %bb.p ], [ %i.ca, %bb.k ], [ %.pre.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9 ]
  store i64 0, ptr %i.q, align 8, !tbaa !136
  store i8 0, ptr %i.co, align 1, !tbaa !129
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 48
  %i.cq = load i8, ptr %i.r, align 8, !tbaa !109
  store i8 %i.cq, ptr %i.cp, align 8, !tbaa !109
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !239
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 49
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !239
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 56 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.cw = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !155
  %i.cx = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !155
  store <2 x ptr> %i.cw, ptr %i.cu, align 8, !tbaa !155
  store <2 x ptr> %i.cx, ptr %i.cv, align 8, !tbaa !155
  %i.cy = load i64, ptr %i.t, align 8, !tbaa !325
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 72
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !325
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 96 ; 2 uses
  %i.dc = load ptr, ptr %i.y, align 8, !tbaa !76
  store ptr null, ptr %i.y, align 8, !tbaa !76
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !76 ; 3 uses
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !76
  %.not.i.i.i.i.i.i.i6 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i.i6, label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit13.thread, label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit13

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit13.thread: ; preds = %_ZN6duckdb11LogicalTypeaSEOS0_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %2, align 8, !tbaa !78
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit13:     ; preds = %_ZN6duckdb11LogicalTypeaSEOS0_.exit
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !78
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dd) #28, !inline_history !45
  %.pre23 = load ptr, ptr %i.y, align 8, !tbaa !76 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %2, align 8, !tbaa !78
  %.not.i.i.i = icmp eq ptr %.pre23, null
  br i1 %.not.i.i.i, label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i: ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit13
  %i.dh = load ptr, ptr %.pre23, align 8, !tbaa !78
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pre23) #28, !inline_history !44
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i

_ZN6duckdb13BoundCastInfoD2Ev.exit.i:             ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit13.thread, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i, %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit13
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #28, !inline_history !481
  %i.dk = load ptr, ptr %i.d, align 8, !tbaa !134 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.f
  br i1 %i.dl, label %_ZN6duckdb18UnionBoundCastDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.dk) #30, !inline_history !481
  br label %_ZN6duckdb18UnionBoundCastDataD2Ev.exit

_ZN6duckdb18UnionBoundCastDataD2Ev.exit:          ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN6duckdb18UnionBoundCastDataES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 104
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit
  %.010 = phi i64 [ %i.ba, %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.069 = phi ptr [ %i.g, %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit ], [ %2, %.lr.ph.preheader ] ; 12 uses
  %.078 = phi ptr [ %i.f, %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %i.f = getelementptr inbounds i8, ptr %.078, i64 -104
  %i.g = getelementptr inbounds i8, ptr %.069, i64 -104 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.078, i64 -96
  %i.i = load i8, ptr %i.h, align 8, !tbaa !329
  %i.j = getelementptr inbounds i8, ptr %.069, i64 -96
  store i8 %i.i, ptr %i.j, align 8, !tbaa !329
  %i.k = getelementptr inbounds i8, ptr %.069, i64 -88 ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.078, i64 -88 ; 4 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !134  ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.069, i64 -72 ; 4 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !134  ; 6 uses
  %i.q = getelementptr inbounds i8, ptr %.078, i64 -72 ; 6 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  br i1 %i.r, label %bb.b, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %i.r, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = getelementptr inbounds i8, ptr %.078, i64 -80 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !136  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %.not21.i.i = icmp eq ptr %.078, %.069
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.c, !prof !159

bb.c:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.p, align 1, !tbaa !129
  store i8 %i.v, ptr %i.m, align 1, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.w = load i64, ptr %i.s, align 8, !tbaa !136  ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.069, i64 -80
  store i64 %i.w, ptr %i.x, align 8, !tbaa !136
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !129
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !134
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %.069, i64 -80
  store ptr %i.p, ptr %i.k, align 8, !tbaa !134
  %i.ab = getelementptr inbounds i8, ptr %.078, i64 -80
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !136
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !136
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !129
  store i64 %i.ad, ptr %i.n, align 8, !tbaa !129
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !129
  store ptr %i.p, ptr %i.k, align 8, !tbaa !134
  %i.af = getelementptr inbounds i8, ptr %.078, i64 -80
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !136
  %i.ah = getelementptr inbounds i8, ptr %.069, i64 -80
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !136
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !129
  store i64 %i.ai, ptr %i.n, align 8, !tbaa !129
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.m, ptr %i.l, align 8, !tbaa !134
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.q, ptr %i.l, align 8, !tbaa !134
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.b
  %i.aj = phi ptr [ %i.m, %bb.f ], [ %i.q, %bb.g ], [ %i.p, %bb.b ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ak = getelementptr inbounds i8, ptr %.078, i64 -80
  store i64 0, ptr %i.ak, align 8, !tbaa !136
  store i8 0, ptr %i.aj, align 1, !tbaa !129
  %i.al = getelementptr inbounds i8, ptr %.069, i64 -56
  %i.am = getelementptr inbounds i8, ptr %.078, i64 -56
  %i.an = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am) #28 ; 0 uses
  %i.ao = getelementptr inbounds i8, ptr %.078, i64 -32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !325
  %i.aq = getelementptr inbounds i8, ptr %.069, i64 -32
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !325
  %i.ar = getelementptr inbounds i8, ptr %.069, i64 -24
  %i.as = getelementptr inbounds i8, ptr %.078, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 16, i1 false)
  %i.at = getelementptr inbounds i8, ptr %.069, i64 -8 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.078, i64 -8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !76
  store ptr null, ptr %i.au, align 8, !tbaa !76
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !76 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !76
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !78
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #28, !inline_history !45
  br label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i
  %i.ba = add nsw i64 %.010, -1
  %i.bb = icmp sgt i64 %.010, 1
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !1492

._crit_edge:                                      ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit, %bb.a
  %.06.lcssa = phi ptr [ %2, %bb.a ], [ %i.g, %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit ]
  ret ptr %.06.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINS_11LogicalTypeEJRKS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RSt6vectorINS_20ExceptionFormatValueESaISE_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINS_11LogicalTypeEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
end_hunk_0
