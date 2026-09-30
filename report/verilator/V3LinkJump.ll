Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3LinkJump?download=true
inline.NumInlined: 2531
inline.NumDeleted: 1062
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN10AstTaskRefC2EP8FileLineP7AstTaskP6AstArg:bb.a
  store i8 %i.k, ptr %i.j, align 1, !tbaa !30
  br label %_ZNK12AstNodeFTask4nameB5cxx11Ev.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNK12AstNodeFTask4nameB5cxx11Ev.exit

_ZNK12AstNodeFTask4nameB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !143, !noalias !526 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !29, !alias.scope !526
  %i.n = load ptr, ptr %4, align 8, !tbaa !28, !alias.scope !526
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !526
  invoke void @_ZN15AstNodeFTaskRefC2E6VNTypeP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6AstArg(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 293, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK12AstNodeFTask4nameB5cxx11Ev.exit
  %i.p = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.c, align 8, !tbaa !30
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV10AstTaskRef, i64 16), ptr %0, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.t, align 8, !tbaa !528
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %2, ptr %i.u, align 8, !tbaa !529
  %i.v = invoke noundef ptr @_ZNK7AstNode13findVoidDTypeEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !205
  %.not.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not.i.i, label %_ZN7AstNode12dtypeSetVoidEv.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  store ptr %i.v, ptr %i.w, align 8, !tbaa !205
  %i.y = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !143
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !143
  br label %_ZN7AstNode12dtypeSetVoidEv.exit

_ZN7AstNode12dtypeSetVoidEv.exit:                 ; preds = %bb.e, %.noexc
  ret void

bb.f:                                             ; preds = %_ZNK12AstNodeFTask4nameB5cxx11Ev.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.f
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !30
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15AstNodeFTaskRefD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI7AstTaskS_EEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK12AstNodeFTask4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !31
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !143
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !28
  %i.i = load i64, ptr %i.a, align 8, !tbaa !143
  store i64 %i.i, ptr %i.c, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !30
  store i8 %i.k, ptr %i.j, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !29
  %i.n = load ptr, ptr %0, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare noundef ptr @_ZNK7AstNode13findVoidDTypeEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI8AstBeginS_EEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode5backpEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI7AstForkS_EEbPKT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !173
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 473
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_b(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.ptr110 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.0.idx.sroa.gep114 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.a, align 16, !tbaa !165
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !165
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !185  ; 2 uses
  %.not45 = icmp eq ptr %i.e, null
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %.ptr110, align 16, !tbaa !165
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.idx.sroa.phi = phi ptr [ %.ptr110, %bb.b ], [ %.0.idx.sroa.gep114, %bb.c ], [ %.ptr110, %bb.a ]
  %.0.idx = phi i64 [ 16, %bb.b ], [ 24, %bb.c ], [ 16, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.f, align 8, !tbaa !173
  %i.g = and i16 %.sroa.0.0.copyload.i.i.i, -2
  %spec.select.i.i.a = icmp eq i16 %i.g, 472
  br i1 %spec.select.i.i.a, label %3, label %bb.e

3:                                                ; preds = %bb.d
  %4 = load ptr, ptr %1, align 8, !tbaa !291
  %5 = icmp eq ptr %0, %4
  br i1 %5, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %3, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !319  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.0.add = add nuw nsw i64 %.0.idx, 8
  store ptr %i.i, ptr %.0.idx.sroa.phi, align 8, !tbaa !165
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4.idx = phi i64 [ %.0.idx, %bb.e ], [ %.0.add, %bb.f ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !182  ; 2 uses
  %.not21.i = icmp eq ptr %i.k, null
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.4.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.idx
  %.4.add = add nuw nsw i64 %.4.idx, 8
  store ptr %i.k, ptr %.4.ptr, align 8, !tbaa !165
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.5.idx = phi i64 [ %.4.idx, %bb.g ], [ %.4.add, %bb.h ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !197  ; 2 uses
  %.not22.i = icmp eq ptr %i.m, null
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.5.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.idx
  %.5.add = add nuw nsw i64 %.5.idx, 8
  store ptr %i.m, ptr %.5.ptr, align 8, !tbaa !165
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.6.idx = phi i64 [ %.5.idx, %bb.i ], [ %.5.add, %bb.j ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !196  ; 2 uses
  %.not23.i = icmp eq ptr %i.o, null
  br i1 %.not23.i, label %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit, label %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit.thread

_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit.thread: ; preds = %bb.k
  %.6.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.6.idx
  %.6.add = add nuw nsw i64 %.6.idx, 8
  store ptr %i.o, ptr %.6.ptr, align 8, !tbaa !165
  br label %.lr.ph.preheader

_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit: ; preds = %bb.k
  %i.p = icmp samesign ugt i64 %.6.idx, 16
  br i1 %i.p, label %.lr.ph.preheader, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit, !prof !320

.lr.ph.preheader:                                 ; preds = %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit.thread, %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit
  %.7.idx127 = phi i64 [ %.6.add, %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit.thread ], [ %.6.idx, %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit ]
  %.7.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.idx127
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57
  %.035102 = phi ptr [ %.136, %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57 ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.037101 = phi ptr [ %.138, %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57 ], [ %.ptr110, %.lr.ph.preheader ] ; 3 uses
  %.039100 = phi i64 [ %.140, %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57 ], [ 32, %.lr.ph.preheader ] ; 3 uses
  %.sroa.070.099 = phi ptr [ %.sroa.070.1, %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57 ], [ null, %.lr.ph.preheader ] ; 5 uses
  %.198 = phi ptr [ %.11, %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57 ], [ %.7.ptr, %.lr.ph.preheader ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.198, i64 -8 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !165  ; 7 uses
  %i.s = getelementptr inbounds i8, ptr %.198, i64 -24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !165  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %i.u, i32 0, i32 3, i32 1)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.v, i32 0, i32 3, i32 1)
  %.not46 = icmp ult ptr %i.q, %.035102
  br i1 %.not46, label %bb.o, label %bb.l, !prof !149

bb.l:                                             ; preds = %.lr.ph
  %i.w = shl i64 %.039100, 1                      ; 3 uses
  %i.x = icmp ugt i64 %i.w, 2305843009213693951
  %i.y = shl i64 %.039100, 4
  %i.z = select i1 %i.x, i64 -1, i64 %i.y
  %i.aa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #28
          to label %bb.m unwind label %bb.n       ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.ab = ptrtoint ptr %i.q to i64
  %i.ac = ptrtoint ptr %.037101 to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.037101, i64 -16
  %i.af = add i64 %i.ad, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.ae, i64 %i.af, i1 false)
  %.not.i.i = icmp eq ptr %.sroa.070.099, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.099) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.ad
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.w
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -40
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %.not.i59 = icmp eq ptr %.sroa.070.099, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit61, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i60

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit, %.lr.ph
  %.286 = phi ptr [ %i.q, %.lr.ph ], [ %i.ah, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 3 uses
  %.sroa.070.1 = phi ptr [ %.sroa.070.099, %.lr.ph ], [ %i.aa, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 3 uses
  %.140 = phi i64 [ %.039100, %.lr.ph ], [ %i.w, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ]
  %.138 = phi ptr [ %.037101, %.lr.ph ], [ %i.ag, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 2 uses
  %.136 = phi ptr [ %.035102, %.lr.ph ], [ %i.aj, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !185 ; 2 uses
  %.not47 = icmp eq ptr %i.am, null
  br i1 %.not47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.286, i64 8
  store ptr %i.am, ptr %.286, align 8, !tbaa !165
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3 = phi ptr [ %.286, %bb.o ], [ %i.an, %bb.p ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.sroa.0.0.copyload.i.i.i50 = load i16, ptr %i.ao, align 8, !tbaa !173
  %i.ap = and i16 %.sroa.0.0.copyload.i.i.i50, -2
  %spec.select.i.i51 = icmp eq i16 %i.ap, 472
  br i1 %spec.select.i.i51, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aq = load ptr, ptr %1, align 8, !tbaa !291
  %i.ar = icmp eq ptr %i.r, %i.aq
  br i1 %i.ar, label %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57.thread, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !319 ; 2 uses
  %.not.i52 = icmp eq ptr %i.at, null
  br i1 %.not.i52, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %.3, i64 8
  store ptr %i.at, ptr %.3, align 8, !tbaa !165
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.8 = phi ptr [ %.3, %bb.s ], [ %i.au, %bb.t ]  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !182 ; 2 uses
  %.not21.i53 = icmp eq ptr %i.aw, null
  br i1 %.not21.i53, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %.8, i64 8
  store ptr %i.aw, ptr %.8, align 8, !tbaa !165
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.9 = phi ptr [ %.8, %bb.u ], [ %i.ax, %bb.v ]  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !197 ; 2 uses
  %.not22.i54 = icmp eq ptr %i.az, null
  br i1 %.not22.i54, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %.9, i64 8
  store ptr %i.az, ptr %.9, align 8, !tbaa !165
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.10 = phi ptr [ %.9, %bb.w ], [ %i.ba, %bb.x ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !196 ; 2 uses
  %.not23.i55 = icmp eq ptr %i.bc, null
  br i1 %.not23.i55, label %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %.10, i64 8
  store ptr %i.bc, ptr %.10, align 8, !tbaa !165
  br label %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57

_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57: ; preds = %bb.z, %bb.y
  %.11 = phi ptr [ %i.bd, %bb.z ], [ %.10, %bb.y ] ; 2 uses
  %i.be = icmp ugt ptr %.11, %.138
  br i1 %i.be, label %.lr.ph, label %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57.thread, !prof !321, !llvm.loop !530

_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57.thread: ; preds = %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57, %bb.r
  %.lcssa = phi i1 [ true, %bb.r ], [ false, %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57 ] ; 2 uses
  %.not.i58 = icmp eq ptr %.sroa.070.1, null
  br i1 %.not.i58, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57.thread
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.1) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit, %3, %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57.thread, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  %.294 = phi i1 [ %.lcssa, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i ], [ %.lcssa, %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit57.thread ], [ true, %3 ], [ false, %_ZZN7AstNode13predicateImplI12AstNodeBlockLb0EZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS7_EEEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlPS_E_clESO_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.294

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i60: ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.099) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit61

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit61: ; preds = %bb.n, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %i.ak
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #19

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode4op4pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !319
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

declare noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user3uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !188
  %i.c = load i32, ptr @_ZN12VNUser3InUse12s_userCntGblE, align 4, !tbaa !32
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN15LinkJumpVisitor29getOrCreateBeginDisableBeginpEP8AstBeginP8FileLine(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !183
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.g = load i64, ptr %i.f, align 8, !tbaa !322
  %.not.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.h, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !135 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !183
  %i.k = icmp eq ptr %1, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIPK8AstBeginPS0_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE4findERS9_.exit, label %bb.c, !llvm.loop !531

bb.e:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %1 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.n = load i64, ptr %i.m, align 8, !tbaa !131  ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !178  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !135  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !183
  %i.v = icmp eq ptr %1, %i.u
  br i1 %i.v, label %_ZNSt13unordered_mapIPK8AstBeginPS0_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.w = icmp eq ptr %1, %i.z
  br i1 %i.w, label %_ZNSt13unordered_mapIPK8AstBeginPS0_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !10

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.x = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !135 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i, label %._crit_edge.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !183  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !10

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %._crit_edge.i.i, !llvm.loop !10

_ZNSt13unordered_mapIPK8AstBeginPS0_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE4findERS9_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.s, %bb.f ], [ %i.x, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !324
  br label %bb.t

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.ae = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #28 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !29
  store i8 0, ptr %i.af, align 8, !tbaa !30
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(192) %i.ae, i16 472, ptr noundef %2)
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %._crit_edge.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV12AstNodeBlock, i64 16), ptr %i.ae, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 152 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 168 ; 3 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !31
  %i.aj = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !143
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc17
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.n   ; 2 uses

.noexc18:                                         ; preds = %.noexc.i.i.i
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !28
  %i.an = load i64, ptr %i.b, align 8, !tbaa !143
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !30
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc18, %.noexc17
  %i.ao = phi ptr [ %i.am, %.noexc18 ], [ %i.ai, %.noexc17 ] ; 2 uses
  switch i64 %i.ak, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !30
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !30
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.aj, i64 %i.ak, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !143 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !29
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.au = load i64, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  %spec.select.i.i = zext i1 %i.av to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  store i8 %spec.select.i.i, ptr %i.aw, align 8, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV8AstBegin, i64 16), ptr %i.ae, align 8, !tbaa !81
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 185 ; 4 uses
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = and i8 %i.ay, -4                        ; 2 uses
  store i8 %i.az, ptr %i.ax, align 1
  %i.ba = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.af
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.k
  %i.bc = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.bc)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
end_hunk_0
