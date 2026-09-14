Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/forcerec?download=true
inline.NumInlined: 1852
inline.NumDeleted: 1165
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3gmx20checkMtsRequirementsB5cxx11ERK10t_inputrec
declare void @_ZN3gmx20checkMtsRequirementsB5cxx11ERK10t_inputrec(ptr dead_on_unwind writable sret(%"class.std::vector.411") align 8, ptr noundef nonnull align 8 dereferenceable(888)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !661    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !662  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !20
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !660

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !661
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !210
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK3gmx14ForceProviders16hasForceProviderEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_Z11make_tablesP8_IO_FILERK19interaction_const_tPKcfi(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.51") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(137), ptr noundef, float noundef, i32 noundef) local_unnamed_addr #6

declare void @_Z16make_wall_tablesP8_IO_FILERK10t_inputrecPKcPK16SimulationGroupsP10t_forcerec(ptr noundef, ptr noundef nonnull align 8 dereferenceable(888), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL18make_bonded_tablesP8_IO_FILE19InteractionFunctionSt8optionalIS1_ERK10gmx_mtop_tN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKc(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr noundef %1, i32 noundef range(i32 7, 27) %2, i64 %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %4, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.169") align 8 captures(none) %5, ptr noundef %6) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %struct.bondedtable_t, align 8      ; 7 uses
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !666  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !666  ; 2 uses
  %.not5361.i = icmp eq ptr %i.b, %i.d
  br i1 %.not5361.i, label %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.e = and i64 %3, 4294967296                   ; 2 uses
  %i.f = icmp ne i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.h = and i64 %3, 4294967295
  %i.i = zext nneg i32 %2 to i64                  ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.lr.ph.i
  %.056 = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.258, %bb.b ]
  %.054 = phi ptr [ null, %.preheader.lr.ph.i ], [ %.2, %bb.b ]
  %.sroa.046.062.i = phi ptr [ %i.b, %.preheader.lr.ph.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.046.062.i, i64 80
  br label %bb.c

bb.b:                                             ; preds = %.loopexit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.046.062.i, i64 2408 ; 2 uses
  %.not53.i = icmp eq ptr %i.k, %i.d
  br i1 %.not53.i, label %_ZL12count_tables19InteractionFunctionSt8optionalIS_ERK10gmx_mtop_tPiPS5_.exit, label %.preheader.i

bb.c:                                             ; preds = %.loopexit.i, %.preheader.i
  %.157 = phi i32 [ %.056, %.preheader.i ], [ %.258, %.loopexit.i ] ; 3 uses
  %.155 = phi ptr [ %.054, %.preheader.i ], [ %.2, %.loopexit.i ] ; 3 uses
  %indvars.iv67.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next68.i, %.loopexit.i ] ; 5 uses
  %i.l = icmp eq i64 %indvars.iv67.i, %i.i
  %i.m = icmp eq i64 %indvars.iv67.i, %i.h
  %or.cond.i = and i1 %i.f, %i.m
  %or.cond52.i = select i1 %i.l, i1 true, i1 %or.cond.i
  br i1 %or.cond52.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv67.i ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !194  ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !195  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 2
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph59.preheader.i, label %.loopexit.i

.lr.ph59.preheader.i:                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv67.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !227
  %i.aa = add i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  br label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %bb.j, %.lr.ph59.preheader.i
  %.359 = phi i32 [ %.157, %.lr.ph59.preheader.i ], [ %.460, %bb.j ] ; 4 uses
  %.3 = phi ptr [ %.155, %.lr.ph59.preheader.i ], [ %.4, %bb.j ] ; 2 uses
  %i.ac = phi ptr [ %i.q, %.lr.ph59.preheader.i ], [ %i.av, %bb.j ] ; 2 uses
  %i.ad = phi ptr [ %i.p, %.lr.ph59.preheader.i ], [ %i.aw, %bb.j ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph59.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !196
  %i.ag = sext i32 %i.af to i64
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !215
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !20 ; 6 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph59.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(63) @.str.12, i8 noundef zeroext 2)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 502, ptr noundef nonnull @.str.57, i32 noundef %i.aj) #27
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc
  unreachable

bb.g:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body

bb.h:                                             ; preds = %.lr.ph59.i
  %.not.i = icmp slt i32 %i.aj, %.359
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.12, i32 noundef 507, ptr noundef %.3, i64 noundef range(i64 1, 2147483648) %i.an, i64 noundef 4)
          to label %._crit_edge.i unwind label %.loopexit ; 2 uses

._crit_edge.i:                                    ; preds = %bb.i
  %i.ap = zext nneg i32 %.359 to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %scevgep.i = getelementptr i8, ptr %i.ao, i64 %i.aq
  %i.ar = sub nsw i32 %i.aj, %.359
  %i.as = zext i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.au, i1 false), !tbaa !196
  %.pre70.i = load ptr, ptr %i.o, align 8, !tbaa !194
  %.pre71.i = load ptr, ptr %i.n, align 8, !tbaa !195
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %bb.h
  %.460 = phi i32 [ %.359, %bb.h ], [ %i.am, %._crit_edge.i ] ; 2 uses
  %.4 = phi ptr [ %.3, %bb.h ], [ %i.ao, %._crit_edge.i ] ; 3 uses
  %i.av = phi ptr [ %i.ac, %bb.h ], [ %.pre71.i, %._crit_edge.i ] ; 2 uses
  %i.aw = phi ptr [ %i.ad, %bb.h ], [ %.pre70.i, %._crit_edge.i ] ; 2 uses
  %i.ax = zext nneg i32 %i.aj to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.4, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !196
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !196
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, %i.ab ; 2 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = ptrtoint ptr %i.av to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %sext.i = shl i64 %i.bd, 30
  %i.be = ashr i64 %sext.i, 32
  %i.bf = icmp slt i64 %indvars.iv.next.i, %i.be
  br i1 %i.bf, label %.lr.ph59.i, label %.loopexit.i, !llvm.loop !663

.loopexit.i:                                      ; preds = %bb.j, %bb.d, %bb.c
  %.258 = phi i32 [ %.157, %bb.c ], [ %.157, %bb.d ], [ %.460, %bb.j ] ; 4 uses
  %.2 = phi ptr [ %.155, %bb.c ], [ %.155, %bb.d ], [ %.4, %bb.j ] ; 5 uses
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %.not54.i = icmp eq i64 %indvars.iv.next68.i, 95
  br i1 %.not54.i, label %bb.b, label %bb.c

_ZL12count_tables19InteractionFunctionSt8optionalIS_ERK10gmx_mtop_tPiPS5_.exit: ; preds = %bb.b
  %i.bg = icmp sgt i32 %.258, 0
  br i1 %i.bg, label %bb.k, label %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit

bb.k:                                             ; preds = %_ZL12count_tables19InteractionFunctionSt8optionalIS_ERK10gmx_mtop_tPiPS5_.exit
  %i.bh = zext nneg i32 %.258 to i64              ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !221 ; 3 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !220   ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 5                 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, %i.bh
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = sub nuw nsw i64 %i.bh, %i.bo
  invoke void @_ZNSt6vectorI13bondedtable_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bq)
          to label %.lr.ph74 unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.k
  %i.br = icmp ugt i64 %i.bo, %i.bh
  br i1 %i.br, label %bb.n, label %.lr.ph74

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bh ; 3 uses
  %.not.i.i = icmp eq ptr %i.bj, %i.bs
  br i1 %.not.i.i, label %.lr.ph74, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %_ZSt8_DestroyI13bondedtable_tEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ca, %_ZSt8_DestroyI13bondedtable_tEvPT_.exit.i.i.i.i ], [ %i.bs, %bb.n ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI13bondedtable_tEvPT_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !45
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #29
  br label %_ZSt8_DestroyI13bondedtable_tEvPT_.exit.i.i.i.i

_ZSt8_DestroyI13bondedtable_tEvPT_.exit.i.i.i.i:  ; preds = %bb.o, %.lr.ph.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, %i.bj
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIP13bondedtable_tS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIP13bondedtable_tS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyI13bondedtable_tEvPT_.exit.i.i.i.i
  store ptr %i.bs, ptr %i.bi, align 8, !tbaa !221
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %_ZSt8_DestroyIP13bondedtable_tS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.n, %bb.m, %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %5, align 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %.fr = freeze i64 %i.cf
  %i.cg = ashr i64 %.fr, 5                        ; 2 uses
  %i.ch = icmp slt i64 %i.cg, 1
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.i ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  br i1 %i.ch, label %.lr.ph74.split.us, label %.lr.ph74.split

.lr.ph74.split.us:                                ; preds = %.lr.ph74, %bb.r
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %bb.r ], [ 0, %.lr.ph74 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv91
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !196
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph74.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.cq = invoke noundef ptr @_Z7ftp2exti(i32 noundef 21)
          to label %bb.q unwind label %.split.us

bb.q:                                             ; preds = %bb.p
  %i.cr = trunc nuw nsw i64 %indvars.iv91 to i32  ; 2 uses
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.52, ptr noundef %6, i32 noundef %i.cr, ptr noundef %i.cq)
          to label %.split77.us unwind label %.split.us

bb.r:                                             ; preds = %.lr.ph74.split.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next92, %i.bh
  br i1 %exitcond97.not, label %._crit_edge75, label %.lr.ph74.split.us, !llvm.loop !664

.split.us:                                        ; preds = %bb.q, %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

._crit_edge75:                                    ; preds = %bb.ah, %bb.r
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.12, i32 noundef 584, ptr noundef %.2)
          to label %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.e, %bb.l, %._crit_edge75
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph74.split:                                   ; preds = %.lr.ph74, %bb.ah
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ah ], [ 0, %.lr.ph74 ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !196
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %bb.s, label %bb.ah

bb.s:                                             ; preds = %.lr.ph74.split
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.cw = invoke noundef ptr @_Z7ftp2exti(i32 noundef 21)
          to label %bb.t unwind label %.split

bb.t:                                             ; preds = %bb.s
  %i.cx = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.52, ptr noundef %6, i32 noundef %i.cx, ptr noundef %i.cw)
          to label %.preheader unwind label %.split

.split:                                           ; preds = %bb.t, %bb.s
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.u:                                             ; preds = %.preheader
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.preheader:                                       ; preds = %bb.t, %.thread
  %.072 = phi i64 [ %i.dw, %.thread ], [ 0, %bb.t ] ; 2 uses
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.072 ; 2 uses
  %.val = load ptr, ptr %i.da, align 8, !tbaa !19
  %.val39 = load ptr, ptr %8, align 8, !tbaa !19
  %i.db = invoke noundef zeroext i1 @_ZN3gmx8endsWithEPKcS1_(ptr noundef %.val, ptr noundef %.val39)
          to label %_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %bb.u

_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %.preheader
  br i1 %i.db, label %bb.v, label %.thread

bb.v:                                             ; preds = %_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !19
  %i.dd = load i32, ptr %i.cj, align 8, !tbaa !227
  %i.de = add nsw i32 %i.dd, -2
  invoke void @_Z17make_bonded_tableP8_IO_FILEPKci(ptr dead_on_unwind nonnull writable sret(%struct.bondedtable_t) align 8 %9, ptr noundef %1, ptr noundef %i.dc, i32 noundef %i.de)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %0, align 8, !tbaa !220
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %indvars.iv ; 3 uses
  %i.dh = load i64, ptr %9, align 8
  store i64 %i.dh, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !44 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !45
  %i.dm = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !189
  store <2 x ptr> %i.dm, ptr %i.di, align 8, !tbaa !189
  %i.dn = load ptr, ptr %i.cl, align 8, !tbaa !45
  store ptr %i.dn, ptr %i.dk, align 8, !tbaa !45
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dj, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %bb.af, label %_ZN13bondedtable_taSEOS_.exit

_ZN13bondedtable_taSEOS_.exit:                    ; preds = %bb.w
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = ptrtoint ptr %i.dj to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.dq) #29
  %.pr = load ptr, ptr %i.ck, align 8, !tbaa !44  ; 3 uses
  %.not.i.i.i.i44 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i44, label %bb.af, label %bb.x

bb.x:                                             ; preds = %_ZN13bondedtable_taSEOS_.exit
  %i.dr = load ptr, ptr %i.cl, align 8, !tbaa !45
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %.pr to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.du) #29
  br label %bb.af

bb.y:                                             ; preds = %bb.v
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ag

.thread:                                          ; preds = %_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %i.dw = add nuw nsw i64 %.072, 1                ; 2 uses
  %.not127 = icmp slt i64 %i.dw, %i.cg
  br i1 %.not127, label %.preheader, label %.split77.us, !llvm.loop !665

.split77.us:                                      ; preds = %.thread, %bb.q
  %.us-phi78 = phi i32 [ %i.cr, %bb.q ], [ %i.cx, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 1 dereferenceable(63) @.str.12, i8 noundef zeroext 2)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %.split77.us
  %.not = icmp eq i64 %i.e, 0                     ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !667
  %i.dz = select i1 %.not, ptr @.str.55, ptr @.str.54
  br i1 %.not, label %bb.aa, label %_ZNKRSt8optionalI19InteractionFunctionE5valueEv.exit

_ZNKRSt8optionalI19InteractionFunctionE5valueEv.exit: ; preds = %bb.z
  %sext = shl i64 %3, 32
  %i.ea = ashr exact i64 %sext, 27
  %i.eb = getelementptr inbounds nuw i8, ptr @interaction_function, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !667
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNKRSt8optionalI19InteractionFunctionE5valueEv.exit
  %i.ee = phi ptr [ %i.ed, %_ZNKRSt8optionalI19InteractionFunctionE5valueEv.exit ], [ @.str.55, %bb.z ]
  %i.ef = load ptr, ptr %8, align 8, !tbaa !19
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 572, ptr noundef nonnull @.str.53, ptr noundef %i.dy, ptr noundef nonnull %i.dz, ptr noundef %i.ee, i32 noundef %.us-phi78, ptr noundef %i.ef) #27
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %.split77.us
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.ad ], [ %i.eg, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ag

bb.af:                                            ; preds = %bb.x, %_ZN13bondedtable_taSEOS_.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ei = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.cm
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.ek = load i64, ptr %i.cm, align 8, !tbaa !20
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.ah

bb.ag:                                            ; preds = %bb.u, %bb.y, %bb.ae
  %.pn34.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.dv, %bb.y ], [ %i.cz, %bb.u ] ; 2 uses
  %i.em = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.cm
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.ag
  %i.eo = load i64, ptr %i.cm, align 8, !tbaa !20
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.ag, %.split, %.split.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.cs, %.split.us ], [ %i.cy, %.split ], [ %.pn34.pn, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body

bb.ah:                                            ; preds = %.lr.ph74.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bh
  br i1 %exitcond.not, label %._crit_edge75, label %.lr.ph74.split, !llvm.loop !664

_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit:           ; preds = %bb.a, %._crit_edge75, %_ZL12count_tables19InteractionFunctionSt8optionalIS_ERK10gmx_mtop_tPiPS5_.exit
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.al, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorI13bondedtable_tSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  resume { ptr, i32 } %.pn34.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI13bondedtable_tSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !220    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !221  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP13bondedtable_tS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI13bondedtable_tEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyI13bondedtable_tEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyI13bondedtable_tEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #29
  br label %_ZSt8_DestroyI13bondedtable_tEvPT_.exit.i.i

_ZSt8_DestroyI13bondedtable_tEvPT_.exit.i.i:      ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP13bondedtable_tS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIP13bondedtable_tS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI13bondedtable_tEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !220
  br label %_ZSt8_DestroyIP13bondedtable_tS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP13bondedtable_tS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP13bondedtable_tS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIP13bondedtable_tS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI13bondedtable_tSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP13bondedtable_tS0_EvT_S2_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !222
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZNSt12_Vector_baseI13bondedtable_tSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI13bondedtable_tSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP13bondedtable_tS0_EvT_S2_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #17

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

declare void @_ZNK20DispersionCorrection5printERKN3gmx8MDLoggerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN3gmx22WholeMoleculeTransformC1ERK10gmx_mtop_t7PbcTypeb(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(768), i32 noundef, i1 noundef zeroext) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx22WholeMoleculeTransformD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !195  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !197
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.c, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !195  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZN3gmx11ListOfListsIiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !197
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #29
  br label %_ZN3gmx11ListOfListsIiED2Ev.exit

_ZN3gmx11ListOfListsIiED2Ev.exit:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !669  ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i1, label %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN3gmx11ListOfListsIiED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !670
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #29
  br label %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i

_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i:           ; preds = %bb.e, %_ZN3gmx11ListOfListsIiED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !673 ; 3 uses
  %.not.i.i.i1.i2 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i1.i2, label %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !674
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #29
  br label %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i: ; preds = %bb.f, %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !195 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !197
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.g, %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !195 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7t_graphD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !197
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #29
  br label %_ZN7t_graphD2Ev.exit

_ZN7t_graphD2Ev.exit:                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, %bb.h
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
