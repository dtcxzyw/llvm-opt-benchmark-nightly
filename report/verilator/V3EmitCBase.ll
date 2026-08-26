Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitCBase?download=true
inline.NumInlined: 1433
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN17EmitCParentModuleC2Ev:bb.a

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.c = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106
  invoke fastcc void @"_ZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModule"(ptr noundef %i.g)
          to label %bb.d unwind label %bb.e

.loopexit:                                        ; preds = %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.b, %.noexc, %.noexc9, %.noexc11, %.noexc10, %.noexc8
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0621 = phi ptr [ %.06, %bb.c ], [ %.0619, %bb.a ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0621, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.h, align 8, !tbaa !112
  %i.i = add i16 %.sroa.0.0.copyload.i.i.i, -391
  %spec.select.i.i = icmp ult i16 %i.i, -7
  br i1 %spec.select.i.i, label %bb.b, label %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit, !prof !113

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.0621, i64 64
  %i.k = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.58, i32 noundef 1063)
          to label %.noexc unwind label %.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc8 unwind label %.loopexit.split-lp ; 2 uses

.noexc8:                                          ; preds = %.noexc
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.77, i64 noundef 55)
          to label %.noexc9 unwind label %.loopexit.split-lp ; 0 uses

.noexc9:                                          ; preds = %.noexc8
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.j, align 8, !tbaa !112
  %i.n = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.p)
          to label %.noexc10 unwind label %.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %.noexc9
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.78, i64 noundef 1)
          to label %.noexc11 unwind label %.loopexit.split-lp ; 0 uses

.noexc11:                                         ; preds = %.noexc10
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %.0621, ptr noundef nonnull align 8 dereferenceable(112) %i.q) #21
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %.noexc11
  unreachable

_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit:   ; preds = %.lr.ph
  invoke fastcc void @"_ZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModule"(ptr noundef nonnull %.0621)
          to label %bb.c unwind label %.loopexit

bb.c:                                             ; preds = %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.0621, i64 8
  %.06 = load ptr, ptr %i.s, align 8, !tbaa !79   ; 2 uses
  %.not = icmp eq ptr %.06, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !115

bb.d:                                             ; preds = %._crit_edge
  ret void

bb.e:                                             ; preds = %._crit_edge
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.e
  %.pn = phi { ptr, i32 } [ %i.t, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZN12VNUser4InUseD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8V3Global5rootpEv(ptr noundef nonnull align 8 dereferenceable(1920) %0) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  ret ptr %i.a
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10AstNetlist8modulespEv(ptr noundef nonnull align 8 dereferenceable(408) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModule"(ptr noundef %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.03 = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %.not4 = icmp eq ptr %.03, null
  br i1 %.not4, label %._crit_edge, label %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit.lr.ph

_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit.lr.ph:    ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4
  br label %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit

._crit_edge:                                      ; preds = %bb.z, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %.ptr85.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.3.idx.sroa.gep88.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.a, align 16, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.g, align 8, !tbaa !112
  %i.h = add i16 %.sroa.0.0.copyload.i.i.i.i.i, -71
  %spec.select.i.i.i.i = icmp ult i16 %i.h, 2
  br i1 %spec.select.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = ptrtoint ptr %0 to i64
  store i64 %i.j, ptr %i.i, align 8, !tbaa !118
  %i.k = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.k, ptr %i.l, align 4, !tbaa !120
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %.ptr85.i.i, align 16, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.3.idx.sroa.phi.i.i = phi ptr [ %.ptr85.i.i, %bb.c ], [ %.3.idx.sroa.gep88.i.i, %bb.d ]
  %.3.idx.i.i = phi i64 [ 16, %bb.c ], [ 24, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !122  ; 2 uses
  %.not19.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not19.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.3.add.i.i = add nuw nsw i64 %.3.idx.i.i, 8
  store ptr %i.p, ptr %.3.idx.sroa.phi.i.i, align 8, !tbaa !79
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4.idx.i.i = phi i64 [ %.3.idx.i.i, %bb.e ], [ %.3.add.i.i, %bb.f ] ; 3 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not20.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.4.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.idx.i.i
  %.4.add.i.i = add nuw nsw i64 %.4.idx.i.i, 8
  store ptr %i.q, ptr %.4.ptr.i.i, align 8, !tbaa !79
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.5.idx.i.i = phi i64 [ %.4.idx.i.i, %bb.g ], [ %.4.add.i.i, %bb.h ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !117  ; 2 uses
  %.not21.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not21.i.i.i, label %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit.i.i", label %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit.thread.i.i"

"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit.thread.i.i": ; preds = %bb.i
  %.5.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.idx.i.i
  %.5.add.i.i = add nuw nsw i64 %.5.idx.i.i, 8
  store ptr %i.s, ptr %.5.ptr.i.i, align 8, !tbaa !79
  br label %.lr.ph.preheader.i.i

"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit.i.i": ; preds = %bb.i
  %i.t = icmp samesign ugt i64 %.5.idx.i.i, 16
  br i1 %i.t, label %.lr.ph.preheader.i.i, label %"_ZN7AstNode7foreachIZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlP16AstNodeCoverDeclE_EEvOT_.exit", !prof !124

.lr.ph.preheader.i.i:                             ; preds = %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit.i.i", %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit.thread.i.i"
  %.6.idx100.i.i = phi i64 [ %.5.add.i.i, %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit.thread.i.i" ], [ %.5.idx.i.i, %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit.i.i" ]
  %.6.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.6.idx100.i.i
  %i.u = ptrtoint ptr %0 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit55.i.i", %.lr.ph.preheader.i.i
  %.083.i.i = phi i64 [ %.1.i.i, %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit55.i.i" ], [ 32, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03480.i.i = phi ptr [ %.135.i.i, %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit55.i.i" ], [ %.ptr85.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03181.i.i = phi ptr [ %.132.i.i, %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit55.i.i" ], [ %i.f, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.060.078.i.i = phi ptr [ %.sroa.060.1.i.i, %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit55.i.i" ], [ null, %.lr.ph.preheader.i.i ] ; 5 uses
  %.077.i.i = phi ptr [ %.10.i.i, %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit55.i.i" ], [ %.6.ptr.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.077.i.i, i64 -8 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79   ; 8 uses
  %i.x = getelementptr inbounds i8, ptr %.077.i.i, i64 -24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.aa, i32 0, i32 3, i32 1)
  %.not40.i.i = icmp ult ptr %i.v, %.03181.i.i
  br i1 %.not40.i.i, label %bb.m, label %bb.j, !prof !125

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ab = shl i64 %.083.i.i, 1                    ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, 2305843009213693951
  %i.ad = shl i64 %.083.i.i, 4
  %i.ae = select i1 %i.ac, i64 -1, i64 %i.ad
  %i.af = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #23
          to label %bb.k unwind label %bb.l       ; 4 uses

bb.k:                                             ; preds = %bb.j
  %i.ag = ptrtoint ptr %i.v to i64
  %i.ah = ptrtoint ptr %.03480.i.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.03480.i.i, i64 -16
  %i.ak = add i64 %i.ai, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.aj, i64 %i.ak, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.sroa.060.078.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %.sroa.060.078.i.i) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ai
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ab
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -40
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %.not.i57.i.i = icmp eq ptr %.sroa.060.078.i.i, null
  br i1 %.not.i57.i.i, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit59.i.i, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i58.i.i

bb.m:                                             ; preds = %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i, %.lr.ph.i.i
  %.1.i.i.a = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.am, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ] ; 3 uses
  %.sroa.060.1.i.i = phi ptr [ %.sroa.060.078.i.i, %.lr.ph.i.i ], [ %i.af, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ] ; 3 uses
  %.132.i.i = phi ptr [ %.03181.i.i, %.lr.ph.i.i ], [ %i.ao, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ]
  %.135.i.i = phi ptr [ %.03480.i.i, %.lr.ph.i.i ], [ %i.al, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %.083.i.i, %.lr.ph.i.i ], [ %i.ab, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !126 ; 2 uses
  %.not41.i.i = icmp eq ptr %i.ar, null
  br i1 %.not41.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i.i.a, i64 8
  store ptr %i.ar, ptr %.1.i.i.a, align 8, !tbaa !79
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.i.i = phi ptr [ %.1.i.i.a, %bb.m ], [ %i.as, %bb.n ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %.sroa.0.0.copyload.i.i.i47.i.i = load i16, ptr %i.at, align 8, !tbaa !112
  %i.au = add i16 %.sroa.0.0.copyload.i.i.i47.i.i, -71
  %spec.select.i.i48.i.i = icmp ult i16 %i.au, 2
  br i1 %spec.select.i.i48.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  store i64 %i.u, ptr %i.av, align 8, !tbaa !118
  %i.aw = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !119
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 140
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !120
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !121 ; 2 uses
  %.not.i49.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i49.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 8
  store ptr %i.az, ptr %.2.i.i, align 8, !tbaa !79
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.7.i.i = phi ptr [ %.2.i.i, %bb.q ], [ %i.ba, %bb.r ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !122 ; 2 uses
  %.not19.i50.i.i = icmp eq ptr %i.bc, null
  br i1 %.not19.i50.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %.7.i.i, i64 8
  store ptr %i.bc, ptr %.7.i.i, align 8, !tbaa !79
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.8.i.i = phi ptr [ %.7.i.i, %bb.s ], [ %i.bd, %bb.t ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !123 ; 2 uses
  %.not20.i51.i.i = icmp eq ptr %i.bf, null
  br i1 %.not20.i51.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 8
  store ptr %i.bf, ptr %.8.i.i, align 8, !tbaa !79
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.9.i.i = phi ptr [ %.8.i.i, %bb.u ], [ %i.bg, %bb.v ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !117 ; 2 uses
  %.not21.i52.i.i = icmp eq ptr %i.bi, null
  br i1 %.not21.i52.i.i, label %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit55.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %.9.i.i, i64 8
  store ptr %i.bi, ptr %.9.i.i, align 8, !tbaa !79
  br label %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit55.i.i"

"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit55.i.i": ; preds = %bb.x, %bb.w
  %.10.i.i = phi ptr [ %.9.i.i, %bb.w ], [ %i.bj, %bb.x ] ; 2 uses
  %i.bk = icmp ugt ptr %.10.i.i, %.135.i.i
  br i1 %i.bk, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !127

._crit_edge.i.i:                                  ; preds = %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit55.i.i"
  %.not.i56.i.i = icmp eq ptr %.sroa.060.1.i.i, null
  br i1 %.not.i56.i.i, label %"_ZN7AstNode7foreachIZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlP16AstNodeCoverDeclE_EEvOT_.exit", label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i: ; preds = %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.060.1.i.i) #24
  br label %"_ZN7AstNode7foreachIZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlP16AstNodeCoverDeclE_EEvOT_.exit"

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i58.i.i: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %.sroa.060.078.i.i) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit59.i.i

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit59.i.i: ; preds = %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i58.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.ap

"_ZN7AstNode7foreachIZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlP16AstNodeCoverDeclE_EEvOT_.exit": ; preds = %"_ZZN7AstNode11foreachImplI16AstNodeCoverDeclZZN17EmitCParentModuleC1EvENK3$_0clEP13AstNodeModuleEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESH_.exit.i.i", %._crit_edge.i.i, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit:          ; preds = %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit.lr.ph, %bb.z
  %.05 = phi ptr [ %.03, %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit.lr.ph ], [ %.0, %bb.z ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.bl, align 8, !tbaa !112 ; 2 uses
  switch i16 %.sroa.0.0.copyload.i.i.i, label %_ZN7AstNode2isI16AstNodeCoverDeclS_EEbPKT0_.exit [
    i16 5, label %bb.y
    i16 68, label %bb.y
  ]

_ZN7AstNode2isI16AstNodeCoverDeclS_EEbPKT0_.exit: ; preds = %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit
  %i.bm = add i16 %.sroa.0.0.copyload.i.i.i, -71
  %spec.select.i.i = icmp ult i16 %i.bm, 2
  br i1 %spec.select.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit, %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit, %_ZN7AstNode2isI16AstNodeCoverDeclS_EEbPKT0_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.05, i64 144
  store i64 %i.c, ptr %i.bn, align 8, !tbaa !118
  %i.bo = getelementptr inbounds nuw i8, ptr %.05, i64 140
  store i32 %i.d, ptr %i.bo, align 4, !tbaa !120
  br label %bb.z

bb.z:                                             ; preds = %_ZN7AstNode2isI16AstNodeCoverDeclS_EEbPKT0_.exit, %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %.0 = load ptr, ptr %i.bp, align 8, !tbaa !79   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %_ZN7AstNode2isI8AstCFuncS_EEbPKT0_.exit, !llvm.loop !128
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !112
  %i.b = add i16 %.sroa.0.0.copyload.i.i, -391
  %spec.select.i = icmp ult i16 %i.b, -7
  br i1 %spec.select.i, label %bb.c, label %.critedge, !prof !113

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.58, i32 noundef 1063) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.77)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !112
  %i.f = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.h)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.78)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.j) #21
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode5nextpEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12VNUser4InUseD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser4InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser4InUse10s_userBusyE)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EmitCUtil17prefixNameProtectB5cxx11EPK7AstNode(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %class.VHashSha256, align 16        ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
end_hunk_0
