Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4toml2v35arrayD2Ev:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.h, label %_ZN4toml2v34nodeD2Ev.exit, !prof !155

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #50, !inline_history !194
  br label %_ZN4toml2v34nodeD2Ev.exit

_ZN4toml2v34nodeD2Ev.exit:                        ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !173    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #50, !inline_history !463
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !193
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35arrayD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN4toml2v35arrayD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #50
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #51
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v35arrayC2EPKNS0_4impl15array_init_elemES5_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.c = icmp ule ptr %1, %2
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq ptr %1, %2
  br i1 %i.d, label %.loopexit, label %.preheader.preheader, !prof !155

.preheader.preheader:                             ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %2 to i64
  %i.g = add i64 %i.f, -8
  %i.h = sub i64 %i.g, %i.e                       ; 2 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 24
  br i1 %min.iters.check, label %.preheader.preheader63, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.j, 4611686018427387900      ; 3 uses
  %i.k = shl i64 %n.vec, 3
  %i.l = getelementptr i8, ptr %1, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi43 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.m = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.m  ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !174
  %wide.load44 = load <2 x ptr>, ptr %i.n, align 8, !tbaa !174
  %i.o = icmp ne <2 x ptr> %wide.load, splat (ptr null)
  %i.p = icmp ne <2 x ptr> %wide.load44, splat (ptr null)
  %i.q = zext <2 x i1> %i.o to <2 x i64>
  %i.r = zext <2 x i1> %i.p to <2 x i64>
  %i.s = add <2 x i64> %vec.phi, %i.q             ; 2 uses
  %i.t = add <2 x i64> %vec.phi43, %i.r           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !464

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.t, %i.s
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit60, label %.preheader.preheader63

.preheader.preheader63:                           ; preds = %.preheader.preheader, %middle.block
  %.02133.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.v, %middle.block ]
  %.02232.ph = phi ptr [ %1, %.preheader.preheader ], [ %i.l, %middle.block ]
  br label %.preheader

.loopexit60:                                      ; preds = %.preheader, %middle.block
  %spec.select.lcssa = phi i64 [ %i.v, %middle.block ], [ %spec.select, %.preheader ] ; 4 uses
  %.not25 = icmp eq i64 %spec.select.lcssa, 0
  br i1 %.not25, label %.loopexit, label %bb.b, !prof !155

.preheader:                                       ; preds = %.preheader.preheader63, %.preheader
  %.02133 = phi i64 [ %spec.select, %.preheader ], [ %.02133.ph, %.preheader.preheader63 ]
  %.02232 = phi ptr [ %i.y, %.preheader ], [ %.02232.ph, %.preheader.preheader63 ] ; 2 uses
  %i.w = load ptr, ptr %.02232, align 8, !tbaa !174
  %.not29 = icmp ne ptr %i.w, null
  %i.x = zext i1 %.not29 to i64
  %spec.select = add i64 %.02133, %i.x            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02232, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.y, %2
  br i1 %.not, label %.loopexit60, label %.preheader, !llvm.loop !465

bb.b:                                             ; preds = %.loopexit60
  %i.z = icmp ugt i64 %spec.select.lcssa, 1152921504606846975
  br i1 %i.z, label %bb.c, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #54
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ac = shl nuw nsw i64 %spec.select.lcssa, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #55
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc27:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !173 ; 8 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !172 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc27
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = ptrtoaddr ptr %i.ae to i64
  %i.ai = add i64 %i.ag, -8
  %i.aj = sub i64 %i.ai, %i.ah                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.aj, 24
  br i1 %min.iters.check46, label %.lr.ph.i.i.i.i.preheader62, label %vector.ph47

vector.ph47:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec48 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.am = shl i64 %n.vec48, 3                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ae, i64 %i.am
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.ap = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.ad, i64 %i.ap ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.ae, i64 %i.ap ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.aq = getelementptr i8, ptr %next.gep52, i64 16 ; 2 uses
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !174, !alias.scope !473
  %wide.load54 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !174, !alias.scope !473
  %i.ar = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !174, !alias.scope !472
  store <2 x i64> %wide.load54, ptr %i.ar, align 8, !tbaa !174, !alias.scope !472
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !174, !alias.scope !473
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !174, !alias.scope !473
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.as, label %middle.block56, label %vector.body49, !llvm.loop !469

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.al, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader62

.lr.ph.i.i.i.i.preheader62:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block56
  %.012.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block56 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %middle.block56 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader62, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.at = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !473
  store i64 %i.at, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !472
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !473
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.af
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !470

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block56, %.noexc27
  %.not.i8.i = icmp eq ptr %i.ae, null
  br i1 %.not.i8.i, label %.lr.ph, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.aw = load ptr, ptr %i.aa, align 8, !tbaa !193
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.ae to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.az) #51
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !173
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !172
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %spec.select.lcssa
  store ptr %i.ba, ptr %i.aa, align 8, !tbaa !193
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %.035 = phi ptr [ %1, %.lr.ph ], [ %i.bh, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ] ; 4 uses
  %i.bc = load ptr, ptr %.035, align 8            ; 2 uses
  %.not30 = icmp eq ptr %i.bc, null
  %i.bd = ptrtoint ptr %i.bc to i64
  br i1 %.not30, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !172 ; 4 uses
  %i.bf = load ptr, ptr %i.aa, align 8, !tbaa !193
  %.not.i.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !174
  store ptr null, ptr %.035, align 8, !tbaa !174
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.be, ptr noundef nonnull align 8 dereferenceable(8) %.035)
          to label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, %bb.c
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #50
  tail call void @_ZN4toml2v34nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #50
  resume { ptr, i32 } %lpad.loopexit.split-lp61

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.g, %bb.h, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 2 uses
  %.not26 = icmp eq ptr %i.bh, %2
  br i1 %.not26, label %.loopexit, label %bb.e, !llvm.loop !471

.loopexit:                                        ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %.loopexit60, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v35arrayC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.107, align 2            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !172  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !173  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #54
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.not58 = icmp eq ptr %i.e, %i.f
  br i1 %.not58, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #55
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc12:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !173  ; 8 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !172  ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc12
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = ptrtoaddr ptr %i.n to i64
  %i.r = add i64 %i.p, -8
  %i.s = sub i64 %i.r, %i.q                       ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader93, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %i.x = getelementptr i8, ptr %i.n, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.y ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.n, i64 %i.y ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.z = getelementptr i8, ptr %next.gep65, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep65, align 8, !tbaa !174, !alias.scope !491
  %wide.load66 = load <2 x i64>, ptr %i.z, align 8, !tbaa !174, !alias.scope !491
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !490
  store <2 x i64> %wide.load66, ptr %i.aa, align 8, !tbaa !174, !alias.scope !490
  store <2 x ptr> splat (ptr null), ptr %next.gep65, align 8, !tbaa !174, !alias.scope !491
  store <2 x ptr> splat (ptr null), ptr %i.z, align 8, !tbaa !174, !alias.scope !491
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !477

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader93

.lr.ph.i.i.i.i.preheader93:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader93, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader93 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader93 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.ac = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !491
  store i64 %i.ac, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !490
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !491
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.o
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !478

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc12
  %.not.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !193
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.n to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ai) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.m, ptr %i.b, align 8, !tbaa !173
  store ptr %i.m, ptr %i.l, align 8, !tbaa !172
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  store ptr %i.aj, ptr %i.k, align 8, !tbaa !193
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !159
  %.pre47 = load ptr, ptr %i.d, align 8, !tbaa !159
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, %bb.c
  %i.ak = phi ptr [ %.pre47, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.al = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ], [ %i.f, %bb.c ] ; 2 uses
  %.not41 = icmp eq ptr %i.al, %i.ak
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %.sroa.031.042 = phi ptr [ %i.al, %.lr.ph ], [ %i.ce, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.031.042, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50, !noalias !492
  store i16 -1, ptr %2, align 2, !tbaa !196, !noalias !492
  %i.ao = invoke noundef ptr @_ZN4toml2v34node8do_visitIZNS0_4impl14make_node_implIRKS1_EEPDaOT_NS0_11value_flagsEEUlS9_E_S6_EEDcS9_OT0_(ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !481 ; 5 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50, !noalias !492
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !172 ; 6 uses
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !193
  %.not.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = ptrtoint ptr %i.ao to i64
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !174
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.as, ptr %i.am, align 8, !tbaa !172
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !173 ; 10 uses
  %i.au = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc26 unwind label %.loopexit.split-lp35.loopexit.split-lp

.noexc26:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #55
          to label %.noexc27 unwind label %.loopexit.split-lp35.loopexit.split-lp ; 10 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  %i.bg = ptrtoint ptr %i.ao to i64
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !174
  %.not10.i.i.i.i19 = icmp eq ptr %i.at, %i.ap
  br i1 %.not10.i.i.i.i19, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i20.preheader

.lr.ph.i.i.i.i20.preheader:                       ; preds = %.noexc27
  %i.bh = add i64 %i.au, -8
  %i.bi = sub i64 %i.bh, %i.av                    ; 3 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.bi, 56
  br i1 %min.iters.check72, label %.lr.ph.i.i.i.i20.preheader86, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i20.preheader
  %i.bl = and i64 %i.bi, -8
  %i.bm = add i64 %i.bl, 8                        ; 2 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.at, i64 %i.bm
  %bound0 = icmp ult ptr %i.be, %i.bo
  %bound1 = icmp ult ptr %i.at, %i.bn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i20.preheader86, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck
  %n.vec74 = and i64 %i.bk, 4611686018427387900   ; 3 uses
  %i.bp = shl i64 %n.vec74, 3                     ; 2 uses
  %i.bq = getelementptr i8, ptr %i.be, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.at, i64 %i.bp
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next81, %vector.body75 ] ; 2 uses
  %i.bs = shl i64 %index76, 3                     ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.be, i64 %i.bs ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.at, i64 %i.bs ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.bt = getelementptr i8, ptr %next.gep78, i64 16 ; 2 uses
  %wide.load79 = load <2 x i64>, ptr %next.gep78, align 8, !tbaa !174, !alias.scope !495
  %wide.load80 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !174, !alias.scope !495
  %i.bu = getelementptr i8, ptr %next.gep77, i64 16
  store <2 x i64> %wide.load79, ptr %next.gep77, align 8, !tbaa !174, !alias.scope !496, !noalias !497
  store <2 x i64> %wide.load80, ptr %i.bu, align 8, !tbaa !174, !alias.scope !496, !noalias !497
  store <2 x ptr> splat (ptr null), ptr %next.gep78, align 8, !tbaa !174, !alias.scope !495
  store <2 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !174, !alias.scope !495
  %index.next81 = add nuw i64 %index76, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.bv, label %middle.block82, label %vector.body75, !llvm.loop !488

middle.block82:                                   ; preds = %vector.body75
  %cmp.n83 = icmp eq i64 %i.bk, %n.vec74
  br i1 %cmp.n83, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i20.preheader86

.lr.ph.i.i.i.i20.preheader86:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i20.preheader, %middle.block82
  %.012.i.i.i.i21.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i20.preheader ], [ %i.bq, %middle.block82 ]
  %.0911.i.i.i.i22.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i.i.i.i20.preheader ], [ %i.br, %middle.block82 ]
  br label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %.lr.ph.i.i.i.i20.preheader86, %.lr.ph.i.i.i.i20
  %.012.i.i.i.i21 = phi ptr [ %i.by, %.lr.ph.i.i.i.i20 ], [ %.012.i.i.i.i21.ph, %.lr.ph.i.i.i.i20.preheader86 ] ; 2 uses
  %.0911.i.i.i.i22 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i20 ], [ %.0911.i.i.i.i22.ph, %.lr.ph.i.i.i.i20.preheader86 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.bw = load i64, ptr %.0911.i.i.i.i22, align 8, !tbaa !174, !alias.scope !494
  store i64 %i.bw, ptr %.012.i.i.i.i21, align 8, !tbaa !174, !alias.scope !493
  store ptr null, ptr %.0911.i.i.i.i22, align 8, !tbaa !174, !alias.scope !494
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i22, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21, i64 8 ; 2 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bx, %i.ap
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i20, !llvm.loop !489

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i20, %middle.block82, %.noexc27
  %.0.lcssa.i.i.i.i = phi ptr [ %i.be, %.noexc27 ], [ %i.bq, %middle.block82 ], [ %i.by, %.lr.ph.i.i.i.i20 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.at, null
  br i1 %.not.i23.i, label %.noexc14, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !193
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.cc) #51
  br label %.noexc14

.noexc14:                                         ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.be, ptr %i.b, align 8, !tbaa !173
  store ptr %i.bz, ptr %i.am, align 8, !tbaa !172
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.cd, ptr %i.k, align 8, !tbaa !193
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.g, %.noexc14
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.ak
  br i1 %.not, label %._crit_edge, label %bb.e

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.b, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18

.loopexit.split-lp35.loopexit.split-lp:           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i16 = icmp eq ptr %i.ao, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17: ; preds = %.loopexit.split-lp35.loopexit.split-lp
  %i.cf = load ptr, ptr %i.ao, align 8, !tbaa !74
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp35.loopexit.split-lp, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp35.loopexit.split-lp ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #50
  call void @_ZN4toml2v34nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #50
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4toml2v35arrayC2EOS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v34nodeE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !156, !noalias !504
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !156, !alias.scope !504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !159
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !159
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !193
  store ptr %i.k, ptr %i.i, align 8, !tbaa !193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN4toml2v35arrayaSERKS1_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.107, align 2            ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !150
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4toml2v34nodeaSERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !153
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #50, !inline_history !19
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #50, !inline_history !19
  br label %_ZN4toml2v34nodeaSERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZN4toml2v34nodeaSERKS1_.exit, !prof !155

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #50
  br label %_ZN4toml2v34nodeaSERKS1_.exit

_ZN4toml2v34nodeaSERKS1_.exit:                    ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !173  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !172  ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4toml2v34nodeaSERKS1_.exit, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.t, %_ZN4toml2v34nodeaSERKS1_.exit ] ; 2 uses
  %i.w = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i10, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #50, !inline_history !20
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.t, ptr %i.u, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit: ; preds = %_ZN4toml2v34nodeaSERKS1_.exit, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !172 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !173 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ugt i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #54
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !193
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !173
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ult i64 %i.ao, %i.ah
  br i1 %i.ap, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.aq = ptrtoint ptr %i.t to i64
  %i.ar = sub i64 %i.aq, %i.an
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #55 ; 6 uses
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !173 ; 8 uses
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !172 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11.preheader

.lr.ph.i.i.i.i11.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = ptrtoaddr ptr %i.at to i64
  %i.ax = add i64 %i.av, -8
  %i.ay = sub i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i11.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i11.preheader
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.as, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.at, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.be ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.at, i64 %i.be ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.bf = getelementptr i8, ptr %next.gep66, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep66, align 8, !tbaa !174, !alias.scope !522
  %wide.load67 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !174, !alias.scope !522
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !521
  store <2 x i64> %wide.load67, ptr %i.bg, align 8, !tbaa !174, !alias.scope !521
  store <2 x ptr> splat (ptr null), ptr %next.gep66, align 8, !tbaa !174, !alias.scope !522
  store <2 x ptr> splat (ptr null), ptr %i.bf, align 8, !tbaa !174, !alias.scope !522
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !508

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11.preheader92

.lr.ph.i.i.i.i11.preheader92:                     ; preds = %.lr.ph.i.i.i.i11.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i11.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i11.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %.lr.ph.i.i.i.i11.preheader92, %.lr.ph.i.i.i.i11
  %.012.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i11 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i11.preheader92 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i11 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i11.preheader92 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.bi = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !522
  store i64 %i.bi, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !521
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !522
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i12 = icmp eq ptr %i.bj, %i.au
  br i1 %.not.i.i.i.i12, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11, !llvm.loop !509

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i11, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.at, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.bl = load ptr, ptr %i.aj, align 8, !tbaa !193
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.at to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bo) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.as, ptr %i.s, align 8, !tbaa !173
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store ptr %i.bp, ptr %i.u, align 8, !tbaa !172
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ah
  store ptr %i.bq, ptr %i.aj, align 8, !tbaa !193
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !159
  %.pre42 = load ptr, ptr %i.ac, align 8, !tbaa !159
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.j, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.br = phi ptr [ %i.ad, %bb.j ], [ %.pre42, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %i.bs = phi ptr [ %i.ae, %bb.j ], [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %.not3337 = icmp eq ptr %i.bs, %i.br
  br i1 %.not3337, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %.sroa.030.038 = phi ptr [ %i.dk, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ], [ %i.bs, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ] ; 2 uses
  %i.bt = load ptr, ptr %.sroa.030.038, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50, !noalias !523
  store i16 -1, ptr %2, align 2, !tbaa !196, !noalias !523
  %i.bu = call noundef ptr @_ZN4toml2v34node8do_visitIZNS0_4impl14make_node_implIRKS1_EEPDaOT_NS0_11value_flagsEEUlS9_E_S6_EEDcS9_OT0_(ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.bt), !noalias !523, !inline_history !512 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50, !noalias !523
  %i.bv = load ptr, ptr %i.u, align 8, !tbaa !172 ; 6 uses
  %i.bw = load ptr, ptr %i.aj, align 8, !tbaa !193
  %.not.i = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bx = ptrtoint ptr %i.bu to i64
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !174
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.by, ptr %i.u, align 8, !tbaa !172
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bz = load ptr, ptr %i.s, align 8, !tbaa !173 ; 10 uses
  %i.ca = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.m
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i17 = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i17)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #55
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  %i.cm = ptrtoint ptr %i.bu to i64
  store i64 %i.cm, ptr %i.cl, align 8, !tbaa !174
  %.not10.i.i.i.i18 = icmp eq ptr %i.bz, %i.bv
  br i1 %.not10.i.i.i.i18, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader

.lr.ph.i.i.i.i19.preheader:                       ; preds = %.noexc26
  %i.cn = add i64 %i.ca, -8
  %i.co = sub i64 %i.cn, %i.cb                    ; 3 uses
  %i.cp = lshr i64 %i.co, 3
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check73 = icmp ult i64 %i.co, 56
  br i1 %min.iters.check73, label %.lr.ph.i.i.i.i19.preheader87, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i19.preheader
  %i.cr = and i64 %i.co, -8
  %i.cs = add i64 %i.cr, 8                        ; 2 uses
  %i.ct = getelementptr i8, ptr %i.ck, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.bz, i64 %i.cs
  %bound0 = icmp ult ptr %i.ck, %i.cu
  %bound1 = icmp ult ptr %i.bz, %i.ct
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i19.preheader87, label %vector.ph74

vector.ph74:                                      ; preds = %vector.memcheck
  %n.vec75 = and i64 %i.cq, 4611686018427387900   ; 3 uses
  %i.cv = shl i64 %n.vec75, 3                     ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ck, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.bz, i64 %i.cv
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %i.cy = shl i64 %index77, 3                     ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.ck, i64 %i.cy ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.bz, i64 %i.cy ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.cz = getelementptr i8, ptr %next.gep79, i64 16 ; 2 uses
  %wide.load80 = load <2 x i64>, ptr %next.gep79, align 8, !tbaa !174, !alias.scope !526
  %wide.load81 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !174, !alias.scope !526
  %i.da = getelementptr i8, ptr %next.gep78, i64 16
  store <2 x i64> %wide.load80, ptr %next.gep78, align 8, !tbaa !174, !alias.scope !527, !noalias !528
  store <2 x i64> %wide.load81, ptr %i.da, align 8, !tbaa !174, !alias.scope !527, !noalias !528
  store <2 x ptr> splat (ptr null), ptr %next.gep79, align 8, !tbaa !174, !alias.scope !526
  store <2 x ptr> splat (ptr null), ptr %i.cz, align 8, !tbaa !174, !alias.scope !526
  %index.next82 = add nuw i64 %index77, 4         ; 2 uses
  %i.db = icmp eq i64 %index.next82, %n.vec75
  br i1 %i.db, label %middle.block83, label %vector.body76, !llvm.loop !519

middle.block83:                                   ; preds = %vector.body76
  %cmp.n84 = icmp eq i64 %i.cq, %n.vec75
  br i1 %cmp.n84, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader87

.lr.ph.i.i.i.i19.preheader87:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i19.preheader, %middle.block83
  %.012.i.i.i.i20.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.i.i19.preheader ], [ %i.cw, %middle.block83 ]
  %.0911.i.i.i.i21.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph.i.i.i.i19.preheader ], [ %i.cx, %middle.block83 ]
  br label %.lr.ph.i.i.i.i19

.lr.ph.i.i.i.i19:                                 ; preds = %.lr.ph.i.i.i.i19.preheader87, %.lr.ph.i.i.i.i19
  %.012.i.i.i.i20 = phi ptr [ %i.de, %.lr.ph.i.i.i.i19 ], [ %.012.i.i.i.i20.ph, %.lr.ph.i.i.i.i19.preheader87 ] ; 2 uses
  %.0911.i.i.i.i21 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i19 ], [ %.0911.i.i.i.i21.ph, %.lr.ph.i.i.i.i19.preheader87 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.dc = load i64, ptr %.0911.i.i.i.i21, align 8, !tbaa !174, !alias.scope !525
  store i64 %i.dc, ptr %.012.i.i.i.i20, align 8, !tbaa !174, !alias.scope !524
  store ptr null, ptr %.0911.i.i.i.i21, align 8, !tbaa !174, !alias.scope !525
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i21, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.dd, %i.bv
  br i1 %.not.i.i.i.i22, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19, !llvm.loop !520

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i19, %middle.block83, %.noexc26
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ck, %.noexc26 ], [ %i.cw, %middle.block83 ], [ %i.de, %.lr.ph.i.i.i.i19 ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i, label %.noexc, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dg = load ptr, ptr %i.aj, align 8, !tbaa !193
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.di) #51
  br label %.noexc

.noexc:                                           ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.ck, ptr %i.s, align 8, !tbaa !173
  store ptr %i.df, ptr %i.u, align 8, !tbaa !172
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.dj, ptr %i.aj, align 8, !tbaa !193
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.l, %.noexc
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.030.038, i64 8 ; 2 uses
  %.not33 = icmp eq ptr %i.dk, %i.br
  br i1 %.not33, label %.loopexit, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.n
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  %.not.i14 = icmp eq ptr %i.bu, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit16, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i15

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i15: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.dl = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(40) %i.bu) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit16

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit16: ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i15
  resume { ptr, i32 } %lpad.loopexit.split-lp88

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN4toml2v35arrayaSEOS1_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(64) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(64) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.010.i = alloca { %"struct.toml::v3::source_position", %"struct.toml::v3::source_position" }, align 8 ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit, label %_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit.i

_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.i)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.i, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !156, !noalias !534
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.i, i64 16, i1 false)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !150  ; 8 uses
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !156
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4toml2v34nodeaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !152
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !153
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !21
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !21
  br label %_ZN4toml2v34nodeaSEOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZN4toml2v34nodeaSEOS1_.exit, !prof !155

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50
  br label %_ZN4toml2v34nodeaSEOS1_.exit

_ZN4toml2v34nodeaSEOS1_.exit:                     ; preds = %_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit.i, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010.i)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !173  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !172 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !193
  %i.ad = load <2 x ptr>, ptr %i.w, align 8, !tbaa !159
  store <2 x ptr> %i.ad, ptr %i.x, align 8, !tbaa !159
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !193
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !193
  %.not4.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4toml2v34nodeaSEOS1_.exit, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.y, %_ZN4toml2v34nodeaSEOS1_.exit ] ; 2 uses
  %i.ag = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i.i.i5 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i5, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !74
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #50, !inline_history !533
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, %_ZN4toml2v34nodeaSEOS1_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i
  %i.al = ptrtoint ptr %i.ac to i64
  %i.am = ptrtoint ptr %i.y to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.an) #51
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit: ; preds = %bb.h, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v35array19preinsertion_resizeEmm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !173  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
end_hunk_0
begin_hunk_1_@_ZNK4toml2v35array14is_homogeneousENS0_9node_typeE:bb.a
.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  %.08 = phi i8 [ %i.k, %bb.c ], [ %1, %bb.b ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.012.017 = phi ptr [ %i.q, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.012.017, align 8, !tbaa !174 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #52
  %.not = icmp eq i8 %i.p, %.08                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8 ; 2 uses
  %.not15 = icmp ne ptr %i.q, %i.d
  %or.cond.not = select i1 %.not, i1 %.not15, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind memory(read, argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4toml2v35array14is_homogeneousENS0_9node_typeERPNS0_4nodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i8 noundef zeroext %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %1, 0
  br i1 %i.f, label %bb.c, label %.critedge.preheader

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !174  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i8 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #52
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.b, %bb.c
  %.013 = phi i8 [ %i.k, %bb.c ], [ %1, %bb.b ]
  br label %.critedge

bb.d:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %i.l, %i.d
  br i1 %.not18, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %bb.d
  %.sroa.015.021 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.preheader ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.015.021, align 8, !tbaa !174 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #52
  %.not = icmp eq i8 %i.q, %.013
  br i1 %.not, label %bb.d, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.critedge, %bb.a
  %.lcssa.sink = phi ptr [ null, %bb.a ], [ %i.m, %.critedge ]
  store ptr %.lcssa.sink, ptr %2, align 8, !tbaa !174
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.sink.split
  %.3 = phi i1 [ false, %.loopexit.sink.split ], [ true, %bb.d ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind memory(read, argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK4toml2v35array14is_homogeneousENS0_9node_typeERPKNS0_4nodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i8 noundef zeroext %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN4toml2v35array14is_homogeneousENS0_9node_typeERPNS0_4nodeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %1, 0
  br i1 %i.f, label %bb.c, label %.critedge.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !174  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i8 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #52, !inline_history !538
  br label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %bb.c, %bb.b
  %.013.i = phi i8 [ %i.k, %bb.c ], [ %1, %bb.b ]
  br label %.critedge.i

bb.d:                                             ; preds = %.critedge.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 8 ; 2 uses
  %.not18.i = icmp eq ptr %i.l, %i.d
  br i1 %.not18.i, label %_ZN4toml2v35array14is_homogeneousENS0_9node_typeERPNS0_4nodeE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.critedge.preheader.i
  %.sroa.015.021.i = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.preheader.i ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.015.021.i, align 8, !tbaa !174 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #52, !inline_history !538
  %.not.i = icmp eq i8 %i.q, %.013.i              ; 3 uses
  br i1 %.not.i, label %bb.d, label %_ZN4toml2v35array14is_homogeneousENS0_9node_typeERPNS0_4nodeE.exit

_ZN4toml2v35array14is_homogeneousENS0_9node_typeERPNS0_4nodeE.exit: ; preds = %.critedge.i, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.m, %.critedge.i ], [ null, %bb.d ]
  %.3.i = phi i1 [ false, %bb.a ], [ %.not.i, %bb.d ], [ %.not.i, %.critedge.i ]
  store ptr %.0, ptr %2, align 8, !tbaa !174
  ret i1 %.3.i
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN4toml2v35array2atEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !173  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %.not.i.i = icmp ult i64 %1, %i.h
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.218, i64 noundef %1, i64 noundef %i.h) #54
  unreachable

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE2atEm.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !174
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v35array7reserveEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !193
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.g
  %i.o = shl nuw nsw i64 %1, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #55 ; 6 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !173  ; 8 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !172  ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = ptrtoaddr ptr %i.q to i64
  %i.u = add i64 %i.s, -8
  %i.v = sub i64 %i.u, %i.t                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.q, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep3 = getelementptr i8, ptr %i.q, i64 %i.ab ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.ac = getelementptr i8, ptr %next.gep3, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep3, align 8, !tbaa !174, !alias.scope !545
  %wide.load4 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !174, !alias.scope !545
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !544
  store <2 x i64> %wide.load4, ptr %i.ad, align 8, !tbaa !174, !alias.scope !544
  store <2 x ptr> splat (ptr null), ptr %next.gep3, align 8, !tbaa !174, !alias.scope !545
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !174, !alias.scope !545
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !542

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader6

.lr.ph.i.i.i.i.preheader6:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader6, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader6 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader6 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.af = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !545
  store i64 %i.af, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !544
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !545
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !543

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !193
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.q to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.al) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.p, ptr %i.a, align 8, !tbaa !173
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store ptr %i.am, ptr %i.k, align 8, !tbaa !172
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %1
  store ptr %i.an, ptr %i.c, align 8, !tbaa !193
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35array13shrink_to_fitEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS4_EESaIS7_EELb1EE8_S_do_itERS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #50 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35array8truncateEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !173  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp ult i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, %i.j
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #50, !inline_history !22
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @_ZN4toml2v35array5eraseENS0_4impl14array_iteratorILb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159  ; 4 uses
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.v, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !174
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !174
  %i.p = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  store ptr %i.o, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !174
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #50, !inline_history !25
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.v = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.w = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !26

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !172
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.b, %bb.a
  %i.x = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.i, %bb.b ], [ %i.i, %bb.a ]
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8 ; 2 uses
  store ptr %i.y, ptr %i.h, align 8, !tbaa !172
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #50, !inline_history !27
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @_ZN4toml2v35array5eraseENS0_4impl14array_iteratorILb1EEES4_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h ; 2 uses
  %.not.i.i = icmp eq ptr %1, %2
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EESD_.exit, label %bb.b

end_hunk_1
begin_hunk_2_@_ZN4toml2v35array13flatten_childEOS1_Rm:bb.a
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %2, align 8, !tbaa !123
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !173
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !174
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !174 ; 3 uses
  store ptr %i.l, ptr %i.z, align 8, !tbaa !174
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i: ; preds = %bb.e
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #50, !inline_history !23
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i, %bb.e, %bb.c, %bb.d
  %i.ae = add nuw i64 %.015, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !549
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNR4toml2v35array7flattenEv(ptr noundef nonnull returned align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  br label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread, %.lr.ph.preheader
  %.in.ph = phi i64 [ %i.k, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread ], [ %i.j, %.lr.ph.preheader ]
  %.02041.ph = phi i1 [ true, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread ], [ false, %.lr.ph.preheader ]
  %.02240.ph = phi i64 [ %i.aq, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread ], [ %i.j, %.lr.ph.preheader ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit
  br i1 %.02041.ph, label %._crit_edge.thread, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.outer, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit
  %.in = phi i64 [ %i.k, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit ], [ %.in.ph, %.lr.ph.outer ]
  %.02240 = phi i64 [ %.224, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit ], [ %.02240.ph, %.lr.ph.outer ] ; 2 uses
  %i.k = add i64 %.in, -1                         ; 5 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !173
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !174  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #52 ; 2 uses
  %.not30 = icmp eq ptr %i.r, null
  br i1 %.not30, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %bb.b, !llvm.loop !550

bb.b:                                             ; preds = %.lr.ph
  %i.s = add i64 %.02240, -1                      ; 3 uses
  %i.t = tail call noundef i64 @_ZNK4toml2v35array16total_leaf_countEv(ptr noundef nonnull align 8 dereferenceable(64) %i.r) #50 ; 2 uses
  %.not31 = icmp eq i64 %i.t, 0
  br i1 %.not31, label %bb.c, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !159  ; 4 uses
  %.not.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ai, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.z, %bb.d ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.m, %bb.d ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ag, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.u, %bb.d ] ; 3 uses
  %i.ab = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !174
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !174
  %i.ac = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  store ptr %i.ab, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !174
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #50, !inline_history !25
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.ai = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !26

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !172
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.d, %bb.c
  %i.ak = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.v, %bb.d ], [ %i.v, %bb.c ]
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 2 uses
  store ptr %i.al, ptr %i.d, align 8, !tbaa !172
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #50, !inline_history !27
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, %.lr.ph
  %.224 = phi i64 [ %.02240, %.lr.ph ], [ %i.s, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i ], [ %i.s, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i ] ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread: ; preds = %bb.b
  %i.aq = add i64 %i.t, %i.s                      ; 2 uses
  %.not76 = icmp eq i64 %i.k, 0
  br i1 %.not76, label %._crit_edge.thread, label %.lr.ph.outer

._crit_edge.thread:                               ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread, %._crit_edge
  %.2247781 = phi i64 [ %.224, %._crit_edge ], [ %i.aq, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread ] ; 4 uses
  %i.ar = icmp ugt i64 %.2247781, 1152921504606846975
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #54
  unreachable

bb.f:                                             ; preds = %._crit_edge.thread
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !193
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = icmp ult i64 %i.ay, %.2247781
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !172 ; 2 uses
  br i1 %i.az, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.ba = ptrtoint ptr %.pre to i64
  %i.bb = sub i64 %i.ba, %i.aw
  %i.bc = shl nuw nsw i64 %.2247781, 3
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #55 ; 10 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !173 ; 11 uses
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !172 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = ptrtoaddr ptr %i.be to i64
  %i.bi = add i64 %i.bg, -8
  %i.bj = sub i64 %i.bi, %i.bh                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader101, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bm = and i64 %i.bj, -8
  %i.bn = add i64 %i.bm, 8                        ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bd, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.be, i64 %i.bn
  %bound0 = icmp ult ptr %i.bd, %i.bp
  %bound1 = icmp ult ptr %i.be, %i.bo
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bq = shl i64 %n.vec, 3                       ; 2 uses
  %i.br = getelementptr i8, ptr %i.bd, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.be, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bt ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.be, i64 %i.bt ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.bu = getelementptr i8, ptr %next.gep97, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep97, align 8, !tbaa !174, !alias.scope !564
  %wide.load98 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !174, !alias.scope !564
  %i.bv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !565, !noalias !566
  store <2 x i64> %wide.load98, ptr %i.bv, align 8, !tbaa !174, !alias.scope !565, !noalias !566
  store <2 x ptr> splat (ptr null), ptr %next.gep97, align 8, !tbaa !174, !alias.scope !564
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !174, !alias.scope !564
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !557

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader101

.lr.ph.i.i.i.i.preheader101:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader101, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader101 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader101 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.bx = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !563
  store i64 %i.bx, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !562
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !563
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.by, %i.bf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !558

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.be, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.ca = load ptr, ptr %i.as, align 8, !tbaa !193
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.be to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.cd) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !173
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb ; 2 uses
  store ptr %i.ce, ptr %i.d, align 8, !tbaa !172
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.2247781
  store ptr %i.cf, ptr %i.as, align 8, !tbaa !193
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.f, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.cg = phi ptr [ %i.au, %bb.f ], [ %i.bd, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 3 uses
  %i.ch = phi ptr [ %.pre, %bb.f ], [ %i.ce, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 0, ptr %i.a, align 8, !tbaa !123
  %.not45 = icmp eq ptr %i.ch, %i.cg
  br i1 %.not45, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.ci = ptrtoint ptr %i.cg to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph43, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35
  %i.cj = phi ptr [ %i.ch, %.lr.ph43 ], [ %i.ed, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35 ] ; 3 uses
  %i.ck = phi i64 [ %i.ci, %.lr.ph43 ], [ %i.eg, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35 ]
  %i.cl = phi ptr [ %i.cg, %.lr.ph43 ], [ %i.ee, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35 ] ; 2 uses
  %i.cm = phi i64 [ 0, %.lr.ph43 ], [ %i.ec, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 6 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !74
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 152
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef ptr %i.cr(ptr noundef nonnull align 8 dereferenceable(40) %i.co) #52 ; 3 uses
  %.not29 = icmp eq ptr %i.cs, null
  br i1 %.not29, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ct = add nuw i64 %i.cm, 1
  store i64 %i.ct, ptr %i.a, align 8, !tbaa !123
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35, !llvm.loop !559

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.cn, align 8, !tbaa !174
  %i.cu = tail call noundef i64 @_ZNK4toml2v35array16total_leaf_countEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cs) #50 ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, 1
  br i1 %i.cv, label %bb.k, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.k:                                             ; preds = %bb.j
  %i.cw = add nuw i64 %i.cm, 1                    ; 2 uses
  %i.cx = add i64 %i.cu, -1                       ; 2 uses
  %i.cy = ptrtoint ptr %i.cj to i64
  %i.cz = sub i64 %i.cy, %i.ck
  %i.da = ashr exact i64 %i.cz, 3                 ; 5 uses
  %i.db = add i64 %i.da, %i.cx                    ; 4 uses
  %i.dc = icmp ugt i64 %i.db, %i.da
  br i1 %i.dc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.cx)
          to label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i unwind label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.dd = icmp ult i64 %i.db, %i.da
  br i1 %i.dd, label %bb.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.db ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.cj, %i.de
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.dj, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.de, %bb.n ] ; 2 uses
  %i.df = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !74
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void %i.di(ptr noundef nonnull align 8 dereferenceable(40) %i.df) #50, !inline_history !560
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dj, %i.cj
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  store ptr %i.de, ptr %i.d, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, %bb.n, %bb.m
  %i.dk = icmp ugt i64 %i.da, %i.cw
  br i1 %i.dk, label %.lr.ph.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i
  %.0.in19.i = phi i64 [ %.0.i, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.db, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i ]
  %.01418.i = phi i64 [ %i.dl, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.da, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i ]
  %i.dl = add i64 %.01418.i, -1                   ; 3 uses
  %.0.i = add i64 %.0.in19.i, -1                  ; 2 uses
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dl ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.0.i ; 2 uses
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !174
  store ptr null, ptr %i.dn, align 8, !tbaa !174
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !174 ; 3 uses
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !174
  %.not.i.i.i.i17.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i17.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !74
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  tail call void %i.dt(ptr noundef nonnull align 8 dereferenceable(40) %i.dq) #50, !inline_history !561
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i
  %i.du = icmp ugt i64 %i.dl, %i.cw
  br i1 %i.du, label %.lr.ph.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34, !llvm.loop !24

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.l
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %i.co, align 8, !tbaa !74
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  tail call void %i.dy(ptr noundef nonnull align 8 dereferenceable(40) %i.co) #50, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  resume { ptr, i32 } %i.dv

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34: ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i, %bb.j, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i
  call void @_ZN4toml2v35array13flatten_childEOS1_Rm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #50
  %i.dz = load ptr, ptr %i.co, align 8, !tbaa !74
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void %i.eb(ptr noundef nonnull align 8 dereferenceable(40) %i.co) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34, %bb.i
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !123 ; 2 uses
  %i.ed = load ptr, ptr %i.d, align 8, !tbaa !172 ; 2 uses
  %i.ee = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 3
  %i.ej = icmp ult i64 %i.ec, %i.ei
  br i1 %i.ej, label %bb.h, label %._crit_edge44

._crit_edge44:                                    ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge44, %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNR4toml2v35array5pruneEb(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(64) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4toml2v34impl7impl_ex6parser11parse_arrayEv:bb.a
.invoke.i:                                        ; preds = %bb.ac, %bb.s
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !30

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af, %bb.ab
  %.pn.i = phi { ptr, i32 } [ %i.ah, %bb.ab ], [ %i.al, %bb.af ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

_ZN4toml2v34impl7impl_ex6parser15consume_commentEv.exit: ; preds = %.preheader.i, %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %_ZN4toml2v34impl7impl_ex6parser15consume_commentEv.exit, %bb.r, %bb.i
  br label %.critedge, !llvm.loop !611

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge, %bb.n, %bb.r, %bb.aj, %.invoke178, %bb.q, %bb.ar
  %lpad.loopexit.split-lp272 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #50
  store i64 23, ptr %15, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @.str.13, ptr %i.am, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %15) #54
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.thread
  unreachable

bb.ah:                                            ; preds = %.thread
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.ai:                                            ; preds = %bb.m
  br i1 %i.k, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !239
  %.not16 = icmp eq ptr %i.ao, null
  br i1 %.not16, label %bb.al, label %.backedge.backedge, !prof !155

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #50
  store i64 23, ptr %16, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @.str.13, ptr %i.ap, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %16) #54
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #50
  store i64 40, ptr %17, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @.str.14, ptr %i.ar, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %17) #54
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.ar:                                            ; preds = %bb.m
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.m
  br i1 %i.k, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #50
  store i64 36, ptr %18, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @.str.15, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #50
  %i.au = icmp ult i32 %i.n, 32
  br i1 %i.au, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.av = zext nneg i32 %i.n to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.av ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.aw, align 16, !tbaa !123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.av:                                            ; preds = %bb.at
  %i.ax = icmp eq i32 %i.n, 127
  br i1 %i.ax, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !246
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.au, %bb.av, %bb.aw
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.au ], [ %i.ay, %bb.aw ], [ @.str.29, %bb.av ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.au ], [ %i.ba, %bb.aw ], [ 6, %bb.av ]
  store i64 %.sroa.0.0.i, ptr %19, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %.sroa.4.0.i, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #50
  store i64 1, ptr %20, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str.16, ptr %i.bc, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20) #54
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.az:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #50
  invoke void @_ZN4toml2v34impl7impl_ex6parser11parse_valueEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %21, ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !193 ; 3 uses
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !173 ; 2 uses
  %.not14 = icmp eq ptr %i.be, %i.bf
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !172 ; 2 uses
  br i1 %.not14, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i, label %bb.bd

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i: ; preds = %bb.ba
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %.pre to i64
  %i.bi = sub i64 %i.bh, %i.bg
  %i.bj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #55
          to label %.noexc27 unwind label %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc27:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !173 ; 11 uses
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !172 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc27
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = ptrtoaddr ptr %i.bk to i64
  %i.bo = add i64 %i.bm, -8
  %i.bp = sub i64 %i.bo, %i.bn                    ; 3 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check244 = icmp ult i64 %i.bp, 56
  br i1 %min.iters.check244, label %.lr.ph.i.i.i.i.i.preheader264, label %vector.memcheck245

vector.memcheck245:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bs = and i64 %i.bp, -8
  %i.bt = add i64 %i.bs, 8                        ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bj, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bk, i64 %i.bt
  %bound0246 = icmp ult ptr %i.bj, %i.bv
  %bound1247 = icmp ult ptr %i.bk, %i.bu
  %found.conflict248 = and i1 %bound0246, %bound1247
  br i1 %found.conflict248, label %.lr.ph.i.i.i.i.i.preheader264, label %vector.ph249

vector.ph249:                                     ; preds = %vector.memcheck245
  %n.vec250 = and i64 %i.br, 4611686018427387900  ; 3 uses
  %i.bw = shl i64 %n.vec250, 3                    ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bj, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bk, i64 %i.bw
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph249
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next257, %vector.body251 ] ; 2 uses
  %i.bz = shl i64 %index252, 3                    ; 2 uses
  %next.gep253 = getelementptr i8, ptr %i.bj, i64 %i.bz ; 2 uses
  %next.gep254 = getelementptr i8, ptr %i.bk, i64 %i.bz ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.ca = getelementptr i8, ptr %next.gep254, i64 16 ; 2 uses
  %wide.load255 = load <2 x i64>, ptr %next.gep254, align 8, !tbaa !174, !alias.scope !631
  %wide.load256 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !174, !alias.scope !631
  %i.cb = getelementptr i8, ptr %next.gep253, i64 16
  store <2 x i64> %wide.load255, ptr %next.gep253, align 8, !tbaa !174, !alias.scope !632, !noalias !633
  store <2 x i64> %wide.load256, ptr %i.cb, align 8, !tbaa !174, !alias.scope !632, !noalias !633
  store <2 x ptr> splat (ptr null), ptr %next.gep254, align 8, !tbaa !174, !alias.scope !631
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !174, !alias.scope !631
  %index.next257 = add nuw i64 %index252, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next257, %n.vec250
  br i1 %i.cc, label %middle.block258, label %vector.body251, !llvm.loop !618

middle.block258:                                  ; preds = %vector.body251
  %cmp.n259 = icmp eq i64 %i.br, %n.vec250
  br i1 %cmp.n259, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader264

.lr.ph.i.i.i.i.i.preheader264:                    ; preds = %vector.memcheck245, %.lr.ph.i.i.i.i.i.preheader, %middle.block258
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bj, %vector.memcheck245 ], [ %i.bj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bx, %middle.block258 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck245 ], [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.by, %middle.block258 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader264, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader264 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader264 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !174, !alias.scope !630
  store i64 %i.cd, ptr %.012.i.i.i.i.i, align 8, !tbaa !174, !alias.scope !629
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !174, !alias.scope !630
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bl
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !619

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block258, %.noexc27
  %.not.i8.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i8.i.i, label %_ZN4toml2v35array7reserveEm.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !193
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.bk to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cj) #51
  br label %_ZN4toml2v35array7reserveEm.exit

_ZN4toml2v35array7reserveEm.exit:                 ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, %bb.bb
  store ptr %i.bj, ptr %i.h, align 8, !tbaa !173
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 2 uses
  store ptr %i.ck, ptr %i.j, align 8, !tbaa !172
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  store ptr %i.cl, ptr %i.i, align 8, !tbaa !193
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i, %bb.bf
  %lpad.loopexit.split-lp275 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %21, align 8, !tbaa !174  ; 3 uses
  %.not.i28 = icmp eq ptr %i.cn, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i: ; preds = %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !74
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(40) %i.cn) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.bd:                                            ; preds = %_ZN4toml2v35array7reserveEm.exit, %bb.ba
  %i.cr = phi ptr [ %i.bj, %_ZN4toml2v35array7reserveEm.exit ], [ %i.bf, %bb.ba ] ; 10 uses
  %i.cs = phi ptr [ %i.cl, %_ZN4toml2v35array7reserveEm.exit ], [ %i.be, %bb.ba ] ; 4 uses
  %i.ct = phi ptr [ %i.ck, %_ZN4toml2v35array7reserveEm.exit ], [ %.pre, %bb.ba ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.cs
  br i1 %.not.i.i.i.i, label %bb.be, label %.thread57

.thread57:                                        ; preds = %bb.bd
  %i.cu = load i64, ptr %21, align 8, !tbaa !174
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !174
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cv, ptr %i.j, align 8, !tbaa !172
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32

bb.be:                                            ; preds = %bb.bd
  %i.cw = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cx = ptrtoint ptr %i.cr to i64               ; 3 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.bf, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc47 unwind label %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.bf
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.be
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #55
          to label %.noexc48 unwind label %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  %i.di = load i64, ptr %21, align 8, !tbaa !174
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !174
  store ptr null, ptr %21, align 8, !tbaa !174
  %.not10.i.i.i.i = icmp eq ptr %i.cr, %i.cs
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc48
  %i.dj = add i64 %i.cw, -8
  %i.dk = sub i64 %i.dj, %i.cx                    ; 3 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader263, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dn = and i64 %i.dk, -8
  %i.do = add i64 %i.dn, 8                        ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dg, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.cr, i64 %i.do
  %bound0 = icmp ult ptr %i.dg, %i.dq
  %bound1 = icmp ult ptr %i.cr, %i.dp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader263, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 4611686018427387900     ; 3 uses
  %i.dr = shl i64 %n.vec, 3                       ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dg, i64 %i.dr  ; 2 uses
  %i.dt = getelementptr i8, ptr %i.cr, i64 %i.dr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.du ; 2 uses
  %next.gep233 = getelementptr i8, ptr %i.cr, i64 %i.du ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.dv = getelementptr i8, ptr %next.gep233, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep233, align 8, !tbaa !174, !alias.scope !636
  %wide.load234 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !174, !alias.scope !636
  %i.dw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !637, !noalias !638
  store <2 x i64> %wide.load234, ptr %i.dw, align 8, !tbaa !174, !alias.scope !637, !noalias !638
  store <2 x ptr> splat (ptr null), ptr %next.gep233, align 8, !tbaa !174, !alias.scope !636
  store <2 x ptr> splat (ptr null), ptr %i.dv, align 8, !tbaa !174, !alias.scope !636
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !626

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader263

.lr.ph.i.i.i.i.preheader263:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.i.i.i.i.preheader ], [ %i.dt, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader263, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader263 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader263 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.dy = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !635
  store i64 %i.dy, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !634
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !635
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.dz, %i.cs
  br i1 %.not.i.i.i.i46, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !627

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc48
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dg, %.noexc48 ], [ %i.ds, %middle.block ], [ %i.ea, %.lr.ph.i.i.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cr, null
  br i1 %.not.i23.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.ec = load ptr, ptr %i.i, align 8, !tbaa !193
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.ee) #51
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.bg
  store ptr %i.dg, ptr %i.h, align 8, !tbaa !173
  store ptr %i.eb, ptr %i.j, align 8, !tbaa !172
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.ef, ptr %i.i, align 8, !tbaa !193
  %.pr56 = load ptr, ptr %21, align 8, !tbaa !174 ; 3 uses
  %.not.i30 = icmp eq ptr %.pr56, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31: ; preds = %bb.bh
  %i.eg = load ptr, ptr %.pr56, align 8, !tbaa !74
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(40) %.pr56) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32: ; preds = %.thread57, %bb.bh, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32, %bb.ak
  %.be = phi i1 [ false, %bb.ak ], [ true, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32 ]
  br label %.backedge, !llvm.loop !628

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i, %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.bc ], [ %lpad.loopexit.split-lp275, %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp275, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ah, %bb.an, %bb.aq, %bb.ay, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %.loopexit.split-lp.i
  %.pn17 = phi { ptr, i32 } [ %i.an, %bb.ah ], [ %i.aq, %bb.an ], [ %.pn, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ], [ %i.as, %bb.aq ], [ %i.bd, %bb.ay ], [ %.pn.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp272, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ej = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

bb.bi:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34, %bb.f, %bb.e
  %.pn19 = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.e, %bb.e ], [ %.pn17, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn19
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239, !nonnull !105, !noundef !105
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.e = load i64, ptr %i.c, align 8, !tbaa !154
  store i64 %i.e, ptr %i.d, align 8, !tbaa !154
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !247  ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !247
  %.not9.i = icmp eq i64 %i.h, 0
  br i1 %.not9.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !248
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.m = load i64, ptr %i.l, align 8, !tbaa !249
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.o = load i64, ptr %i.n, align 8, !tbaa !250
  %reass.sub = sub i64 %i.m, %i.g
  %i.p = add i64 %reass.sub, 1
  %i.q = add i64 %i.p, %i.o
  %i.r = urem i64 %i.q, 127
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.r
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3056 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !250  ; 4 uses
  %.not6.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.x, null               ; 2 uses
  %i.y = select i1 %.not6.i, i1 %.not7.i, i1 false
  br i1 %i.y, label %bb.f, label %bb.g, !prof !155

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !251, !nonnull !105, !align !252 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z), !inline_history !31 ; 2 uses
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !248
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.g:                                             ; preds = %bb.e
  br i1 %.not7.i, label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread, label %bb.h

_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread: ; preds = %bb.g
  store ptr null, ptr %i.a, align 8, !tbaa !239
  br label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ult i64 %i.v, 127
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !155

bb.i:                                             ; preds = %bb.h
  %i.af = add nuw nsw i64 %i.v, 1
  store i64 %i.af, ptr %i.u, align 8, !tbaa !250
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3064 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !249 ; 2 uses
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !249
  %i.aj = add i64 %i.ah, 127
  %i.ak = urem i64 %i.aj, 127
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink13.i = phi i64 [ %i.ak, %bb.j ], [ %i.v, %bb.i ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.sink13.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.am = load ptr, ptr %0, align 8, !tbaa !251, !nonnull !105, !align !252 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am), !inline_history !31 ; 2 uses
  store ptr %i.aq, ptr %i.w, align 8, !tbaa !248
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.k
  %.0.i = phi ptr [ %i.s, %bb.d ], [ %i.j, %bb.c ], [ %i.ad, %bb.f ], [ %i.aq, %bb.k ] ; 5 uses
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !239
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3464
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !253, !range !104, !noundef !105
  %i.at = trunc nuw i8 %i.as to i1
  %.not = icmp ne ptr %.0.i, null
  %or.cond.not = and i1 %.not, %i.at
  br i1 %or.cond.not, label %bb.l, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3465
  %i.av = load i8, ptr %i.au, align 1, !tbaa !254, !range !104, !noundef !105
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_3
begin_hunk_4_@_ZN4toml2v34impl7impl_ex6parser18parse_table_headerEv:bb.a
  %i.uj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i341 = icmp eq i8 %i.uj, 0
  br i1 %.not.i.i.i.i.i.i341, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.uk = add nsw i32 %i.ub, -1
  store i32 %i.uk, ptr %i.ty, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342

bb.gk:                                            ; preds = %bb.gi
  %i.ul = atomicrmw volatile add ptr %i.ty, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342: ; preds = %bb.gk, %bb.gj
  %.0.i.i.i.i.i.i.i343 = phi i32 [ %i.ub, %bb.gj ], [ %i.ul, %bb.gk ]
  %i.um = icmp eq i32 %.0.i.i.i.i.i.i.i343, 1
  br i1 %i.um, label %bb.gl, label %_ZN4toml2v313source_regionD2Ev.exit335, !prof !155

bb.gl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tx) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit335

bb.gm:                                            ; preds = %bb.gc
  %i.un = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #50
  br label %bb.gt

_ZN4toml2v313source_regionD2Ev.exit335:           ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339, %bb.gh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342, %bb.gl, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit325, %bb.fu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i328, %bb.fy
  %.6 = phi ptr [ %i.ru, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit325 ], [ %i.ru, %bb.fy ], [ %i.ru, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i328 ], [ %i.ru, %bb.fu ], [ %i.th, %bb.gl ], [ %i.th, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342 ], [ %i.th, %bb.gh ], [ %i.th, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339 ]
  %i.uo = getelementptr inbounds nuw i8, ptr %45, i64 56
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !150 ; 8 uses
  %.not.i.i.i.i350 = icmp eq ptr %i.up, null
  br i1 %.not.i.i.i.i350, label %_ZN4toml2v313source_regionD2Ev.exit.i354, label %bb.gn

bb.gn:                                            ; preds = %_ZN4toml2v313source_regionD2Ev.exit335
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8 ; 4 uses
  %i.ur = load atomic i64, ptr %i.uq acquire, align 8 ; 2 uses
  %i.us = icmp eq i64 %i.ur, 4294967297
  %i.ut = trunc i64 %i.ur to i32                  ; 2 uses
  br i1 %i.us, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  store i32 0, ptr %i.uq, align 8, !tbaa !152
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 12
  store i32 0, ptr %i.uu, align 4, !tbaa !153
  %i.uv = load ptr, ptr %i.up, align 8, !tbaa !74
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %i.ux = load ptr, ptr %i.uw, align 8
  call void %i.ux(ptr noundef nonnull align 8 dereferenceable(16) %i.up) #50, !inline_history !34
  %i.uy = load ptr, ptr %i.up, align 8, !tbaa !74
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 24
  %i.va = load ptr, ptr %i.uz, align 8
  call void %i.va(ptr noundef nonnull align 8 dereferenceable(16) %i.up) #50, !inline_history !34
  br label %_ZN4toml2v313source_regionD2Ev.exit.i354

bb.gp:                                            ; preds = %bb.gn
  %i.vb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i351 = icmp eq i8 %i.vb, 0
  br i1 %.not.i.i.i.i.i351, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.vc = add nsw i32 %i.ut, -1
  store i32 %i.vc, ptr %i.uq, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352

bb.gr:                                            ; preds = %bb.gp
  %i.vd = atomicrmw volatile add ptr %i.uq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352: ; preds = %bb.gr, %bb.gq
  %.0.i.i.i.i.i.i353 = phi i32 [ %i.ut, %bb.gq ], [ %i.vd, %bb.gr ]
  %i.ve = icmp eq i32 %.0.i.i.i.i.i.i353, 1
  br i1 %i.ve, label %bb.gs, label %_ZN4toml2v313source_regionD2Ev.exit.i354, !prof !155

bb.gs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.up) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit.i354

_ZN4toml2v313source_regionD2Ev.exit.i354:         ; preds = %bb.gs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352, %bb.go, %_ZN4toml2v313source_regionD2Ev.exit335
  %i.vf = load ptr, ptr %45, align 8, !tbaa !66   ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.vh = icmp eq ptr %i.vf, %i.vg
  br i1 %i.vh, label %_ZN4toml2v33keyD2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355: ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i354
  %i.vi = load i64, ptr %i.vg, align 8, !tbaa !69
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vf, i64 noundef %i.vj) #51
  br label %_ZN4toml2v33keyD2Ev.exit357

_ZN4toml2v33keyD2Ev.exit357:                      ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit285.thread

bb.gt:                                            ; preds = %bb.gb, %bb.gm, %bb.ga
  %.pn.pn = phi { ptr, i32 } [ %i.un, %bb.gm ], [ %i.tb, %bb.ga ], [ %i.tc, %bb.gb ]
  call void @_ZN4toml2v33keyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %45) #50
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.fz
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.gt ], [ %i.ta, %bb.fz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #50
  br label %.loopexit.split-lp

_ZN4toml2v313source_regionD2Ev.exit285.thread:    ; preds = %bb.es, %bb.ee, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278, %bb.ei, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275, %_ZN4toml2v33keyD2Ev.exit357
  %.7 = phi ptr [ %.6, %_ZN4toml2v33keyD2Ev.exit357 ], [ %i.nd, %bb.es ], [ %i.lv, %bb.ee ], [ %i.lv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278 ], [ %i.lv, %bb.ei ], [ %i.lv, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6431, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6431)
  ret ptr %.7

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gu, %bb.ey, %bb.ev, %bb.dv, %bb.cu, %bb.cw, %bb.cn, %bb.j, %bb.o, %bb.t, %bb.y, %bb.ac, %bb.aj, %bb.av, %bb.bc, %bb.bi, %bb.bp, %bb.cf, %bb.e
  %.pn176 = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.hn, %bb.cu ], [ %i.as, %bb.aj ], [ %i.k, %bb.j ], [ %i.o, %bb.o ], [ %i.r, %bb.t ], [ %i.v, %bb.y ], [ %i.aa, %bb.ac ], [ %i.br, %bb.av ], [ %i.cd, %bb.bc ], [ %i.cg, %bb.bi ], [ %i.cs, %bb.bp ], [ %i.dr, %bb.cf ], [ %i.pk, %bb.ey ], [ %.pn162, %bb.dv ], [ %i.oz, %bb.ev ], [ %i.gv, %bb.cn ], [ %i.hx, %bb.cw ], [ %.pn.pn.pn, %bb.gu ], [ %lpad.loopexit.split-lp617, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6431, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6431)
  resume { ptr, i32 } %.pn176
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNK4toml2v34impl7impl_ex6parser16current_positionEj(ptr noundef nonnull align 8 dereferenceable(3496) %0, i32 noundef 1) #50
  tail call void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #54
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(89) ptr @_ZN4toml2v35array12emplace_backINS0_5tableEJEEEDcDpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #55 ; 6 uses
  tail call void @_ZN4toml2v35tableC1Ev(ptr noundef nonnull align 8 dereferenceable(89) %i.a) #50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !193
  %.not.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.a to i64
  store i64 %i.f, ptr %i.c, align 8, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !172
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !173  ; 7 uses
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc7 unwind label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit6

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #55
          to label %.noexc8 unwind label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit6 ; 7 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !174
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc8
  %i.w = add i64 %i.j, -8
  %i.x = sub i64 %i.w, %i.k                       ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.i, i64 %i.ad ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %i.ae = getelementptr i8, ptr %next.gep15, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !174, !alias.scope !828
  %wide.load16 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !174, !alias.scope !828
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !827
  store <2 x i64> %wide.load16, ptr %i.af, align 8, !tbaa !174, !alias.scope !827
  store <2 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !174, !alias.scope !828
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !174, !alias.scope !828
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !825

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader18

.lr.ph.i.i.i.i.preheader18:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader18, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader18 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %i.ah = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !828
  store i64 %i.ah, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !827
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !828
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !826

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %.noexc8 ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !193
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.an) #51
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.t, ptr %i.h, align 8, !tbaa !173
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !172
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !193
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %.noexc
  ret ptr %i.a

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit6: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #50, !inline_history !18
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #34 comdat align 2 {
bb.a:
  %8 = alloca %"struct.toml::v3::source_position", align 8 ; 2 uses
  %9 = alloca %"struct.(anonymous namespace)::error_builder", align 8 ; 7 uses
  store i64 %1, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3472
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 512 ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 520 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 511
  store ptr %i.d, ptr %i.c, align 8, !tbaa !333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %9, ptr noundef nonnull readonly align 1 dereferenceable(20) @.str.67, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !124
  %spec.select.i7.i = call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload, i64 491) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr readonly align 1 %.sroa.2.0.copyload, i64 %spec.select.i7.i, i1 false)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %spec.select.i7.i ; 5 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !124
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !333  ; 3 uses
  %.not.i9.i = icmp ult ptr %i.g, %i.h
  br i1 %.not.i9.i, label %bb.b, label %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, !prof !168

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  %spec.select.i10.i = call i64 @llvm.umin.i64(i64 %i.k, i64 2) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull readonly align 1 @.str.54, i64 %spec.select.i10.i, i1 false)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %spec.select.i10.i ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !124
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !333
  br label %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.g, %bb.a ], [ %i.m, %bb.b ] ; 4 uses
  %i.o = phi ptr [ %i.h, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %.not.i.i = icmp ult ptr %i.n, %i.o
  br i1 %.not.i.i, label %bb.c, label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit, !prof !168

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val17 = load ptr, ptr %i.p, align 8
  %.val16 = load i64, ptr %2, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.s, i64 %.val16) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr readonly align 1 %.val17, i64 %spec.select.i.i, i1 false)
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %spec.select.i.i ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !124
  %.pre33 = load ptr, ptr %i.c, align 8, !tbaa !333
  br label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit

_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit: ; preds = %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.c
  %i.v = phi ptr [ %i.n, %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.u, %bb.c ] ; 4 uses
  %i.w = phi ptr [ %i.o, %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.pre33, %bb.c ] ; 3 uses
  %.not.i.i18 = icmp ult ptr %i.v, %i.w
  br i1 %.not.i.i18, label %bb.d, label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit20, !prof !168

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val15 = load ptr, ptr %i.x, align 8
  %.val14 = load i64, ptr %3, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  %spec.select.i.i19 = call i64 @llvm.umin.i64(i64 %i.aa, i64 %.val14) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr readonly align 1 %.val15, i64 %spec.select.i.i19, i1 false)
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %spec.select.i.i19 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !124
  %.pre34 = load ptr, ptr %i.c, align 8, !tbaa !333
  br label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit20

_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit20: ; preds = %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit, %bb.d
  %i.ad = phi ptr [ %i.v, %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit ], [ %i.ac, %bb.d ] ; 4 uses
  %i.ae = phi ptr [ %i.w, %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit ], [ %.pre34, %bb.d ] ; 3 uses
  %.not.i.i21 = icmp ult ptr %i.ad, %i.ae
  br i1 %.not.i.i21, label %bb.e, label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit23, !prof !168

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit20
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val13 = load ptr, ptr %i.af, align 8
  %.val12 = load i64, ptr %4, align 8
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %spec.select.i.i22 = call i64 @llvm.umin.i64(i64 %i.ai, i64 %.val12) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr readonly align 1 %.val13, i64 %spec.select.i.i22, i1 false)
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %spec.select.i.i22 ; 2 uses
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !124
  %.pre35 = load ptr, ptr %i.c, align 8, !tbaa !333
  br label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit23

_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit23: ; preds = %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit20, %bb.e
  %i.al = phi ptr [ %i.ad, %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit20 ], [ %i.ak, %bb.e ] ; 4 uses
  %i.am = phi ptr [ %i.ae, %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit20 ], [ %.pre35, %bb.e ] ; 3 uses
  %.not.i.i24 = icmp ult ptr %i.al, %i.am
  br i1 %.not.i.i24, label %bb.f, label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit26, !prof !168

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit23
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val11 = load ptr, ptr %i.an, align 8
  %.val10 = load i64, ptr %5, align 8
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %spec.select.i.i25 = call i64 @llvm.umin.i64(i64 %i.aq, i64 %.val10) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr readonly align 1 %.val11, i64 %spec.select.i.i25, i1 false)
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %spec.select.i.i25 ; 2 uses
  store ptr %i.as, ptr %i.b, align 8, !tbaa !124
  %.pre36 = load ptr, ptr %i.c, align 8, !tbaa !333
  br label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit26

_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit26: ; preds = %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit23, %bb.f
  %i.at = phi ptr [ %i.al, %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit23 ], [ %i.as, %bb.f ] ; 4 uses
  %i.au = phi ptr [ %i.am, %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit23 ], [ %.pre36, %bb.f ] ; 3 uses
  %.not.i.i27 = icmp ult ptr %i.at, %i.au
  br i1 %.not.i.i27, label %bb.g, label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit29, !prof !168

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit26
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val9 = load ptr, ptr %i.av, align 8
  %.val8 = load i64, ptr %6, align 8
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %spec.select.i.i28 = call i64 @llvm.umin.i64(i64 %i.ay, i64 %.val8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr readonly align 1 %.val9, i64 %spec.select.i.i28, i1 false)
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %spec.select.i.i28 ; 2 uses
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !124
end_hunk_4
begin_hunk_5_@_ZN4toml2v34node8do_visitIZNS0_4impl14make_node_implIRKS1_EEPDaOT_NS0_11value_flagsEEUlS9_E_S6_EEDcS9_OT0_:bb.a

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %i.x, ptr %i.y, align 8, !tbaa !67
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %i.ab = icmp eq i16 %i.j, -1
  br i1 %i.ab, label %bb.j, label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEDaS8_.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !336
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEDaS8_.exit

bb.k:                                             ; preds = %.noexc.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #53
  unreachable

_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEDaS8_.exit: ; preds = %bb.i, %bb.j
  %i.ag = phi i16 [ %i.ad, %bb.j ], [ %i.j, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i16 %i.ag, ptr %i.ah, align 8, !tbaa !336
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.l:                                             ; preds = %bb.a
  %i.ai = load i16, ptr %0, align 2, !tbaa !196   ; 2 uses
  %i.aj = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.aj, align 8, !tbaa !74
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !183
  store i64 %i.an, ptr %i.al, align 8, !tbaa !183
  %i.ao = icmp eq i16 %i.ai, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load i16, ptr %i.ap, align 8
  %i.ar = select i1 %i.ao, i16 %i.aq, i16 %i.ai
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i16 %i.ar, ptr %i.as, align 8, !tbaa !279
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.m:                                             ; preds = %bb.a
  %i.at = load i16, ptr %0, align 2, !tbaa !196   ; 2 uses
  %i.au = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.au, align 8, !tbaa !74
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !186
  store double %i.ay, ptr %i.aw, align 8, !tbaa !186
  %i.az = icmp eq i16 %i.at, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = select i1 %i.az, i16 %i.bb, i16 %i.at
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store i16 %i.bc, ptr %i.bd, align 8, !tbaa !280
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.n:                                             ; preds = %bb.a
  %i.be = load i16, ptr %0, align 2, !tbaa !196   ; 2 uses
  %i.bf = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #55 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIbEE, i64 16), ptr %i.bf, align 8, !tbaa !74
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !188, !range !104, !noundef !105
  store i8 %i.bj, ptr %i.bh, align 8, !tbaa !188
  %i.bk = icmp eq i16 %i.be, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = select i1 %i.bk, i16 %i.bm, i16 %i.be
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 42
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !337
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.o:                                             ; preds = %bb.a
  %i.bp = load i16, ptr %0, align 2, !tbaa !196   ; 2 uses
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #55 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINS0_4dateEEE, i64 16), ptr %i.bq, align 8, !tbaa !74
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bu = load i32, ptr %i.bt, align 8
  store i32 %i.bu, ptr %i.bs, align 8
  %i.bv = icmp eq i16 %i.bp, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bx = load i16, ptr %i.bw, align 4
  %i.by = select i1 %i.bv, i16 %i.bx, i16 %i.bp
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 44
  store i16 %i.by, ptr %i.bz, align 4, !tbaa !284
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.p:                                             ; preds = %bb.a
  %i.ca = load i16, ptr %0, align 2, !tbaa !196   ; 2 uses
  %i.cb = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINS0_4timeEEE, i64 16), ptr %i.cb, align 8, !tbaa !74
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cf = load i64, ptr %i.ce, align 8
  store i64 %i.cf, ptr %i.cd, align 8
  %i.cg = icmp eq i16 %i.ca, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ci = load i16, ptr %i.ch, align 8
  %i.cj = select i1 %i.cg, i16 %i.ci, i16 %i.ca
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  store i16 %i.cj, ptr %i.ck, align 8, !tbaa !282
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.q:                                             ; preds = %bb.a
  %i.cl = load i16, ptr %0, align 2, !tbaa !196   ; 2 uses
  %i.cm = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #55 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINS0_6stdopt9date_timeEEE, i64 16), ptr %i.cm, align 8, !tbaa !74
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  %i.cq = icmp eq i16 %i.cl, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cs = load i16, ptr %i.cr, align 8
  %i.ct = select i1 %i.cq, i16 %i.cs, i16 %i.cl
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  store i16 %i.ct, ptr %i.cu, align 8, !tbaa !290
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.r:                                             ; preds = %bb.a
  unreachable

_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit: ; preds = %bb.d, %bb.b, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEDaS8_.exit
  %.0 = phi ptr [ %i.cm, %bb.q ], [ %i.f, %bb.b ], [ %i.k, %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEDaS8_.exit ], [ %i.aj, %bb.l ], [ %i.au, %bb.m ], [ %i.bf, %bb.n ], [ %i.bq, %bb.o ], [ %i.cb, %bb.p ], [ %i.h, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !173    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #55 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !174
  store i64 %i.r, ptr %i.q, align 8, !tbaa !174
  store ptr null, ptr %2, align 8, !tbaa !174
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !174, !alias.scope !854
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !174, !alias.scope !854
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !853
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !174, !alias.scope !853
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !174, !alias.scope !854
  store <2 x ptr> splat (ptr null), ptr %i.aa, align 8, !tbaa !174, !alias.scope !854
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !843

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.ad = load i64, ptr %.0911.i.i.i, align 8, !tbaa !174, !alias.scope !854
  store i64 %i.ad, ptr %.012.i.i.i, align 8, !tbaa !174, !alias.scope !853
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !174, !alias.scope !854
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !844

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ah = add i64 %i.d, -8
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.al = and i64 %i.ai, -8                       ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %1, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec42, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.aq
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.at = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.at ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.au = getelementptr i8, ptr %next.gep46, i64 16 ; 2 uses
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !174, !alias.scope !857
  %wide.load48 = load <2 x i64>, ptr %i.au, align 8, !tbaa !174, !alias.scope !857
  %i.av = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !174, !alias.scope !858, !noalias !859
  store <2 x i64> %wide.load48, ptr %i.av, align 8, !tbaa !174, !alias.scope !858, !noalias !859
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !174, !alias.scope !857
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !174, !alias.scope !857
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.aw, label %middle.block50, label %vector.body43, !llvm.loop !851

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.ak, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i17.preheader ], [ %i.ar, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.az, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.ax = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !174, !alias.scope !856
  store i64 %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !174, !alias.scope !855
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !174, !alias.scope !856
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !852

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ag, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.ar, %middle.block50 ], [ %i.az, %.lr.ph.i.i.i17 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !193
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !173
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !172
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !193
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !173    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !193
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEmS6_ET_S8_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEmS6_ET_S8_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !257
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !172
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #54
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #55 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !257
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.x = add i64 %i.d, -8
  %i.y = sub i64 %i.x, %i.e                       ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.c, i64 %i.ae ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.af = getelementptr i8, ptr %next.gep40, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !174, !alias.scope !866
  %wide.load41 = load <2 x i64>, ptr %i.af, align 8, !tbaa !174, !alias.scope !866
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !865
  store <2 x i64> %wide.load41, ptr %i.ag, align 8, !tbaa !174, !alias.scope !865
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !174, !alias.scope !866
  store <2 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !174, !alias.scope !866
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !863

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader43

.lr.ph.i.i.i.preheader43:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader43, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !tbaa !174, !alias.scope !866
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !174, !alias.scope !865
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !174, !alias.scope !866
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !864

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !193
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit37

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit37: ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !173
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !172
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !193
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEmS6_ET_S8_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS4_EESaIS7_EELb1EE8_S_do_itERS9_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !159    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159  ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.219) #54
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !193
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #55
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i ; 5 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.l = add i64 %i.d, -8
  %i.m = sub i64 %i.l, %i.e                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %i.k, i64 %i.p     ; 2 uses
  %i.r = getelementptr i8, ptr %i.a, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.s ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.a, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep31, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep31, align 8, !tbaa !174
  %wide.load32 = load <2 x i64>, ptr %i.t, align 8, !tbaa !174
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174
  store <2 x i64> %wide.load32, ptr %i.u, align 8, !tbaa !174
  store <2 x ptr> splat (ptr null), ptr %next.gep31, align 8, !tbaa !174
  store <2 x ptr> splat (ptr null), ptr %i.t, align 8, !tbaa !174
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !867

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, label %.lr.ph.i.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.i.preheader34:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %middle.block ]
  %.sroa.08.011.i.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader34 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader34 ] ; 3 uses
  %i.w = load i64, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !174
  store i64 %i.w, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !174
  store ptr null, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !174
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !868

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.z, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %.09) #50 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.q, %middle.block ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !173   ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !193 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !173
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !172
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !193
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.05.i.i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !74
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #50, !inline_history !15
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.ai, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit
  %i.aj = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread ], [ %i.ad, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit ], [ %i.ad, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ]
  %i.ak = phi ptr [ %i.a, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit ], [ %.pre, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #51
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #53
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESL_IJOS9_EEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #55 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !202
  %i.d = inttoptr i64 %i.c to ptr                 ; 9 uses
  %i.e = load i64, ptr %4, align 8, !tbaa !159
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !86
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !67   ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %i.b, align 8, !tbaa !66
  %i.n = load i64, ptr %i.h, align 8, !tbaa !69
  store i64 %i.n, ptr %i.f, align 8, !tbaa !69
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.p = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.o, ptr %i.r, align 8, !tbaa !67
  store ptr %i.h, ptr %i.d, align 8, !tbaa !66
  store i64 0, ptr %i.q, align 8, !tbaa !67
  store i8 0, ptr %i.h, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.x = load <2 x ptr>, ptr %i.v, align 8, !tbaa !156
  store ptr null, ptr %i.w, align 8, !tbaa !150
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !156
  store ptr null, ptr %i.v, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.z = load i64, ptr %i.p, align 8, !tbaa !174
  store i64 %i.z, ptr %i.y, align 8, !tbaa !174
  store ptr null, ptr %i.p, align 8, !tbaa !174
  %i.aa = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1      ; 5 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.ab, null
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.ae
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.r, align 8, !tbaa !67  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.af) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.am = tail call i32 @memcmp(ptr noundef %i.al, ptr noundef %i.ak, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #50 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.an = sub i64 %i.af, %i.ah
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.an, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i

_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.am, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ao = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i
  %i.ap = phi i1 [ %i.ao, %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ad) #50
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !157
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !157
  br label %_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) #50
end_hunk_5
