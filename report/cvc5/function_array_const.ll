Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/function_array_const?download=true
inline.NumInlined: 186
inline.NumDeleted: 113
begin_hunk_0_@_ZN4cvc58internal29isFunctionCompatibleWithArrayERKNS0_8TypeNodeES3_:bb.a
  br i1 %i.du, label %bb.ah, label %_ZN4cvc58internal8TypeNodeD2Ev.exit44, !prof !14

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %.lcssa)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit44 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #15
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit44:            ; preds = %.critedge31, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.dx = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  %i.dy = load ptr, ptr %i.s, align 8, !tbaa !17  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dx, %i.dy
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit44, %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ej, %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i ], [ %i.dx, %_ZN4cvc58internal8TypeNodeD2Ev.exit44 ] ; 2 uses
  %i.dz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !12 ; 3 uses
  %i.ea = load i64, ptr %i.dz, align 8            ; 3 uses
  %i.eb = and i64 %i.ea, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.eb, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i, label %bb.aj, !prof !14

bb.aj:                                            ; preds = %.lr.ph.i.i.i
  %i.ec = add i64 %i.ea, 1152920405095219200
  %i.ed = and i64 %i.ec, 1152920405095219200      ; 2 uses
  %i.ee = and i64 %i.ea, -1152920405095219201
  %i.ef = or disjoint i64 %i.ed, %i.ee
  store i64 %i.ef, ptr %i.dz, align 8
  %i.eg = icmp eq i64 %i.ed, 0
  br i1 %i.eg, label %bb.ak, label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i, !prof !14

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #15
  unreachable

_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i: ; preds = %bb.ak, %bb.aj, %.lr.ph.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ej, %i.dy
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN4cvc58internal8TypeNodeD2Ev.exit44
  %i.ek = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.dx, %_ZN4cvc58internal8TypeNodeD2Ev.exit44 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !20
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ep) #16
  br label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.ao

bb.an:                                            ; preds = %bb.af, %bb.f
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.af ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %.pn26.pn.pn

bb.ao:                                            ; preds = %bb.a, %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit
  %.224 = phi i1 [ %.not.lcssa, %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.224
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZNK4cvc58internal8TypeNode11getArgTypesEv(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #15
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !12 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = add i64 %i.e, 1152920405095219200
  %i.h = and i64 %i.g, 1152920405095219200        ; 2 uses
  %i.i = and i64 %i.e, -1152920405095219201
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i, !prof !14

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #15
  unreachable

_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #16
  br label %_ZNSt12_Vector_baseIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal18FunctionArrayConstC2ERKNS0_8TypeNodeERKNS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.b = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %bb.b unwind label %bb.r       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !12     ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !12
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = lshr i64 %i.d, 40
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1048575                    ; 3 uses
  %i.h = icmp samesign ult i32 %i.g, 1048574
  br i1 %i.h, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw nsw i32 %i.g, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 40
  %i.l = and i64 %i.d, -1152920405095219201
  %i.m = or i64 %i.k, %i.l
  store i64 %i.m, ptr %i.c, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %i.g, 1048574
  br i1 %i.n, label %bb.e, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.o = or i64 %i.d, 1152920405095219200
  store i64 %i.o, ptr %i.c, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit unwind label %bb.s

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.d, %bb.c, %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4cvc58internal8TypeNodeESt14default_deleteIS2_EE5resetEPS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 3 uses
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = and i64 %i.r, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.s, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN4cvc58internal8TypeNodeEEclEPS2_.exit.i.i, label %bb.g, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.t = add i64 %i.r, 1152920405095219200
  %i.u = and i64 %i.t, 1152920405095219200        ; 2 uses
  %i.v = and i64 %i.r, -1152920405095219201
  %i.w = or disjoint i64 %i.u, %i.v
  store i64 %i.w, ptr %i.q, align 8
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %bb.h, label %_ZNKSt14default_deleteIN4cvc58internal8TypeNodeEEclEPS2_.exit.i.i, !prof !14

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_ZNKSt14default_deleteIN4cvc58internal8TypeNodeEEclEPS2_.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #15
  unreachable

_ZNKSt14default_deleteIN4cvc58internal8TypeNodeEEclEPS2_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 8) #16
  br label %_ZNSt10unique_ptrIN4cvc58internal8TypeNodeESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN4cvc58internal8TypeNodeESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, %_ZNKSt14default_deleteIN4cvc58internal8TypeNodeEEclEPS2_.exit.i.i
  %i.aa = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %bb.j unwind label %bb.r       ; 3 uses

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN4cvc58internal8TypeNodeESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !23    ; 5 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !23
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = lshr i64 %i.ac, 40
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = and i32 %i.ae, 1048575                  ; 3 uses
  %i.ag = icmp samesign ult i32 %i.af, 1048574
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.ah = add nuw nsw i32 %i.af, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 40
  %i.ak = and i64 %i.ac, -1152920405095219201
  %i.al = or i64 %i.aj, %i.ak
  store i64 %i.al, ptr %i.ab, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.am = icmp eq i32 %i.af, 1048574
  br i1 %i.am, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.an = or i64 %i.ac, 1152920405095219200
  store i64 %i.an, ptr %i.ab, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.t

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.l, %bb.k, %bb.m
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !25
  %.not.i.i7 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i7, label %_ZNSt10unique_ptrIN4cvc58internal12NodeTemplateILb1EEESt14default_deleteIS3_EE5resetEPS3_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = and i64 %i.aq, 1152920405095219200
  %.not.i.i.i.i.i8 = icmp eq i64 %i.ar, 1152920405095219200
  br i1 %.not.i.i.i.i.i8, label %_ZNKSt14default_deleteIN4cvc58internal12NodeTemplateILb1EEEEclEPS3_.exit.i.i, label %bb.o, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.as = add i64 %i.aq, 1152920405095219200
  %i.at = and i64 %i.as, 1152920405095219200      ; 2 uses
  %i.au = and i64 %i.aq, -1152920405095219201
  %i.av = or disjoint i64 %i.at, %i.au
  store i64 %i.av, ptr %i.ap, align 8
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %bb.p, label %_ZNKSt14default_deleteIN4cvc58internal12NodeTemplateILb1EEEEclEPS3_.exit.i.i, !prof !14

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_ZNKSt14default_deleteIN4cvc58internal12NodeTemplateILb1EEEEclEPS3_.exit.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #15
  unreachable

_ZNKSt14default_deleteIN4cvc58internal12NodeTemplateILb1EEEEclEPS3_.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 8) #16
  br label %_ZNSt10unique_ptrIN4cvc58internal12NodeTemplateILb1EEESt14default_deleteIS3_EE5resetEPS3_.exit

_ZNSt10unique_ptrIN4cvc58internal12NodeTemplateILb1EEESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, %_ZNKSt14default_deleteIN4cvc58internal12NodeTemplateILb1EEEEclEPS3_.exit.i.i
  ret void

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN4cvc58internal8TypeNodeESt14default_deleteIS2_EE5resetEPS2_.exit, %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #16
  br label %bb.u

bb.t:                                             ; preds = %bb.m
  %3 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 8) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %3, %bb.t ], [ %i.az, %bb.r ], [ %i.ba, %bb.s ]
  tail call void @_ZNSt10unique_ptrIN4cvc58internal12NodeTemplateILb1EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #14
  tail call void @_ZNSt10unique_ptrIN4cvc58internal8TypeNodeESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4cvc58internal12NodeTemplateILb1EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.d, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN4cvc58internal12NodeTemplateILb1EEEEclEPS3_.exit, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %i.c, 1152920405095219200
  %i.f = and i64 %i.e, 1152920405095219200        ; 2 uses
  %i.g = and i64 %i.c, -1152920405095219201
  %i.h = or disjoint i64 %i.f, %i.g
  store i64 %i.h, ptr %i.b, align 8
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.d, label %_ZNKSt14default_deleteIN4cvc58internal12NodeTemplateILb1EEEEclEPS3_.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZNKSt14default_deleteIN4cvc58internal12NodeTemplateILb1EEEEclEPS3_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #15
  unreachable

_ZNKSt14default_deleteIN4cvc58internal12NodeTemplateILb1EEEEclEPS3_.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #16
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN4cvc58internal12NodeTemplateILb1EEEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4cvc58internal8TypeNodeESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.d, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN4cvc58internal8TypeNodeEEclEPS2_.exit, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %i.c, 1152920405095219200
  %i.f = and i64 %i.e, 1152920405095219200        ; 2 uses
  %i.g = and i64 %i.c, -1152920405095219201
  %i.h = or disjoint i64 %i.f, %i.g
  store i64 %i.h, ptr %i.b, align 8
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.d, label %_ZNKSt14default_deleteIN4cvc58internal8TypeNodeEEclEPS2_.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZNKSt14default_deleteIN4cvc58internal8TypeNodeEEclEPS2_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #15
  unreachable

_ZNKSt14default_deleteIN4cvc58internal8TypeNodeEEclEPS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #16
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN4cvc58internal8TypeNodeEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal18FunctionArrayConstC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 5 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !12
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = lshr i64 %i.d, 40
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1048575                    ; 3 uses
  %i.h = icmp samesign ult i32 %i.g, 1048574
  br i1 %i.h, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = add nuw nsw i32 %i.g, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 40
  %i.l = and i64 %i.d, -1152920405095219201
  %i.m = or i64 %i.k, %i.l
  store i64 %i.m, ptr %i.c, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.g, 1048574
  br i1 %i.n, label %bb.d, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.o = or i64 %i.d, 1152920405095219200
  store i64 %i.o, ptr %i.c, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit unwind label %bb.i

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.c, %bb.b, %bb.d
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  %i.p = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %bb.e unwind label %bb.j       ; 3 uses

bb.e:                                             ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23   ; 5 uses
  store ptr %i.s, ptr %i.p, align 8, !tbaa !23
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = lshr i64 %i.t, 40
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = and i32 %i.v, 1048575                    ; 3 uses
  %i.x = icmp samesign ult i32 %i.w, 1048574
  br i1 %i.x, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.y = add nuw nsw i32 %i.w, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 40
  %i.ab = and i64 %i.t, -1152920405095219201
  %i.ac = or i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.s, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = icmp eq i32 %i.w, 1048574
  br i1 %i.ad, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.ae = or i64 %i.t, 1152920405095219200
  store i64 %i.ae, ptr %i.s, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.k

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.g, %bb.f, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.af, align 8, !tbaa !25
  ret void

bb.i:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #16
  br label %bb.m

bb.j:                                             ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 8) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.k ], [ %i.ah, %bb.j ]
  tail call void @_ZNSt10unique_ptrIN4cvc58internal8TypeNodeESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.ag, %bb.i ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4cvc58internal18FunctionArrayConst7getTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
end_hunk_0
