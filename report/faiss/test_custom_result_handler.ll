Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_custom_result_handler?download=true
inline.NumInlined: 1267
inline.NumDeleted: 572
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_110test_indexEPKcN5faiss10MetricTypeEd:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.ia = load ptr, ptr %8, align 8, !tbaa !67    ; 3 uses
  %.not.i.i.i140 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorIfSaIfEED2Ev.exit141, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit139
  %i.ib = load ptr, ptr %i.cm, align 8, !tbaa !68
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.ia to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.ie) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit141

_ZNSt6vectorIfSaIfEED2Ev.exit141:                 ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit139, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit141, %bb.ao
  %.pn51.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit141 ], [ %i.dt, %bb.ao ]
  call void @_ZN23CollectAllResultHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit144

bb.bx:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNSt6vectorIfSaIfEED2Ev.exit100
  %i.if = load ptr, ptr %3, align 8, !tbaa !35    ; 3 uses
  %.not.i142 = icmp eq ptr %i.if, null
  br i1 %.not.i142, label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i: ; preds = %bb.bx
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !22
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(36) %i.if) #20, !inline_history !98
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bx, %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit144:                 ; preds = %bb.bw, %bb.ag
  %.pn51.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn.pn, %bb.bw ], [ %i.cs, %bb.ag ]
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 4000) #22
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit146

_ZNSt6vectorIlSaIlEED2Ev.exit146:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit144, %bb.af
  %.pn51.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit144 ], [ %i.cr, %bb.af ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 8000) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit148

_ZNSt6vectorIfSaIfEED2Ev.exit148:                 ; preds = %bb.ae, %_ZNSt6vectorIlSaIlEED2Ev.exit146, %bb.y
  %.pn51.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.y ], [ %.pn51.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit146 ], [ %i.cq, %bb.ae ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 25600) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit150

_ZNSt6vectorIfSaIfEED2Ev.exit150:                 ; preds = %bb.x, %_ZNSt6vectorIfSaIfEED2Ev.exit.i87, %_ZNSt6vectorIfSaIfEED2Ev.exit148
  %.pn51.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit148 ], [ %i.bm, %bb.x ], [ %i.az, %_ZNSt6vectorIfSaIfEED2Ev.exit.i87 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 512000) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit152

_ZNSt6vectorIfSaIfEED2Ev.exit152:                 ; preds = %bb.w, %_ZNSt6vectorIfSaIfEED2Ev.exit.i82, %_ZNSt6vectorIfSaIfEED2Ev.exit150
  %.pn51.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit150 ], [ %i.bl, %bb.w ], [ %i.ax, %_ZNSt6vectorIfSaIfEED2Ev.exit.i82 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 1280000) #22
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit152, %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.v, %bb.u
  %.pn51.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.u ], [ %.pn51.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit152 ], [ %i.bk, %bb.v ], [ %i.av, %_ZNSt6vectorIfSaIfEED2Ev.exit.i ]
  %i.ij = load ptr, ptr %3, align 8, !tbaa !35    ; 3 uses
  %.not.i153 = icmp eq ptr %i.ij, null
  br i1 %.not.i153, label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit155, label %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i154

_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i154: ; preds = %.body
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !22
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(36) %i.ij) #20, !inline_history !98
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit155

_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit155: ; preds = %.body, %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn51.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef ptr @_ZN5faiss13index_factoryEiPKcNS_10MetricTypeEb(i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !44
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #22
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK23CollectAllResultHandler9get_top_kEmRSt6vectorIfSaIfEERS0_IlSaIlEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #24
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EvT_SF_T0_.exit, label %.noexc33

.noexc33:                                         ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.g, 1
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23 ; 17 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h ; 5 uses
  store i64 0, ptr %i.k, align 8, !tbaa !56
  %i.m = getelementptr i8, ptr %i.k, i64 8        ; 3 uses
  %i.n = add nsw i64 %i.h, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc33
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc33
  %.0.i.i.i.i.i.ph = phi ptr [ %i.m, %.noexc33 ], [ %i.p, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 7 uses
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.preheader111, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.h, 1152921504606846972      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x i64> %vec.ind, ptr %i.q, align 8, !tbaa !56
  store <2 x i64> %step.add, ptr %i.r, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader111

.lr.ph.preheader111:                              ; preds = %.lr.ph.preheader, %middle.block
  %.03057.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.t = icmp eq ptr %i.k, %.0.i.i.i.i.i.ph       ; 2 uses
  br i1 %4, label %bb.b, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader111, %.lr.ph
  %.03057 = phi i64 [ %i.v, %.lr.ph ], [ %.03057.ph, %.lr.ph.preheader111 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03057
  store i64 %.03057, ptr %i.u, align 8, !tbaa !56
  %i.v = add nuw i64 %.03057, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !127

bb.b:                                             ; preds = %._crit_edge
  br i1 %i.t, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EvT_SF_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.x = ptrtoint ptr %i.k to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = xor i64 %i.ab, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_T1_(ptr nonnull %i.k, ptr %.0.i.i.i.i.i.ph, i64 noundef %i.ac, ptr nonnull %i.a)
          to label %.noexc34 unwind label %.thread102

.noexc34:                                         ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_(ptr nonnull %i.k, ptr %.0.i.i.i.i.i.ph, ptr nonnull %i.a)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EvT_SF_T0_.exit unwind label %.thread102

.thread102:                                       ; preds = %bb.c, %.noexc34, %bb.e, %.noexc36
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.d:                                             ; preds = %._crit_edge
  br i1 %i.t, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EvT_SF_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.af = ptrtoint ptr %i.k to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %i.ak = xor i64 %i.aj, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_T1_(ptr nonnull %i.k, ptr %.0.i.i.i.i.i.ph, i64 noundef %i.ak, ptr nonnull %i.a)
          to label %.noexc36 unwind label %.thread102

.noexc36:                                         ; preds = %bb.e
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_(ptr nonnull %i.k, ptr %.0.i.i.i.i.i.ph, ptr nonnull %i.a)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EvT_SF_T0_.exit unwind label %.thread102

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EvT_SF_T0_.exit: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %bb.d, %.noexc36, %bb.b, %.noexc34
  %.sroa.043.07390 = phi ptr [ %i.k, %bb.d ], [ %i.k, %.noexc36 ], [ %i.k, %bb.b ], [ %i.k, %.noexc34 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.16.07685 = phi ptr [ %i.l, %bb.d ], [ %i.l, %.noexc36 ], [ %i.l, %bb.b ], [ %i.l, %.noexc34 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %1) ; 13 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !70 ; 2 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 3 uses
  %i.as = icmp ugt i64 %.sroa.speculated, %i.ar
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EvT_SF_T0_.exit
  %i.at = sub nuw nsw i64 %.sroa.speculated, %i.ar
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.at)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %bb.m

bb.g:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EvT_SF_T0_.exit
  %i.au = icmp ult i64 %.sroa.speculated, %i.ar
  br i1 %i.au, label %bb.h, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.speculated ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %i.av
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.h
  store ptr %i.av, ptr %i.al, align 8, !tbaa !70
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.h, %bb.g, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !71 ; 2 uses
  %i.ay = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 3 uses
  %i.bd = icmp ugt i64 %.sroa.speculated, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.be = sub nuw nsw i64 %.sroa.speculated, %i.bc
  invoke void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.be)
          to label %.lr.ph59 unwind label %bb.m

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.bf = icmp ult i64 %.sroa.speculated, %i.bc
  br i1 %i.bf, label %bb.k, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.speculated ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.ax, %i.bg
  br i1 %.not.i.i39, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.bg, ptr %i.aw, align 8, !tbaa !71
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %bb.j, %bb.k, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  %.not61 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not61, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.i, %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !67  ; 3 uses
  %i.bi = load ptr, ptr %2, align 8, !tbaa !67    ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !63 ; 3 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !63    ; 3 uses
  %xtraiter = and i64 %.sroa.speculated, 1
  %i.bm = icmp eq i64 %.sroa.speculated, 1
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph59.new

.lr.ph59.new:                                     ; preds = %.lr.ph59
  %unroll_iter = and i64 %.sroa.speculated, 1152921504606846974
  br label %bb.l

._crit_edge60:                                    ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %.not.i.i.i = icmp eq ptr %.sroa.043.07390, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %._crit_edge60.thread

._crit_edge60.thread.loopexit.unr-lcssa:          ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge60.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge60.thread.loopexit.unr-lcssa, %.lr.ph59
  %.058.epil.init = phi i64 [ 0, %.lr.ph59 ], [ %i.cp, %._crit_edge60.thread.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod112 = trunc i64 %.sroa.speculated to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.043.07390, i64 %.058.epil.init
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !56 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !72
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.058.epil.init
  store float %i.bq, ptr %i.br, align 4, !tbaa !72
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bo
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !56
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.058.epil.init
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !56
  br label %._crit_edge60.thread

._crit_edge60.thread:                             ; preds = %.epil.preheader, %._crit_edge60.thread.loopexit.unr-lcssa, %._crit_edge60
  %i.bv = ptrtoint ptr %.sroa.16.07685 to i64
  %i.bw = ptrtoint ptr %.sroa.043.07390 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.043.07390, i64 noundef %i.bx) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge60, %._crit_edge60.thread
  ret void

bb.l:                                             ; preds = %bb.l, %.lr.ph59.new
  %.058 = phi i64 [ 0, %.lr.ph59.new ], [ %i.cp, %bb.l ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph59.new ], [ %niter.next.1, %bb.l ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.043.07390, i64 %.058
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !56 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !72
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.058
  store float %i.cb, ptr %i.cc, align 4, !tbaa !72
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bz
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !56
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.058
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !56
  %i.cg = or disjoint i64 %.058, 1                ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.043.07390, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !56 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !72
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cg
  store float %i.ck, ptr %i.cl, align 4, !tbaa !72
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.ci
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !56
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cg
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !56
  %i.cp = add nuw i64 %.058, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge60.thread.loopexit.unr-lcssa, label %bb.l, !llvm.loop !128

bb.m:                                             ; preds = %bb.f, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %.sroa.043.07390, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorImSaImEED2Ev.exit42, label %bb.n

bb.n:                                             ; preds = %.thread102, %bb.m
  %.pn109 = phi { ptr, i32 } [ %i.ad, %.thread102 ], [ %i.cq, %bb.m ]
  %.sroa.043.074108 = phi ptr [ %i.k, %.thread102 ], [ %.sroa.043.07390, %bb.m ] ; 2 uses
  %.sroa.16.077107 = phi ptr [ %i.l, %.thread102 ], [ %.sroa.16.07685, %bb.m ]
  %i.cr = ptrtoint ptr %.sroa.16.077107 to i64
  %i.cs = ptrtoint ptr %.sroa.043.074108 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.043.074108, i64 noundef %i.ct) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit42

_ZNSt6vectorImSaImEED2Ev.exit42:                  ; preds = %bb.n, %bb.m
  %.pn110 = phi { ptr, i32 } [ %.pn109, %bb.n ], [ %i.cq, %bb.m ]
  resume { ptr, i32 } %.pn110
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !57 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #22
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !61
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN23CollectAllResultHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV23CollectAllResultHandler, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.c
  ret void
}

declare void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperOpFailureISt10unique_ptrIN5faiss5IndexESt14default_deleteIS4_EEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_SA_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %15, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.20, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.c ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.d = load ptr, ptr %15, align 8, !tbaa !38    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #20, !inline_history !1
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !38    ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #20, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc15 unwind label %bb.ah

.noexc15:                                         ; preds = %bb.d
  %i.m = icmp eq ptr %1, null
  %i.n = load ptr, ptr %14, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br i1 %i.m, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc15
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc15
  %i.q = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.33, %.noexc15 ]
  %i.r = phi i64 [ %i.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %.noexc15 ]
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.f ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.t = load ptr, ptr %14, align 8, !tbaa !38    ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i13, label %bb.g, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14: ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #20, !inline_history !2
  br label %bb.g
end_hunk_0
