Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/lar_solver?download=true
inline.NumInlined: 6282
inline.NumDeleted: 2310
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairI8rationaljESt6vectorIS4_13std_allocatorIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2lp35print_linear_combination_customizedIS3_EERSoRK6vectorIS2_IT_jELb1EjESt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEESF_EUlRKSH_RKT0_E_EEESH_SH_SH_SH_SX_:bb.a
  %i.ai = and i8 %i.ah, -2
  %i.aj = or disjoint i8 %i.ai, %i.ad
  store i8 %i.aj, ptr %i.u, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -24 ; 2 uses
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !246
  %i.an = load i32, ptr %i.al, align 8, !tbaa !246
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !246
  store i32 %i.am, ptr %i.al, align 8, !tbaa !246
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.1, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -16 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !302
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !302
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !302
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !302
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.1, i64 20 ; 4 uses
  %i.at = load i8, ptr %i.as, align 4             ; 2 uses
  %i.au = and i8 %i.at, 2
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -20 ; 5 uses
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, 2
  %i.ay = and i8 %i.at, -3
  %i.az = or disjoint i8 %i.ax, %i.ay
  store i8 %i.az, ptr %i.as, align 4
  %i.ba = load i8, ptr %i.av, align 4             ; 2 uses
  %i.bb = and i8 %i.ba, -3
  %i.bc = or disjoint i8 %i.bb, %i.au
  store i8 %i.bc, ptr %i.av, align 4
  %i.bd = load i8, ptr %i.as, align 4             ; 2 uses
  %i.be = and i8 %i.bd, 1
  %i.bf = and i8 %i.ba, 1
  %i.bg = and i8 %i.bd, -2
  %i.bh = or disjoint i8 %i.bg, %i.bf
  store i8 %i.bh, ptr %i.as, align 4
  %i.bi = load i8, ptr %i.av, align 4
  %i.bj = and i8 %i.bi, -2
  %i.bk = or disjoint i8 %i.bj, %i.be
  store i8 %i.bk, ptr %i.av, align 4
  %i.bl = load i32, ptr %i.g, align 8, !tbaa !246
  %i.bm = load i32, ptr %i.k, align 8, !tbaa !246
  store i32 %i.bm, ptr %i.g, align 8, !tbaa !246
  store i32 %i.bl, ptr %i.k, align 8, !tbaa !246
  br label %bb.b, !llvm.loop !990
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairI8rationaljESt6vectorIS4_13std_allocatorIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2lp35print_linear_combination_customizedIS3_EERSoRK6vectorIS2_IT_jELb1EjESt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEESF_EUlRKSH_RKT0_E_EEEvSH_SH_SX_(ptr %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair", align 8        ; 12 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.016 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.016, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.018 = phi ptr [ %.sroa.0.016, %.lr.ph ], [ %.sroa.0.0, %bb.f ] ; 6 uses
  %.pn17 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.018, %bb.f ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pn17, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !308  ; 2 uses
  %i.q = load i32, ptr %i.c, align 8, !tbaa !308
  %i.r = icmp ult i32 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.s = load i8, ptr %i.d, align 4
  %i.t = and i8 %i.s, -4
  %i.u = load i32, ptr %.sroa.0.018, align 4, !tbaa !246
  store i32 %i.u, ptr %2, align 8, !tbaa !246
  store i32 0, ptr %.sroa.0.018, align 4, !tbaa !246
  %i.v = getelementptr inbounds nuw i8, ptr %.pn17, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !302
  store ptr %i.w, ptr %i.e, align 8, !tbaa !302
  store ptr null, ptr %i.v, align 8, !tbaa !302
  %i.x = getelementptr inbounds nuw i8, ptr %.pn17, i64 44 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4               ; 2 uses
  %i.z = and i8 %i.y, 3
  %i.aa = or disjoint i8 %i.z, %i.t
  store i8 %i.aa, ptr %i.d, align 4
  %i.ab = and i8 %i.y, -4
  store i8 %i.ab, ptr %i.x, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn17, i64 56 ; 2 uses
  %i.ad = load i8, ptr %i.g, align 4
  %i.ae = and i8 %i.ad, -4
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !246
  store i32 %i.af, ptr %i.f, align 8, !tbaa !246
  store i32 0, ptr %i.ac, align 8, !tbaa !246
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn17, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !302
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !302
  store ptr null, ptr %i.ag, align 8, !tbaa !302
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn17, i64 60 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 4             ; 2 uses
  %i.ak = and i8 %i.aj, 3
  %i.al = or disjoint i8 %i.ak, %i.ae
  store i8 %i.al, ptr %i.g, align 4
  %i.am = and i8 %i.aj, -4
  store i8 %i.am, ptr %i.ai, align 4
  store i32 %i.p, ptr %i.i, align 8, !tbaa !308
  %i.an = getelementptr inbounds nuw i8, ptr %.pn17, i64 80
  %i.ao = call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairI8rationaljES6_EET0_T_S8_S7_(ptr noundef nonnull %0, ptr noundef nonnull %.sroa.0.018, ptr noundef nonnull %i.an) ; 0 uses
  %i.ap = load i32, ptr %0, align 8, !tbaa !246
  %i.aq = load i32, ptr %2, align 8, !tbaa !246
  store i32 %i.aq, ptr %0, align 8, !tbaa !246
  store i32 %i.ap, ptr %2, align 8, !tbaa !246
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !302
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !302
  store ptr %i.as, ptr %i.j, align 8, !tbaa !302
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !302
  %i.at = load i8, ptr %i.k, align 4              ; 2 uses
  %i.au = load i8, ptr %i.d, align 4              ; 2 uses
  %i.av = and i8 %i.at, -4
  %i.aw = and i8 %i.au, -4
  %i.ax = and i8 %i.au, 3
  %i.ay = or disjoint i8 %i.ax, %i.av
  store i8 %i.ay, ptr %i.k, align 4
  %i.az = and i8 %i.at, 3
  %i.ba = or disjoint i8 %i.aw, %i.az
  store i8 %i.ba, ptr %i.d, align 4
  %i.bb = load i32, ptr %i.l, align 8, !tbaa !246
  %i.bc = load i32, ptr %i.f, align 8, !tbaa !246
  store i32 %i.bc, ptr %i.l, align 8, !tbaa !246
  store i32 %i.bb, ptr %i.f, align 8, !tbaa !246
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !302
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !302
  store ptr %i.be, ptr %i.m, align 8, !tbaa !302
  store ptr %i.bd, ptr %i.h, align 8, !tbaa !302
  %i.bf = load i8, ptr %i.n, align 4              ; 2 uses
  %i.bg = load i8, ptr %i.g, align 4              ; 2 uses
  %i.bh = and i8 %i.bf, -4
  %i.bi = and i8 %i.bg, -4
  %i.bj = and i8 %i.bg, 3
  %i.bk = or disjoint i8 %i.bj, %i.bh
  store i8 %i.bk, ptr %i.n, align 4
  %i.bl = and i8 %i.bf, 3
  %i.bm = or disjoint i8 %i.bi, %i.bl
  store i8 %i.bm, ptr %i.g, align 4
  %i.bn = load i32, ptr %i.i, align 8, !tbaa !246
  store i32 %i.bn, ptr %i.c, align 8, !tbaa !308
  %i.bo = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !254 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %.noexc.i.i unwind label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZNSt4pairI8rationaljED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc.i.i, %bb.c
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #29
  unreachable

_ZNSt4pairI8rationaljED2Ev.exit:                  ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairI8rationaljESt6vectorIS4_13std_allocatorIS4_EEEENS0_5__ops14_Val_comp_iterIZN2lp35print_linear_combination_customizedIS3_EERSoRK6vectorIS2_IT_jELb1EjESt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEESF_EUlRKSH_RKT0_E_EEEvSH_SX_(ptr nonnull %.sroa.0.018)
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt4pairI8rationaljED2Ev.exit, %bb.e
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 40 ; 2 uses
  %i.br = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.br, label %.loopexit, label %bb.b, !llvm.loop !991

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairI8rationaljESt6vectorIS4_13std_allocatorIS4_EEEENS0_5__ops14_Val_comp_iterIZN2lp35print_linear_combination_customizedIS3_EERSoRK6vectorIS2_IT_jELb1EjESt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEESF_EUlRKSH_RKT0_E_EEEvSH_SX_(ptr %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair", align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !246    ; 2 uses
  store i32 %i.e, ptr %1, align 8, !tbaa !246
  store i32 0, ptr %0, align 4, !tbaa !246
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !302  ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !302
  store ptr null, ptr %i.f, align 8, !tbaa !302
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4               ; 3 uses
  %2 = and i8 %i.i, 2
  %3 = or disjoint i8 %2, %i.c
  store i8 %3, ptr %i.a, align 4
  %i.j = and i8 %i.i, -4                          ; 2 uses
  store i8 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !243
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, -4                          ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !242
  %i.q = load i32, ptr %i.l, align 8, !tbaa !246
  store i32 0, ptr %i.l, align 8, !tbaa !246
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !302
  store ptr null, ptr %i.r, align 8, !tbaa !302
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4               ; 3 uses
  %4 = and i8 %i.u, 2
  %5 = or disjoint i8 %4, %i.o
  store i8 %5, ptr %i.m, align 4
  %i.v = and i8 %i.u, -4                          ; 2 uses
  store i8 %i.v, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !308  ; 4 uses
  store i32 %i.y, ptr %i.w, align 8, !tbaa !308
  %i.z = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !308
  %i.ab = icmp ult i32 %i.y, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.ac = phi ptr [ %i.bm, %.lr.ph ], [ %i.z, %bb.a ]
  %.sroa.03.06 = phi ptr [ %.sroa.0.0, %.lr.ph ], [ %0, %bb.a ] ; 14 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.03.06, i64 -40 ; 4 uses
  %i.ad = load i32, ptr %.sroa.0.0, align 4, !tbaa !246
  store i32 %i.ad, ptr %.sroa.03.06, align 4, !tbaa !246
  store i32 0, ptr %.sroa.0.0, align 4, !tbaa !246
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.06, i64 8 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.03.06, i64 -32 ; 2 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !302 ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !302
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !302
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !302
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.06, i64 4 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 4             ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.03.06, i64 -36 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 4             ; 2 uses
  %i.am = and i8 %i.aj, -4
  %i.an = and i8 %i.al, -4
  %i.ao = and i8 %i.al, 3
  %i.ap = or disjoint i8 %i.ao, %i.am
  store i8 %i.ap, ptr %i.ai, align 4
  %i.aq = and i8 %i.aj, 3
  %i.ar = or disjoint i8 %i.an, %i.aq             ; 2 uses
  store i8 %i.ar, ptr %i.ak, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.06, i64 16 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.03.06, i64 -24 ; 2 uses
  %i.au = load i32, ptr %i.as, align 8, !tbaa !246 ; 2 uses
  %i.av = load i32, ptr %i.at, align 8, !tbaa !246
  store i32 %i.av, ptr %i.as, align 8, !tbaa !246
  store i32 %i.au, ptr %i.at, align 8, !tbaa !246
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.06, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.03.06, i64 -16 ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !302 ; 2 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !302
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !302
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !302
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.06, i64 20 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 4             ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.03.06, i64 -20 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 4             ; 2 uses
  %i.be = and i8 %i.bb, -4
  %i.bf = and i8 %i.bd, -4
  %i.bg = and i8 %i.bd, 3
  %i.bh = or disjoint i8 %i.bg, %i.be
  store i8 %i.bh, ptr %i.ba, align 4
  %i.bi = and i8 %i.bb, 3
  %i.bj = or disjoint i8 %i.bf, %i.bi             ; 2 uses
  store i8 %i.bj, ptr %i.bc, align 4
  %i.bk = load i32, ptr %i.ac, align 4, !tbaa !246
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.03.06, i64 32
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !308
  %i.bm = getelementptr inbounds i8, ptr %.sroa.03.06, i64 -48 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !308
  %i.bo = icmp ult i32 %i.y, %i.bn
  br i1 %i.bo, label %.lr.ph, label %._crit_edge, !llvm.loop !992

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bp = phi i8 [ %i.v, %bb.a ], [ %i.bj, %.lr.ph ] ; 2 uses
  %i.bq = phi ptr [ null, %bb.a ], [ %i.ay, %.lr.ph ]
  %i.br = phi i32 [ 0, %bb.a ], [ %i.au, %.lr.ph ]
  %i.bs = phi i8 [ %i.j, %bb.a ], [ %i.ar, %.lr.ph ] ; 2 uses
  %i.bt = phi ptr [ null, %bb.a ], [ %i.ag, %.lr.ph ]
  %.sroa.03.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0, %.lr.ph ] ; 7 uses
  store i32 %i.e, ptr %.sroa.03.0.lcssa, align 4, !tbaa !246
  store i32 0, ptr %1, align 8, !tbaa !246
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa, i64 8
  store ptr %i.g, ptr %i.bu, align 8, !tbaa !302
  store ptr %i.bt, ptr %i.d, align 8, !tbaa !302
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa, i64 4
  %i.bw = and i8 %i.bs, -4
  %i.bx = and i8 %i.i, 3
  %i.by = or disjoint i8 %i.bx, %i.bw
  store i8 %i.by, ptr %i.bv, align 4
  %i.bz = and i8 %i.bs, 3
  %i.ca = or disjoint i8 %i.c, %i.bz
  store i8 %i.ca, ptr %i.a, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa, i64 16
  store i32 %i.q, ptr %i.cb, align 8, !tbaa !246
  store i32 %i.br, ptr %i.k, align 8, !tbaa !246
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa, i64 24
  store ptr %i.s, ptr %i.cc, align 8, !tbaa !302
  store ptr %i.bq, ptr %i.p, align 8, !tbaa !302
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa, i64 20
  %i.ce = and i8 %i.bp, -4
  %i.cf = and i8 %i.u, 3
  %i.cg = or disjoint i8 %i.cf, %i.ce
  store i8 %i.cg, ptr %i.cd, align 4
  %i.ch = and i8 %i.bp, 3
  %i.ci = or disjoint i8 %i.o, %i.ch
  store i8 %i.ci, ptr %i.m, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa, i64 32
  store i32 %i.y, ptr %i.cj, align 8, !tbaa !308
  %i.ck = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !254 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %.noexc.i.i unwind label %bb.b

.noexc.i.i:                                       ; preds = %._crit_edge
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_ZNSt4pairI8rationaljED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %._crit_edge
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #29
  unreachable

_ZNSt4pairI8rationaljED2Ev.exit:                  ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairI8rationaljES6_EET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 40
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.010 = phi i64 [ %i.bk, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.069 = phi ptr [ %i.g, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 7 uses
  %.078 = phi ptr [ %i.f, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 7 uses
  %i.f = getelementptr inbounds i8, ptr %.078, i64 -40 ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.069, i64 -40 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !246
  %i.i = load i32, ptr %i.f, align 4, !tbaa !246
  store i32 %i.i, ptr %i.g, align 4, !tbaa !246
  store i32 %i.h, ptr %i.f, align 4, !tbaa !246
  %i.j = getelementptr inbounds i8, ptr %.069, i64 -32 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.078, i64 -32 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !302
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !302
  store ptr %i.m, ptr %i.j, align 8, !tbaa !302
  store ptr %i.l, ptr %i.k, align 8, !tbaa !302
  %i.n = getelementptr inbounds i8, ptr %.069, i64 -36 ; 4 uses
  %i.o = load i8, ptr %i.n, align 4               ; 2 uses
  %i.p = and i8 %i.o, 2
  %i.q = getelementptr inbounds i8, ptr %.078, i64 -36 ; 5 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 2
  %i.t = and i8 %i.o, -3
  %i.u = or disjoint i8 %i.s, %i.t
  store i8 %i.u, ptr %i.n, align 4
  %i.v = load i8, ptr %i.q, align 4               ; 2 uses
  %i.w = and i8 %i.v, -3
  %i.x = or disjoint i8 %i.w, %i.p
  store i8 %i.x, ptr %i.q, align 4
  %i.y = load i8, ptr %i.n, align 4               ; 2 uses
  %i.z = and i8 %i.y, 1
  %i.aa = and i8 %i.v, 1
  %i.ab = and i8 %i.y, -2
  %i.ac = or disjoint i8 %i.ab, %i.aa
  store i8 %i.ac, ptr %i.n, align 4
  %i.ad = load i8, ptr %i.q, align 4
  %i.ae = and i8 %i.ad, -2
  %i.af = or disjoint i8 %i.ae, %i.z
  store i8 %i.af, ptr %i.q, align 4
  %i.ag = getelementptr inbounds i8, ptr %.069, i64 -24 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.078, i64 -24 ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 8, !tbaa !246
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !246
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !246
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !246
  %i.ak = getelementptr inbounds i8, ptr %.069, i64 -16 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.078, i64 -16 ; 2 uses
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !302
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !302
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !302
  store ptr %i.am, ptr %i.al, align 8, !tbaa !302
  %i.ao = getelementptr inbounds i8, ptr %.069, i64 -20 ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 4             ; 2 uses
  %i.aq = and i8 %i.ap, 2
  %i.ar = getelementptr inbounds i8, ptr %.078, i64 -20 ; 5 uses
  %i.as = load i8, ptr %i.ar, align 4
  %i.at = and i8 %i.as, 2
  %i.au = and i8 %i.ap, -3
  %i.av = or disjoint i8 %i.at, %i.au
  store i8 %i.av, ptr %i.ao, align 4
  %i.aw = load i8, ptr %i.ar, align 4             ; 2 uses
  %i.ax = and i8 %i.aw, -3
  %i.ay = or disjoint i8 %i.ax, %i.aq
end_hunk_0
