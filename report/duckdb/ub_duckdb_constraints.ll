inline.NumInlined: 733
inline.NumDeleted: 412
begin_hunk_0_@_ZNK6duckdb16UniqueConstraint12IsPrimaryKeyEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !43, !range !57, !noundef !58
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define range(i64 0, -1) i64 @_ZNK6duckdb16UniqueConstraint8GetIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
define void @_ZN6duckdb16UniqueConstraint8SetIndexENS_12LogicalIndexE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(49) initializes((16, 24)) %0, i64 %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.a, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16UniqueConstraint14GetColumnNamesB5cxx11Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(49) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb16UniqueConstraint21GetColumnNamesMutableB5cxx11Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(49) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16UniqueConstraint17GetLogicalIndexesERKNS_10ColumnListE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.42") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(105) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.n = phi ptr [ null, %.lr.ph ], [ %i.av, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %i.o = phi ptr [ null, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.016.028 = phi ptr [ %i.i, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 13 uses
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
  %3 = sub i64 %i.t, %i.u
  %4 = add i64 %3, -8                             ; 2 uses
  %i.ag = lshr i64 %4, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 24
  %i.ai = sub i64 %i.u, %i.af
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ad, i64 %i.aj  ; 2 uses
  %i.al = getelementptr i8, ptr %i.p, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.am ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.p, i64 %i.am ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.an = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep51, align 8, !tbaa !36, !alias.scope !88, !noalias !85
  %wide.load52 = load <2 x i64>, ptr %i.an, align 8, !tbaa !36, !alias.scope !88, !noalias !85
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !36, !alias.scope !85, !noalias !88
  store <2 x i64> %wide.load52, ptr %i.ao, align 8, !tbaa !36, !alias.scope !85, !noalias !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader54

.lr.ph.i.i.i.i.i.i.i.preheader54:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader54, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader54 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader54 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !36, !alias.scope !88, !noalias !85
  store i64 %i.aq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !36, !alias.scope !85, !noalias !88
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !93

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc13
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc13 ], [ %i.ak, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #23
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.at, ptr %i.l, align 8, !tbaa !84
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab ; 2 uses
  store ptr %i.au, ptr %i.m, align 8, !tbaa !83
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.g
  %i.av = phi ptr [ %i.au, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.n, %bb.g ]
  %i.aw = phi ptr [ %i.at, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.s, %bb.g ]
  %i.ax = phi ptr [ %i.ad, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.p, %bb.g ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.016.028, i64 32 ; 2 uses
  %.not21 = icmp eq ptr %i.ay, %i.k
  br i1 %.not21, label %.loopexit, label %bb.d

bb.k:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %0, align 8
  br label %bb.l

.loopexit22:                                      ; preds = %bb.e, %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %0, align 8
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit22, %.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.az, %bb.k ], [ %lpad.loopexit, %.loopexit22 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #23
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit

.loopexit:                                        ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit, %bb.c
  %.lcssa23 = phi ptr [ null, %bb.c ], [ %i.ax, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ]
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
define void @_ZNK6duckdb16UniqueConstraint7GetNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
end_hunk_0
begin_hunk_1_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !21
  %i.m = load ptr, ptr %.014, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !171

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #21 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.014
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.w, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %2, %bb.e ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i, align 8, !tbaa !18 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  call void @_ZdlPv(ptr noundef %i.t) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %.014
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !79

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, %bb.e
  invoke void @__cxa_rethrow() #22
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.x

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #25
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  unreachable
}

declare noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_19IndexConstraintTypeEEEPKcT_(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ForeignKeyInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !115
  store i8 %i.c, ptr %0, align 8, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !12
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.i, ptr %i.b, align 8, !tbaa !36
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !18
  %i.l = load i64, ptr %i.b, align 8, !tbaa !36
  store i64 %i.l, ptr %i.f, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !22
  store i8 %i.n, ptr %i.m, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !21
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !12
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !18   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.x, ptr %i.a, align 8, !tbaa !36
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i12, label %._crit_edge.i.i11

.noexc.i12:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i12
  store ptr %i.z, ptr %i.s, align 8, !tbaa !18
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !22
  br label %._crit_edge.i.i11

._crit_edge.i.i11:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.x, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i11
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !22
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !22
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i11
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !21
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !172 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !132 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i, label %.noexc15, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp ugt i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i, !prof !26

.noexc.i.i.i:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc14 unwind label %bb.j

.noexc14:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24
          to label %.noexc15 unwind label %bb.j

.noexc15:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i, %bb.f
  %i.ar = phi ptr [ null, %bb.f ], [ %i.aq, %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i ] ; 8 uses
  store ptr %i.ar, ptr %i.ah, align 8, !tbaa !132
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !172
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.at, ptr %i.au, align 8, !tbaa !125
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !124 ; 6 uses
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !124 ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit31, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc15
  %i.ax = ptrtoaddr ptr %i.av to i64
  %i.ay = ptrtoaddr ptr %i.ar to i64
  %2 = ptrtoint ptr %i.aw to i64
  %3 = ptrtoint ptr %i.av to i64
  %i.az = add i64 %2, -8
  %i.ba = sub i64 %i.az, %3                       ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 72
  %i.bd = sub i64 %i.ax, %i.ay
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.be = shl i64 %n.vec, 3                       ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ar, i64 %i.be  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bh ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.av, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep44, align 8, !tbaa !36
  %wide.load45 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !36
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !36
  store <2 x i64> %wide.load45, ptr %i.bj, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %.loopexit31, label %.lr.ph.i.i.i.i.i.i.preheader67

.lr.ph.i.i.i.i.i.i.preheader67:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bf, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader67, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader67 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader67 ] ; 2 uses
  %i.bl = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !36
  store i64 %i.bl, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.aw
  br i1 %.not.i.i.i.i.i.i, label %.loopexit31, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !174

.loopexit31:                                      ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ar, %.noexc15 ], [ %i.bf, %middle.block ], [ %i.bn, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.as, align 8, !tbaa !172
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !172 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !132 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i16 = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i.i.i.i16, label %.noexc26, label %bb.h

bb.h:                                             ; preds = %.loopexit31
  %i.bw = icmp ugt i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %.noexc.i.i.i24, label %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i17, !prof !26

.noexc.i.i.i24:                                   ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc25 unwind label %bb.k

.noexc25:                                         ; preds = %.noexc.i.i.i24
  unreachable

_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i17: ; preds = %bb.h
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #24
          to label %.noexc26 unwind label %bb.k

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i17, %.loopexit31
  %i.by = phi ptr [ null, %.loopexit31 ], [ %i.bx, %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i17 ] ; 8 uses
  store ptr %i.by, ptr %i.bo, align 8, !tbaa !132
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !172
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !125
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !124 ; 6 uses
  %i.cd = load ptr, ptr %i.bq, align 8, !tbaa !124 ; 3 uses
  %.not7.i.i.i.i.i.i18 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not7.i.i.i.i.i.i18, label %.loopexit, label %.lr.ph.i.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i.i19.preheader:                   ; preds = %.noexc26
  %i.ce = ptrtoaddr ptr %i.cc to i64
  %i.cf = ptrtoaddr ptr %i.by to i64
  %4 = ptrtoint ptr %i.cd to i64
  %5 = ptrtoint ptr %i.cc to i64
  %i.cg = add i64 %4, -8
  %i.ch = sub i64 %i.cg, %5                       ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check50 = icmp ult i64 %i.ch, 72
  %i.ck = sub i64 %i.ce, %i.cf
  %diff.check48 = icmp ugt i64 %i.ck, -32
  %or.cond65 = or i1 %min.iters.check50, %diff.check48
  br i1 %or.cond65, label %.lr.ph.i.i.i.i.i.i19.preheader66, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.i.i.i.i.i.i19.preheader
  %n.vec53 = and i64 %i.cj, 4611686018427387900   ; 3 uses
  %i.cl = shl i64 %n.vec53, 3                     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.by, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cc, i64 %i.cl
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next60, %vector.body54 ] ; 2 uses
  %i.co = shl i64 %index55, 3                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.by, i64 %i.co ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.cc, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load58 = load <2 x i64>, ptr %next.gep57, align 8, !tbaa !36
  %wide.load59 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !36
  %i.cq = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x i64> %wide.load58, ptr %next.gep56, align 8, !tbaa !36
  store <2 x i64> %wide.load59, ptr %i.cq, align 8, !tbaa !36
  %index.next60 = add nuw i64 %index55, 4         ; 2 uses
  %i.cr = icmp eq i64 %index.next60, %n.vec53
  br i1 %i.cr, label %middle.block61, label %vector.body54, !llvm.loop !175

middle.block61:                                   ; preds = %vector.body54
  %cmp.n62 = icmp eq i64 %i.cj, %n.vec53
  br i1 %cmp.n62, label %.loopexit, label %.lr.ph.i.i.i.i.i.i19.preheader66

.lr.ph.i.i.i.i.i.i19.preheader66:                 ; preds = %.lr.ph.i.i.i.i.i.i19.preheader, %middle.block61
  %.09.i.i.i.i.i.i20.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i19.preheader ], [ %i.cm, %middle.block61 ]
  %.sroa.04.08.i.i.i.i.i.i21.ph = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i19.preheader ], [ %i.cn, %middle.block61 ]
  br label %.lr.ph.i.i.i.i.i.i19

.lr.ph.i.i.i.i.i.i19:                             ; preds = %.lr.ph.i.i.i.i.i.i19.preheader66, %.lr.ph.i.i.i.i.i.i19
  %.09.i.i.i.i.i.i20 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i19 ], [ %.09.i.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i.i19.preheader66 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i21 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i19 ], [ %.sroa.04.08.i.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i.i19.preheader66 ] ; 2 uses
  %i.cs = load i64, ptr %.sroa.04.08.i.i.i.i.i.i21, align 8, !tbaa !36
  store i64 %i.cs, ptr %.09.i.i.i.i.i.i20, align 8, !tbaa !36
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i21, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i22 = icmp eq ptr %i.ct, %i.cd
  br i1 %.not.i.i.i.i.i.i22, label %.loopexit, label %.lr.ph.i.i.i.i.i.i19, !llvm.loop !176

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i19, %middle.block61, %.noexc26
  %.0.lcssa.i.i.i.i.i.i23 = phi ptr [ %i.by, %.noexc26 ], [ %i.cm, %middle.block61 ], [ %i.cu, %.lr.ph.i.i.i.i.i.i19 ]
  store ptr %.0.lcssa.i.i.i.i.i.i23, ptr %i.bz, align 8, !tbaa !172
  ret void

bb.i:                                             ; preds = %.noexc.i12
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i17, %.noexc.i.i.i24
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %i.ah, align 8, !tbaa !132 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPv(ptr noundef nonnull %i.cy) #23
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit: ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.j ], [ %i.cx, %bb.k ], [ %i.cx, %bb.l ] ; 2 uses
  %i.cz = load ptr, ptr %i.s, align 8, !tbaa !18  ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.u
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.cz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.i ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit ]
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.f
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.db) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSN6duckdb16ParsedExpressionE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!17 = distinct !{!17, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!18 = !{!19, !14, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !20, i64 8, !5, i64 16}
!20 = !{!"long", !5, i64 0}
!21 = !{!19, !20, i64 8}
!22 = !{!5, !5, i64 0}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!25 = distinct !{!25, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = distinct !{null}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN6duckdb9make_uniqINS_15CheckConstraintEJNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!30 = distinct !{!30, !"_ZN6duckdb9make_uniqINS_15CheckConstraintEJNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!31 = distinct !{null, null, null}
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb10ConstraintELb0EE", !34, i64 0}
!34 = !{!"p1 _ZTSN6duckdb10ConstraintE", !11, i64 0}
!35 = distinct !{null, null}
!36 = !{!20, !20, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRKNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!39 = distinct !{!39, !"_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRKNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!40 = distinct !{null}
!41 = !{!42, !20, i64 0}
!42 = !{!"_ZTSN6duckdb12LogicalIndexE", !20, i64 0}
!43 = !{!44, !53, i64 48}
!44 = !{!"_ZTSN6duckdb16UniqueConstraintE", !45, i64 0, !42, i64 16, !47, i64 24, !53, i64 48}
!45 = !{!"_ZTSN6duckdb10ConstraintE", !46, i64 8}
!46 = !{!"_ZTSN6duckdb14ConstraintTypeE", !5, i64 0}
!47 = !{!"_ZTSN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEE", !48, i64 0}
!48 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !49, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!53 = !{!"bool", !5, i64 0}
!54 = !{ptr @_ZN6duckdb16UniqueConstraintC2ENS_12LogicalIndexEb}
end_hunk_1
