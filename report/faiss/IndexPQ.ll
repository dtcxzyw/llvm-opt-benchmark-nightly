Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexPQ?download=true
inline.NumInlined: 1198
inline.NumDeleted: 557
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNK5faiss19MultiIndexQuantizer6searchElPKflPfPlPKNS_16SearchParametersE.omp_outlined:bb.a
._crit_edge53:                                    ; preds = %._crit_edge.us, %._crit_edge53.loopexit.unr-lcssa, %.preheader.epil, %bb.c
  %.040.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.bk, %.preheader.epil ], [ %i.bf, %._crit_edge53.loopexit.unr-lcssa ], [ %i.ak, %._crit_edge.us ]
  %.039.lcssa = phi i64 [ 0, %bb.c ], [ %i.bn, %.preheader.epil ], [ %i.bi, %._crit_edge53.loopexit.unr-lcssa ], [ %i.an, %._crit_edge.us ]
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.p, i64 %.04258
  store float %.040.lcssa, ptr %i.bp, align 4, !tbaa !114
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %.04258
  store i64 %.039.lcssa, ptr %i.bq, align 8, !tbaa !52
  %i.br = add nsw i64 %.04258, 1
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !52
  %.not.not = icmp slt i64 %.04258, %i.bs
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge53, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss19MultiIndexQuantizer6searchElPKflPfPlPKNS_16SearchParametersE.omp_outlined.29(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #25 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"struct.faiss::(anonymous namespace)::MinSumK", align 8 ; 17 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.e = load i64, ptr %2, align 8, !tbaa !52     ; 3 uses
  %i.f = trunc i64 %i.e to i32                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40   ; 5 uses
  %i.i = trunc i64 %i.h to i32                    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !61   ; 3 uses
  %i.l = trunc i64 %i.k to i32                    ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41   ; 3 uses
  %i.o = trunc i64 %i.n to i32                    ; 6 uses
  store i32 %i.f, ptr %12, align 8, !tbaa !323
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.i, ptr %i.p, align 4, !tbaa !330
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %i.l, ptr %i.q, align 8, !tbaa !331
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %i.o, ptr %i.r, align 4, !tbaa !332
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.v = mul nsw i32 %i.i, %i.f                   ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 0, ptr %i.x, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false)
  store i64 %i.w, ptr %i.s, align 8, !tbaa !333
  %i.y = shl nuw i32 1, %i.l
  %.not.i = icmp slt i32 %i.y, %i.o
  br i1 %.not.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.z, ptr %11, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !51
  store i8 0, ptr %i.z, align 8, !tbaa !50
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.30) #22 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ad = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ae)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %11, align 8, !tbaa !46
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !51
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.30) #22 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ad)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.aj = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_15SemiSortedArrayIfEELb0EEC2Eiiii, ptr noundef nonnull @.str.13, i32 noundef 642)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #32
          to label %bb.ac unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.aj) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.ai, %bb.e ], [ %i.ak, %bb.h ]
  %i.al = load ptr, ptr %11, align 8, !tbaa !46   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.z
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.an = load i64, ptr %i.z, align 8, !tbaa !50
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body.i

bb.j:                                             ; preds = %bb.a
  %i.ap = icmp slt i32 %i.v, 0                    ; 2 uses
  %i.aq = shl nsw i64 %i.w, 2
  %i.ar = select i1 %i.ap, i64 -1, i64 %i.aq
  %i.as = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #33
          to label %bb.k unwind label %bb.m       ; 6 uses

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.as, ptr %i.at, align 8, !tbaa !334
  %i.au = shl nuw nsw i64 %i.w, 3
  %i.av = select i1 %i.ap, i64 -1, i64 %i.au
  %i.aw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.av) #33
          to label %bb.l unwind label %bb.m       ; 7 uses

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !335
  %i.ay = icmp sgt i32 %i.i, 0                    ; 2 uses
  br i1 %i.ay, label %.lr.ph.i, label %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_15SemiSortedArrayIfEELb0EEC2Eiiii.exit

.lr.ph.i:                                         ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  %sext = shl i64 %i.n, 32                        ; 2 uses
  %i.bb = ashr exact i64 %sext, 32                ; 6 uses
  %.not.i.i = icmp eq i32 %i.o, 0
  %i.bc = icmp slt i32 %i.o, 0
  %i.bd = lshr exact i64 %sext, 30
  %i.be = add nsw i64 %i.bb, -1                   ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  %.idx.i.i.i.i.i31.i46.i = shl nuw nsw i64 %i.be, 2
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

bb.n:                                             ; preds = %_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfED2Ev.exit.i, %.lr.ph.i
  %.pre.pre.i = phi ptr [ null, %.lr.ph.i ], [ %i.dn, %_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfED2Ev.exit.i ] ; 11 uses
  %.0100.i = phi i32 [ 0, %.lr.ph.i ], [ %i.do, %_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfED2Ev.exit.i ]
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.bc, label %bb.p, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i43.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #32
          to label %.noexc51.i unwind label %.thread.loopexit.split-lp.i

.noexc51.i:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i43.i: ; preds = %bb.o
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #33
          to label %.noexc52.i unwind label %.thread.loopexit.i ; 4 uses

.noexc52.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i43.i
  store i32 0, ptr %i.bh, align 4, !tbaa !57
  br i1 %i.bf, label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge9.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i45.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i45.i: ; preds = %.noexc52.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bi, i8 0, i64 %.idx.i.i.i.i.i31.i46.i, i1 false), !tbaa !57
  br label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge9.i.i

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge9.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i45.i, %.noexc52.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bb
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i:           ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge9.i.i, %bb.n
  %.sroa.29.1.i = phi ptr [ null, %bb.n ], [ %i.bj, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge9.i.i ] ; 7 uses
  %.sroa.657.1.i = phi ptr [ null, %bb.n ], [ %i.bh, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge9.i.i ] ; 10 uses
  %i.bk = ptrtoint ptr %.sroa.29.1.i to i64
  %i.bl = ptrtoint ptr %.sroa.657.1.i to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 6 uses
  %i.bn = ashr exact i64 %i.bm, 2                 ; 6 uses
  %i.bo = icmp ult i64 %i.bn, %i.bb
  br i1 %i.bo, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, label %bb.s

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i
  %i.bp = sub nuw nsw i64 %i.bb, %i.bn            ; 3 uses
  %i.bq = icmp samesign ult i64 %i.bn, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bq)
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 %i.bp)
  %i.br = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.bn ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #33
          to label %.noexc36.i unwind label %.loopexit.i ; 4 uses

.noexc36.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bm ; 3 uses
  store i32 0, ptr %i.bu, align 4, !tbaa !57
  %i.bv = add nsw i64 %i.bp, -1                   ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc36.i
  %i.bx = getelementptr i8, ptr %i.bu, i64 4
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.bv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bx, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !57
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc36.i
  %i.by = icmp sgt i64 %i.bm, 0
  br i1 %i.by, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

bb.q:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr align 4 %.sroa.657.1.i, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i: ; preds = %bb.q, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i
  %.not.i35.i.i = icmp eq ptr %.sroa.657.1.i, null
  br i1 %.not.i35.i.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.657.1.i, i64 noundef %i.bm) #31
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bp
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.br
  br label %_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfEC2Ei.exit.i

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i
  %i.cb = icmp ugt i64 %i.bn, %i.bb
  br i1 %i.cb, label %bb.t, label %_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfEC2Ei.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.657.1.i, i64 %i.bb ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %.sroa.29.1.i, %i.cc
  br i1 %.not.i.i5.i.i, label %_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfEC2Ei.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i6.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i6.i.i:   ; preds = %bb.t
  br label %_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfEC2Ei.exit.i

.thread.loopexit.i:                               ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i43.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.thread.loopexit.split-lp.i:                      ; preds = %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit80.i = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.657.1.i, null
  br i1 %.not.i.i.i.i.i, label %.body.i, label %bb.u

bb.u:                                             ; preds = %.loopexit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.657.1.i, i64 noundef %i.bm) #31
  br label %.body.i

_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfEC2Ei.exit.i: ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i6.i.i, %bb.t, %bb.s, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i
  %.sroa.29.2.i = phi ptr [ %.sroa.29.1.i, %bb.s ], [ %.sroa.29.1.i, %bb.t ], [ %.sroa.29.1.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i6.i.i ], [ %i.ca, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ] ; 3 uses
  %.sroa.19.1.i = phi ptr [ %.sroa.29.1.i, %bb.s ], [ %.sroa.29.1.i, %bb.t ], [ %i.cc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i6.i.i ], [ %i.bz, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ] ; 2 uses
  %.sroa.657.2.i = phi ptr [ %.sroa.657.1.i, %bb.s ], [ %.sroa.657.1.i, %bb.t ], [ %.sroa.657.1.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i6.i.i ], [ %i.bt, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ] ; 5 uses
  %i.cd = load ptr, ptr %i.ba, align 8, !tbaa !336
  %.not.i.i.i = icmp eq ptr %.pre.pre.i, %i.cd
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfEC2Ei.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 8
  store i32 %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 16
  store ptr %.sroa.657.2.i, ptr %i.ce, align 8, !tbaa !337
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 24
  store ptr %.sroa.19.1.i, ptr %i.cf, align 8, !tbaa !339
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 32
  store ptr %.sroa.29.2.i, ptr %i.cg, align 8, !tbaa !340
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 40
  store i32 0, ptr %i.ch, align 8
  %.sroa.40.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 44
  store i32 3, ptr %.sroa.40.40..sroa_idx.i, align 4
  %.sroa.41.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 48
  store i32 4, ptr %.sroa.41.40..sroa_idx.i, align 8
  %i.ci = load ptr, ptr %i.az, align 8, !tbaa !341
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56 ; 2 uses
  store ptr %i.cj, ptr %i.az, align 8, !tbaa !341
  br label %_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfED2Ev.exit.i

bb.w:                                             ; preds = %_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfEC2Ei.exit.i
  %.val.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !342 ; 5 uses
  %i.ck = ptrtoint ptr %.pre.pre.i to i64
  %i.cl = ptrtoint ptr %.val.i.i.i.i to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 4 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775800
  br i1 %i.cn, label %bb.x, label %_ZNKSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #32
          to label %.noexc.i unwind label %.loopexit.split-lp84.i

.noexc.i:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.w
  %i.co = sdiv exact i64 %i.cm, 56                ; 3 uses
  %i.cp = icmp eq ptr %.pre.pre.i, %.val.i.i.i.i  ; 2 uses
  %.sroa.speculated.i.i.i.i.i = select i1 %i.cp, i64 1, i64 %i.co
  %i.cq = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.co ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.co
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 164703072086692425)
  %i.ct = select i1 %i.cr, i64 164703072086692425, i64 %i.cs ; 3 uses
  %.not.i.i.i.i27.i = icmp ne i64 %i.ct, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i27.i)
  %i.cu = mul nuw nsw i64 %i.ct, 56
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #33
          to label %.noexc28.i unwind label %.loopexit83.i ; 5 uses

.noexc28.i:                                       ; preds = %_ZNKSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cm ; 7 uses
  %.sroa.5.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %i.o, ptr %.sroa.5.0..sroa_idx55.i, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %.sroa.657.2.i, ptr %i.cx, align 8, !tbaa !337
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %.sroa.19.1.i, ptr %i.cy, align 8, !tbaa !339
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store ptr %.sroa.29.2.i, ptr %i.cz, align 8, !tbaa !340
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store i32 0, ptr %i.da, align 8
  %.sroa.40.40..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  store i32 3, ptr %.sroa.40.40..sroa_idx70.i, align 4
  %.sroa.41.40..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store i32 4, ptr %.sroa.41.40..sroa_idx72.i, align 8
  br i1 %i.cp, label %_ZNSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc28.i, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cv, %.noexc28.i ] ; 5 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i.i ], [ %.val.i.i.i.i, %.noexc28.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.03.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(52) %.092.i.i.i.i.i.i.i, i64 12, i1 false), !alias.scope !348
  %i.db = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dd = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !349, !alias.scope !346, !noalias !343
  store <2 x ptr> %i.dd, ptr %i.db, align 8, !tbaa !349, !alias.scope !343, !noalias !346
  %i.de = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !340, !alias.scope !346, !noalias !343
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !340, !alias.scope !343, !noalias !346
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i8 0, i64 24, i1 false), !alias.scope !346, !noalias !343
  %i.dh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dh, ptr noundef nonnull align 8 dereferenceable(12) %i.di, i64 12, i1 false), !alias.scope !348
  %i.dj = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dj, %.pre.pre.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !350

_ZNSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc28.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cv, %.noexc28.i ], [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i27.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i27.i.i.i.i, label %_ZNSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.cm) #31
  br label %_ZNSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.y, %_ZNSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i
  store ptr %i.cv, ptr %i.t, align 8, !tbaa !342
  store ptr %i.dl, ptr %i.az, align 8, !tbaa !341
  %i.dm = getelementptr inbounds nuw [56 x i8], ptr %i.cv, i64 %i.ct
  store ptr %i.dm, ptr %i.ba, align 8, !tbaa !336
  br label %_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfED2Ev.exit.i

_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfED2Ev.exit.i: ; preds = %_ZNSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.v
  %i.dn = phi ptr [ %i.cj, %bb.v ], [ %i.dl, %_ZNSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.do = add nuw nsw i32 %.0100.i, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.do, %i.i
  br i1 %exitcond.not, label %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_15SemiSortedArrayIfEELb0EEC2Eiiii.exit, label %bb.n, !llvm.loop !351

.loopexit83.i:                                    ; preds = %_ZNKSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit85.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.z

.loopexit.split-lp84.i:                           ; preds = %bb.x
  %lpad.loopexit.split-lp86.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp84.i, %.loopexit83.i
  %lpad.phi87.i = phi { ptr, i32 } [ %lpad.loopexit85.i, %.loopexit83.i ], [ %lpad.loopexit.split-lp86.i, %.loopexit.split-lp84.i ] ; 2 uses
  %.not.i.i.i.i31.i = icmp eq ptr %.sroa.657.2.i, null
  br i1 %.not.i.i.i.i31.i, label %.body.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dp = ptrtoint ptr %.sroa.29.2.i to i64
  %i.dq = ptrtoint ptr %.sroa.657.2.i to i64
  %i.dr = sub i64 %i.dp, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.657.2.i, i64 noundef %i.dr) #31
  br label %.body.i

.body.i:                                          ; preds = %bb.aa, %bb.z, %bb.u, %.loopexit.i, %.thread.loopexit.split-lp.i, %.thread.loopexit.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn21.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bg, %bb.m ], [ %lpad.loopexit80.i, %.loopexit.i ], [ %lpad.phi87.i, %bb.aa ], [ %lpad.phi87.i, %bb.z ], [ %lpad.loopexit80.i, %bb.u ], [ %lpad.loopexit.i, %.thread.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread.loopexit.split-lp.i ]
  %i.ds = load ptr, ptr %i.u, align 8, !tbaa !73  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.body.i
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !75
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.ab, %.body.i
  call fastcc void @_ZNSt6vectorIN5faiss12_GLOBAL__N_115SemiSortedArrayIfEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #22
  br label %.body

bb.ac:                                            ; preds = %bb.g
  unreachable

_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_15SemiSortedArrayIfEELb0EEC2Eiiii.exit: ; preds = %_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfED2Ev.exit.i, %bb.l
  %i.dy = phi ptr [ null, %bb.l ], [ %i.dn, %_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfED2Ev.exit.i ] ; 2 uses
  %i.dz = load i64, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.ea = icmp sgt i64 %i.dz, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !57    ; 3 uses
  br i1 %i.ea, label %bb.ad, label %bb.bo

bb.ad:                                            ; preds = %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_15SemiSortedArrayIfEELb0EEC2Eiiii.exit
  %i.eb = add nsw i64 %i.dz, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.eb, ptr %i.b, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 1, ptr %i.c, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !57
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.ec = load i64, ptr %i.b, align 8, !tbaa !52
  %i.ed = call i64 @llvm.smin.i64(i64 %i.ec, i64 %i.eb) ; 2 uses
  store i64 %i.ed, ptr %i.b, align 8, !tbaa !52
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %.not77 = icmp sgt i64 %i.ee, %i.ed
  br i1 %.not77, label %._crit_edge, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.ad
  %.val75.i = load ptr, ptr %i.t, align 8         ; 7 uses
  %i.ef = and i64 %i.h, 2147483647                ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.as, i64 -4 ; 11 uses
  %i.eh = getelementptr inbounds i8, ptr %i.aw, i64 -8 ; 12 uses
  %i.ei = icmp sgt i32 %i.f, 1                    ; 2 uses
  %i.ej = and i64 %i.k, 4294967295                ; 3 uses
  %notmask71.i = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask71.i, -1                ; 2 uses
  %sext35 = shl i64 %i.n, 32
  %i.el = ashr exact i64 %sext35, 32
  %invariant.op = add nsw i64 %i.el, -1
  %i.em = and i64 %i.e, 2147483647                ; 2 uses
  %i.en = icmp sgt i32 %i.f, 0                    ; 2 uses
end_hunk_0
