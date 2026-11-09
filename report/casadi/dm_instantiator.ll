Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/dm_instantiator?download=true
inline.NumInlined: 7137
inline.NumDeleted: 1380
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 116
begin_hunk_0_@_ZN6casadi6MatrixIdE13sparsity_castERKS1_RKNS_8SparsityE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.n ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.n ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.ah = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !47
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.m
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.h, %bb.m ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.m ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ] ; 2 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !47
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %i.ar = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread: ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !47
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !47
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
  tail call void @_ZN6casadi6MatrixIdEC1ERKNS_8SparsityERKSt6vectorIdSaIdEEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i1 noundef zeroext false)
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
define weak_odr void @_ZN6casadi6MatrixIdE4kronERKS1_S3_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.f, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.504) #24
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %.noexc15

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc15:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.g = shl nuw nsw i64 %i.e, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !36
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !26
  %i.k = getelementptr i8, ptr %i.h, i64 8        ; 3 uses
  %i.l = add nsw i64 %i.e, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc15
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc15, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %i.o = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.h, %.noexc15 ], [ %i.h, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.k, %.noexc15 ], [ %i.n, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.q, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.t = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.i       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37   ; 7 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.d unwind label %bb.i       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !61   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !61 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = icmp sgt i64 %i.z, 0
  %i.af = icmp sgt i64 %i.ac, 0
  %or.cond.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %_ZN6casadi11casadi_kronIdEEvPKT_PKxS3_S5_PS1_.exit

.preheader.i:                                     ; preds = %bb.d, %._crit_edge.i
  %.03149.i = phi i64 [ %i.cr, %._crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %.03248.i = phi i64 [ %.us-phi47.i, %._crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.03149.i ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !61 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !61 ; 2 uses
  %i.ak = icmp slt i64 %i.ah, %i.aj
  br i1 %i.ak, label %.lr.ph38.us.i, label %._crit_edge.i

.lr.ph38.us.i:                                    ; preds = %.preheader.i, %._crit_edge39.us.i
  %.03042.us.i = phi i64 [ %i.cq, %._crit_edge39.us.i ], [ 0, %.preheader.i ] ; 2 uses
  %.141.us.i = phi i64 [ %.us-phi.us.i, %._crit_edge39.us.i ], [ %.03248.i, %.preheader.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.03042.us.i ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !61 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !61 ; 5 uses
  %i.ap = icmp slt i64 %i.am, %i.ao
  br i1 %i.ap, label %.lr.ph.us.us.i.preheader, label %._crit_edge39.us.i

.lr.ph.us.us.i.preheader:                         ; preds = %.lr.ph38.us.i
  %i.aq = shl i64 %i.am, 3
  %5 = add i64 %i.aq, %i.w
  %6 = sub i64 %i.p, %5
  %i.ar = sub i64 %i.ao, %i.am                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 4
  %i.as = add i64 %6, -1
  %n.vec = and i64 %i.ar, -4                      ; 4 uses
  %i.at = add i64 %i.am, %n.vec
  %i.au = getelementptr [8 x i8], ptr %i.v, i64 %i.am
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph.us.us.i.preheader, %._crit_edge.us.us.i
  %.02936.us.us.i = phi i64 [ %i.cp, %._crit_edge.us.us.i ], [ %i.ah, %.lr.ph.us.us.i.preheader ] ; 2 uses
  %.235.us.us.i = phi i64 [ %.lcssa, %._crit_edge.us.us.i ], [ %.141.us.i, %.lr.ph.us.us.i.preheader ] ; 5 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.02936.us.us.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !26 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.us.i
  %i.ax = shl i64 %.235.us.us.i, 3
  %i.ay = add i64 %i.ax, %i.as
  %diff.check = icmp ult i64 %i.ay, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.az = add i64 %.235.us.us.i, %n.vec           ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.o, i64 %.235.us.us.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <2 x double>, ptr %i.bb, align 8, !tbaa !26
  %wide.load33 = load <2 x double>, ptr %i.bc, align 8, !tbaa !26
  %i.bd = fmul <2 x double> %broadcast.splat, %wide.load
  %i.be = fmul <2 x double> %broadcast.splat, %wide.load33
  %i.bf = getelementptr [8 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x double> %i.bd, ptr %i.bf, align 8, !tbaa !26
  store <2 x double> %i.be, ptr %i.bg, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1109

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us.us.i, %middle.block
  %.034.us.us.i.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.us.us.i ], [ %i.at, %middle.block ] ; 4 uses
  %.333.us.us.i.ph = phi i64 [ %.235.us.us.i, %vector.memcheck ], [ %.235.us.us.i, %.lr.ph.us.us.i ], [ %i.az, %middle.block ] ; 2 uses
  %i.bi = sub i64 %i.ao, %.034.us.us.i.ph
  %xtraiter = and i64 %i.bi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.034.us.us.i.prol = phi i64 [ %i.bo, %scalar.ph.prol ], [ %.034.us.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.333.us.us.i.prol = phi i64 [ %i.bm, %scalar.ph.prol ], [ %.333.us.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.v, i64 %.034.us.us.i.prol
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !26
  %i.bl = fmul double %i.aw, %i.bk
  %i.bm = add nsw i64 %.333.us.us.i.prol, 1       ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.333.us.us.i.prol
  store double %i.bl, ptr %i.bn, align 8, !tbaa !26
  %i.bo = add nsw i64 %.034.us.us.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1110

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa35.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bm, %scalar.ph.prol ]
  %.034.us.us.i.unr = phi i64 [ %.034.us.us.i.ph, %scalar.ph.preheader ], [ %i.bo, %scalar.ph.prol ]
  %.333.us.us.i.unr = phi i64 [ %.333.us.us.i.ph, %scalar.ph.preheader ], [ %i.bm, %scalar.ph.prol ]
  %i.bp = sub i64 %.034.us.us.i.ph, %i.ao
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %._crit_edge.us.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.034.us.us.i = phi i64 [ %i.co, %scalar.ph ], [ %.034.us.us.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.333.us.us.i = phi i64 [ %i.cl, %scalar.ph ], [ %.333.us.us.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.v, i64 %.034.us.us.i
  %i.bs = load double, ptr %i.br, align 8, !tbaa !26
  %i.bt = fmul double %i.aw, %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.333.us.us.i
  store double %i.bt, ptr %i.bu, align 8, !tbaa !26
  %i.bv = getelementptr [8 x i8], ptr %i.v, i64 %.034.us.us.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !26
  %i.by = fmul double %i.aw, %i.bx
  %i.bz = getelementptr [8 x i8], ptr %i.o, i64 %.333.us.us.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  store double %i.by, ptr %i.ca, align 8, !tbaa !26
  %i.cb = getelementptr [8 x i8], ptr %i.v, i64 %.034.us.us.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !26
  %i.ce = fmul double %i.aw, %i.cd
  %i.cf = getelementptr [8 x i8], ptr %i.o, i64 %.333.us.us.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  store double %i.ce, ptr %i.cg, align 8, !tbaa !26
  %i.ch = getelementptr [8 x i8], ptr %i.v, i64 %.034.us.us.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 24
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !26
  %i.ck = fmul double %i.aw, %i.cj
  %i.cl = add nsw i64 %.333.us.us.i, 4            ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %i.o, i64 %.333.us.us.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 24
  store double %i.ck, ptr %i.cn, align 8, !tbaa !26
  %i.co = add nsw i64 %.034.us.us.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.co, %i.ao
  br i1 %exitcond.not.i.3, label %._crit_edge.us.us.i, label %scalar.ph, !llvm.loop !1111

._crit_edge.us.us.i:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.az, %middle.block ], [ %.lcssa35.unr, %scalar.ph.prol.loopexit ], [ %i.cl, %scalar.ph ] ; 2 uses
  %i.cp = add nsw i64 %.02936.us.us.i, 1          ; 2 uses
  %exitcond53.not.i = icmp eq i64 %i.cp, %i.aj
  br i1 %exitcond53.not.i, label %._crit_edge39.us.i, label %.lr.ph.us.us.i, !llvm.loop !1112

._crit_edge39.us.i:                               ; preds = %._crit_edge.us.us.i, %.lr.ph38.us.i
  %.us-phi.us.i = phi i64 [ %.141.us.i, %.lr.ph38.us.i ], [ %.lcssa, %._crit_edge.us.us.i ] ; 2 uses
  %i.cq = add nuw nsw i64 %.03042.us.i, 1         ; 2 uses
  %exitcond54.not.i = icmp eq i64 %i.cq, %i.ac
  br i1 %exitcond54.not.i, label %._crit_edge.i, label %.lr.ph38.us.i, !llvm.loop !1113

._crit_edge.i:                                    ; preds = %._crit_edge39.us.i, %.preheader.i
  %.us-phi47.i = phi i64 [ %.03248.i, %.preheader.i ], [ %.us-phi.us.i, %._crit_edge39.us.i ]
  %i.cr = add nuw nsw i64 %.03149.i, 1            ; 2 uses
  %exitcond55.not.i = icmp eq i64 %i.cr, %i.z
  br i1 %exitcond55.not.i, label %_ZN6casadi11casadi_kronIdEEvPKT_PKxS3_S5_PS1_.exit, label %.preheader.i, !llvm.loop !1114

_ZN6casadi11casadi_kronIdEEvPKT_PKxS3_S5_PS1_.exit: ; preds = %._crit_edge.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN6casadi8Sparsity4kronERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZN6casadi11casadi_kronIdEEvPKT_PKxS3_S5_PS1_.exit
  invoke void @_ZN6casadi6MatrixIdEC1ERKNS_8SparsityERKSt6vectorIdSaIdEEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.cu = load ptr, ptr %3, align 8, !tbaa !34    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !36
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %_ZN6casadi11casadi_kronIdEEvPKT_PKxS3_S5_PS1_.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17

bb.k:                                             ; preds = %bb.e
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %._ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17_crit_edge unwind label %bb.l

._ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17_crit_edge: ; preds = %bb.k
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !34
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17

bb.l:                                             ; preds = %bb.k
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17: ; preds = %._ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17_crit_edge, %bb.j
  %.pre = phi ptr [ %i.o, %bb.j ], [ %.pre.pre, %._ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17_crit_edge ]
  %.pn = phi { ptr, i32 } [ %i.db, %bb.j ], [ %i.dc, %._ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17_crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.m

bb.m:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17, %bb.i
  %i.df = phi ptr [ %.pre, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17 ], [ %i.o, %bb.i ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit17 ], [ %i.da, %bb.i ]
  %.not.i.i.i18 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIdSaIdEED2Ev.exit19, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !36
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit19

_ZNSt6vectorIdSaIdEED2Ev.exit19:                  ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
end_hunk_0
