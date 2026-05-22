inline.NumInlined: 733
inline.NumDeleted: 412
begin_hunk_0_@_ZN6duckdb9make_uniqINS_16UniqueConstraintEJRKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.r, %bb.f ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.t) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !79

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.f ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.x) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  br label %.body

.body:                                            ; preds = %bb.h, %bb.d, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.y, %bb.h ], [ %i.o, %bb.d ], [ %i.o, %bb.c ]
  call void @_ZdlPv(ptr noundef nonnull %i.a) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb16UniqueConstraint12IsPrimaryKeyEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !43, !range !57, !noundef !58
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define range(i64 0, -1) i64 @_ZNK6duckdb16UniqueConstraint8GetIndexEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret i64 %i.b

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb16UniqueConstraint8SetIndexENS_12LogicalIndexE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(49) initializes((16, 24)) %0, i64 %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.a, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16UniqueConstraint14GetColumnNamesB5cxx11Ev(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(49) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb16UniqueConstraint21GetColumnNamesMutableB5cxx11Ev(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(49) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16UniqueConstraint17GetLogicalIndexesERKNS_10ColumnListE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::vector.42") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(105) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_ZNK6duckdb16UniqueConstraint8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.c, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !84
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  %.not2127 = icmp eq ptr %i.i, %i.k
  br i1 %.not2127, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit
  %i.n = phi ptr [ null, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %i.o = phi ptr [ null, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.016.028 = phi ptr [ %i.i, %.lr.ph ], [ %i.ba, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.az, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 12 uses
  %i.q = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.028)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.r = invoke i64 @_ZNK6duckdb16ColumnDefinition7LogicalEv(ptr noundef nonnull align 8 dereferenceable(216) %i.q)
          to label %bb.f unwind label %.loopexit22 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.r, ptr %i.o, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.l, align 8, !tbaa !84
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.u = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.i, label %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.p, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #24
          to label %.noexc13 unwind label %.loopexit22 ; 8 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  store i64 %i.r, ptr %i.ae, align 8, !tbaa !36
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc13
  %i.af = ptrtoaddr ptr %i.ad to i64
  %i.ag = add i64 %i.t, -8
  %i.ah = sub i64 %i.ag, %i.u                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 24
  %i.ak = sub i64 %i.af, %i.u
  %diff.check = icmp ult i64 %i.ak, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ad, i64 %i.al  ; 2 uses
  %i.an = getelementptr i8, ptr %i.p, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ao ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.p, i64 %i.ao ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.ap = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep51, align 8, !tbaa !36, !alias.scope !88, !noalias !85
  %wide.load52 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !36, !alias.scope !88, !noalias !85
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !36, !alias.scope !85, !noalias !88
  store <2 x i64> %wide.load52, ptr %i.aq, align 8, !tbaa !36, !alias.scope !85, !noalias !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader54

.lr.ph.i.i.i.i.i.i.i.preheader54:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader54, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader54 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader54 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.as = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !36, !alias.scope !88, !noalias !85
  store i64 %i.as, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !36, !alias.scope !85, !noalias !88
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !93

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc13
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc13 ], [ %i.am, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #23
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.av, ptr %i.l, align 8, !tbaa !84
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab ; 2 uses
  store ptr %i.aw, ptr %i.m, align 8, !tbaa !83
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.g
  %i.ax = phi ptr [ %i.aw, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.n, %bb.g ]
  %i.ay = phi ptr [ %i.av, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.s, %bb.g ]
  %i.az = phi ptr [ %i.ad, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.p, %bb.g ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.016.028, i64 32 ; 2 uses
  %.not21 = icmp eq ptr %i.ba, %i.k
  br i1 %.not21, label %.loopexit, label %bb.d

bb.k:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.loopexit22:                                      ; preds = %bb.e, %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.sink.split:                                      ; preds = %bb.k, %.loopexit22
  %.pn.ph = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit22 ], [ %i.bb, %bb.k ]
  store ptr %i.p, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn.ph, %.sink.split ]
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #23
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit

.loopexit:                                        ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit, %bb.c
  %.lcssa23 = phi ptr [ null, %bb.c ], [ %i.az, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ]
  store ptr %.lcssa23, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit: ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare i64 @_ZNK6duckdb16ColumnDefinition7LogicalEv(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16UniqueConstraint7GetNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(49) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i8, ptr %i.b, align 8, !tbaa !43, !range !57, !noundef !58
  %i.d = add nuw nsw i8 %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.e = tail call noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_19IndexConstraintTypeEEEPKcT_(i8 noundef zeroext %i.d), !noalias !94 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !12, !alias.scope !94
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #22
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !94
  store i64 %i.h, ptr %i.a, align 8, !tbaa !36, !noalias !94
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !18, !alias.scope !94
  %i.k = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !94
  store i64 %i.k, ptr %i.f, align 8, !tbaa !22, !alias.scope !94
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN6duckdb8EnumUtil8ToStringINS_19IndexConstraintTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i8, ptr %i.e, align 1, !tbaa !22
  store i8 %i.m, ptr %i.l, align 1, !tbaa !22
  br label %_ZN6duckdb8EnumUtil8ToStringINS_19IndexConstraintTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.e, i64 %i.h, i1 false)
  br label %_ZN6duckdb8EnumUtil8ToStringINS_19IndexConstraintTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit

_ZN6duckdb8EnumUtil8ToStringINS_19IndexConstraintTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !94 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !21, !alias.scope !94
  %i.p = load ptr, ptr %3, align 8, !tbaa !18, !alias.scope !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.s, align 8, !tbaa !21
  store i8 0, ptr %i.r, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55   ; 2 uses
  %.not80 = icmp eq ptr %i.u, %i.w
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb8EnumUtil8ToStringINS_19IndexConstraintTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6duckdb8EnumUtil8ToStringINS_19IndexConstraintTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.z = load ptr, ptr %3, align 8, !tbaa !18, !noalias !97
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !21, !noalias !97 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.ab, ptr %7, align 8, !tbaa !12, !alias.scope !100
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !21, !alias.scope !100
  store i8 0, ptr %i.ab, align 8, !tbaa !22, !alias.scope !100
  %i.ad = add i64 %i.aa, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ad)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !21, !alias.scope !100
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.aa
  br i1 %i.ag, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.z, i64 noundef %i.aa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !21, !alias.scope !100
  %i.aj = icmp eq i64 %i.ai, 4611686018427387903
  br i1 %i.aj, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.cont.i.i unwind label %bb.f

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %._crit_edge
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %7, align 8, !tbaa !18, !alias.scope !100 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ab
  br i1 %i.an, label %.body, label %.body.sink.split

bb.g:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.065.081 = phi ptr [ %i.u, %.lr.ph ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.ao = load ptr, ptr %.sroa.065.081, align 8, !tbaa !18, !noalias !103
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.065.081, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !21, !noalias !103 ; 3 uses
  store ptr %i.x, ptr %5, align 8, !tbaa !12, !alias.scope !106
  store i64 0, ptr %i.y, align 8, !tbaa !21, !alias.scope !106
  store i8 0, ptr %i.x, align 8, !tbaa !22, !alias.scope !106
  %i.ar = add i64 %i.aq, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ar)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.as = load i64, ptr %i.y, align 8, !tbaa !21, !alias.scope !106
  %i.at = icmp eq i64 %i.as, 4611686018427387903
  br i1 %i.at, label %.invoke.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i19: ; preds = %bb.h
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i20 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i20: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i19
  %i.av = load i64, ptr %i.y, align 8, !tbaa !21, !alias.scope !106
  %i.aw = sub i64 4611686018427387903, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.aq
  br i1 %i.ax, label %.invoke.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i21

.invoke.i.i22:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i20, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.cont.i.i23 unwind label %.loopexit.split-lp

.cont.i.i23:                                      ; preds = %.invoke.i.i22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i20
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ao, i64 noundef %i.aq)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i21
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %.invoke.i.i22
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.az = load ptr, ptr %5, align 8, !tbaa !18, !alias.scope !106 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.x
  br i1 %i.ba, label %.body24, label %.body24.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i21
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  %i.bc = load i64, ptr %i.s, align 8, !tbaa !21
  %i.bd = sub i64 4611686018427387903, %i.bc
  %i.be = icmp ult i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc unwind label %.loopexit.split-lp69

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bf = load ptr, ptr %5, align 8, !tbaa !18
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.bf, i64 noundef %i.bb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit68 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bh = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.x
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.bh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.065.081, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.w
  br i1 %.not, label %._crit_edge, label %bb.g

.loopexit68:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp69:                             ; preds = %bb.j
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp69, %.loopexit68
  %lpad.phi72 = phi { ptr, i32 } [ %lpad.loopexit70, %.loopexit68 ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp69 ] ; 2 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.x
  br i1 %i.bl, label %.body24, label %.body24.sink.split

.body24.sink.split:                               ; preds = %bb.k, %bb.i
  %.sink = phi ptr [ %i.az, %bb.i ], [ %i.bk, %bb.k ]
  %.pn13.ph = phi { ptr, i32 } [ %lpad.phi, %bb.i ], [ %lpad.phi72, %bb.k ]
  call void @_ZdlPv(ptr noundef %.sink) #23
  br label %.body24

.body24:                                          ; preds = %bb.i, %bb.k, %.body24.sink.split
  %.pn13 = phi { ptr, i32 } [ %.pn13.ph, %.body24.sink.split ], [ %lpad.phi, %bb.i ], [ %lpad.phi72, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.t

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !21, !noalias !109 ; 2 uses
  %i.bo = load i64, ptr %i.ac, align 8, !tbaa !21, !noalias !109
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc32 unwind label %bb.r

.noexc32:                                         ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.br = load ptr, ptr %2, align 8, !tbaa !18, !noalias !109
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.br, i64 noundef %i.bn)
          to label %.noexc33 unwind label %bb.r   ; 6 uses

.noexc33:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.bt, ptr %6, align 8, !tbaa !12, !alias.scope !109
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !18 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 5 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

bb.m:                                             ; preds = %.noexc33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !21 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i64 %i.ca, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %.noexc33
  store ptr %i.bu, ptr %6, align 8, !tbaa !18, !alias.scope !109
  %i.cb = load i64, ptr %i.bv, align 8, !tbaa !22
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !22, !alias.scope !109
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.m
  %i.cc = phi i64 [ %i.by, %bb.m ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !21, !alias.scope !109
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !18
  store i64 0, ptr %i.cd, align 8, !tbaa !21
  store i8 0, ptr %i.bv, align 8, !tbaa !22
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.cf = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !112 ; 2 uses
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !21, !noalias !112
  %i.ch = sub i64 4611686018427387903, %i.cg
  %i.ci = icmp ult i64 %i.ch, %i.cf
  br i1 %i.ci, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i34

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc38 unwind label %bb.s

.noexc38:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i34: ; preds = %bb.n
  %i.cj = load ptr, ptr %4, align 8, !tbaa !18, !noalias !112
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.cj, i64 noundef %i.cf)
          to label %.noexc39 unwind label %bb.s   ; 6 uses

.noexc39:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i34
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cl, ptr %0, align 8, !tbaa !12, !alias.scope !112
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !18 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 5 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

bb.p:                                             ; preds = %.noexc39
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !21 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cr)
  %i.cs = add nuw nsw i64 %i.cq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cl, ptr noundef nonnull align 8 dereferenceable(1) %i.cn, i64 %i.cs, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %.noexc39
  store ptr %i.cm, ptr %0, align 8, !tbaa !18, !alias.scope !112
  %i.ct = load i64, ptr %i.cn, align 8, !tbaa !22
  store i64 %i.ct, ptr %i.cl, align 8, !tbaa !22, !alias.scope !112
  %.phi.trans.insert.i36 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.pre.i37 = load i64, ptr %.phi.trans.insert.i36, align 8, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.p
  %i.cu = phi i64 [ %i.cq, %bb.p ], [ %.pre.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !21, !alias.scope !112
  store ptr %i.cn, ptr %i.ck, align 8, !tbaa !18
  store i64 0, ptr %i.cv, align 8, !tbaa !21
  store i8 0, ptr %i.cn, align 8, !tbaa !22
  %i.cx = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.bt
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.cx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  %i.cz = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.ab
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  call void @_ZdlPv(ptr noundef %i.cz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.db = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.r
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  call void @_ZdlPv(ptr noundef %i.db) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.dd = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.f
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  call void @_ZdlPv(ptr noundef %i.dd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30, %bb.l
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i34, %bb.o
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bt
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.dh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.r
  %.pn = phi { ptr, i32 } [ %i.df, %bb.r ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.dg, %bb.s ] ; 2 uses
  %i.dj = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.ab
  br i1 %i.dk, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %bb.f
  %.sink107 = phi ptr [ %i.am, %bb.f ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.al, %bb.f ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ]
  call void @_ZdlPv(ptr noundef %.sink107) #23
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %.body.sink.split
  %.pn.pn = phi { ptr, i32 } [ %.pn.pn.ph, %.body.sink.split ], [ %i.al, %bb.f ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.t

bb.t:                                             ; preds = %.body, %.body24
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %.body24 ], [ %.pn.pn, %.body ]
  %i.dl = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.r
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.dl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.dn = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.f
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  call void @_ZdlPv(ptr noundef %i.dn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn13.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20ForeignKeyConstraintC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb10ConstraintC2ENS_14ConstraintTypeE(ptr noundef nonnull align 8 dereferenceable(9) %0, i8 noundef zeroext 4)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb20ForeignKeyConstraintE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.d, align 8, !tbaa !21
  store i8 0, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.g, align 8, !tbaa !21
  store i8 0, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20ForeignKeyConstraintC2ENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEES9_NS_14ForeignKeyInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb10ConstraintC2ENS_14ConstraintTypeE(ptr noundef nonnull align 8 dereferenceable(9) %0, i8 noundef zeroext 4)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb20ForeignKeyConstraintE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !55
  store <2 x ptr> %i.b, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  store ptr %i.e, ptr %i.c, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load <2 x ptr>, ptr %2, align 8, !tbaa !55
  store <2 x ptr> %i.g, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  store ptr %i.j, ptr %i.h, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i8, ptr %3, align 8, !tbaa !115
  store i8 %i.l, ptr %i.k, align 8, !tbaa !115
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !12
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.p, ptr %i.m, align 8, !tbaa !18
  %i.w = load i64, ptr %i.q, align 8, !tbaa !22
  store i64 %i.w, ptr %i.o, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.y, ptr %i.z, align 8, !tbaa !21
  store ptr %i.q, ptr %i.n, align 8, !tbaa !18
  store i64 0, ptr %i.x, align 8, !tbaa !21
  store i8 0, ptr %i.q, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !12
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZN6duckdb14ForeignKeyInfoC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !18
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !22
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !22
  br label %_ZN6duckdb14ForeignKeyInfoC2EOS0_.exit

_ZN6duckdb14ForeignKeyInfoC2EOS0_.exit:           ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.am, ptr %i.an, align 8, !tbaa !21
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !18
  store i64 0, ptr %i.al, align 8, !tbaa !21
  store i8 0, ptr %i.ae, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !124
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !124
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !125
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !124
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !124
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !125
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb20ForeignKeyConstraint8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !126
  %i.c = icmp eq i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !12
  br i1 %i.c, label %._crit_edge.i.i, label %._crit_edge.i.i75

._crit_edge.i.i:                                  ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.d, ptr noundef nonnull align 1 dereferenceable(13) @.str.8, i64 13, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  store i64 13, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %i.f, align 1, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !60
  %.not102 = icmp eq ptr %i.i, %i.j
  br i1 %.not102, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit32.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit32.peel: ; preds = %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0)
          to label %bb.b unwind label %.loopexit.split-lp109

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit32.peel
  invoke void @_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 noundef signext 34, i1 noundef zeroext true, i8 noundef zeroext 4)
          to label %bb.c unwind label %.loopexit.split-lp109

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.k, align 8, !tbaa !21   ; 2 uses
end_hunk_0
