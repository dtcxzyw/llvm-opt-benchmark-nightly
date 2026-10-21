Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/im_instantiator?download=true
inline.NumInlined: 6408
inline.NumDeleted: 1102
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6casadi6MatrixIxE13sparsity_castERKS1_RKNS_8SparsityE:bb.a
  %.4 = phi i1 [ true, %bb.n ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.ah = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !48
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.m
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.h, %bb.m ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.m ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ] ; 2 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !48
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %i.ar = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread: ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !48
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !48
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.bb) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.5, label %bb.s, label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.5, label %bb.s, label %bb.v

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread
  %.pn.pn.pn.pn.pn.pn.pn51.ph = phi { ptr, i32 } [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn.pn.pn.pn.pn.pn.pn51 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn.pn.pn.pn.pn.pn.pn51.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.f) #28
  br label %bb.v

bb.t:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6casadi6MatrixIxEC1ERKNS_8SparsityERKSt6vectorIxSaIxEEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i1 noundef zeroext false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  ret void

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.s
  %.pn.pn.pn.pn.pn.pn.pn50 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn.pn.pn.pn.pn.pn.pn51, %bb.s ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn50

bb.w:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxE4kronERKS1_S3_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  %4 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = mul nsw i64 %i.d, %i.b                   ; 5 uses
  %i.f = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %i.f, label %.noexc, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.470) #24
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i, label %.noexc15

_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc15:                                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.g = shl nuw nsw i64 %i.e, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !38
  store i64 0, ptr %i.h, align 8, !tbaa !28
  %i.k = getelementptr i8, ptr %i.h, i64 8        ; 3 uses
  %i.l = add nsw i64 %i.e, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc15
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc15, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i
  %i.o = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i ], [ %i.h, %.noexc15 ], [ %i.h, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i ], [ %i.k, %.noexc15 ], [ %i.n, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.p, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.s = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.i       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39
  %i.v = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.d unwind label %bb.i       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = icmp sgt i64 %i.x, 0
  %i.ad = icmp sgt i64 %i.aa, 0
  %or.cond.i = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %_ZN6casadi11casadi_kronIxEEvPKT_PKxS3_S5_PS1_.exit

.preheader.i:                                     ; preds = %bb.d, %._crit_edge44.i
  %.03148.i = phi i64 [ %i.aj, %._crit_edge44.i ], [ 0, %bb.d ] ; 2 uses
  %.03247.i = phi i64 [ %.us-phi46.i, %._crit_edge44.i ], [ 0, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03148.i ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !28
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !28 ; 3 uses
  %i.ai = icmp slt i64 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph43.split.i, label %._crit_edge44.i

._crit_edge44.i:                                  ; preds = %._crit_edge39.i, %.preheader.i
  %.us-phi46.i = phi i64 [ %.03247.i, %.preheader.i ], [ %.2.lcssa.i, %._crit_edge39.i ]
  %i.aj = add nuw nsw i64 %.03148.i, 1            ; 2 uses
  %exitcond52.not.i = icmp eq i64 %i.aj, %i.x
  br i1 %exitcond52.not.i, label %_ZN6casadi11casadi_kronIxEEvPKT_PKxS3_S5_PS1_.exit, label %.preheader.i, !llvm.loop !1087

.lr.ph43.split.i:                                 ; preds = %.preheader.i, %._crit_edge39.i
  %i.ak = phi i64 [ %i.at, %._crit_edge39.i ], [ %i.ah, %.preheader.i ] ; 3 uses
  %i.al = phi i64 [ %i.au, %._crit_edge39.i ], [ %i.ah, %.preheader.i ] ; 3 uses
  %.03042.i = phi i64 [ %i.av, %._crit_edge39.i ], [ 0, %.preheader.i ] ; 2 uses
  %.141.i = phi i64 [ %.2.lcssa.i, %._crit_edge39.i ], [ %.03247.i, %.preheader.i ] ; 3 uses
  %i.am = load i64, ptr %i.ae, align 8, !tbaa !28 ; 2 uses
  %i.an = icmp slt i64 %i.am, %i.al
  br i1 %i.an, label %.lr.ph38.i, label %._crit_edge39.i

.lr.ph38.i:                                       ; preds = %.lr.ph43.split.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.03042.i ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !28
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !28 ; 2 uses
  %i.as = icmp slt i64 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph38.split.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %._crit_edge.i, %.lr.ph38.i, %.lr.ph43.split.i
  %i.at = phi i64 [ %i.ak, %.lr.ph43.split.i ], [ %i.ak, %.lr.ph38.i ], [ %i.ba, %._crit_edge.i ]
  %i.au = phi i64 [ %i.al, %.lr.ph43.split.i ], [ %i.al, %.lr.ph38.i ], [ %i.ba, %._crit_edge.i ]
  %.2.lcssa.i = phi i64 [ %.141.i, %.lr.ph43.split.i ], [ %.141.i, %.lr.ph38.i ], [ %.3.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.av = add nuw nsw i64 %.03042.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %i.aa
  br i1 %exitcond.not.i, label %._crit_edge44.i, label %.lr.ph43.split.i, !llvm.loop !1088

.lr.ph38.split.i:                                 ; preds = %.lr.ph38.i, %._crit_edge.i
  %i.aw = phi i64 [ %i.ba, %._crit_edge.i ], [ %i.ak, %.lr.ph38.i ]
  %i.ax = phi i64 [ %i.bb, %._crit_edge.i ], [ %i.ar, %.lr.ph38.i ] ; 2 uses
  %.02936.i.a = phi i64 [ %i.bc, %._crit_edge.i ], [ %i.am, %.lr.ph38.i ] ; 2 uses
  %.235.i.a = phi i64 [ %.3.lcssa.i, %._crit_edge.i ], [ %.141.i, %.lr.ph38.i ] ; 2 uses
  %5 = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.02936.i.a
  %6 = load i64, ptr %5, align 8, !tbaa !28
  %i.ay = load i64, ptr %i.ao, align 8, !tbaa !28 ; 2 uses
  %i.az = icmp slt i64 %i.ay, %i.ax
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i.a = load i64, ptr %i.af, align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph38.split.i
  %i.ba = phi i64 [ %i.aw, %.lr.ph38.split.i ], [ %.pre.i.a, %._crit_edge.loopexit.i ] ; 4 uses
  %i.bb = phi i64 [ %i.ax, %.lr.ph38.split.i ], [ %i.bk, %._crit_edge.loopexit.i ]
  %.3.lcssa.i = phi i64 [ %.235.i.a, %.lr.ph38.split.i ], [ %i.bh, %._crit_edge.loopexit.i ] ; 2 uses
  %i.bc = add nsw i64 %.02936.i.a, 1              ; 2 uses
  %i.bd = icmp slt i64 %i.bc, %i.ba
  br i1 %i.bd, label %.lr.ph38.split.i, label %._crit_edge39.i, !llvm.loop !1089

.lr.ph.i:                                         ; preds = %.lr.ph38.split.i, %.lr.ph.i
  %.034.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %i.ay, %.lr.ph38.split.i ] ; 2 uses
  %.333.i = phi i64 [ %i.bh, %.lr.ph.i ], [ %.235.i.a, %.lr.ph38.split.i ] ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.034.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !28
  %i.bg = mul nsw i64 %i.bf, %6
  %i.bh = add nsw i64 %.333.i, 1                  ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.333.i
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !28
  %i.bj = add nsw i64 %.034.i, 1                  ; 2 uses
  %i.bk = load i64, ptr %i.ap, align 8, !tbaa !28 ; 2 uses
  %i.bl = icmp slt i64 %i.bj, %i.bk
  br i1 %i.bl, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !1090

_ZN6casadi11casadi_kronIxEEvPKT_PKxS3_S5_PS1_.exit: ; preds = %._crit_edge44.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN6casadi8Sparsity4kronERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZN6casadi11casadi_kronIxEEvPKT_PKxS3_S5_PS1_.exit
  invoke void @_ZN6casadi6MatrixIxEC1ERKNS_8SparsityERKSt6vectorIxSaIxEEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.bo = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !38
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #27
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %_ZN6casadi11casadi_kronIxEEvPKT_PKxS3_S5_PS1_.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17

bb.k:                                             ; preds = %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %._ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17_crit_edge unwind label %bb.l

._ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17_crit_edge: ; preds = %bb.k
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !36
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17

bb.l:                                             ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17: ; preds = %._ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17_crit_edge, %bb.j
  %.pre = phi ptr [ %i.o, %bb.j ], [ %.pre.pre, %._ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17_crit_edge ]
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.j ], [ %i.bw, %._ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17_crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.m

bb.m:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17, %bb.i
  %i.bz = phi ptr [ %.pre, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17 ], [ %i.o, %bb.i ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17 ], [ %i.bu, %bb.i ]
  %.not.i.i.i18 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIxSaIxEED2Ev.exit19, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !38
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #27
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit19

_ZNSt6vectorIxSaIxEED2Ev.exit19:                  ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6casadi8Sparsity4kronERKS0_S2_(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6casadi8Sparsity6mtimesERKS0_S2_(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxE3macERKS1_S3_S3_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.casadi::Matrix", align 8    ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::vector.5", align 8    ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::allocator.2", align 1 ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.casadi::Matrix", align 8   ; 5 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::vector.5", align 8    ; 5 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::allocator.2", align 1 ; 5 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %46 = alloca %"class.casadi::Matrix", align 8   ; 5 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %48 = alloca %"class.std::vector.5", align 8    ; 5 uses
  %49 = alloca %"class.std::vector", align 8      ; 10 uses
  %50 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity9is_scalarEb(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.d = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity9is_scalarEb(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i1 noundef zeroext false)
  br i1 %i.d, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.e = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity9is_scalarEb(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false), !noalias !1115
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN6casadi6MatrixIxE13scalar_matrixExRKS1_S3_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %4, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %_ZN6casadimlERKNS_6MatrixIxEES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity9is_scalarEb(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i1 noundef zeroext false), !noalias !1115
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN6casadi6MatrixIxE13matrix_scalarExRKS1_S3_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %4, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %_ZN6casadimlERKNS_6MatrixIxEES3_.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN6casadi6MatrixIxE13matrix_matrixExRKS1_S3_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %4, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %_ZN6casadimlERKNS_6MatrixIxEES3_.exit

_ZN6casadimlERKNS_6MatrixIxEES3_.exit:            ; preds = %bb.d, %bb.f, %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity9is_scalarEb(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_ZN6casadimlERKNS_6MatrixIxEES3_.exit
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc
  invoke void @_ZN6casadi6MatrixIxE13scalar_matrixExRKS1_S3_(ptr dead_on_unwind writable sret(%"class.casadi::Matrix") align 8 %0, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %_ZN6casadiplERKNS_6MatrixIxEES3_.exit unwind label %bb.n

bb.i:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity9is_scalarEb(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i1 noundef zeroext false)
end_hunk_0
