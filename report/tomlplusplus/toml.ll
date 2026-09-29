Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4toml2v35arrayD2Ev:bb.a
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.r, align 8, !tbaa !152
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !153
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #50, !inline_history !17
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #50, !inline_history !17
  br label %_ZN4toml2v34nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i1 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !154
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = icmp ule ptr %1, %2
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq ptr %1, %2
  br i1 %i.d, label %.loopexit, label %.preheader.preheader, !prof !155

.preheader.preheader:                             ; preds = %bb.a
  %i.e = ptrtoaddr ptr %2 to i64
  %i.f = ptrtoaddr ptr %1 to i64
  %i.g = add i64 %i.e, -8
  %i.h = sub i64 %i.g, %i.f                       ; 2 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 24
  br i1 %min.iters.check, label %.preheader.preheader62, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.j, 4611686018427387900      ; 3 uses
  %i.k = shl i64 %n.vec, 3
  %i.l = getelementptr i8, ptr %1, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi42 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.m = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.m  ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !174
  %wide.load43 = load <2 x ptr>, ptr %i.n, align 8, !tbaa !174
  %i.o = icmp ne <2 x ptr> %wide.load, splat (ptr null)
  %i.p = icmp ne <2 x ptr> %wide.load43, splat (ptr null)
  %i.q = zext <2 x i1> %i.o to <2 x i64>
  %i.r = zext <2 x i1> %i.p to <2 x i64>
  %i.s = add <2 x i64> %vec.phi, %i.q             ; 2 uses
  %i.t = add <2 x i64> %vec.phi42, %i.r           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !464

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.t, %i.s
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit60, label %.preheader.preheader62

.preheader.preheader62:                           ; preds = %.preheader.preheader, %middle.block
  %.02133.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.v, %middle.block ]
  %.02232.ph = phi ptr [ %1, %.preheader.preheader ], [ %i.l, %middle.block ]
  br label %.preheader

.loopexit60:                                      ; preds = %.preheader, %middle.block
  %spec.select.lcssa = phi i64 [ %i.v, %middle.block ], [ %spec.select, %.preheader ] ; 4 uses
  %.not25 = icmp eq i64 %spec.select.lcssa, 0
  br i1 %.not25, label %.loopexit, label %bb.b, !prof !155

.preheader:                                       ; preds = %.preheader.preheader62, %.preheader
  %.02133 = phi i64 [ %spec.select, %.preheader ], [ %.02133.ph, %.preheader.preheader62 ]
  %.02232 = phi ptr [ %i.y, %.preheader ], [ %.02232.ph, %.preheader.preheader62 ] ; 2 uses
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
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ac = shl nuw nsw i64 %spec.select.lcssa, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #55
          to label %.noexc27 unwind label %.loopexit.split-lp ; 9 uses

.noexc27:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !173 ; 11 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !172 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc27
  %3 = ptrtoaddr ptr %i.af to i64
  %4 = ptrtoaddr ptr %i.ae to i64
  %i.ag = add i64 %3, -8
  %i.ah = sub i64 %i.ag, %4                       ; 3 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.ah, 136
  br i1 %min.iters.check46, label %.lr.ph.i.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ak = and i64 %i.ah, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.al
  %scevgep44 = getelementptr i8, ptr %i.ae, i64 %i.al
  %bound0 = icmp ult ptr %i.ad, %scevgep44
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck
  %n.vec48 = and i64 %i.aj, 4611686018427387900   ; 3 uses
  %i.am = shl i64 %n.vec48, 3                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ae, i64 %i.am
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.ap = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.ad, i64 %i.ap ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.ae, i64 %i.ap ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.aq = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !174, !alias.scope !477, !noalias !475
  %wide.load54 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !174, !alias.scope !477, !noalias !475
  %i.ar = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !174, !alias.scope !478, !noalias !477
  store <2 x i64> %wide.load54, ptr %i.ar, align 8, !tbaa !174, !alias.scope !478, !noalias !477
  %i.as = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !174, !alias.scope !477, !noalias !475
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !174, !alias.scope !477, !noalias !475
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.at, label %middle.block56, label %vector.body49, !llvm.loop !472

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.aj, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader61

.lr.ph.i.i.i.i.preheader61:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block56
  %.012.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block56 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %middle.block56 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader61, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.au = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !476, !noalias !475
  store i64 %i.au, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !475, !noalias !476
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !476, !noalias !475
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.af
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !473

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block56, %.noexc27
  %.not.i8.i = icmp eq ptr %i.ae, null
  br i1 %.not.i8.i, label %.lr.ph, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.ax = load ptr, ptr %i.aa, align 8, !tbaa !193
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.ae to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ba) #51
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !173
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !172
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %spec.select.lcssa
  store ptr %i.bb, ptr %i.aa, align 8, !tbaa !193
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %.035 = phi ptr [ %1, %.lr.ph ], [ %i.bi, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ] ; 4 uses
  %i.bd = load ptr, ptr %.035, align 8            ; 2 uses
  %.not30 = icmp eq ptr %i.bd, null
  %i.be = ptrtoint ptr %i.bd to i64
  br i1 %.not30, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !172 ; 4 uses
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !193
  %.not.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !174
  store ptr null, ptr %.035, align 8, !tbaa !174
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.035)
          to label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit unwind label %.loopexit31

.loopexit31:                                      ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.c, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit31
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit31 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #50
  tail call void @_ZN4toml2v34nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #50
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.g, %bb.h, %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 2 uses
  %.not26 = icmp eq ptr %i.bi, %2
  br i1 %.not26, label %.loopexit, label %bb.e, !llvm.loop !474

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
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.not52 = icmp eq ptr %i.e, %i.f
  br i1 %.not52, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #55
          to label %.noexc12 unwind label %bb.e   ; 9 uses

.noexc12:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !173  ; 11 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !172  ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc12
  %3 = ptrtoaddr ptr %i.o to i64
  %4 = ptrtoaddr ptr %i.n to i64
  %i.p = add i64 %3, -8
  %i.q = sub i64 %i.p, %4                         ; 3 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader90, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.t = and i64 %i.q, -8
  %i.u = add i64 %i.t, 8                          ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.m, i64 %i.u
  %scevgep59 = getelementptr i8, ptr %i.n, i64 %i.u
  %bound0 = icmp ult ptr %i.m, %scevgep59
  %bound1 = icmp ult ptr %i.n, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %i.x = getelementptr i8, ptr %i.n, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.y ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.n, i64 %i.y ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.z = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep60, align 8, !tbaa !174, !alias.scope !500, !noalias !498
  %wide.load61 = load <2 x i64>, ptr %i.z, align 8, !tbaa !174, !alias.scope !500, !noalias !498
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !501, !noalias !500
  store <2 x i64> %wide.load61, ptr %i.aa, align 8, !tbaa !174, !alias.scope !501, !noalias !500
  %i.ab = getelementptr i8, ptr %next.gep60, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep60, align 8, !tbaa !174, !alias.scope !500, !noalias !498
  store <2 x ptr> splat (ptr null), ptr %i.ab, align 8, !tbaa !174, !alias.scope !500, !noalias !498
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !485

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader90

.lr.ph.i.i.i.i.preheader90:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader90, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.ad = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !499, !noalias !498
  store i64 %i.ad, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !498, !noalias !499
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !499, !noalias !498
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.o
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !486

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc12
  %.not.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !193
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.n to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.aj) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.m, ptr %i.b, align 8, !tbaa !173
  store ptr %i.m, ptr %i.l, align 8, !tbaa !172
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !193
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !159
  %.pre41 = load ptr, ptr %i.d, align 8, !tbaa !159
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, %bb.c
  %i.al = phi ptr [ %.pre41, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.am = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ], [ %i.f, %bb.c ] ; 2 uses
  %.not36 = icmp eq ptr %i.am, %i.al
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %.sroa.031.037 = phi ptr [ %i.am, %.lr.ph ], [ %i.cg, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.ap = load ptr, ptr %.sroa.031.037, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50, !noalias !502
  store i16 -1, ptr %2, align 2, !tbaa !196, !noalias !502
  %i.aq = invoke noundef ptr @_ZN4toml2v34node8do_visitIZNS0_4impl14make_node_implIRKS1_EEPDaOT_NS0_11value_flagsEEUlS9_E_S6_EEDcS9_OT0_(ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.ap)
          to label %bb.g unwind label %bb.l, !inline_history !489 ; 5 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50, !noalias !502
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !172 ; 6 uses
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !193
  %.not.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = ptrtoint ptr %i.aq to i64
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !174
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.au, ptr %i.an, align 8, !tbaa !172
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !173 ; 10 uses
  %i.aw = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 4 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #55
          to label %.noexc27 unwind label %.loopexit ; 10 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  %i.bi = ptrtoint ptr %i.aq to i64
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !174
  %.not10.i.i.i.i19 = icmp eq ptr %i.av, %i.ar
  br i1 %.not10.i.i.i.i19, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i20.preheader

.lr.ph.i.i.i.i20.preheader:                       ; preds = %.noexc27
  %i.bj = add i64 %i.aw, -8
  %i.bk = sub i64 %i.bj, %i.ax                    ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.bk, 56
  br i1 %min.iters.check72, label %.lr.ph.i.i.i.i20.preheader86, label %vector.memcheck63

vector.memcheck63:                                ; preds = %.lr.ph.i.i.i.i20.preheader
  %scevgep64.a = getelementptr i8, ptr %i.bg, i64 8
  %i.bn = add i64 %i.aw, -8
  %i.bo = sub i64 %i.bn, %i.ax
  %i.bp = and i64 %i.bo, -8                       ; 2 uses
  %scevgep65.a = getelementptr i8, ptr %scevgep64.a, i64 %i.bp
  %scevgep66.a = getelementptr i8, ptr %i.av, i64 8
  %scevgep67 = getelementptr i8, ptr %scevgep66.a, i64 %i.bp
  %bound068 = icmp ult ptr %i.bg, %scevgep67
  %bound169 = icmp ult ptr %i.av, %scevgep65.a
  %found.conflict70 = and i1 %bound068, %bound169
  br i1 %found.conflict70, label %.lr.ph.i.i.i.i20.preheader86, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck63
  %n.vec74 = and i64 %i.bm, 4611686018427387900   ; 3 uses
  %i.bq = shl i64 %n.vec74, 3                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bg, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.av, i64 %i.bq
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next81, %vector.body75 ] ; 2 uses
  %i.bt = shl i64 %index76, 3                     ; 2 uses
  %next.gep77.a = getelementptr i8, ptr %i.bg, i64 %i.bt ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.av, i64 %i.bt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.bu = getelementptr i8, ptr %next.gep78, i64 16
  %wide.load79.a = load <2 x i64>, ptr %next.gep78, align 8, !tbaa !174, !alias.scope !505, !noalias !503
  %wide.load80 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !174, !alias.scope !505, !noalias !503
  %i.bv = getelementptr i8, ptr %next.gep77.a, i64 16
  store <2 x i64> %wide.load79.a, ptr %next.gep77.a, align 8, !tbaa !174, !alias.scope !506, !noalias !505
  store <2 x i64> %wide.load80, ptr %i.bv, align 8, !tbaa !174, !alias.scope !506, !noalias !505
  %i.bw = getelementptr i8, ptr %next.gep78, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep78, align 8, !tbaa !174, !alias.scope !505, !noalias !503
  store <2 x ptr> splat (ptr null), ptr %i.bw, align 8, !tbaa !174, !alias.scope !505, !noalias !503
  %index.next81 = add nuw i64 %index76, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.bx, label %middle.block82, label %vector.body75, !llvm.loop !496
end_hunk_0
begin_hunk_1_@_ZN4toml2v35arrayC2ERKS1_:bb.a
bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !193
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ce) #51
  br label %.noexc14

.noexc14:                                         ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !173
  store ptr %i.cb, ptr %i.an, align 8, !tbaa !172
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.cf, ptr %i.k, align 8, !tbaa !193
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.h, %.noexc14
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.031.037, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cg, %i.al
  br i1 %.not, label %._crit_edge, label %bb.f

bb.l:                                             ; preds = %bb.f
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i16 = icmp eq ptr %i.aq, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17: ; preds = %bb.m
  %i.ci = load ptr, ptr %i.aq, align 8, !tbaa !74
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18: ; preds = %bb.l, %bb.m, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.e ], [ %i.ch, %bb.l ], [ %lpad.phi, %bb.m ], [ %lpad.phi, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17 ]
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !156, !noalias !513
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !156, !alias.scope !513
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
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #55 ; 9 uses
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !173 ; 11 uses
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !172 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11.preheader

.lr.ph.i.i.i.i11.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %3 = ptrtoaddr ptr %i.au to i64
  %4 = ptrtoaddr ptr %i.at to i64
  %i.av = add i64 %3, -8
  %i.aw = sub i64 %i.av, %4                       ; 3 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i11.preheader97, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i11.preheader
  %i.az = and i64 %i.aw, -8
  %i.ba = add i64 %i.az, 8                        ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.as, i64 %i.ba
  %scevgep66 = getelementptr i8, ptr %i.at, i64 %i.ba
  %bound0 = icmp ult ptr %i.as, %scevgep66
  %bound1 = icmp ult ptr %i.at, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i11.preheader97, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.as, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.at, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.be ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.at, i64 %i.be ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.bf = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep67, align 8, !tbaa !174, !alias.scope !535, !noalias !533
  %wide.load68 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !174, !alias.scope !535, !noalias !533
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !536, !noalias !535
  store <2 x i64> %wide.load68, ptr %i.bg, align 8, !tbaa !174, !alias.scope !536, !noalias !535
  %i.bh = getelementptr i8, ptr %next.gep67, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep67, align 8, !tbaa !174, !alias.scope !535, !noalias !533
  store <2 x ptr> splat (ptr null), ptr %i.bh, align 8, !tbaa !174, !alias.scope !535, !noalias !533
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !520

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11.preheader97

.lr.ph.i.i.i.i11.preheader97:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i11.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.i.i11.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i.i.i.i11.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %.lr.ph.i.i.i.i11.preheader97, %.lr.ph.i.i.i.i11
  %.012.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i11 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i11.preheader97 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i11 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i11.preheader97 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.bj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !534, !noalias !533
  store i64 %i.bj, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !533, !noalias !534
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !534, !noalias !533
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i12 = icmp eq ptr %i.bk, %i.au
  br i1 %.not.i.i.i.i12, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11, !llvm.loop !521

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i11, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.at, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.bm = load ptr, ptr %i.aj, align 8, !tbaa !193
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.at to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bp) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.as, ptr %i.s, align 8, !tbaa !173
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store ptr %i.bq, ptr %i.u, align 8, !tbaa !172
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ah
  store ptr %i.br, ptr %i.aj, align 8, !tbaa !193
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !159
  %.pre42 = load ptr, ptr %i.ac, align 8, !tbaa !159
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.j, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bs = phi ptr [ %i.ad, %bb.j ], [ %.pre42, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %i.bt = phi ptr [ %i.ae, %bb.j ], [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %.not3337 = icmp eq ptr %i.bt, %i.bs
  br i1 %.not3337, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %.sroa.030.038 = phi ptr [ %i.dl, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ], [ %i.bt, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ] ; 2 uses
  %i.bu = load ptr, ptr %.sroa.030.038, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50, !noalias !537
  store i16 -1, ptr %2, align 2, !tbaa !196, !noalias !537
  %i.bv = call noundef ptr @_ZN4toml2v34node8do_visitIZNS0_4impl14make_node_implIRKS1_EEPDaOT_NS0_11value_flagsEEUlS9_E_S6_EEDcS9_OT0_(ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.bu), !noalias !537, !inline_history !524 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50, !noalias !537
  %i.bw = load ptr, ptr %i.u, align 8, !tbaa !172 ; 6 uses
  %i.bx = load ptr, ptr %i.aj, align 8, !tbaa !193
  %.not.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.by = ptrtoint ptr %i.bv to i64
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !174
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bz, ptr %i.u, align 8, !tbaa !172
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.m:                                             ; preds = %.lr.ph
  %i.ca = load ptr, ptr %i.s, align 8, !tbaa !173 ; 10 uses
  %i.cb = ptrtoint ptr %i.bw to i64               ; 3 uses
  %i.cc = ptrtoint ptr %i.ca to i64               ; 4 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.m
  %i.cf = ashr exact i64 %i.cd, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975)
  %i.cj = select i1 %i.ch, i64 1152921504606846975, i64 %i.ci ; 3 uses
  %.not.i.i17 = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i17)
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #55
          to label %.noexc26 unwind label %.loopexit34 ; 10 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  %i.cn = ptrtoint ptr %i.bv to i64
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !174
  %.not10.i.i.i.i18 = icmp eq ptr %i.ca, %i.bw
  br i1 %.not10.i.i.i.i18, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader

.lr.ph.i.i.i.i19.preheader:                       ; preds = %.noexc26
  %i.co = add i64 %i.cb, -8
  %i.cp = sub i64 %i.co, %i.cc                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check79 = icmp ult i64 %i.cp, 56
  br i1 %min.iters.check79, label %.lr.ph.i.i.i.i19.preheader93, label %vector.memcheck70

vector.memcheck70:                                ; preds = %.lr.ph.i.i.i.i19.preheader
  %scevgep71.a = getelementptr i8, ptr %i.cl, i64 8
  %i.cs = add i64 %i.cb, -8
  %i.ct = sub i64 %i.cs, %i.cc
  %i.cu = and i64 %i.ct, -8                       ; 2 uses
  %scevgep72.a = getelementptr i8, ptr %scevgep71.a, i64 %i.cu
  %scevgep73.a = getelementptr i8, ptr %i.ca, i64 8
  %scevgep74 = getelementptr i8, ptr %scevgep73.a, i64 %i.cu
  %bound075 = icmp ult ptr %i.cl, %scevgep74
  %bound176 = icmp ult ptr %i.ca, %scevgep72.a
  %found.conflict77 = and i1 %bound075, %bound176
  br i1 %found.conflict77, label %.lr.ph.i.i.i.i19.preheader93, label %vector.ph80

vector.ph80:                                      ; preds = %vector.memcheck70
  %n.vec81 = and i64 %i.cr, 4611686018427387900   ; 3 uses
  %i.cv = shl i64 %n.vec81, 3                     ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cl, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.ca, i64 %i.cv
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 2 uses
  %i.cy = shl i64 %index83, 3                     ; 2 uses
  %next.gep84.a = getelementptr i8, ptr %i.cl, i64 %i.cy ; 2 uses
  %next.gep85 = getelementptr i8, ptr %i.ca, i64 %i.cy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.cz = getelementptr i8, ptr %next.gep85, i64 16
  %wide.load86.a = load <2 x i64>, ptr %next.gep85, align 8, !tbaa !174, !alias.scope !540, !noalias !538
  %wide.load87 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !174, !alias.scope !540, !noalias !538
  %i.da = getelementptr i8, ptr %next.gep84.a, i64 16
  store <2 x i64> %wide.load86.a, ptr %next.gep84.a, align 8, !tbaa !174, !alias.scope !541, !noalias !540
  store <2 x i64> %wide.load87, ptr %i.da, align 8, !tbaa !174, !alias.scope !541, !noalias !540
  %i.db = getelementptr i8, ptr %next.gep85, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep85, align 8, !tbaa !174, !alias.scope !540, !noalias !538
  store <2 x ptr> splat (ptr null), ptr %i.db, align 8, !tbaa !174, !alias.scope !540, !noalias !538
  %index.next88 = add nuw i64 %index83, 4         ; 2 uses
  %i.dc = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.dc, label %middle.block89, label %vector.body82, !llvm.loop !531

middle.block89:                                   ; preds = %vector.body82
  %cmp.n90 = icmp eq i64 %i.cr, %n.vec81
  br i1 %cmp.n90, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader93

.lr.ph.i.i.i.i19.preheader93:                     ; preds = %vector.memcheck70, %.lr.ph.i.i.i.i19.preheader, %middle.block89
  %.012.i.i.i.i20.ph = phi ptr [ %i.cl, %vector.memcheck70 ], [ %i.cl, %.lr.ph.i.i.i.i19.preheader ], [ %i.cw, %middle.block89 ]
  %.0911.i.i.i.i21.ph = phi ptr [ %i.ca, %vector.memcheck70 ], [ %i.ca, %.lr.ph.i.i.i.i19.preheader ], [ %i.cx, %middle.block89 ]
  br label %.lr.ph.i.i.i.i19

.lr.ph.i.i.i.i19:                                 ; preds = %.lr.ph.i.i.i.i19.preheader93, %.lr.ph.i.i.i.i19
  %.012.i.i.i.i20 = phi ptr [ %i.df, %.lr.ph.i.i.i.i19 ], [ %.012.i.i.i.i20.ph, %.lr.ph.i.i.i.i19.preheader93 ] ; 2 uses
  %.0911.i.i.i.i21 = phi ptr [ %i.de, %.lr.ph.i.i.i.i19 ], [ %.0911.i.i.i.i21.ph, %.lr.ph.i.i.i.i19.preheader93 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
end_hunk_1
begin_hunk_2_@_ZN4toml2v35array9insert_atEN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrINS0_4nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEOS8_:bb.a
  ret ptr %i.ak
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZNK4toml2v35array14is_homogeneousENS0_9node_typeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i8 noundef zeroext %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %1, 0
  br i1 %i.f, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !174  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i8 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #52
  br label %.lr.ph.preheader

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
  %i.k = tail call noundef zeroext i8 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #52, !inline_history !551
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
  %i.q = tail call noundef zeroext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #52, !inline_history !551
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #55 ; 9 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !173  ; 11 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !172  ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %2 = ptrtoaddr ptr %i.r to i64
  %3 = ptrtoaddr ptr %i.q to i64
  %i.s = add i64 %2, -8
  %i.t = sub i64 %i.s, %3                         ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.w = and i64 %i.t, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep3 = getelementptr i8, ptr %i.q, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep3
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.q, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.q, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.ac = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !tbaa !174, !alias.scope !562, !noalias !560
  %wide.load5 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !174, !alias.scope !562, !noalias !560
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !563, !noalias !562
  store <2 x i64> %wide.load5, ptr %i.ad, align 8, !tbaa !174, !alias.scope !563, !noalias !562
  %i.ae = getelementptr i8, ptr %next.gep4, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep4, align 8, !tbaa !174, !alias.scope !562, !noalias !560
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !174, !alias.scope !562, !noalias !560
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !558

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader7

.lr.ph.i.i.i.i.preheader7:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader7, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader7 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.ag = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !561, !noalias !560
  store i64 %i.ag, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !560, !noalias !561
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !561, !noalias !560
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !559

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !193
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.q to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.am) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.p, ptr %i.a, align 8, !tbaa !173
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store ptr %i.an, ptr %i.k, align 8, !tbaa !172
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %1
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !193
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
end_hunk_2
begin_hunk_3_@_ZN4toml2v35array13flatten_childEOS1_Rm:bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.015 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !174  ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #52
  %i.q = icmp eq i8 %i.p, 2
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !159
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !159
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4toml2v35array13flatten_childEOS1_Rm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %2) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit

bb.e:                                             ; preds = %bb.b
  %i.w = load i64, ptr %2, align 8, !tbaa !123    ; 2 uses
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !567
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
  br i1 %.not30, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %bb.b, !llvm.loop !568

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
  %1 = ptrtoaddr ptr %i.bf to i64
  %2 = ptrtoaddr ptr %i.be to i64
  %i.bg = add i64 %1, -8
  %i.bh = sub i64 %i.bg, %2                       ; 3 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader101, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bk = and i64 %i.bh, -8
  %i.bl = add i64 %i.bk, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bd, i64 %i.bl
  %scevgep96 = getelementptr i8, ptr %i.be, i64 %i.bl
  %bound0 = icmp ult ptr %i.bd, %scevgep96
  %bound1 = icmp ult ptr %i.be, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bd, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.be, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bp ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.be, i64 %i.bp ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.bq = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep97, align 8, !tbaa !174, !alias.scope !582, !noalias !580
  %wide.load98 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !174, !alias.scope !582, !noalias !580
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !583, !noalias !582
  store <2 x i64> %wide.load98, ptr %i.br, align 8, !tbaa !174, !alias.scope !583, !noalias !582
  %i.bs = getelementptr i8, ptr %next.gep97, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep97, align 8, !tbaa !174, !alias.scope !582, !noalias !580
  store <2 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !174, !alias.scope !582, !noalias !580
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !575

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader101

.lr.ph.i.i.i.i.preheader101:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader101, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader101 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader101 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.bu = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !581, !noalias !580
  store i64 %i.bu, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !580, !noalias !581
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !581, !noalias !580
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !576

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.be, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !193
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.be to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.ca) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !173
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb ; 2 uses
  store ptr %i.cb, ptr %i.d, align 8, !tbaa !172
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.2247781
  store ptr %i.cc, ptr %i.as, align 8, !tbaa !193
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.f, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.cd = phi ptr [ %i.au, %bb.f ], [ %i.bd, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 3 uses
  %i.ce = phi ptr [ %.pre, %bb.f ], [ %i.cb, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 0, ptr %i.a, align 8, !tbaa !123
  %.not45 = icmp eq ptr %i.ce, %i.cd
  br i1 %.not45, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.cf = ptrtoint ptr %i.cd to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph43, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35
  %i.cg = phi ptr [ %i.ce, %.lr.ph43 ], [ %i.ea, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35 ] ; 3 uses
  %i.ch = phi i64 [ %i.cf, %.lr.ph43 ], [ %i.ed, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35 ]
  %i.ci = phi ptr [ %i.cd, %.lr.ph43 ], [ %i.eb, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35 ] ; 2 uses
  %i.cj = phi i64 [ 0, %.lr.ph43 ], [ %i.dz, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 6 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !74
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 152
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = tail call noundef ptr %i.co(ptr noundef nonnull align 8 dereferenceable(40) %i.cl) #52 ; 3 uses
  %.not29 = icmp eq ptr %i.cp, null
  br i1 %.not29, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cq = add nuw i64 %i.cj, 1
  store i64 %i.cq, ptr %i.a, align 8, !tbaa !123
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35, !llvm.loop !577

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.ck, align 8, !tbaa !174
  %i.cr = tail call noundef i64 @_ZNK4toml2v35array16total_leaf_countEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cp) #50 ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, 1
  br i1 %i.cs, label %bb.k, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.k:                                             ; preds = %bb.j
  %i.ct = add nuw i64 %i.cj, 1                    ; 2 uses
  %i.cu = add i64 %i.cr, -1                       ; 2 uses
  %i.cv = ptrtoint ptr %i.cg to i64
  %i.cw = sub i64 %i.cv, %i.ch
  %i.cx = ashr exact i64 %i.cw, 3                 ; 5 uses
  %i.cy = add i64 %i.cx, %i.cu                    ; 4 uses
  %i.cz = icmp ugt i64 %i.cy, %i.cx
  br i1 %i.cz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.cu)
          to label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i unwind label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.da = icmp ult i64 %i.cy, %i.cx
  br i1 %i.da, label %bb.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cy ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.cg, %i.db
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.dg, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.db, %bb.n ] ; 2 uses
  %i.dc = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !74
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(40) %i.dc) #50, !inline_history !578
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dg, %i.cg
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  store ptr %i.db, ptr %i.d, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, %bb.n, %bb.m
  %i.dh = icmp ugt i64 %i.cx, %i.ct
  br i1 %i.dh, label %.lr.ph.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i
  %.0.in19.i = phi i64 [ %.0.i, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.cy, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i ]
  %.01418.i = phi i64 [ %i.di, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.cx, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i ]
  %i.di = add i64 %.01418.i, -1                   ; 3 uses
  %.0.i = add i64 %.0.in19.i, -1                  ; 2 uses
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.di ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.0.i ; 2 uses
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !174
  store ptr null, ptr %i.dk, align 8, !tbaa !174
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !174 ; 3 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !174
  %.not.i.i.i.i17.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i17.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !74
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  tail call void %i.dq(ptr noundef nonnull align 8 dereferenceable(40) %i.dn) #50, !inline_history !579
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i
  %i.dr = icmp ugt i64 %i.di, %i.ct
  br i1 %i.dr, label %.lr.ph.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34, !llvm.loop !24

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.l
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load ptr, ptr %i.cl, align 8, !tbaa !74
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  tail call void %i.dv(ptr noundef nonnull align 8 dereferenceable(40) %i.cl) #50, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  resume { ptr, i32 } %i.ds

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34: ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i, %bb.j, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i
end_hunk_3
begin_hunk_4_@_ZN4toml2v34impl7impl_ex6parser18parse_table_headerEv:bb.a
  br i1 %.not.i.i.i337, label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339, label %bb.gh

bb.gh:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit336
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 8 ; 3 uses
  %i.tu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i338 = icmp eq i8 %i.tu, 0
  br i1 %.not.i.i.i.i338, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.tv = load i32, ptr %i.tt, align 4, !tbaa !154
  %i.tw = add nsw i32 %i.tv, 1
  store i32 %i.tw, ptr %i.tt, align 4, !tbaa !154
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339

bb.gj:                                            ; preds = %bb.gh
  %i.tx = atomicrmw volatile add ptr %i.tt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339

_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339: ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit336, %bb.gi, %bb.gj
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store i64 %.sroa.093.0.copyload, ptr %i.ty, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !150 ; 8 uses
  store <2 x ptr> %i.ts, ptr %i.tz, align 8, !tbaa !156
  %.not.i.i.i.i.i340 = icmp eq ptr %i.ub, null
  br i1 %.not.i.i.i.i.i340, label %_ZN4toml2v313source_regionD2Ev.exit335, label %bb.gk

bb.gk:                                            ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8 ; 4 uses
  %i.ud = load atomic i64, ptr %i.uc acquire, align 8 ; 2 uses
  %i.ue = icmp eq i64 %i.ud, 4294967297
  %i.uf = trunc i64 %i.ud to i32                  ; 2 uses
  br i1 %i.ue, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  store i32 0, ptr %i.uc, align 8, !tbaa !152
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ub, i64 12
  store i32 0, ptr %i.ug, align 4, !tbaa !153
  %i.uh = load ptr, ptr %i.ub, align 8, !tbaa !74
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.uj = load ptr, ptr %i.ui, align 8
  call void %i.uj(ptr noundef nonnull align 8 dereferenceable(16) %i.ub) #50, !inline_history !7
  %i.uk = load ptr, ptr %i.ub, align 8, !tbaa !74
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef nonnull align 8 dereferenceable(16) %i.ub) #50, !inline_history !7
  br label %_ZN4toml2v313source_regionD2Ev.exit335

bb.gm:                                            ; preds = %bb.gk
  %i.un = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i341 = icmp eq i8 %i.un, 0
  br i1 %.not.i.i.i.i.i.i341, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.uo = add nsw i32 %i.uf, -1
  store i32 %i.uo, ptr %i.uc, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342

bb.go:                                            ; preds = %bb.gm
  %i.up = atomicrmw volatile add ptr %i.uc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342: ; preds = %bb.go, %bb.gn
  %.0.i.i.i.i.i.i.i343 = phi i32 [ %i.uf, %bb.gn ], [ %i.up, %bb.go ]
  %i.uq = icmp eq i32 %.0.i.i.i.i.i.i.i343, 1
  br i1 %i.uq, label %bb.gp, label %_ZN4toml2v313source_regionD2Ev.exit335, !prof !155

bb.gp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ub) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit335

bb.gq:                                            ; preds = %bb.gg
  %i.ur = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #50
  br label %bb.gx

_ZN4toml2v313source_regionD2Ev.exit335:           ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339, %bb.gl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342, %bb.gp, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit325, %bb.fx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i328, %bb.gb
  %.6 = phi ptr [ %i.rx, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit325 ], [ %i.rx, %bb.gb ], [ %i.rx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i328 ], [ %i.rx, %bb.fx ], [ %i.tl, %bb.gp ], [ %i.tl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342 ], [ %i.tl, %bb.gl ], [ %i.tl, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339 ]
  %i.us = getelementptr inbounds nuw i8, ptr %45, i64 56
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !150 ; 8 uses
  %.not.i.i.i.i350 = icmp eq ptr %i.ut, null
  br i1 %.not.i.i.i.i350, label %_ZN4toml2v313source_regionD2Ev.exit.i354, label %bb.gr

bb.gr:                                            ; preds = %_ZN4toml2v313source_regionD2Ev.exit335
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8 ; 4 uses
  %i.uv = load atomic i64, ptr %i.uu acquire, align 8 ; 2 uses
  %i.uw = icmp eq i64 %i.uv, 4294967297
  %i.ux = trunc i64 %i.uv to i32                  ; 2 uses
  br i1 %i.uw, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  store i32 0, ptr %i.uu, align 8, !tbaa !152
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ut, i64 12
  store i32 0, ptr %i.uy, align 4, !tbaa !153
  %i.uz = load ptr, ptr %i.ut, align 8, !tbaa !74
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.vb = load ptr, ptr %i.va, align 8
  call void %i.vb(ptr noundef nonnull align 8 dereferenceable(16) %i.ut) #50, !inline_history !34
  %i.vc = load ptr, ptr %i.ut, align 8, !tbaa !74
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8
  call void %i.ve(ptr noundef nonnull align 8 dereferenceable(16) %i.ut) #50, !inline_history !34
  br label %_ZN4toml2v313source_regionD2Ev.exit.i354

bb.gt:                                            ; preds = %bb.gr
  %i.vf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i351 = icmp eq i8 %i.vf, 0
  br i1 %.not.i.i.i.i.i351, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.vg = add nsw i32 %i.ux, -1
  store i32 %i.vg, ptr %i.uu, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352

bb.gv:                                            ; preds = %bb.gt
  %i.vh = atomicrmw volatile add ptr %i.uu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352: ; preds = %bb.gv, %bb.gu
  %.0.i.i.i.i.i.i353 = phi i32 [ %i.ux, %bb.gu ], [ %i.vh, %bb.gv ]
  %i.vi = icmp eq i32 %.0.i.i.i.i.i.i353, 1
  br i1 %i.vi, label %bb.gw, label %_ZN4toml2v313source_regionD2Ev.exit.i354, !prof !155

bb.gw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ut) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit.i354

_ZN4toml2v313source_regionD2Ev.exit.i354:         ; preds = %bb.gw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352, %bb.gs, %_ZN4toml2v313source_regionD2Ev.exit335
  %i.vj = load ptr, ptr %45, align 8, !tbaa !66   ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.vl = icmp eq ptr %i.vj, %i.vk
  br i1 %i.vl, label %_ZN4toml2v33keyD2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355: ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i354
  %i.vm = load i64, ptr %i.vk, align 8, !tbaa !69
  %i.vn = add i64 %i.vm, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vn) #51
  br label %_ZN4toml2v33keyD2Ev.exit357

_ZN4toml2v33keyD2Ev.exit357:                      ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit285.thread

bb.gx:                                            ; preds = %bb.ge, %bb.gf, %bb.gq, %bb.gd
  %.pn.pn = phi { ptr, i32 } [ %i.ur, %bb.gq ], [ %i.te, %bb.gd ], [ %i.tg, %bb.gf ], [ %i.tf, %bb.ge ]
  call void @_ZN4toml2v33keyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %45) #50
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gc
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.gx ], [ %i.td, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #50
  br label %bb.gz

_ZN4toml2v313source_regionD2Ev.exit285.thread:    ; preds = %bb.ev, %bb.eg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278, %bb.ek, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275, %_ZN4toml2v33keyD2Ev.exit357
  %.7 = phi ptr [ %.6, %_ZN4toml2v33keyD2Ev.exit357 ], [ %i.ng, %bb.ev ], [ %i.lx, %bb.eg ], [ %i.lx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278 ], [ %i.lx, %bb.ek ], [ %i.lx, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6431, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6431)
  ret ptr %.7

bb.gz:                                            ; preds = %.loopexit471, %.loopexit.split-lp, %bb.gy, %bb.fb, %bb.ey, %bb.el, %bb.dx, %bb.cw, %bb.cy, %bb.cp, %bb.k, %bb.l, %bb.q, %bb.v, %bb.aa, %bb.ae, %bb.al, %bb.ax, %bb.be, %bb.bk, %bb.br, %bb.ch, %bb.f, %bb.e
  %.pn176 = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.g, %bb.e ], [ %i.au, %bb.al ], [ %i.m, %bb.l ], [ %i.q, %bb.q ], [ %i.t, %bb.v ], [ %i.x, %bb.aa ], [ %i.ac, %bb.ae ], [ %i.bt, %bb.ax ], [ %i.cf, %bb.be ], [ %i.ci, %bb.bk ], [ %i.cu, %bb.br ], [ %i.dt, %bb.ch ], [ %i.l, %bb.k ], [ %i.hp, %bb.cw ], [ %.pn162, %bb.dx ], [ %i.nd, %bb.el ], [ %i.gx, %bb.cp ], [ %i.hz, %bb.cy ], [ %.pn.pn.pn, %bb.gy ], [ %i.pn, %bb.fb ], [ %i.pc, %bb.ey ], [ %lpad.loopexit, %.loopexit471 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !173  ; 10 uses
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
          to label %.noexc8 unwind label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit6 ; 10 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !174
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc8
  %i.w = add i64 %i.j, -8
  %i.x = sub i64 %i.w, %i.k                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = and i64 %i.x, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ab
  %scevgep15 = getelementptr i8, ptr %i.i, i64 %i.ab
  %bound0 = icmp ult ptr %i.t, %scevgep15
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.af ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.i, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.ag = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep16, align 8, !tbaa !174, !alias.scope !857, !noalias !855
  %wide.load17 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !174, !alias.scope !857, !noalias !855
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !858, !noalias !857
  store <2 x i64> %wide.load17, ptr %i.ah, align 8, !tbaa !174, !alias.scope !858, !noalias !857
  %i.ai = getelementptr i8, ptr %next.gep16, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep16, align 8, !tbaa !174, !alias.scope !857, !noalias !855
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !174, !alias.scope !857, !noalias !855
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !853

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader19

.lr.ph.i.i.i.i.preheader19:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader19, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader19 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader19 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.ak = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !856, !noalias !855
  store i64 %i.ak, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !855, !noalias !856
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !856, !noalias !855
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !854

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %.noexc8 ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !193
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.aq) #51
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.t, ptr %i.h, align 8, !tbaa !173
  store ptr %i.an, ptr %i.b, align 8, !tbaa !172
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !193
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %.noexc
  ret ptr %i.a

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit6: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #50, !inline_history !18
  resume { ptr, i32 } %i.as
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
end_hunk_4
begin_hunk_5_@_ZN4toml2v34node8do_visitIZNS0_4impl14make_node_implIRKS1_EEPDaOT_NS0_11value_flagsEEUlS9_E_S6_EEDcS9_OT0_:bb.a
bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 64) #51, !inline_history !869
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  %i.j = load i16, ptr %0, align 2, !tbaa !196    ; 2 uses
  %i.k = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #55 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !86
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !66   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 %i.r, ptr %i.a, align 8, !tbaa !123
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.f
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i unwind label %bb.k ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i
  store ptr %i.t, ptr %i.m, align 8, !tbaa !66
  %i.u = load i64, ptr %i.a, align 8, !tbaa !123
  store i64 %i.u, ptr %i.o, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i, %bb.f
  %i.v = phi ptr [ %i.t, %.noexc.i.i.i ], [ %i.o, %bb.f ] ; 2 uses
  switch i64 %i.r, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.w = load i8, ptr %i.p, align 1, !tbaa !69
  store i8 %i.w, ptr %i.v, align 1, !tbaa !69
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %bb.i

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
  %i.c = load ptr, ptr %0, align 8, !tbaa !173    ; 10 uses
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #55 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !174
  store i64 %i.r, ptr %i.q, align 8, !tbaa !174
  store ptr null, ptr %2, align 8, !tbaa !174
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = and i64 %i.t, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !174, !alias.scope !888, !noalias !886
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !174, !alias.scope !888, !noalias !886
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !889, !noalias !888
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !tbaa !174, !alias.scope !889, !noalias !888
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !174, !alias.scope !888, !noalias !886
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !174, !alias.scope !888, !noalias !886
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !876

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !174, !alias.scope !887, !noalias !886
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !174, !alias.scope !886, !noalias !887
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !174, !alias.scope !887, !noalias !886
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !877

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ak = add i64 %i.d, -8
  %i.al = sub i64 %i.ak, %i.m                     ; 3 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.al, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ao = and i64 %i.al, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.an, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !174, !alias.scope !892, !noalias !890
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !tbaa !174, !alias.scope !892, !noalias !890
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !174, !alias.scope !893, !noalias !892
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !tbaa !174, !alias.scope !893, !noalias !892
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !174, !alias.scope !892, !noalias !890
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !174, !alias.scope !892, !noalias !890
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !884

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.an, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !174, !alias.scope !891, !noalias !890
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !174, !alias.scope !890, !noalias !891
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !174, !alias.scope !891, !noalias !890
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !885

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !193
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !173
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !172
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !193
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
  %i.c = load ptr, ptr %0, align 8, !tbaa !173    ; 10 uses
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
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #55 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !257
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.x = add i64 %i.d, -8
  %i.y = sub i64 %i.x, %i.e                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ac
  %scevgep40 = getelementptr i8, ptr %i.c, i64 %i.ac
  %bound0 = icmp ult ptr %i.u, %scevgep40
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.c, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.ah = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep41, align 8, !tbaa !174, !alias.scope !904, !noalias !902
  %wide.load42 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !174, !alias.scope !904, !noalias !902
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !905, !noalias !904
  store <2 x i64> %wide.load42, ptr %i.ai, align 8, !tbaa !174, !alias.scope !905, !noalias !904
  %i.aj = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep41, align 8, !tbaa !174, !alias.scope !904, !noalias !902
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !174, !alias.scope !904, !noalias !902
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !900

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader44

.lr.ph.i.i.i.preheader44:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader44, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader44 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader44 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.al = load i64, ptr %.0911.i.i.i, align 8, !tbaa !174, !alias.scope !903, !noalias !902
  store i64 %i.al, ptr %.012.i.i.i, align 8, !tbaa !174, !alias.scope !902, !noalias !903
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !174, !alias.scope !903, !noalias !902
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !901

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !193
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aq) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit37

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit37: ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !173
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !172
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.as, ptr %i.h, align 8, !tbaa !193
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEmS6_ET_S8_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS4_EESaIS7_EELb1EE8_S_do_itERS9_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !159    ; 9 uses
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
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i ; 8 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.l = add i64 %i.d, -8
  %i.m = sub i64 %i.l, %i.e                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader35, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.p = and i64 %i.m, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.q
  %scevgep31 = getelementptr i8, ptr %i.a, i64 %i.q
  %bound0 = icmp ult ptr %i.k, %scevgep31
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.r = shl i64 %n.vec, 3                        ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 %i.r     ; 2 uses
  %i.t = getelementptr i8, ptr %i.a, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.u ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.u ; 4 uses
  %i.v = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 8, !tbaa !174, !alias.scope !911
  %wide.load33 = load <2 x i64>, ptr %i.v, align 8, !tbaa !174, !alias.scope !911
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !912, !noalias !911
  store <2 x i64> %wide.load33, ptr %i.w, align 8, !tbaa !174, !alias.scope !912, !noalias !911
  %i.x = getelementptr i8, ptr %next.gep32, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep32, align 8, !tbaa !174, !alias.scope !911
  store <2 x ptr> splat (ptr null), ptr %i.x, align 8, !tbaa !174, !alias.scope !911
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !909

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, label %.lr.ph.i.i.i.i.i.i.preheader35

.lr.ph.i.i.i.i.i.i.preheader35:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.s, %middle.block ]
  %.sroa.08.011.i.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader35, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader35 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader35 ] ; 3 uses
  %i.z = load i64, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !174
  store i64 %i.z, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !174
  store ptr null, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !174
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !910

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.ac, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %.09) #50 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.s, %middle.block ], [ %i.ab, %.lr.ph.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !173   ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !193 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !173
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !172
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !193
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.al, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit ] ; 2 uses
  %i.ah = load ptr, ptr %.05.i.i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #50, !inline_history !15
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.al, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit
  %i.am = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread ], [ %i.ag, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit ], [ %i.ag, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ]
  %i.an = phi ptr [ %i.a, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit ], [ %.pre, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #51
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #53
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
end_hunk_5
