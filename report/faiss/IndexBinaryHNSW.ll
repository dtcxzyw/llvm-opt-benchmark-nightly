Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexBinaryHNSW?download=true
inline.NumInlined: 541
inline.NumDeleted: 286
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5faiss15IndexBinaryHNSW3addElPKh:bb.a
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #19 ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %i.m to i64                ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.p)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %5, align 8, !tbaa !59
  %i.r = load i64, ptr %i.l, align 8, !tbaa !64
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.q, i64 noundef %i.r, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #19 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.o)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.u = call ptr @__cxa_allocate_exception(i64 40) #19 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss15IndexBinaryHNSW3addElPKh, ptr noundef nonnull @.str.2, i32 noundef 268)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
          to label %bb.au unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.v, %bb.h ]
  %i.w = load ptr, ptr %5, align 8, !tbaa !59     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.k
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.y = load i64, ptr %i.k, align 8, !tbaa !60
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit79.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn60.i, %_ZNSt6vectorIiSaIiEED2Ev.exit79.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %common.resume

bb.j:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !65 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5248 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 noundef %1, ptr noundef %2)
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !65 ; 2 uses
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !178, !range !61, !noundef !62 ; 2 uses
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !66
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !67
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = icmp eq i64 %i.au, %i.aj                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !68
  store ptr %2, ptr %i.b, align 8, !tbaa !69
  store i8 %i.al, ptr %i.c, align 1, !tbaa !70
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.ax = add i64 %i.ab, %1                       ; 2 uses
  store i64 %i.ax, ptr %i.d, align 8, !tbaa !68
  %i.ay = tail call noundef double @_ZN5faiss12getmillisecsEv()
  br i1 %i.am, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = tail call noundef i32 @_ZN5faiss4HNSW17prepare_level_tabEmb(ptr noundef nonnull align 8 dereferenceable(5206) %i.aw, i64 noundef %1, i1 noundef zeroext %i.av) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ba = zext i1 %i.av to i32
  %i.bb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i64 noundef %1, i64 noundef %i.ab, i32 noundef %i.ba) ; 0 uses
  %i.bc = tail call noundef i32 @_ZN5faiss4HNSW17prepare_level_tabEmb(ptr noundef nonnull align 8 dereferenceable(5206) %i.aw, i64 noundef %1, i1 noundef zeroext %i.av)
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.bc) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5264 ; 3 uses
  tail call void @_ZN5faiss10LockVector7prepareEm(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bf = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.bf, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.m
  %.not.i.i.i.i.i = icmp eq i64 %1, 0             ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.n, label %.noexc63.i

.noexc63.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bg = shl nuw nsw i64 %1, 2
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #30 ; 4 uses
  store ptr %i.bh, ptr %3, align 8, !tbaa !67
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %1
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !71
  store i32 0, ptr %i.bh, align 4, !tbaa !72
  %i.bk = getelementptr i8, ptr %i.bh, i64 4      ; 3 uses
  %i.bl = add nsw i64 %1, -1                      ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph137.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc63.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bl, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bk, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !72
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph137.i

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %._crit_edge138.i

.lr.ph137.i:                                      ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc63.i
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.bn, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.bk, %.noexc63.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i.ph.i, ptr %i.bo, align 8, !tbaa !66
  br label %bb.p

._crit_edge138.loopexit.i:                        ; preds = %._crit_edge.i
  %i.bp = ptrtoint ptr %.sroa.16.1.lcssa.i to i64
  br label %._crit_edge138.i

._crit_edge138.i:                                 ; preds = %._crit_edge138.loopexit.i, %bb.n
  %.sroa.23.0.lcssa.i = phi ptr [ null, %bb.n ], [ %.sroa.23.1.lcssa.i, %._crit_edge138.loopexit.i ] ; 4 uses
  %.sroa.16.0.lcssa.i = phi i64 [ 0, %bb.n ], [ %i.bp, %._crit_edge138.loopexit.i ]
  %.sroa.087.0.lcssa.i = phi ptr [ null, %bb.n ], [ %.sroa.087.1.lcssa.i, %._crit_edge138.loopexit.i ] ; 13 uses
  %i.bq = ptrtoint ptr %.sroa.087.0.lcssa.i to i64 ; 2 uses
  %i.br = sub i64 %.sroa.16.0.lcssa.i, %i.bq
  %i.bs = ashr exact i64 %i.br, 2                 ; 4 uses
  %i.bt = add nsw i64 %i.bs, 1                    ; 3 uses
  %i.bu = icmp ugt i64 %i.bt, 2305843009213693951
  br i1 %i.bu, label %bb.o, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i64.i

bb.o:                                             ; preds = %._crit_edge138.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %.noexc67.i unwind label %bb.v

.noexc67.i:                                       ; preds = %bb.o
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i64.i: ; preds = %._crit_edge138.i
  %.not.i.i.i.i65.i = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i65.i)
  %i.bv = shl nuw nsw i64 %i.bt, 2                ; 3 uses
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #30
          to label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i unwind label %bb.v ; 11 uses

bb.p:                                             ; preds = %._crit_edge.i, %.lr.ph137.i
  %.049135.i = phi i64 [ 0, %.lr.ph137.i ], [ %i.dg, %._crit_edge.i ] ; 2 uses
  %.sroa.087.0134.i = phi ptr [ null, %.lr.ph137.i ], [ %.sroa.087.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.16.0133.i = phi ptr [ null, %.lr.ph137.i ], [ %.sroa.16.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.23.0132.i = phi ptr [ null, %.lr.ph137.i ], [ %.sroa.23.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !68
  %i.by = add i64 %i.bx, %.049135.i
  %sext58.i = shl i64 %i.by, 32
  %i.bz = load ptr, ptr %i.an, align 8, !tbaa !67
  %i.ca = ashr exact i64 %sext58.i, 30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !72 ; 3 uses
  %i.cd = ptrtoint ptr %.sroa.16.0133.i to i64
  %i.ce = ptrtoint ptr %.sroa.087.0134.i to i64   ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = ashr exact i64 %i.cf, 2                 ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  %.not.not59126.i = icmp sgt i32 %i.cc, %i.ch
  br i1 %.not.not59126.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  %i.ci = phi i64 [ %i.cz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ %i.cg, %bb.p ]
  %i.cj = phi i64 [ %i.cy, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ %i.cf, %bb.p ] ; 5 uses
  %i.ck = phi i64 [ %i.cx, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ %i.ce, %bb.p ]
  %.sroa.087.1129.i = phi ptr [ %.sroa.087.4.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ %.sroa.087.0134.i, %bb.p ] ; 6 uses
  %.sroa.16.1128.i = phi ptr [ %.sroa.16.2.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ %.sroa.16.0133.i, %bb.p ] ; 6 uses
  %.sroa.23.1127.i = phi ptr [ %.sroa.23.4.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ %.sroa.23.0132.i, %bb.p ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.16.1128.i, %.sroa.23.1127.i
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  store i32 0, ptr %.sroa.16.1128.i, align 4, !tbaa !72
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.cl = icmp eq i64 %i.cj, 9223372036854775804
  br i1 %i.cl, label %bb.s, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #29
          to label %.noexc70.i.a unwind label %.loopexit.split-lp.i

.noexc70.i.a:                                     ; preds = %bb.s
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.r
  %mul2.i.i.i.i = ashr exact i64 %i.cj, 1
  %6 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.cm = icmp ult i64 %6, %i.ci
  %i.cn = tail call i64 @llvm.umin.i64(i64 %6, i64 2305843009213693951)
  %i.co = select i1 %i.cm, i64 2305843009213693951, i64 %i.cn ; 2 uses
  %i.cp = shl nuw nsw i64 %i.co, 2
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #30
          to label %.noexc71.i unwind label %.loopexit.i ; 4 uses

.noexc71.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.cj ; 2 uses
  store i32 0, ptr %i.cr, align 4, !tbaa !72
  %i.cs = icmp sgt i64 %i.cj, 0
  br i1 %i.cs, label %bb.t, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.t:                                             ; preds = %.noexc71.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr align 4 %.sroa.087.1129.i, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.t, %.noexc71.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.087.1129.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.ct = ptrtoint ptr %.sroa.16.1128.i to i64
  %i.cu = sub i64 %i.ct, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.087.1129.i, i64 noundef %i.cu) #28
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.co
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.q
  %.sroa.23.4.i = phi ptr [ %i.cv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.23.1127.i, %bb.q ] ; 2 uses
  %.pn110.i = phi ptr [ %i.cr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.16.1128.i, %bb.q ]
  %.sroa.087.4.i = phi ptr [ %i.cq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.087.1129.i, %bb.q ] ; 3 uses
  %.sroa.16.2.i = getelementptr inbounds nuw i8, ptr %.pn110.i, i64 4 ; 3 uses
  %i.cw = ptrtoint ptr %.sroa.16.2.i to i64
  %i.cx = ptrtoint ptr %.sroa.087.4.i to i64      ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = ashr exact i64 %i.cy, 2                 ; 2 uses
  %i.da = trunc i64 %i.cz to i32
  %.not.not59.i = icmp sgt i32 %i.cc, %i.da
  br i1 %.not.not59.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !171

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp.i:                             ; preds = %bb.s
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i, %bb.p
  %.sroa.23.1.lcssa.i = phi ptr [ %.sroa.23.0132.i, %bb.p ], [ %.sroa.23.4.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 2 uses
  %.sroa.16.1.lcssa.i = phi ptr [ %.sroa.16.0133.i, %bb.p ], [ %.sroa.16.2.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 2 uses
  %.sroa.087.1.lcssa.i = phi ptr [ %.sroa.087.0134.i, %bb.p ], [ %.sroa.087.4.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 3 uses
  %i.db = sext i32 %i.cc to i64
  %i.dc = getelementptr [4 x i8], ptr %.sroa.087.1.lcssa.i, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 -4     ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !72
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !72
  %i.dg = add nuw nsw i64 %.049135.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dg, %1
  br i1 %exitcond.not.i, label %._crit_edge138.loopexit.i, label %bb.p, !llvm.loop !172

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i:          ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i64.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bw, i8 0, i64 %i.bv, i1 false), !tbaa !72
  %i.dh = add nsw i64 %i.bs, -1                   ; 3 uses
  %.not158.i = icmp eq i64 %i.dh, 0
  br i1 %.not158.i, label %.preheader.i, label %.lr.ph143.preheader.i

.lr.ph143.preheader.i:                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i
  %.pre.i = load i32, ptr %i.bw, align 4, !tbaa !72 ; 2 uses
  %i.di = add nsw i64 %i.bs, -2
  %xtraiter = and i64 %i.dh, 3                    ; 3 uses
  %i.dj = icmp ult i64 %i.di, 3
  br i1 %i.dj, label %.lr.ph143.i.epil.preheader, label %.lr.ph143.preheader.i.new

.lr.ph143.preheader.i.new:                        ; preds = %.lr.ph143.preheader.i
  %unroll_iter = and i64 %i.dh, -4
  br label %.lr.ph143.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph143.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph143.i.epil.preheader

.lr.ph143.i.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph143.preheader.i
  %.epil.init = phi i32 [ %.pre.i, %.lr.ph143.preheader.i ], [ %i.en, %.preheader.i.loopexit.unr-lcssa ]
  %.048142.i.epil.init = phi i64 [ 0, %.lr.ph143.preheader.i ], [ %i.eo, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod53)
  br label %.lr.ph143.i.epil

.lr.ph143.i.epil:                                 ; preds = %.lr.ph143.i.epil, %.lr.ph143.i.epil.preheader
  %i.dk = phi i32 [ %i.dn, %.lr.ph143.i.epil ], [ %.epil.init, %.lr.ph143.i.epil.preheader ]
  %.048142.i.epil = phi i64 [ %i.do, %.lr.ph143.i.epil ], [ %.048142.i.epil.init, %.lr.ph143.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph143.i.epil ], [ 0, %.lr.ph143.i.epil.preheader ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.087.0.lcssa.i, i64 %.048142.i.epil
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !72
  %i.dn = add nsw i32 %i.dm, %i.dk                ; 2 uses
  %i.do = add nuw i64 %.048142.i.epil, 1          ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.do
  store i32 %i.dn, ptr %i.dp, align 4, !tbaa !72
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph143.i.epil, !llvm.loop !173

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph143.i.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %.lr.ph145.i

.lr.ph145.i:                                      ; preds = %.preheader.i
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !68  ; 3 uses
  %i.dr = load ptr, ptr %i.an, align 8, !tbaa !67 ; 3 uses
  %i.ds = load ptr, ptr %3, align 8, !tbaa !67    ; 3 uses
  %xtraiter54 = and i64 %1, 1
  %i.dt = icmp eq i64 %1, 1
  br i1 %i.dt, label %.epil.preheader, label %.lr.ph145.i.new

.lr.ph145.i.new:                                  ; preds = %.lr.ph145.i
  %unroll_iter58 = and i64 %1, 2305843009213693950
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i64.i, %bb.o
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.lr.ph143.i:                                      ; preds = %.lr.ph143.i, %.lr.ph143.preheader.i.new
  %i.dv = phi i32 [ %.pre.i, %.lr.ph143.preheader.i.new ], [ %i.en, %.lr.ph143.i ]
  %.048142.i = phi i64 [ 0, %.lr.ph143.preheader.i.new ], [ %i.eo, %.lr.ph143.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph143.preheader.i.new ], [ %niter.next.3, %.lr.ph143.i ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.087.0.lcssa.i, i64 %.048142.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !72
  %i.dy = add nsw i32 %i.dx, %i.dv                ; 2 uses
  %i.dz = or disjoint i64 %.048142.i, 1           ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.dz
  store i32 %i.dy, ptr %i.ea, align 4, !tbaa !72
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.087.0.lcssa.i, i64 %i.dz
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !72
  %i.ed = add nsw i32 %i.ec, %i.dy                ; 2 uses
  %i.ee = or disjoint i64 %.048142.i, 2           ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ee
  store i32 %i.ed, ptr %i.ef, align 4, !tbaa !72
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.087.0.lcssa.i, i64 %i.ee
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !72
  %i.ei = add nsw i32 %i.eh, %i.ed                ; 2 uses
  %i.ej = or disjoint i64 %.048142.i, 3           ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ej
  store i32 %i.ei, ptr %i.ek, align 4, !tbaa !72
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.087.0.lcssa.i, i64 %i.ej
  %i.em = load i32, ptr %i.el, align 4, !tbaa !72
  %i.en = add nsw i32 %i.em, %i.ei                ; 3 uses
  %i.eo = add nuw i64 %.048142.i, 4               ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.eo
  store i32 %i.en, ptr %i.ep, align 4, !tbaa !72
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph143.i, !llvm.loop !174

_ZNSt6vectorIiSaIiEED2Ev.exit.i.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod56.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod56.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.loopexit.unr-lcssa, %.lr.ph145.i
  %.047144.i.epil.init = phi i64 [ 0, %.lr.ph145.i ], [ %i.gb, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod57 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod57)
  %i.eq = add i64 %.047144.i.epil.init, %i.dq     ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  %sext57.i.epil = shl i64 %i.eq, 32
  %i.es = ashr exact i64 %sext57.i.epil, 30
  %i.et = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !72
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr [4 x i8], ptr %i.bw, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 -4     ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !72 ; 2 uses
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !72
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.fa
  store i32 %i.er, ptr %i.fb, align 4, !tbaa !72
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %.epil.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.loopexit.unr-lcssa, %.preheader.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bv) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZN5faiss15RandomGeneratorC1El(ptr noundef nonnull align 8 dereferenceable(5000) %4, i64 noundef 789)
          to label %bb.x unwind label %bb.y

bb.w:                                             ; preds = %bb.w, %.lr.ph145.i.new
  %.047144.i = phi i64 [ 0, %.lr.ph145.i.new ], [ %i.gb, %bb.w ] ; 3 uses
  %niter59 = phi i64 [ 0, %.lr.ph145.i.new ], [ %niter59.next.1, %bb.w ]
  %i.fc = add i64 %.047144.i, %i.dq               ; 2 uses
  %i.fd = trunc i64 %i.fc to i32
  %sext57.i = shl i64 %i.fc, 32
  %i.fe = ashr exact i64 %sext57.i, 30
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !72
  %i.fh = sext i32 %i.fg to i64
end_hunk_0
