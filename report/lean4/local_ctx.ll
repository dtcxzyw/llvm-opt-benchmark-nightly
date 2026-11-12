Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/local_ctx?download=true
inline.NumInlined: 217
inline.NumDeleted: 94
begin_hunk_0_@_ZN4lean7sstreamD2Ev:bb.a
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !38
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.n) #14
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean8optionalINS_10local_declEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !18, !range !19, !noundef !20
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4lean10object_refD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4lean10object_refD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.d, align 4, !tbaa !14   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %.not.i1.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.d)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #15
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4lean9local_ctx9get_localERKNS_4nameE(ptr dead_on_unwind noalias writable sret(%"class.lean::expr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.lean::local_decl", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNK4lean9local_ctx14get_local_declERKNS_4nameE(ptr dead_on_unwind nonnull writable sret(%"class.lean::local_decl") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !12, !noalias !41 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_ZN4lean7mk_fvarERKNS_4nameE(ptr dead_on_unwind writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK4lean10local_decl6mk_refEv.exit unwind label %bb.g

_ZNK4lean10local_decl6mk_refEv.exit:              ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4lean10object_refD2Ev.exit

bb.b:                                             ; preds = %_ZNK4lean10local_decl6mk_refEv.exit
  %i.e = load i32, ptr %i.a, align 4, !tbaa !14   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %i.a, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %.not.i1.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.a)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #15
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %_ZNK4lean10local_decl6mk_refEv.exit, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean9local_ctx5clearERKNS_10local_declE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = load ptr, ptr %1, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !14 ; 3 uses
  %i.g = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.g, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.h, ptr %i.d, align 4, !tbaa !14
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = atomicrmw add ptr %i.d, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

_ZNK4lean10object_ref10to_obj_argEv.exit:         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.j = phi ptr [ %i.d, %bb.a ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %.pre.i, %bb.e ]
  %i.k = tail call ptr @lean_local_ctx_erase(ptr noundef %i.a, ptr noundef %i.j)
  store ptr %i.k, ptr %0, align 8, !tbaa !12
  ret void
}

declare ptr @lean_local_ctx_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4lean9local_ctx9mk_lambdaEjPKNS_4exprERS2_b(ptr dead_on_unwind noalias writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %5) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZNK4lean9local_ctx10mk_bindingILb1EEENS_4exprEjPKS2_RS3_b(ptr dead_on_unwind writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4lean9local_ctx10mk_bindingILb1EEENS_4exprEjPKS2_RS3_b(ptr dead_on_unwind noalias writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.lean::local_decl", align 8  ; 6 uses
  %7 = alloca %"class.lean::optional.1", align 8  ; 9 uses
  %8 = alloca %"class.lean::expr", align 8        ; 7 uses
  %9 = alloca %"class.lean::expr", align 8        ; 7 uses
  %10 = alloca %"class.lean::expr", align 8       ; 5 uses
  %11 = alloca %"class.lean::expr", align 8       ; 5 uses
  %12 = alloca %"class.lean::expr", align 8       ; 7 uses
  %13 = alloca %"class.lean::expr", align 8       ; 5 uses
  tail call void @_ZN4lean8abstractERKNS_4exprEjPS1_(ptr dead_on_unwind writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %2, ptr noundef %3)
  %.not67 = icmp eq i32 %2, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.b = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4lean10object_refD2Ev.exit66
  %indvars.iv = phi i64 [ %i.b, %.lr.ph ], [ %indvars.iv.next, %_ZN4lean10object_refD2Ev.exit66 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.c = and i64 %indvars.iv.next, 4294967295
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_ZNK4lean9local_ctx14get_local_declERKNS_4nameE(ptr dead_on_unwind nonnull writable sret(%"class.lean::local_decl") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %bb.ab

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.g = load ptr, ptr %6, align 8, !tbaa !12, !noalias !49 ; 13 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val.i.i = load i32, ptr %i.h, align 4, !noalias !49
  %14 = icmp ult i32 %.val.i.i, 16777216
  br i1 %14, label %_ZNK4lean10local_decl9get_valueEv.exit.thread85, label %bb.d

_ZNK4lean10local_decl9get_valueEv.exit.thread85:  ; preds = %bb.c
  store i8 0, ptr %7, align 8, !tbaa !24, !alias.scope !50
  br label %bb.aq

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  store i8 1, ptr %7, align 8, !tbaa !24, !alias.scope !52
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12, !noalias !52 ; 5 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !12, !alias.scope !52
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %_ZNK4lean10local_decl9get_valueEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.j, align 4, !tbaa !14, !noalias !52 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.m, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw i32 %.val.i.i.i.i.i.i.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !14, !noalias !52
  br label %_ZNK4lean10local_decl9get_valueEv.exit.thread

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4lean10local_decl9get_valueEv.exit.thread, label %_ZNK4lean10local_decl9get_valueEv.exit

_ZNK4lean10local_decl9get_valueEv.exit:           ; preds = %bb.g
  %i.o = atomicrmw add ptr %i.j, i32 -1 monotonic, align 4, !noalias !52 ; 0 uses
  %.pre = load i8, ptr %7, align 8, !tbaa !24, !range !19
  %i.p = trunc nuw i8 %.pre to i1
  br i1 %i.p, label %_ZNK4lean10local_decl9get_valueEv.exit.thread, label %bb.aq

_ZNK4lean10local_decl9get_valueEv.exit.thread:    ; preds = %bb.d, %bb.f, %bb.g, %_ZNK4lean10local_decl9get_valueEv.exit
  br i1 %5, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNK4lean10local_decl9get_valueEv.exit.thread
  %i.q = invoke noundef zeroext i1 @_ZN4lean14has_loose_bvarERKNS_4exprEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0)
          to label %bb.i unwind label %bb.ac

bb.i:                                             ; preds = %bb.h
  br i1 %i.q, label %bb.j, label %bb.ai

bb.j:                                             ; preds = %_ZNK4lean10local_decl9get_valueEv.exit.thread, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke void @_ZN4lean8abstractERKNS_4exprEjPS1_(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %indvars, ptr noundef nonnull %3)
          to label %bb.k unwind label %bb.ad

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZN4lean8abstractERKNS_4exprEjPS1_(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %indvars, ptr noundef nonnull %3)
          to label %bb.l unwind label %bb.ae

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_ZN4lean6mk_letERKNS_4nameERKNS_4exprES5_S5_b(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext false)
          to label %_ZN4lean6mk_letERKNS_4nameERKNS_4exprES5_S5_.exit unwind label %bb.af

_ZN4lean6mk_letERKNS_4nameERKNS_4exprES5_S5_.exit: ; preds = %bb.l
  %i.t = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 1
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZN4lean10object_refD2Ev.exit

bb.m:                                             ; preds = %_ZN4lean6mk_letERKNS_4nameERKNS_4exprES5_S5_.exit
  %i.w = load i32, ptr %i.t, align 4, !tbaa !14   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.t, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %.not.i1.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.t)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #15
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.p, %bb.o, %bb.n, %_ZN4lean6mk_letERKNS_4nameERKNS_4exprES5_S5_.exit
  %i.ab = load ptr, ptr %10, align 8, !tbaa !12
  store ptr %i.ab, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.ac = load ptr, ptr %9, align 8, !tbaa !12    ; 4 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i.i.i40 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i40, label %bb.r, label %_ZN4lean10object_refD2Ev.exit42

bb.r:                                             ; preds = %_ZN4lean10object_refD2Ev.exit
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !14 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.s, label %bb.t, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit42

bb.t:                                             ; preds = %bb.r
  %.not.i1.i.i41 = icmp eq i32 %i.af, 0
  br i1 %.not.i1.i.i41, label %_ZN4lean10object_refD2Ev.exit42, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ac)
          to label %_ZN4lean10object_refD2Ev.exit42 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #15
  unreachable

_ZN4lean10object_refD2Ev.exit42:                  ; preds = %_ZN4lean10object_refD2Ev.exit, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.ak = load ptr, ptr %8, align 8, !tbaa !12    ; 4 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, 1
  %.not.i.i.i43 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i43, label %bb.w, label %_ZN4lean10object_refD2Ev.exit45

bb.w:                                             ; preds = %_ZN4lean10object_refD2Ev.exit42
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !14 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.x, label %bb.y, !prof !15

bb.x:                                             ; preds = %bb.w
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit45

bb.y:                                             ; preds = %bb.w
  %.not.i1.i.i44 = icmp eq i32 %i.an, 0
  br i1 %.not.i1.i.i44, label %_ZN4lean10object_refD2Ev.exit45, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ak)
          to label %_ZN4lean10object_refD2Ev.exit45 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #15
  unreachable

_ZN4lean10object_refD2Ev.exit45:                  ; preds = %_ZN4lean10object_refD2Ev.exit42, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.bk

bb.ab:                                            ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.ac:                                            ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ad:                                            ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn34 = phi { ptr, i32 } [ %i.aw, %bb.af ], [ %i.av, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.ag ], [ %i.au, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.bv

bb.ai:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  invoke void @_ZN4lean17lower_loose_bvarsERKNS_4exprEjj(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, i32 noundef 1)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.ax = load ptr, ptr %0, align 8, !tbaa !12    ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, 1
  %.not.i.i.i.i46 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i46, label %bb.ak, label %_ZN4lean10object_refD2Ev.exit51

bb.ak:                                            ; preds = %bb.aj
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !14 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.al, label %bb.am, !prof !15

bb.al:                                            ; preds = %bb.ak
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit51

bb.am:                                            ; preds = %bb.ak
  %.not.i1.i.i.i47 = icmp eq i32 %i.ba, 0
  br i1 %.not.i1.i.i.i47, label %_ZN4lean10object_refD2Ev.exit51, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ax)
          to label %_ZN4lean10object_refD2Ev.exit51 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #15
  unreachable

_ZN4lean10object_refD2Ev.exit51:                  ; preds = %bb.an, %bb.am, %bb.al, %bb.aj
  %i.bf = load ptr, ptr %11, align 8, !tbaa !12
  store ptr %i.bf, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.bk

bb.ap:                                            ; preds = %bb.ai
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.bv

bb.aq:                                            ; preds = %_ZNK4lean10local_decl9get_valueEv.exit.thread85, %_ZNK4lean10local_decl9get_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke void @_ZN4lean8abstractERKNS_4exprEjPS1_(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i32 noundef %indvars, ptr noundef nonnull %3)
          to label %bb.ar unwind label %bb.bh

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val.i.i.i.i.i = load i32, ptr %i.g, align 4, !tbaa !14 ; 3 uses
  %15 = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %15, label %bb.as, label %bb.at, !prof !15

bb.as:                                            ; preds = %bb.ar
  %i.bj = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.bj, ptr %i.g, align 4, !tbaa !14
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bk = atomicrmw add ptr %i.g, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

_ZNK4lean10object_ref10to_obj_argEv.exit.i:       ; preds = %bb.au, %bb.at, %bb.as
  %i.bl = invoke zeroext i8 @lean_local_decl_binder_info(ptr noundef nonnull %i.g)
          to label %bb.av unwind label %bb.bi

bb.av:                                            ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i
  %i.bm = zext i8 %i.bl to i32
  invoke void @_ZN4lean9mk_lambdaERKNS_4nameERKNS_4exprES5_NS_11binder_infoE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bm)
          to label %bb.aw unwind label %bb.bi

bb.aw:                                            ; preds = %bb.av
  %i.bn = load ptr, ptr %0, align 8, !tbaa !12    ; 4 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = and i64 %i.bo, 1
  %.not.i.i.i.i53 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i53, label %bb.ax, label %_ZN4lean10object_refD2Ev.exit58

bb.ax:                                            ; preds = %bb.aw
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !14 ; 3 uses
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %bb.ay, label %bb.az, !prof !15

bb.ay:                                            ; preds = %bb.ax
  %i.bs = add nsw i32 %i.bq, -1
  store i32 %i.bs, ptr %i.bn, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit58

bb.az:                                            ; preds = %bb.ax
  %.not.i1.i.i.i54 = icmp eq i32 %i.bq, 0
  br i1 %.not.i1.i.i.i54, label %_ZN4lean10object_refD2Ev.exit58, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bn)
          to label %_ZN4lean10object_refD2Ev.exit58 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #15
  unreachable

_ZN4lean10object_refD2Ev.exit58:                  ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw
  %i.bv = load ptr, ptr %13, align 8, !tbaa !12
  store ptr %i.bv, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %i.bw = load ptr, ptr %12, align 8, !tbaa !12   ; 4 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = and i64 %i.bx, 1
  %.not.i.i.i59 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i59, label %bb.bc, label %_ZN4lean10object_refD2Ev.exit61

bb.bc:                                            ; preds = %_ZN4lean10object_refD2Ev.exit58
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !14 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.bd, label %bb.be, !prof !15

bb.bd:                                            ; preds = %bb.bc
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit61

bb.be:                                            ; preds = %bb.bc
  %.not.i1.i.i60 = icmp eq i32 %i.bz, 0
  br i1 %.not.i1.i.i60, label %_ZN4lean10object_refD2Ev.exit61, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bw)
          to label %_ZN4lean10object_refD2Ev.exit61 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #15
  unreachable

_ZN4lean10object_refD2Ev.exit61:                  ; preds = %_ZN4lean10object_refD2Ev.exit58, %bb.bd, %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.bk

bb.bh:                                            ; preds = %bb.aq
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i, %bb.av
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #14
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.bi ], [ %i.ce, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.bv

bb.bk:                                            ; preds = %_ZN4lean10object_refD2Ev.exit45, %_ZN4lean10object_refD2Ev.exit51, %_ZN4lean10object_refD2Ev.exit61
  %i.cg = load i8, ptr %7, align 8, !tbaa !24, !range !19, !noundef !20
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.bl, label %_ZN4lean8optionalINS_4exprEED2Ev.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !12  ; 4 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, 1
  %.not.i.i.i.i62 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i62, label %bb.bm, label %_ZN4lean8optionalINS_4exprEED2Ev.exit

bb.bm:                                            ; preds = %bb.bl
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !14 ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %bb.bn, label %bb.bo, !prof !15

bb.bn:                                            ; preds = %bb.bm
  %i.cn = add nsw i32 %i.cl, -1
  store i32 %i.cn, ptr %i.ci, align 4, !tbaa !14
  br label %_ZN4lean8optionalINS_4exprEED2Ev.exit

bb.bo:                                            ; preds = %bb.bm
  %.not.i1.i.i.i63 = icmp eq i32 %i.cl, 0
  br i1 %.not.i1.i.i.i63, label %_ZN4lean8optionalINS_4exprEED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ci)
          to label %_ZN4lean8optionalINS_4exprEED2Ev.exit unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #15
  unreachable

_ZN4lean8optionalINS_4exprEED2Ev.exit:            ; preds = %bb.bk, %bb.bl, %bb.bn, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %16 = load i32, ptr %i.g, align 4, !tbaa !14    ; 3 uses
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %bb.br, label %bb.bs, !prof !15

bb.br:                                            ; preds = %_ZN4lean8optionalINS_4exprEED2Ev.exit
  %i.cq = add nsw i32 %16, -1
  store i32 %i.cq, ptr %i.g, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit66

bb.bs:                                            ; preds = %_ZN4lean8optionalINS_4exprEED2Ev.exit
  %.not.i1.i.i65 = icmp eq i32 %16, 0
  br i1 %.not.i1.i.i65, label %_ZN4lean10object_refD2Ev.exit66, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.g)
          to label %_ZN4lean10object_refD2Ev.exit66 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #15
  unreachable

_ZN4lean10object_refD2Ev.exit66:                  ; preds = %bb.br, %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %.not = icmp eq i32 %indvars, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !48

bb.bv:                                            ; preds = %bb.bj, %bb.ap, %bb.ah, %bb.ac
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %bb.ah ], [ %i.bg, %bb.ap ], [ %i.at, %bb.ac ], [ %.pn, %bb.bj ]
  call void @_ZN4lean8optionalINS_4exprEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.ab
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.bv ], [ %i.as, %bb.ab ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn

._crit_edge:                                      ; preds = %_ZN4lean10object_refD2Ev.exit66, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4lean9local_ctx5mk_piEjPKNS_4exprERS2_b(ptr dead_on_unwind noalias writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %5) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZNK4lean9local_ctx10mk_bindingILb0EEENS_4exprEjPKS2_RS3_b(ptr dead_on_unwind writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4lean9local_ctx10mk_bindingILb0EEENS_4exprEjPKS2_RS3_b(ptr dead_on_unwind noalias writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.lean::local_decl", align 8  ; 6 uses
  %7 = alloca %"class.lean::optional.1", align 8  ; 9 uses
  %8 = alloca %"class.lean::expr", align 8        ; 7 uses
  %9 = alloca %"class.lean::expr", align 8        ; 7 uses
  %10 = alloca %"class.lean::expr", align 8       ; 5 uses
  %11 = alloca %"class.lean::expr", align 8       ; 5 uses
  %12 = alloca %"class.lean::expr", align 8       ; 7 uses
  %13 = alloca %"class.lean::expr", align 8       ; 5 uses
  tail call void @_ZN4lean8abstractERKNS_4exprEjPS1_(ptr dead_on_unwind writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %2, ptr noundef %3)
  %.not67 = icmp eq i32 %2, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.b = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4lean10object_refD2Ev.exit66
  %indvars.iv = phi i64 [ %i.b, %.lr.ph ], [ %indvars.iv.next, %_ZN4lean10object_refD2Ev.exit66 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.c = and i64 %indvars.iv.next, 4294967295
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_ZNK4lean9local_ctx14get_local_declERKNS_4nameE(ptr dead_on_unwind nonnull writable sret(%"class.lean::local_decl") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %bb.ab

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.g = load ptr, ptr %6, align 8, !tbaa !12, !noalias !60 ; 13 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val.i.i = load i32, ptr %i.h, align 4, !noalias !60
  %14 = icmp ult i32 %.val.i.i, 16777216
  br i1 %14, label %_ZNK4lean10local_decl9get_valueEv.exit.thread85, label %bb.d

_ZNK4lean10local_decl9get_valueEv.exit.thread85:  ; preds = %bb.c
  store i8 0, ptr %7, align 8, !tbaa !24, !alias.scope !61
  br label %bb.aq

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  store i8 1, ptr %7, align 8, !tbaa !24, !alias.scope !63
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12, !noalias !63 ; 5 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !12, !alias.scope !63
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %_ZNK4lean10local_decl9get_valueEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.j, align 4, !tbaa !14, !noalias !63 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.m, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw i32 %.val.i.i.i.i.i.i.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !14, !noalias !63
  br label %_ZNK4lean10local_decl9get_valueEv.exit.thread

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4lean10local_decl9get_valueEv.exit.thread, label %_ZNK4lean10local_decl9get_valueEv.exit

_ZNK4lean10local_decl9get_valueEv.exit:           ; preds = %bb.g
  %i.o = atomicrmw add ptr %i.j, i32 -1 monotonic, align 4, !noalias !63 ; 0 uses
  %.pre = load i8, ptr %7, align 8, !tbaa !24, !range !19
  %i.p = trunc nuw i8 %.pre to i1
  br i1 %i.p, label %_ZNK4lean10local_decl9get_valueEv.exit.thread, label %bb.aq

_ZNK4lean10local_decl9get_valueEv.exit.thread:    ; preds = %bb.d, %bb.f, %bb.g, %_ZNK4lean10local_decl9get_valueEv.exit
  br i1 %5, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNK4lean10local_decl9get_valueEv.exit.thread
  %i.q = invoke noundef zeroext i1 @_ZN4lean14has_loose_bvarERKNS_4exprEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0)
          to label %bb.i unwind label %bb.ac

bb.i:                                             ; preds = %bb.h
  br i1 %i.q, label %bb.j, label %bb.ai

bb.j:                                             ; preds = %_ZNK4lean10local_decl9get_valueEv.exit.thread, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke void @_ZN4lean8abstractERKNS_4exprEjPS1_(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %indvars, ptr noundef nonnull %3)
          to label %bb.k unwind label %bb.ad

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZN4lean8abstractERKNS_4exprEjPS1_(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %indvars, ptr noundef nonnull %3)
          to label %bb.l unwind label %bb.ae

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_ZN4lean6mk_letERKNS_4nameERKNS_4exprES5_S5_b(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext false)
          to label %_ZN4lean6mk_letERKNS_4nameERKNS_4exprES5_S5_.exit unwind label %bb.af

_ZN4lean6mk_letERKNS_4nameERKNS_4exprES5_S5_.exit: ; preds = %bb.l
  %i.t = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 1
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZN4lean10object_refD2Ev.exit

bb.m:                                             ; preds = %_ZN4lean6mk_letERKNS_4nameERKNS_4exprES5_S5_.exit
  %i.w = load i32, ptr %i.t, align 4, !tbaa !14   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.t, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %.not.i1.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.t)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #15
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.p, %bb.o, %bb.n, %_ZN4lean6mk_letERKNS_4nameERKNS_4exprES5_S5_.exit
  %i.ab = load ptr, ptr %10, align 8, !tbaa !12
  store ptr %i.ab, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.ac = load ptr, ptr %9, align 8, !tbaa !12    ; 4 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i.i.i40 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i40, label %bb.r, label %_ZN4lean10object_refD2Ev.exit42

bb.r:                                             ; preds = %_ZN4lean10object_refD2Ev.exit
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !14 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.s, label %bb.t, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit42

bb.t:                                             ; preds = %bb.r
  %.not.i1.i.i41 = icmp eq i32 %i.af, 0
  br i1 %.not.i1.i.i41, label %_ZN4lean10object_refD2Ev.exit42, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ac)
          to label %_ZN4lean10object_refD2Ev.exit42 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #15
  unreachable

_ZN4lean10object_refD2Ev.exit42:                  ; preds = %_ZN4lean10object_refD2Ev.exit, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.ak = load ptr, ptr %8, align 8, !tbaa !12    ; 4 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, 1
  %.not.i.i.i43 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i43, label %bb.w, label %_ZN4lean10object_refD2Ev.exit45

bb.w:                                             ; preds = %_ZN4lean10object_refD2Ev.exit42
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !14 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.x, label %bb.y, !prof !15

bb.x:                                             ; preds = %bb.w
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit45

bb.y:                                             ; preds = %bb.w
  %.not.i1.i.i44 = icmp eq i32 %i.an, 0
  br i1 %.not.i1.i.i44, label %_ZN4lean10object_refD2Ev.exit45, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ak)
          to label %_ZN4lean10object_refD2Ev.exit45 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #15
  unreachable

_ZN4lean10object_refD2Ev.exit45:                  ; preds = %_ZN4lean10object_refD2Ev.exit42, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.bk

bb.ab:                                            ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.ac:                                            ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ad:                                            ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn34 = phi { ptr, i32 } [ %i.aw, %bb.af ], [ %i.av, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.ag ], [ %i.au, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.bv

bb.ai:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  invoke void @_ZN4lean17lower_loose_bvarsERKNS_4exprEjj(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, i32 noundef 1)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.ax = load ptr, ptr %0, align 8, !tbaa !12    ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, 1
  %.not.i.i.i.i46 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i46, label %bb.ak, label %_ZN4lean10object_refD2Ev.exit51

bb.ak:                                            ; preds = %bb.aj
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !14 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.al, label %bb.am, !prof !15

bb.al:                                            ; preds = %bb.ak
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit51

bb.am:                                            ; preds = %bb.ak
  %.not.i1.i.i.i47 = icmp eq i32 %i.ba, 0
  br i1 %.not.i1.i.i.i47, label %_ZN4lean10object_refD2Ev.exit51, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ax)
          to label %_ZN4lean10object_refD2Ev.exit51 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #15
  unreachable

_ZN4lean10object_refD2Ev.exit51:                  ; preds = %bb.an, %bb.am, %bb.al, %bb.aj
  %i.bf = load ptr, ptr %11, align 8, !tbaa !12
  store ptr %i.bf, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.bk

bb.ap:                                            ; preds = %bb.ai
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.bv

bb.aq:                                            ; preds = %_ZNK4lean10local_decl9get_valueEv.exit.thread85, %_ZNK4lean10local_decl9get_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke void @_ZN4lean8abstractERKNS_4exprEjPS1_(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i32 noundef %indvars, ptr noundef nonnull %3)
          to label %bb.ar unwind label %bb.bh

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val.i.i.i.i.i = load i32, ptr %i.g, align 4, !tbaa !14 ; 3 uses
  %15 = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %15, label %bb.as, label %bb.at, !prof !15

bb.as:                                            ; preds = %bb.ar
  %i.bj = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.bj, ptr %i.g, align 4, !tbaa !14
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bk = atomicrmw add ptr %i.g, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

_ZNK4lean10object_ref10to_obj_argEv.exit.i:       ; preds = %bb.au, %bb.at, %bb.as
  %i.bl = invoke zeroext i8 @lean_local_decl_binder_info(ptr noundef nonnull %i.g)
          to label %bb.av unwind label %bb.bi

bb.av:                                            ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i
  %i.bm = zext i8 %i.bl to i32
  invoke void @_ZN4lean5mk_piERKNS_4nameERKNS_4exprES5_NS_11binder_infoE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bm)
          to label %bb.aw unwind label %bb.bi

bb.aw:                                            ; preds = %bb.av
  %i.bn = load ptr, ptr %0, align 8, !tbaa !12    ; 4 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = and i64 %i.bo, 1
  %.not.i.i.i.i53 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i53, label %bb.ax, label %_ZN4lean10object_refD2Ev.exit58

bb.ax:                                            ; preds = %bb.aw
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !14 ; 3 uses
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %bb.ay, label %bb.az, !prof !15

bb.ay:                                            ; preds = %bb.ax
  %i.bs = add nsw i32 %i.bq, -1
  store i32 %i.bs, ptr %i.bn, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit58

bb.az:                                            ; preds = %bb.ax
  %.not.i1.i.i.i54 = icmp eq i32 %i.bq, 0
  br i1 %.not.i1.i.i.i54, label %_ZN4lean10object_refD2Ev.exit58, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bn)
          to label %_ZN4lean10object_refD2Ev.exit58 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #15
  unreachable

_ZN4lean10object_refD2Ev.exit58:                  ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw
  %i.bv = load ptr, ptr %13, align 8, !tbaa !12
  store ptr %i.bv, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %i.bw = load ptr, ptr %12, align 8, !tbaa !12   ; 4 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = and i64 %i.bx, 1
  %.not.i.i.i59 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i59, label %bb.bc, label %_ZN4lean10object_refD2Ev.exit61

bb.bc:                                            ; preds = %_ZN4lean10object_refD2Ev.exit58
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !14 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.bd, label %bb.be, !prof !15

bb.bd:                                            ; preds = %bb.bc
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit61

bb.be:                                            ; preds = %bb.bc
  %.not.i1.i.i60 = icmp eq i32 %i.bz, 0
  br i1 %.not.i1.i.i60, label %_ZN4lean10object_refD2Ev.exit61, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bw)
          to label %_ZN4lean10object_refD2Ev.exit61 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #15
  unreachable

_ZN4lean10object_refD2Ev.exit61:                  ; preds = %_ZN4lean10object_refD2Ev.exit58, %bb.bd, %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.bk

bb.bh:                                            ; preds = %bb.aq
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i, %bb.av
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #14
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.bi ], [ %i.ce, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.bv

bb.bk:                                            ; preds = %_ZN4lean10object_refD2Ev.exit45, %_ZN4lean10object_refD2Ev.exit51, %_ZN4lean10object_refD2Ev.exit61
  %i.cg = load i8, ptr %7, align 8, !tbaa !24, !range !19, !noundef !20
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.bl, label %_ZN4lean8optionalINS_4exprEED2Ev.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !12  ; 4 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, 1
  %.not.i.i.i.i62 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i62, label %bb.bm, label %_ZN4lean8optionalINS_4exprEED2Ev.exit

bb.bm:                                            ; preds = %bb.bl
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !14 ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %bb.bn, label %bb.bo, !prof !15

bb.bn:                                            ; preds = %bb.bm
  %i.cn = add nsw i32 %i.cl, -1
  store i32 %i.cn, ptr %i.ci, align 4, !tbaa !14
  br label %_ZN4lean8optionalINS_4exprEED2Ev.exit

bb.bo:                                            ; preds = %bb.bm
  %.not.i1.i.i.i63 = icmp eq i32 %i.cl, 0
  br i1 %.not.i1.i.i.i63, label %_ZN4lean8optionalINS_4exprEED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ci)
          to label %_ZN4lean8optionalINS_4exprEED2Ev.exit unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #15
  unreachable

_ZN4lean8optionalINS_4exprEED2Ev.exit:            ; preds = %bb.bk, %bb.bl, %bb.bn, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %16 = load i32, ptr %i.g, align 4, !tbaa !14    ; 3 uses
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %bb.br, label %bb.bs, !prof !15

bb.br:                                            ; preds = %_ZN4lean8optionalINS_4exprEED2Ev.exit
  %i.cq = add nsw i32 %16, -1
  store i32 %i.cq, ptr %i.g, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit66

bb.bs:                                            ; preds = %_ZN4lean8optionalINS_4exprEED2Ev.exit
  %.not.i1.i.i65 = icmp eq i32 %16, 0
  br i1 %.not.i1.i.i65, label %_ZN4lean10object_refD2Ev.exit66, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.g)
          to label %_ZN4lean10object_refD2Ev.exit66 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #15
  unreachable

_ZN4lean10object_refD2Ev.exit66:                  ; preds = %bb.br, %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %.not = icmp eq i32 %indvars, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !59

bb.bv:                                            ; preds = %bb.bj, %bb.ap, %bb.ah, %bb.ac
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %bb.ah ], [ %i.bg, %bb.ap ], [ %i.at, %bb.ac ], [ %.pn, %bb.bj ]
  call void @_ZN4lean8optionalINS_4exprEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.ab
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.bv ], [ %i.as, %bb.ab ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn

._crit_edge:                                      ; preds = %_ZN4lean10object_refD2Ev.exit66, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean20initialize_local_ctxEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.lean::nat", align 8         ; 5 uses
  %1 = alloca %"class.lean::name", align 8        ; 7 uses
  %2 = alloca %"class.lean::name", align 8        ; 7 uses
  %3 = alloca %"class.lean::list_ref", align 8    ; 7 uses
  %4 = alloca %"class.lean::name", align 8        ; 7 uses
  %5 = alloca %"class.lean::name", align 8        ; 8 uses
  %6 = alloca %"class.lean::name", align 8        ; 8 uses
  %7 = alloca %"class.lean::expr", align 8        ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  invoke void @_ZN4lean4name23mk_internal_unique_nameEv(ptr dead_on_unwind nonnull writable sret(%"class.lean::name") align 8 %4)
          to label %bb.b unwind label %bb.bg

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14, !noalias !66
  store ptr inttoptr (i64 1 to ptr), ptr %3, align 8, !tbaa !12, !noalias !66
  invoke void @_ZN4lean8mk_constERKNS_4nameERKNS_8list_refINS_5levelEEE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %i.a, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN4lean11mk_constantERKNS_4nameERKNS_8list_refINS_5levelEEE.exit.i unwind label %.body

_ZN4lean11mk_constantERKNS_4nameERKNS_8list_refINS_5levelEEE.exit.i: ; preds = %bb.b
  %i.b = load ptr, ptr %3, align 8, !tbaa !12, !noalias !66 ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZN4lean11mk_constantERKNS_4nameERKNS_8list_refINS_5levelEEE.exit.i
  %i.e = load i32, ptr %i.b, align 4, !tbaa !14   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %i.b, align 4, !tbaa !14
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.not.i1.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i1.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.b)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #15
  unreachable

.body:                                            ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14, !noalias !66
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #14
  br label %bb.bh

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %_ZN4lean11mk_constantERKNS_4nameERKNS_8list_refINS_5levelEEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14, !noalias !66
  store ptr %i.a, ptr @_ZN4leanL12g_dummy_typeE, align 8, !tbaa !27
  %i.k = load ptr, ptr %4, align 8, !tbaa !12     ; 4 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, 1
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZN4lean10object_refD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.n = load i32, ptr %i.k, align 4, !tbaa !14   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %.not.i1.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.k)
          to label %._ZN4lean10object_refD2Ev.exit_crit_edge unwind label %bb.m

._ZN4lean10object_refD2Ev.exit_crit_edge:         ; preds = %bb.l
  %.pre = load ptr, ptr @_ZN4leanL12g_dummy_typeE, align 8, !tbaa !27
  br label %_ZN4lean10object_refD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #15
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %._ZN4lean10object_refD2Ev.exit_crit_edge, %bb.h, %bb.j, %bb.k
  %i.s = phi ptr [ %.pre, %._ZN4lean10object_refD2Ev.exit_crit_edge ], [ %i.a, %bb.h ], [ %i.a, %bb.j ], [ %i.a, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12
  call void @lean_mark_persistent(ptr noundef %i.t)
  %i.u = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !tbaa !12
  invoke void @_ZN4lean4nameC2ERKS0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %_ZN4lean10object_refD2Ev.exit
  %i.v = load ptr, ptr %2, align 8, !tbaa !12     ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, 1
  %.not.i.i.i.i14 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i14, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.y = load i32, ptr %i.v, align 4, !tbaa !14   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.p, label %bb.q, !prof !15

bb.p:                                             ; preds = %bb.o
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !14
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %.not.i1.i.i.i15 = icmp eq i32 %i.y, 0
  br i1 %.not.i1.i.i.i15, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.v)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #15
  unreachable

bb.t:                                             ; preds = %_ZN4lean10object_refD2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %.body16

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !tbaa !12
  invoke void @_ZN4lean4nameC2ERKS0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ae = load ptr, ptr %1, align 8, !tbaa !12    ; 4 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 1
  %.not.i.i.i.i18 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i18, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.x, label %bb.y, !prof !15

bb.x:                                             ; preds = %bb.w
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %i.ae, align 4, !tbaa !14
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %.not.i1.i.i.i19 = icmp eq i32 %i.ah, 0
  br i1 %.not.i1.i.i.i19, label %bb.ac, label %bb.z
end_hunk_0
