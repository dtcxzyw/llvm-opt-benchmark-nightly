inline.NumInlined: 29987
inline.NumDeleted: 10454
begin_hunk_0_@_ZN6duckdb17InternalExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #60
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !60

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !56, !noalias !599
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #60
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58, !noalias !599
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58, !noalias !599
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  invoke void @_ZN6duckdb9Exception6ToJSONENS_13ExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i8 noundef zeroext 31, ptr noundef nonnull readonly align 8 dereferenceable(32) %5)
          to label %.noexc unwind label %bb.f, !inline_history !62

.noexc:                                           ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN6duckdb9ExceptionC2ENS_13ExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.e, !inline_history !63

bb.e:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #60, !inline_history !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %.body

_ZN6duckdb9ExceptionC2ENS_13ExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.noexc
  %i.o = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %_ZN6duckdb9ExceptionC2ENS_13ExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  call void @_ZdlPv(ptr noundef %i.o) #60, !inline_history !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i: ; preds = %_ZN6duckdb9ExceptionC2ENS_13ExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17InternalExceptionE, i64 16), ptr %0, align 8, !tbaa !35
  %i.r = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i
  call void @_ZdlPv(ptr noundef %i.r) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %i.v = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.v) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25BoxRendererImplementation10RenderTypeB5cxx11ERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(672) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !602  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null                ; 2 uses
  br i1 %.not.i, label %_ZNK6duckdb11LogicalType8HasAliasEv.exit, label %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i

_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !139
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZNK6duckdb11LogicalType8HasAliasEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !178, !alias.scope !603
  %i.i = load ptr, ptr %5, align 8, !tbaa !16, !noalias !603 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !139, !noalias !603 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58, !noalias !603
  store i64 %i.k, ptr %i.b, align 8, !tbaa !33, !noalias !603
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.m, ptr %0, align 8, !tbaa !16, !alias.scope !603
  %i.n = load i64, ptr %i.b, align 8, !tbaa !33, !noalias !603
  store i64 %i.n, ptr %i.h, align 8, !tbaa !79, !alias.scope !603
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.b
  %i.o = phi ptr [ %i.m, %.noexc ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !79
  store i8 %i.p, ptr %i.o, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.b, align 8, !tbaa !33, !noalias !603 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !139, !alias.scope !603
  %i.s = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !603
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58, !noalias !603
  %i.u = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !603 ; 6 uses
  %i.v = load i64, ptr %i.r, align 8, !tbaa !139, !alias.scope !603 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %.not6.i.i = icmp samesign eq i64 %i.v, 0
  br i1 %.not6.i.i, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %min.iters.check = icmp ult i64 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check91 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 24
  %n.vec = and i64 %i.v, -32                      ; 4 uses
  %i.x = getelementptr i8, ptr %i.u, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %index ; 3 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !79 ; 3 uses
  %wide.load92 = load <16 x i8>, ptr %i.y, align 1, !tbaa !79 ; 3 uses
  %i.z = add <16 x i8> %wide.load, splat (i8 -65)
  %i.aa = add <16 x i8> %wide.load92, splat (i8 -65)
  %i.ab = icmp ult <16 x i8> %i.z, splat (i8 26)
  %i.ac = icmp ult <16 x i8> %i.aa, splat (i8 26)
  %8 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.ad = or disjoint <16 x i8> %wide.load92, splat (i8 32)
  %i.ae = select <16 x i1> %i.ab, <16 x i8> %8, <16 x i8> %wide.load
  %9 = select <16 x i1> %i.ac, <16 x i8> %i.ad, <16 x i8> %wide.load92
  store <16 x i8> %i.ae, ptr %next.gep, align 1, !tbaa !79
  store <16 x i8> %9, ptr %i.y, align 1, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !606

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !607

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec94 = and i64 %i.v, -8                     ; 3 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %n.vec94
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.u, i64 %index95 ; 2 uses
  %wide.load97 = load <8 x i8>, ptr %next.gep96, align 1, !tbaa !79 ; 3 uses
  %i.ah = add <8 x i8> %wide.load97, splat (i8 -65)
  %i.ai = icmp ult <8 x i8> %i.ah, splat (i8 26)
  %10 = or disjoint <8 x i8> %wide.load97, splat (i8 32)
  %11 = select <8 x i1> %i.ai, <8 x i8> %10, <8 x i8> %wide.load97
  store <8 x i8> %11, ptr %next.gep96, align 1, !tbaa !79
  %index.next98 = add nuw i64 %index95, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next98, %n.vec94
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !608

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %i.v, %n.vec94
  br i1 %cmp.n99, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ak = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !79 ; 3 uses
  %i.al = add i8 %i.ak, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.al, 26
  %i.am = or disjoint i8 %i.ak, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.am, i8 %i.ak
  store i8 %spec.select.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !79
  %i.an = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.w
  br i1 %.not.i.i, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !609

_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ao = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZdlPv(ptr noundef %i.ao) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.s

bb.e:                                             ; preds = %.noexc.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.as) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %common.resume

_ZNK6duckdb11LogicalType8HasAliasEv.exit:         ; preds = %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i, %bb.a
  %i.av = load i8, ptr %2, align 8, !tbaa !131
  switch i8 %i.av, label %bb.o [
    i8 11, label %._crit_edge.i.i
    i8 12, label %._crit_edge.i.i13
    i8 13, label %._crit_edge.i.i17
    i8 14, label %._crit_edge.i.i21
    i8 50, label %._crit_edge.i.i25
    i8 28, label %._crit_edge.i.i29
    i8 29, label %._crit_edge.i.i33
    i8 30, label %._crit_edge.i.i37
    i8 31, label %._crit_edge.i.i41
    i8 49, label %._crit_edge.i.i45
    i8 101, label %bb.f
  ]

._crit_edge.i.i:                                  ; preds = %_ZNK6duckdb11LogicalType8HasAliasEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !178
  store i32 947154537, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.ax, align 8, !tbaa !139
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.ay, align 4, !tbaa !79
  br label %bb.s

._crit_edge.i.i13:                                ; preds = %_ZNK6duckdb11LogicalType8HasAliasEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.az, ptr noundef nonnull align 1 dereferenceable(5) @.str.26, i64 5, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.ba, align 8, !tbaa !139
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.bb, align 1, !tbaa !79
  br label %bb.s

._crit_edge.i.i17:                                ; preds = %_ZNK6duckdb11LogicalType8HasAliasEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bc, ptr noundef nonnull align 1 dereferenceable(5) @.str.27, i64 5, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.bd, align 8, !tbaa !139
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.be, align 1, !tbaa !79
  br label %bb.s

._crit_edge.i.i21:                                ; preds = %_ZNK6duckdb11LogicalType8HasAliasEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bf, ptr %0, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bf, ptr noundef nonnull align 1 dereferenceable(5) @.str.28, i64 5, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.bg, align 8, !tbaa !139
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.bh, align 1, !tbaa !79
  br label %bb.s

._crit_edge.i.i25:                                ; preds = %_ZNK6duckdb11LogicalType8HasAliasEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bi, ptr noundef nonnull align 1 dereferenceable(6) @.str.29, i64 6, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.bj, align 8, !tbaa !139
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.bk, align 2, !tbaa !79
  br label %bb.s

._crit_edge.i.i29:                                ; preds = %_ZNK6duckdb11LogicalType8HasAliasEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bl, ptr noundef nonnull align 1 dereferenceable(5) @.str.30, i64 5, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.bm, align 8, !tbaa !139
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.bn, align 1, !tbaa !79
  br label %bb.s

._crit_edge.i.i33:                                ; preds = %_ZNK6duckdb11LogicalType8HasAliasEv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bo, ptr %0, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bo, ptr noundef nonnull align 1 dereferenceable(6) @.str.31, i64 6, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.bp, align 8, !tbaa !139
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.bq, align 2, !tbaa !79
  br label %bb.s

._crit_edge.i.i37:                                ; preds = %_ZNK6duckdb11LogicalType8HasAliasEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.br, ptr %0, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.br, ptr noundef nonnull align 1 dereferenceable(6) @.str.32, i64 6, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.bs, align 8, !tbaa !139
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.bt, align 2, !tbaa !79
  br label %bb.s

._crit_edge.i.i41:                                ; preds = %_ZNK6duckdb11LogicalType8HasAliasEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bu, ptr noundef nonnull align 1 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.bv, align 8, !tbaa !139
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.bw, align 2, !tbaa !79
  br label %bb.s

._crit_edge.i.i45:                                ; preds = %_ZNK6duckdb11LogicalType8HasAliasEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bx, ptr %0, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bx, ptr noundef nonnull align 1 dereferenceable(7) @.str.34, i64 7, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.by, align 8, !tbaa !139
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.bz, align 1, !tbaa !79
  br label %bb.s

bb.f:                                             ; preds = %_ZNK6duckdb11LogicalType8HasAliasEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  br i1 %.not.i, label %bb.g, label %_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE.exit

bb.g:                                             ; preds = %bb.f
  %i.ca = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2075, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.l unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cd = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.cd) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br i1 %.0.i.i.i, label %bb.k, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br i1 %.0.i.i.i, label %bb.k, label %common.resume

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ca) #58
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.k ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE.exit: ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  call void @_ZN6duckdb25BoxRendererImplementation10RenderTypeB5cxx11ERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(672) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.cg)
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.ch = load ptr, ptr %6, align 8, !tbaa !16, !noalias !610
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !139, !noalias !610 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ck, ptr %0, align 8, !tbaa !178, !alias.scope !613
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.cl, align 8, !tbaa !139, !alias.scope !613
  store i8 0, ptr %i.ck, align 8, !tbaa !79, !alias.scope !613
  %i.cm = add i64 %i.cj, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cm)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE.exit
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !139, !alias.scope !613
  %i.co = sub i64 4611686018427387903, %i.cn
  %i.cp = icmp ult i64 %i.co, %i.cj
  br i1 %i.cp, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.m
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ch, i64 noundef %i.cj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cr = load i64, ptr %i.cl, align 8, !tbaa !139, !alias.scope !613
  %i.cs = and i64 %i.cr, -2
  %i.ct = icmp eq i64 %i.cs, 4611686018427387902
  br i1 %i.ct, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2089) #59
          to label %.cont.i.i unwind label %bb.n

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !613 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ck
  br i1 %i.cx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.cw) #60
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.cy = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @_ZdlPv(ptr noundef %i.cy) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %bb.s

.body:                                            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.db = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.db) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %common.resume

bb.o:                                             ; preds = %_ZNK6duckdb11LogicalType8HasAliasEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  call void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.de, ptr %0, align 8, !tbaa !178, !alias.scope !616
  %i.df = load ptr, ptr %7, align 8, !tbaa !16, !noalias !616 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !139, !noalias !616 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !616
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !33, !noalias !616
  %i.di = icmp ugt i64 %i.dh, 15
  br i1 %i.di, label %.noexc.i.i63, label %._crit_edge.i.i.i55

.noexc.i.i63:                                     ; preds = %bb.o
  %i.dj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc64 unwind label %bb.r   ; 2 uses

.noexc64:                                         ; preds = %.noexc.i.i63
  store ptr %i.dj, ptr %0, align 8, !tbaa !16, !alias.scope !616
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !616
  store i64 %i.dk, ptr %i.de, align 8, !tbaa !79, !alias.scope !616
  br label %._crit_edge.i.i.i55

._crit_edge.i.i.i55:                              ; preds = %.noexc64, %bb.o
  %i.dl = phi ptr [ %i.dj, %.noexc64 ], [ %i.de, %bb.o ] ; 2 uses
  switch i64 %i.dh, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i55
  %i.dm = load i8, ptr %i.df, align 1, !tbaa !79
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56

bb.q:                                             ; preds = %._crit_edge.i.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %i.df, i64 %i.dh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56: ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i55
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !616 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !139, !alias.scope !616
  %i.dp = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !616
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dn
  store i8 0, ptr %i.dq, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !616
  %i.dr = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !616 ; 6 uses
  %i.ds = load i64, ptr %i.do, align 8, !tbaa !139, !alias.scope !616 ; 9 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ds
  %.not6.i.i57 = icmp samesign eq i64 %i.ds, 0
  br i1 %.not6.i.i57, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit65, label %iter.check116

iter.check116:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56
  %min.iters.check101 = icmp ult i64 %i.ds, 8
  br i1 %min.iters.check101, label %.lr.ph.i.i58.preheader, label %vector.main.loop.iter.check102

vector.main.loop.iter.check102:                   ; preds = %iter.check116
  %min.iters.check103 = icmp ult i64 %i.ds, 32
  br i1 %min.iters.check103, label %vec.epilog.ph120, label %vector.ph104

vector.ph104:                                     ; preds = %vector.main.loop.iter.check102
  %n.mod.vf105 = and i64 %i.ds, 24
  %n.vec106 = and i64 %i.ds, -32                  ; 4 uses
  %i.du = getelementptr i8, ptr %i.dr, i64 %n.vec106
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph104
  %index108 = phi i64 [ 0, %vector.ph104 ], [ %index.next112, %vector.body107 ] ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.dr, i64 %index108 ; 3 uses
  %i.dv = getelementptr i8, ptr %next.gep109, i64 16 ; 2 uses
  %wide.load110 = load <16 x i8>, ptr %next.gep109, align 1, !tbaa !79 ; 3 uses
  %wide.load111 = load <16 x i8>, ptr %i.dv, align 1, !tbaa !79 ; 3 uses
  %i.dw = add <16 x i8> %wide.load110, splat (i8 -65)
  %i.dx = add <16 x i8> %wide.load111, splat (i8 -65)
  %i.dy = icmp ult <16 x i8> %i.dw, splat (i8 26)
  %i.dz = icmp ult <16 x i8> %i.dx, splat (i8 26)
  %12 = or disjoint <16 x i8> %wide.load110, splat (i8 32)
  %i.ea = or disjoint <16 x i8> %wide.load111, splat (i8 32)
  %i.eb = select <16 x i1> %i.dy, <16 x i8> %12, <16 x i8> %wide.load110
  %13 = select <16 x i1> %i.dz, <16 x i8> %i.ea, <16 x i8> %wide.load111
  store <16 x i8> %i.eb, ptr %next.gep109, align 1, !tbaa !79
  store <16 x i8> %13, ptr %i.dv, align 1, !tbaa !79
  %index.next112 = add nuw i64 %index108, 32      ; 2 uses
  %i.ec = icmp eq i64 %index.next112, %n.vec106
  br i1 %i.ec, label %middle.block113, label %vector.body107, !llvm.loop !619

middle.block113:                                  ; preds = %vector.body107
  %cmp.n114 = icmp eq i64 %i.ds, %n.vec106
  br i1 %cmp.n114, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit65, label %vec.epilog.iter.check118

vec.epilog.iter.check118:                         ; preds = %middle.block113
  %min.epilog.iters.check119 = icmp eq i64 %n.mod.vf105, 0
  br i1 %min.epilog.iters.check119, label %.lr.ph.i.i58.preheader, label %vec.epilog.ph120, !prof !607

vec.epilog.ph120:                                 ; preds = %vector.main.loop.iter.check102, %vec.epilog.iter.check118
  %vec.epilog.resume.val115 = phi i64 [ %n.vec106, %vec.epilog.iter.check118 ], [ 0, %vector.main.loop.iter.check102 ]
  %n.vec122 = and i64 %i.ds, -8                   ; 3 uses
  %i.ed = getelementptr i8, ptr %i.dr, i64 %n.vec122
  br label %vec.epilog.vector.body123

vec.epilog.vector.body123:                        ; preds = %vec.epilog.vector.body123, %vec.epilog.ph120
  %index124 = phi i64 [ %vec.epilog.resume.val115, %vec.epilog.ph120 ], [ %index.next127, %vec.epilog.vector.body123 ] ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.dr, i64 %index124 ; 2 uses
  %wide.load126 = load <8 x i8>, ptr %next.gep125, align 1, !tbaa !79 ; 3 uses
  %i.ee = add <8 x i8> %wide.load126, splat (i8 -65)
  %i.ef = icmp ult <8 x i8> %i.ee, splat (i8 26)
  %14 = or disjoint <8 x i8> %wide.load126, splat (i8 32)
  %15 = select <8 x i1> %i.ef, <8 x i8> %14, <8 x i8> %wide.load126
  store <8 x i8> %15, ptr %next.gep125, align 1, !tbaa !79
  %index.next127 = add nuw i64 %index124, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.eg, label %vec.epilog.middle.block128, label %vec.epilog.vector.body123, !llvm.loop !620

vec.epilog.middle.block128:                       ; preds = %vec.epilog.vector.body123
  %cmp.n129 = icmp eq i64 %i.ds, %n.vec122
  br i1 %cmp.n129, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit65, label %.lr.ph.i.i58.preheader

.lr.ph.i.i58.preheader:                           ; preds = %iter.check116, %vec.epilog.iter.check118, %vec.epilog.middle.block128
  %.sroa.0.08.i.i59.ph = phi ptr [ %i.dr, %iter.check116 ], [ %i.du, %vec.epilog.iter.check118 ], [ %i.ed, %vec.epilog.middle.block128 ]
  br label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.preheader, %.lr.ph.i.i58
  %.sroa.0.08.i.i59 = phi ptr [ %i.ek, %.lr.ph.i.i58 ], [ %.sroa.0.08.i.i59.ph, %.lr.ph.i.i58.preheader ] ; 3 uses
  %i.eh = load i8, ptr %.sroa.0.08.i.i59, align 1, !tbaa !79 ; 3 uses
  %i.ei = add i8 %i.eh, -65
  %or.cond.i.i.i.i60 = icmp ult i8 %i.ei, 26
  %i.ej = or disjoint i8 %i.eh, 32
  %spec.select.i.i.i.i61 = select i1 %or.cond.i.i.i.i60, i8 %i.ej, i8 %i.eh
  store i8 %spec.select.i.i.i.i61, ptr %.sroa.0.08.i.i59, align 1, !tbaa !79
  %i.ek = getelementptr i8, ptr %.sroa.0.08.i.i59, i64 1 ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.ek, %i.dt
  br i1 %.not.i.i62, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit65, label %.lr.ph.i.i58, !llvm.loop !621

_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit65: ; preds = %.lr.ph.i.i58, %middle.block113, %vec.epilog.middle.block128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56
  %i.el = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit65
  call void @_ZdlPv(ptr noundef %i.el) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br label %bb.s

bb.r:                                             ; preds = %.noexc.i.i63
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %i.ep = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.ep) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br label %common.resume

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %._crit_edge.i.i45, %._crit_edge.i.i41, %._crit_edge.i.i37, %._crit_edge.i.i33, %._crit_edge.i.i29, %._crit_edge.i.i25, %._crit_edge.i.i21, %._crit_edge.i.i17, %._crit_edge.i.i13, %._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6duckdb11LogicalType8HasAliasEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !602  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit

_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !139
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !178
  %i.c = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !139  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i64 %i.e, ptr %i.a, align 8, !tbaa !33
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !16
  %i.h = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.h, ptr %i.b, align 8, !tbaa !79
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !79
  store i8 %i.j, ptr %i.i, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !139
  %i.m = load ptr, ptr %0, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.o = load ptr, ptr %0, align 8, !tbaa !16     ; 6 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !139  ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %.not6.i = icmp samesign eq i64 %i.p, 0
  br i1 %.not6.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN6duckdb10StringUtil5LowerERKS8_E3$_0ET0_T_SG_SF_T1_.exit", label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.p, 24
  %n.vec = and i64 %i.p, -32                      ; 4 uses
  %i.r = getelementptr i8, ptr %i.o, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %index ; 3 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !79 ; 3 uses
  %wide.load7 = load <16 x i8>, ptr %i.s, align 1, !tbaa !79 ; 3 uses
  %i.t = add <16 x i8> %wide.load, splat (i8 -65)
  %i.u = add <16 x i8> %wide.load7, splat (i8 -65)
  %i.v = icmp ult <16 x i8> %i.t, splat (i8 26)
  %i.w = icmp ult <16 x i8> %i.u, splat (i8 26)
  %2 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.x = or disjoint <16 x i8> %wide.load7, splat (i8 32)
  %i.y = select <16 x i1> %i.v, <16 x i8> %2, <16 x i8> %wide.load
  %3 = select <16 x i1> %i.w, <16 x i8> %i.x, <16 x i8> %wide.load7
  store <16 x i8> %i.y, ptr %next.gep, align 1, !tbaa !79
  store <16 x i8> %3, ptr %i.s, align 1, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !622

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN6duckdb10StringUtil5LowerERKS8_E3$_0ET0_T_SG_SF_T1_.exit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !607

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %i.p, -8                      ; 3 uses
  %i.aa = getelementptr i8, ptr %i.o, i64 %n.vec9
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.o, i64 %index10 ; 2 uses
  %wide.load12 = load <8 x i8>, ptr %next.gep11, align 1, !tbaa !79 ; 3 uses
  %i.ab = add <8 x i8> %wide.load12, splat (i8 -65)
  %i.ac = icmp ult <8 x i8> %i.ab, splat (i8 26)
  %4 = or disjoint <8 x i8> %wide.load12, splat (i8 32)
  %5 = select <8 x i1> %i.ac, <8 x i8> %4, <8 x i8> %wide.load12
  store <8 x i8> %5, ptr %next.gep11, align 1, !tbaa !79
  %index.next13 = add nuw i64 %index10, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next13, %n.vec9
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !623

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %i.p, %n.vec9
  br i1 %cmp.n14, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN6duckdb10StringUtil5LowerERKS8_E3$_0ET0_T_SG_SF_T1_.exit", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.sroa.0.08.i, align 1, !tbaa !79 ; 3 uses
  %i.af = add i8 %i.ae, -65
  %or.cond.i.i.i = icmp ult i8 %i.af, 26
  %i.ag = or disjoint i8 %i.ae, 32
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i8 %i.ag, i8 %i.ae
  store i8 %spec.select.i.i.i, ptr %.sroa.0.08.i, align 1, !tbaa !79
  %i.ah = getelementptr i8, ptr %.sroa.0.08.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %i.q
  br i1 %.not.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN6duckdb10StringUtil5LowerERKS8_E3$_0ET0_T_SG_SF_T1_.exit", label %.lr.ph.i, !llvm.loop !624

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN6duckdb10StringUtil5LowerERKS8_E3$_0ET0_T_SG_SF_T1_.exit": ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i64, align 8                      ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::vector.937", align 8   ; 9 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.duckdb::SQLIdentifier", align 8 ; 9 uses
  %15 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %26 = alloca %"class.duckdb::SQLIdentifier", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::allocator", align 1   ; 3 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::allocator", align 1   ; 4 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %38 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %43 = alloca %"class.std::allocator", align 1   ; 4 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.j = load i8, ptr %1, align 8, !tbaa !131
  %.not = icmp eq i8 %i.j, 4
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !602, !noalias !625 ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNK6duckdb11LogicalType16HasExtensionInfoEv.exit.thread577.thread, label %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i

_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !178, !alias.scope !625
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !139  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #58, !noalias !625
  store i64 %i.q, ptr %i.i, align 8, !tbaa !33, !noalias !625
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !16, !alias.scope !625
  %i.t = load i64, ptr %i.i, align 8, !tbaa !33, !noalias !625
  store i64 %i.t, ptr %i.n, align 8, !tbaa !79, !alias.scope !625
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i
  %i.u = phi ptr [ %i.s, %.noexc.i.i ], [ %i.n, %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i ] ; 2 uses
  switch i64 %i.q, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNK6duckdb11LogicalType8GetAliasB5cxx11Ev.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !79
  store i8 %i.v, ptr %i.u, align 1, !tbaa !79
  br label %_ZNK6duckdb11LogicalType8GetAliasB5cxx11Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNK6duckdb11LogicalType8GetAliasB5cxx11Ev.exit

_ZNK6duckdb11LogicalType16HasExtensionInfoEv.exit.thread577.thread: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !178, !alias.scope !625
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !139, !alias.scope !625
  store i8 0, ptr %i.w, align 8, !tbaa !79, !alias.scope !625
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i150

_ZNK6duckdb11LogicalType8GetAliasB5cxx11Ev.exit:  ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.z = load i64, ptr %i.i, align 8, !tbaa !33, !noalias !625 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !139, !alias.scope !625
  %i.ab = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !625
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #58, !noalias !625
  %.pre = load i64, ptr %i.aa, align 8, !tbaa !139
  %i.ad = icmp eq i64 %.pre, 0
  br i1 %i.ad, label %_ZNK6duckdb11LogicalType16HasExtensionInfoEv.exit.thread577, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb11LogicalType8GetAliasB5cxx11Ev.exit
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !602 ; 2 uses
  %.not.i138 = icmp eq ptr %i.ae, null
  br i1 %.not.i138, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i139

_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i139: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !628 ; 7 uses
  %.not2.i = icmp eq ptr %i.ag, null
  br i1 %.not2.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZN6duckdb12optional_ptrIKNS_17ExtensionTypeInfoELb1EEdeEv.exit

_ZN6duckdb12optional_ptrIKNS_17ExtensionTypeInfoELb1EEdeEv.exit: ; preds = %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i139
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #58
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ah, ptr %10, align 8, !tbaa !178, !alias.scope !630
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !139, !alias.scope !630
  store i8 0, ptr %i.ah, align 8, !tbaa !79, !alias.scope !630
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !633, !noalias !630
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !633, !noalias !630
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb12optional_ptrIKNS_17ExtensionTypeInfoELb1EEdeEv.exit
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader.i unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader.i: ; preds = %bb.f
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !635, !noalias !630
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !637, !noalias !630
  %.not.i142 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i142, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader.i
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit._crit_edge.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit27.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader.i
  %i.as = load i64, ptr %i.ai, align 8, !tbaa !139, !alias.scope !630
  %i.at = icmp eq i64 %i.as, 4611686018427387903
  br i1 %i.at, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit._crit_edge.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2089) #59
          to label %.noexc.i unwind label %bb.h

end_hunk_0
begin_hunk_1_@_ZNK6duckdb15FilenamePattern12SerializePosEv:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb15FilenamePattern17SerializeSegmentsEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::vector.1442") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2207   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2207 ; 4 uses
  %.not2223.i = icmp eq ptr %i.a, %i.c
  br i1 %.not2223.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.01225.i = phi i64 [ %spec.select.i, %bb.b ], [ 0, %bb.a ]
  %.sroa.019.024.i = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %.sroa.019.024.i, align 8, !tbaa !2199 ; 2 uses
  %.not17.not.i.not = icmp eq i8 %i.d, 2
  br i1 %.not17.not.i.not, label %_ZN6duckdb29SupportsLegacyFilenamePatternERKNS_6vectorINS_15FileNameSegmentELb1ESaIS1_EEE.exit.thread2, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i = icmp ne i8 %i.d, 0
  %i.e = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.01225.i, %i.e        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.024.i, i64 40 ; 2 uses
  %.not22.i = icmp eq ptr %i.f, %i.c
  br i1 %.not22.i, label %_ZN6duckdb29SupportsLegacyFilenamePatternERKNS_6vectorINS_15FileNameSegmentELb1ESaIS1_EEE.exit, label %.lr.ph.i

_ZN6duckdb29SupportsLegacyFilenamePatternERKNS_6vectorINS_15FileNameSegmentELb1ESaIS1_EEE.exit: ; preds = %bb.b
  %i.g = icmp eq i64 %spec.select.i, 1
  br i1 %i.g, label %bb.c, label %_ZN6duckdb29SupportsLegacyFilenamePatternERKNS_6vectorINS_15FileNameSegmentELb1ESaIS1_EEE.exit.thread2

bb.c:                                             ; preds = %_ZN6duckdb29SupportsLegacyFilenamePatternERKNS_6vectorINS_15FileNameSegmentELb1ESaIS1_EEE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.f

_ZN6duckdb29SupportsLegacyFilenamePatternERKNS_6vectorINS_15FileNameSegmentELb1ESaIS1_EEE.exit.thread2: ; preds = %.lr.ph.i, %_ZN6duckdb29SupportsLegacyFilenamePatternERKNS_6vectorINS_15FileNameSegmentELb1ESaIS1_EEE.exit
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = sdiv exact i64 %i.j, 40
  %i.l = icmp ugt i64 %i.k, 230584300921369395
  br i1 %i.l, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb15FileNameSegmentEE8allocateEmPKv.exit.i.i.i.i.i, !prof !81

.noexc.i.i.i:                                     ; preds = %_ZN6duckdb29SupportsLegacyFilenamePatternERKNS_6vectorINS_15FileNameSegmentELb1ESaIS1_EEE.exit.thread2
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #59
  unreachable

_ZNSt15__new_allocatorIN6duckdb15FileNameSegmentEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %_ZN6duckdb29SupportsLegacyFilenamePatternERKNS_6vectorINS_15FileNameSegmentELb1ESaIS1_EEE.exit.thread2
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #64
  br label %.thread

.thread:                                          ; preds = %bb.a, %_ZNSt15__new_allocatorIN6duckdb15FileNameSegmentEE8allocateEmPKv.exit.i.i.i.i.i
  %i.n = phi i64 [ %i.j, %_ZNSt15__new_allocatorIN6duckdb15FileNameSegmentEE8allocateEmPKv.exit.i.i.i.i.i ], [ 0, %bb.a ]
  %i.o = phi ptr [ %i.m, %_ZNSt15__new_allocatorIN6duckdb15FileNameSegmentEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !2208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !2203
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !2206
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb15FileNameSegmentESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.a, ptr %i.c, ptr noundef %i.o)
          to label %_ZN6duckdb6vectorINS_15FileNameSegmentELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.d

bb.d:                                             ; preds = %.thread
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN6duckdb15FileNameSegmentESaIS1_EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #60
  br label %_ZNSt12_Vector_baseIN6duckdb15FileNameSegmentESaIS1_EED2Ev.exit.i.i

_ZNSt12_Vector_baseIN6duckdb15FileNameSegmentESaIS1_EED2Ev.exit.i.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.t

_ZN6duckdb6vectorINS_15FileNameSegmentELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %.thread
  store ptr %i.s, ptr %i.p, align 8, !tbaa !2203
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb6vectorINS_15FileNameSegmentELb1ESaIS1_EEC2ERKS3_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb4Path16ParseFileSchemesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(123) initializes((122, 123)) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 122 ; 2 uses
  store i8 1, ptr %i.b, align 2, !tbaa !2113
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !139  ; 2 uses
  %i.e = icmp ugt i64 %i.d, 7
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.h = load i8, ptr %i.g, align 1, !tbaa !79
  %i.i = icmp eq i8 %i.h, 47
  br i1 %i.i, label %bb.c, label %.thread.thread40

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.k = load i8, ptr %i.j, align 1, !tbaa !79
  %i.l = icmp eq i8 %i.k, 47
  br i1 %i.l, label %bb.d, label %.thread.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !139
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull @.str.184, i64 noundef 7) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !139
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %i.d, 7
  br i1 %i.t, label %.thread, label %.thread.thread40

.thread:                                          ; preds = %bb.e
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 6
  %.pre34 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !79
  %i.u = icmp eq i8 %.pre34, 47
  br i1 %i.u, label %.thread.thread, label %.thread.thread40

.thread.thread:                                   ; preds = %bb.c, %.thread
  %i.v = tail call noundef i64 @_ZN6duckdb4Path14ParseURISchemeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(123) %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !178, !alias.scope !2271
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !16, !noalias !2271 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !139, !noalias !2271 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !2271
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !33, !noalias !2271
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.thread.thread
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !16, !alias.scope !2271
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !2271
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !79, !alias.scope !2271
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %.thread.thread
  %i.ae = phi ptr [ %i.ac, %.noexc.i.i ], [ %i.x, %.thread.thread ] ; 2 uses
  switch i64 %i.aa, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.af = load i8, ptr %i.y, align 1, !tbaa !79
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !2271 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !139, !alias.scope !2271
  %i.ai = load ptr, ptr %2, align 8, !tbaa !16, !alias.scope !2271
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !2271
  %i.ak = load ptr, ptr %2, align 8, !tbaa !16, !alias.scope !2271 ; 7 uses
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !139 ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %.not6.i.i = icmp samesign eq i64 %i.al, 0
  br i1 %.not6.i.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %min.iters.check = icmp ult i64 %i.al, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 24
  %n.vec = and i64 %i.al, -32                     ; 4 uses
  %i.an = getelementptr i8, ptr %i.ak, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %index ; 3 uses
  %i.ao = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !79 ; 3 uses
  %wide.load44 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !79 ; 3 uses
  %i.ap = add <16 x i8> %wide.load, splat (i8 -65)
  %i.aq = add <16 x i8> %wide.load44, splat (i8 -65)
  %i.ar = icmp ult <16 x i8> %i.ap, splat (i8 26)
  %i.as = icmp ult <16 x i8> %i.aq, splat (i8 26)
  %5 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.at = or disjoint <16 x i8> %wide.load44, splat (i8 32)
  %i.au = select <16 x i1> %i.ar, <16 x i8> %5, <16 x i8> %wide.load
  %6 = select <16 x i1> %i.as, <16 x i8> %i.at, <16 x i8> %wide.load44
  store <16 x i8> %i.au, ptr %next.gep, align 1, !tbaa !79
  store <16 x i8> %6, ptr %i.ao, align 1, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !2274

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !607

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.al, -8                    ; 3 uses
  %i.aw = getelementptr i8, ptr %i.ak, i64 %n.vec46
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.ak, i64 %index47 ; 2 uses
  %wide.load49 = load <8 x i8>, ptr %next.gep48, align 1, !tbaa !79 ; 3 uses
  %i.ax = add <8 x i8> %wide.load49, splat (i8 -65)
  %i.ay = icmp ult <8 x i8> %i.ax, splat (i8 26)
  %7 = or disjoint <8 x i8> %wide.load49, splat (i8 32)
  %8 = select <8 x i1> %i.ay, <8 x i8> %7, <8 x i8> %wide.load49
  store <8 x i8> %8, ptr %next.gep48, align 1, !tbaa !79
  %index.next50 = add nuw i64 %index47, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next50, %n.vec46
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2275

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %i.al, %n.vec46
  br i1 %cmp.n51, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.bd, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ba = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !79 ; 3 uses
  %i.bb = add i8 %i.ba, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.bb, 26
  %i.bc = or disjoint i8 %i.ba, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.bc, i8 %i.ba
  store i8 %spec.select.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !79
  %i.bd = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.am
  br i1 %.not.i.i, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !2276

_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pr = load i64, ptr %i.ah, align 8, !tbaa !139
  %.pre35.pre = load ptr, ptr %2, align 8, !tbaa !16 ; 4 uses
  %i.be = icmp eq i64 %.pr, 9
  br i1 %i.be, label %bb.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.h:                                             ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bf = load i64, ptr %.pre35.pre, align 1
  %i.bg = xor i64 %i.bf, 8317981851476258668
  %i.bh = getelementptr i8, ptr %.pre35.pre, i64 8
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i64
  %i.bk = xor i64 %i.bj, 116
  %i.bl = or i64 %i.bg, %i.bk
  %i.bm = icmp ne i64 %i.bl, 0                    ; 2 uses
  %i.bn = zext i1 %i.bm to i32                    ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.h
  %.pre3542 = phi ptr [ %.pre35.pre, %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.pre35.pre, %bb.h ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  %i.bo = phi i1 [ true, %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.bm, %bb.h ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ]
  %i.bp = icmp eq ptr %.pre3542, %i.x
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @_ZdlPv(ptr noundef %.pre3542) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %i.bo, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.186, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.s unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread: ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bt = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bt) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br i1 %.0, label %bb.m, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br i1 %.0, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn33 = phi { ptr, i32 } [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ]
  call void @__cxa_free_exception(ptr %i.bq) #58
  br label %bb.r

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !139
  %i.by = load i64, ptr %i.z, align 8, !tbaa !139
  %i.bz = add i64 %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !139
  %i.cc = add i64 %i.bz, %i.cb
  br label %bb.o

.thread.thread40:                                 ; preds = %bb.b, %.thread, %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !139
  %i.cf = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.ce, ptr noundef nonnull @.str.187, i64 noundef 5) ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !139
  %i.cj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 noundef 0, i64 noundef %i.ci, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.thread40, %bb.d
  %.025 = phi i64 [ 8, %bb.d ], [ %i.cc, %bb.n ], [ 6, %.thread.thread40 ] ; 5 uses
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !139
  %i.cl = icmp ugt i64 %i.ck, %.025
  br i1 %i.cl, label %bb.p, label %_ZN6duckdb4Path17ParseFilePathTailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRS0_.exit

bb.p:                                             ; preds = %bb.o
  %i.cm = load ptr, ptr %0, align 8, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.025
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !79
  switch i8 %i.co, label %_ZN6duckdb4Path17ParseFilePathTailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRS0_.exit [
    i8 92, label %bb.q
    i8 47, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !2110
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !139
  %i.cu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 noundef %i.ct, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.cr) ; 0 uses
  store i8 1, ptr %i.b, align 2, !tbaa !2113
  %i.cv = add nuw i64 %.025, 1
  br label %_ZN6duckdb4Path17ParseFilePathTailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRS0_.exit

_ZN6duckdb4Path17ParseFilePathTailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRS0_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.0.i = phi i64 [ %i.cv, %bb.q ], [ %.025, %bb.p ], [ %.025, %bb.o ]
  ret i64 %.0.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.m
  %.pn32 = phi { ptr, i32 } [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %.pn33, %bb.m ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ]
  resume { ptr, i32 } %.pn32

bb.s:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb4Path14ParseURISchemeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(123) initializes((122, 123)) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 122
  store i8 1, ptr %i.c, align 2, !tbaa !2113
  %i.d = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.181, i64 noundef 0, i64 noundef 3) #58
  %i.e = add i64 %i.d, 3                          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !139, !noalias !2277
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !178, !alias.scope !2277
  %i.i = load ptr, ptr %0, align 8, !tbaa !16, !noalias !2277 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.g) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58, !noalias !2277
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !33, !noalias !2277
  %i.j = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.j, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !16, !alias.scope !2277
  %i.l = load i64, ptr %i.b, align 8, !tbaa !33, !noalias !2277
  store i64 %i.l, ptr %i.h, align 8, !tbaa !79, !alias.scope !2277
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc10.i.i ], [ %i.h, %bb.a ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

end_hunk_1
begin_hunk_2_@_ZN6duckdb4Path14ParseURISchemeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_:bb.a
  br i1 %i.bk, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i26
  %i.bl = load i64, ptr %i.bc, align 8, !tbaa !139 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  %.not21.i23 = icmp eq ptr %3, %i.bf
  br i1 %.not21.i23, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28, label %bb.n, !prof !81

bb.n:                                             ; preds = %bb.m
  switch i64 %i.bl, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i24
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !79
  store i8 %i.bn, ptr %i.bg, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i24

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.bj, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i24: ; preds = %bb.p, %bb.o, %bb.n
  %i.bo = load i64, ptr %i.bc, align 8, !tbaa !139 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !139
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !79
  %.pre.i25 = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28

.thread.i27:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i26
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !16
  %i.bt = load <2 x i64>, ptr %i.bc, align 8, !tbaa !79
  store <2 x i64> %i.bt, ptr %i.bs, align 8, !tbaa !79
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i20
  %i.bu = load i64, ptr %i.bh, align 8, !tbaa !79
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bw = load <2 x i64>, ptr %i.bc, align 8, !tbaa !79
  store <2 x i64> %i.bw, ptr %i.bv, align 8, !tbaa !79
  %.not.i22 = icmp eq ptr %i.bg, null
  br i1 %.not.i22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21
  store ptr %i.bg, ptr %3, align 8, !tbaa !16
  store i64 %i.bu, ptr %i.ar, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21, %.thread.i27
  store ptr %i.ar, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i24, %bb.q, %bb.r
  %i.bx = phi ptr [ %.pre.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i24 ], [ %i.bg, %bb.q ], [ %i.ar, %bb.r ], [ %i.bj, %bb.m ]
  store i64 0, ptr %i.bc, align 8, !tbaa !139
  store i8 0, ptr %i.bx, align 1, !tbaa !79
  %i.by = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ar
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28
  call void @_ZdlPv(ptr noundef %i.by) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !139
  %i.cd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 noundef 0, i64 noundef %i.cc, i64 noundef 1, i8 noundef signext 47) ; 0 uses
  %i.ce = load i64, ptr %i.f, align 8
  %i.cf = add nuw i64 %i.am, 1
  %i.cg = select i1 %i.an, i64 %i.ce, i64 %i.cf
  ret i64 %i.cg
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb4Path17ParseFilePathTailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRS0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(123) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !139
  %i.c = icmp ugt i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !79
  switch i8 %i.f, label %bb.d [
    i8 92, label %bb.c
    i8 47, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.i = load i8, ptr %i.h, align 8, !tbaa !2110
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !139
  %i.l = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.k, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.i) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 122
  store i8 1, ptr %i.m, align 2, !tbaa !2113
  %i.n = add nuw i64 %1, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ %i.n, %bb.c ], [ %1, %bb.b ], [ %1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb4Path17NormalizeSegmentsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(123) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.duckdb::vector.33", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !139  ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !79
  switch i8 %i.f, label %bb.c [
    i8 92, label %bb.l
    i8 47, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !178, !alias.scope !2283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !2283
  store i64 %i.c, ptr %i.a, align 8, !tbaa !33, !noalias !2283
  %i.h = icmp ugt i64 %i.c, 15
  br i1 %i.h, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.c
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !16, !alias.scope !2283
  %i.j = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !2283
  store i64 %i.j, ptr %i.g, align 8, !tbaa !79, !alias.scope !2283
  br label %bb.e

._crit_edge.i.i.i:                                ; preds = %bb.c
  %cond = icmp eq i64 %i.c, 1
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.e, align 1, !tbaa !79
  store i8 %i.k, ptr %i.g, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.l = phi ptr [ %i.i, %._crit_edge.i.i.i.thread ], [ %i.g, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.e, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d
  %i.m = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !2283 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !139, !alias.scope !2283
  %i.o = load ptr, ptr %3, align 8, !tbaa !16, !alias.scope !2283
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !2283
  %i.q = load ptr, ptr %3, align 8, !tbaa !16, !alias.scope !2283 ; 6 uses
  %i.r = load i64, ptr %i.n, align 8, !tbaa !139, !alias.scope !2283 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %.not6.i.i = icmp samesign eq i64 %i.r, 0
  br i1 %.not6.i.i, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check113 = icmp ult i64 %i.r, 32
  br i1 %min.iters.check113, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.r, 24
  %n.vec = and i64 %i.r, -32                      ; 4 uses
  %i.t = getelementptr i8, ptr %i.q, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %index ; 3 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !79 ; 3 uses
  %wide.load114 = load <16 x i8>, ptr %i.u, align 1, !tbaa !79 ; 3 uses
  %i.v = add <16 x i8> %wide.load, splat (i8 -65)
  %i.w = add <16 x i8> %wide.load114, splat (i8 -65)
  %i.x = icmp ult <16 x i8> %i.v, splat (i8 26)
  %i.y = icmp ult <16 x i8> %i.w, splat (i8 26)
  %6 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.z = or disjoint <16 x i8> %wide.load114, splat (i8 32)
  %i.aa = select <16 x i1> %i.x, <16 x i8> %6, <16 x i8> %wide.load
  %7 = select <16 x i1> %i.y, <16 x i8> %i.z, <16 x i8> %wide.load114
  store <16 x i8> %i.aa, ptr %next.gep, align 1, !tbaa !79
  store <16 x i8> %7, ptr %i.u, align 1, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !607

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec116 = and i64 %i.r, -8                    ; 3 uses
  %i.ac = getelementptr i8, ptr %i.q, i64 %n.vec116
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body ] ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.q, i64 %index117 ; 2 uses
  %wide.load119 = load <8 x i8>, ptr %next.gep118, align 1, !tbaa !79 ; 3 uses
  %i.ad = add <8 x i8> %wide.load119, splat (i8 -65)
  %i.ae = icmp ult <8 x i8> %i.ad, splat (i8 26)
  %8 = or disjoint <8 x i8> %wide.load119, splat (i8 32)
  %9 = select <8 x i1> %i.ae, <8 x i8> %8, <8 x i8> %wide.load119
  store <8 x i8> %9, ptr %next.gep118, align 1, !tbaa !79
  %index.next120 = add nuw i64 %index117, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next120, %n.vec116
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2287

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n121 = icmp eq i64 %i.r, %n.vec116
  br i1 %cmp.n121, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.q, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ag = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !79 ; 3 uses
  %i.ah = add i8 %i.ag, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.ah, 26
  %i.ai = or disjoint i8 %i.ag, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.ai, i8 %i.ag
  store i8 %spec.select.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !79
  %i.aj = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.s
  br i1 %.not.i.i, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !2288

_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ak = load ptr, ptr %0, align 8, !tbaa !16    ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  %i.an = load ptr, ptr %3, align 8, !tbaa !16    ; 6 uses
  %i.ao = icmp eq ptr %i.an, %i.g                 ; 2 uses
  %.pre59 = load i64, ptr %i.n, align 8, !tbaa !139 ; 5 uses
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.ao, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.ao, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ap = icmp ult i64 %.pre59, 16
  call void @llvm.assume(i1 %i.ap)
  %.not21.i = icmp eq ptr %3, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !81

bb.g:                                             ; preds = %bb.f
  switch i64 %.pre59, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !79
  store i8 %i.aq, ptr %i.ak, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.an, i64 %.pre59, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !139 ; 2 uses
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !139
  %i.as = load ptr, ptr %0, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 0, ptr %i.at, align 1, !tbaa !79
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.an, ptr %0, align 8, !tbaa !16
  store i64 %.pre59, ptr %i.b, align 8, !tbaa !139
  %i.au = load i64, ptr %i.g, align 8, !tbaa !79
  store i64 %i.au, ptr %i.al, align 8, !tbaa !79
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.av = load i64, ptr %i.al, align 8, !tbaa !79
  store ptr %i.an, ptr %0, align 8, !tbaa !16
  store i64 %.pre59, ptr %i.b, align 8, !tbaa !139
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !79
  store i64 %i.aw, ptr %i.al, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ak, ptr %3, align 8, !tbaa !16
  store i64 %i.av, ptr %i.g, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ax = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ak, %bb.j ], [ %i.g, %bb.k ], [ %i.an, %bb.f ]
  store i64 0, ptr %i.n, align 8, !tbaa !139
  store i8 0, ptr %i.ax, align 1, !tbaa !79
  %i.ay = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.g
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.ay) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !139 ; 2 uses
  %.not = icmp eq i64 %i.bb, 0
  br i1 %.not, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bc, ptr %4, align 8, !tbaa !178
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !139
  store i8 0, ptr %i.bc, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !79
  switch i8 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit [
    i8 92, label %bb.n
    i8 47, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !2110
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.bi)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit_crit_edge unwind label %bb.o ; 0 uses

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit_crit_edge: ; preds = %bb.n
  %.pre60 = load ptr, ptr %i.be, align 8, !tbaa !16
  %.pre61 = load i64, ptr %i.ba, align 8, !tbaa !139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit_crit_edge, %bb.m
  %i.bl = phi i64 [ %.pre61, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit_crit_edge ], [ %i.bb, %bb.m ] ; 3 uses
  %i.bm = phi ptr [ %.pre60, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit_crit_edge ], [ %i.bf, %bb.m ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl ; 3 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ashr i64 %i.bl, 2                       ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i19

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.br = and i64 %i.bl, -4
  %scevgep = getelementptr i8, ptr %i.bm, i64 %i.br
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.s
  %.052.i.i.i = phi i64 [ %i.ca, %bb.s ], [ %i.bp, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.bz, %bb.s ], [ %i.bm, %.lr.ph.i.i.i.preheader ] ; 9 uses
  %i.bs = load i8, ptr %.sroa.032.051.i.i.i, align 1, !tbaa !79
  switch i8 %i.bs, label %_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit [
    i8 92, label %bb.p
    i8 47, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !79
  switch i8 %i.bu, label %_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.loopexit.split.loop.exit [
    i8 92, label %bb.q
    i8 47, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !79
  switch i8 %i.bw, label %_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.loopexit.split.loop.exit100 [
    i8 92, label %bb.r
    i8 47, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !79
  switch i8 %i.by, label %_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.loopexit.split.loop.exit102 [
    i8 92, label %bb.s
    i8 47, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ca = add nsw i64 %.052.i.i.i, -1
  %i.cb = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.cb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i19, !llvm.loop !2289
end_hunk_2
begin_hunk_3_@_ZN6duckdb10StringUtil22TryParseFormattedBytesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm:bb.a
bb.w:                                             ; preds = %.preheader, %bb.x
  %.2 = phi i64 [ %i.co, %bb.x ], [ %.1, %.preheader ] ; 10 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.av, i64 %.2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !79
  switch i8 %i.ck, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit91.preheader [
    i8 32, label %bb.x
    i8 12, label %bb.x
    i8 11, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit91.preheader: ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %i.av, i64 %.2 ; 2 uses
  %i.cm = load i64, ptr %i.y, align 8, !tbaa !139 ; 6 uses
  %i.cn = icmp ult i64 %.2, %i.cm
  br i1 %i.cn, label %.lr.ph, label %.critedge2

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  %i.co = add i64 %.2, 1
  br label %bb.w, !llvm.loop !3375

.lr.ph:                                           ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit91.preheader, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit92
  %.3171 = phi i64 [ %i.cr, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit92 ], [ %.2, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit91.preheader ] ; 8 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.av, i64 %.3171
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !79
  switch i8 %i.cq, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit92 [
    i8 32, label %.critedge2
    i8 12, label %.critedge2
    i8 11, label %.critedge2
    i8 10, label %.critedge2
    i8 9, label %.critedge2
    i8 13, label %.critedge2
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit92: ; preds = %.lr.ph
  %i.cr = add i64 %.3171, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %i.cm
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !3376

.critedge2:                                       ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit92, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit91.preheader
  %.3.lcssa = phi i64 [ %.2, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit91.preheader ], [ %.3171, %.lr.ph ], [ %.3171, %.lr.ph ], [ %.3171, %.lr.ph ], [ %.3171, %.lr.ph ], [ %.3171, %.lr.ph ], [ %.3171, %.lr.ph ], [ %i.cm, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit92 ]
  %i.cs = load double, ptr %i.i, align 8, !tbaa !1500
  %i.ct = fcmp olt double %i.cs, 0.000000e+00
  br i1 %i.ct, label %.noexc.i94, label %bb.z

.noexc.i94:                                       ; preds = %.critedge2
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.cu, ptr %0, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  store i64 25, ptr %i.d, align 8, !tbaa !33
  %i.cv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc95 unwind label %bb.y   ; 2 uses

.noexc95:                                         ; preds = %.noexc.i94
  store ptr %i.cv, ptr %0, align 8, !tbaa !16
  %i.cw = load i64, ptr %i.d, align 8, !tbaa !33  ; 3 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.cv, ptr noundef nonnull align 1 dereferenceable(25) @.str.274, i64 25, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !139
  %i.cy = load ptr, ptr %0, align 8, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.y:                                             ; preds = %.noexc.i94
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.z:                                             ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  call void @llvm.experimental.noalias.scope.decl(metadata !3377)
  %i.db = icmp ugt i64 %.2, %i.cm
  br i1 %i.db, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i97

bb.aa:                                            ; preds = %bb.z
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2061, ptr noundef nonnull @.str.2094, i64 noundef %.2, i64 noundef %i.cm) #59
          to label %.noexc101 unwind label %bb.ag

.noexc101:                                        ; preds = %bb.aa
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i97: ; preds = %bb.z
  %i.dc = sub i64 %.3.lcssa, %.2
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.dd, ptr %8, align 8, !tbaa !178, !alias.scope !3377
  %i.de = sub nuw i64 %i.cm, %.2
  %spec.select.i.i.i98 = call noundef i64 @llvm.umin.i64(i64 %i.dc, i64 %i.de) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58, !noalias !3377
  store i64 %spec.select.i.i.i98, ptr %i.c, align 8, !tbaa !33, !noalias !3377
  %i.df = icmp ugt i64 %spec.select.i.i.i98, 15
  br i1 %i.df, label %.noexc10.i.i100, label %._crit_edge.i.i.i99

.noexc10.i.i100:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i97
  %i.dg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc102 unwind label %bb.ag ; 2 uses

.noexc102:                                        ; preds = %.noexc10.i.i100
  store ptr %i.dg, ptr %8, align 8, !tbaa !16, !alias.scope !3377
  %i.dh = load i64, ptr %i.c, align 8, !tbaa !33, !noalias !3377
  store i64 %i.dh, ptr %i.dd, align 8, !tbaa !79, !alias.scope !3377
  br label %._crit_edge.i.i.i99

._crit_edge.i.i.i99:                              ; preds = %.noexc102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i97
  %i.di = phi ptr [ %i.dg, %.noexc102 ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i97 ] ; 2 uses
  switch i64 %spec.select.i.i.i98, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i99
  %i.dj = load i8, ptr %i.cl, align 1, !tbaa !79
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !79
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i.i99
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr nonnull align 1 %i.cl, i64 %spec.select.i.i.i98, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i99
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !33, !noalias !3377 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !139, !alias.scope !3377
  %i.dm = load ptr, ptr %8, align 8, !tbaa !16, !alias.scope !3377
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk
  store i8 0, ptr %i.dn, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58, !noalias !3377
  call void @llvm.experimental.noalias.scope.decl(metadata !3380)
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.do, ptr %7, align 8, !tbaa !178, !alias.scope !3380
  %i.dp = load ptr, ptr %8, align 8, !tbaa !16, !noalias !3380 ; 2 uses
  %i.dq = load i64, ptr %i.dl, align 8, !tbaa !139, !noalias !3380 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58, !noalias !3380
  store i64 %i.dq, ptr %i.b, align 8, !tbaa !33, !noalias !3380
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %.noexc.i.i, label %._crit_edge.i.i.i104

.noexc.i.i:                                       ; preds = %bb.ad
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc105 unwind label %bb.ah ; 2 uses

.noexc105:                                        ; preds = %.noexc.i.i
  store ptr %i.ds, ptr %7, align 8, !tbaa !16, !alias.scope !3380
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !33, !noalias !3380
  store i64 %i.dt, ptr %i.do, align 8, !tbaa !79, !alias.scope !3380
  br label %._crit_edge.i.i.i104

._crit_edge.i.i.i104:                             ; preds = %.noexc105, %bb.ad
  %i.du = phi ptr [ %i.ds, %.noexc105 ], [ %i.do, %bb.ad ] ; 2 uses
  switch i64 %i.dq, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i104
  %i.dv = load i8, ptr %i.dp, align 1, !tbaa !79
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.af:                                            ; preds = %._crit_edge.i.i.i104
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr align 1 %i.dp, i64 %i.dq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.af, %bb.ae, %._crit_edge.i.i.i104
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !33, !noalias !3380 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !139, !alias.scope !3380
  %i.dy = load ptr, ptr %7, align 8, !tbaa !16, !alias.scope !3380
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  store i8 0, ptr %i.dz, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58, !noalias !3380
  %i.ea = load ptr, ptr %7, align 8, !tbaa !16, !alias.scope !3380 ; 6 uses
  %i.eb = load i64, ptr %i.dx, align 8, !tbaa !139, !alias.scope !3380 ; 9 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  %.not6.i.i = icmp samesign eq i64 %i.eb, 0
  br i1 %.not6.i.i, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %min.iters.check = icmp ult i64 %i.eb, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check228 = icmp ult i64 %i.eb, 32
  br i1 %min.iters.check228, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.eb, 24
  %n.vec = and i64 %i.eb, -32                     ; 4 uses
  %i.ed = getelementptr i8, ptr %i.ea, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ea, i64 %index ; 3 uses
  %i.ee = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !79 ; 3 uses
  %wide.load229 = load <16 x i8>, ptr %i.ee, align 1, !tbaa !79 ; 3 uses
  %i.ef = add <16 x i8> %wide.load, splat (i8 -65)
  %i.eg = add <16 x i8> %wide.load229, splat (i8 -65)
  %i.eh = icmp ult <16 x i8> %i.ef, splat (i8 26)
  %i.ei = icmp ult <16 x i8> %i.eg, splat (i8 26)
  %12 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.ej = or disjoint <16 x i8> %wide.load229, splat (i8 32)
  %i.ek = select <16 x i1> %i.eh, <16 x i8> %12, <16 x i8> %wide.load
  %13 = select <16 x i1> %i.ei, <16 x i8> %i.ej, <16 x i8> %wide.load229
  store <16 x i8> %i.ek, ptr %next.gep, align 1, !tbaa !79
  store <16 x i8> %13, ptr %i.ee, align 1, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !3383

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !607

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec231 = and i64 %i.eb, -8                   ; 3 uses
  %i.em = getelementptr i8, ptr %i.ea, i64 %n.vec231
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index232 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next235, %vec.epilog.vector.body ] ; 2 uses
  %next.gep233 = getelementptr i8, ptr %i.ea, i64 %index232 ; 2 uses
  %wide.load234 = load <8 x i8>, ptr %next.gep233, align 1, !tbaa !79 ; 3 uses
  %i.en = add <8 x i8> %wide.load234, splat (i8 -65)
  %i.eo = icmp ult <8 x i8> %i.en, splat (i8 26)
  %14 = or disjoint <8 x i8> %wide.load234, splat (i8 32)
  %15 = select <8 x i1> %i.eo, <8 x i8> %14, <8 x i8> %wide.load234
  store <8 x i8> %15, ptr %next.gep233, align 1, !tbaa !79
  %index.next235 = add nuw i64 %index232, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next235, %n.vec231
  br i1 %i.ep, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3384

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n236 = icmp eq i64 %i.eb, %n.vec231
  br i1 %cmp.n236, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.ea, %iter.check ], [ %i.ed, %vec.epilog.iter.check ], [ %i.em, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.et, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.eq = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !79 ; 3 uses
  %i.er = add i8 %i.eq, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.er, 26
  %i.es = or disjoint i8 %i.eq, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.es, i8 %i.eq
  store i8 %spec.select.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !79
  %i.et = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.et, %i.ec
  br i1 %.not.i.i, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !3385

_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.eu = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.dd
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZdlPv(ptr noundef %i.eu) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  %i.ew = load i64, ptr %i.dx, align 8, !tbaa !139 ; 3 uses
  switch i64 %i.ew, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread161 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.ex = load ptr, ptr %7, align 8, !tbaa !16
  %i.ey = load i32, ptr %i.ex, align 1
  %i.ez = icmp ne i32 %i.ey, 1702132066
  %i.fa = zext i1 %i.ez to i32
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread161

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %.pre194 = load ptr, ptr %7, align 8, !tbaa !16
  %bcmp.i109 = call i32 @bcmp(ptr %.pre194, ptr nonnull @.str.259, i64 %i.ew)
  %i.fc = icmp eq i32 %bcmp.i109, 0
  br i1 %i.fc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread161

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %.pre195 = load ptr, ptr %7, align 8, !tbaa !16
  %bcmp.i111 = call i32 @bcmp(ptr %.pre195, ptr nonnull @.str.276, i64 %i.ew)
  %i.fd = icmp eq i32 %bcmp.i111, 0
  br i1 %i.fd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread161

bb.ag:                                            ; preds = %.noexc10.i.i100, %bb.aa
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

bb.ah:                                            ; preds = %.noexc.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.dd
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.fg) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.ag
  %.pn62 = phi { ptr, i32 } [ %i.fe, %bb.ag ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %i.ff, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread161: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112
  %i.fi = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.277)
  br i1 %i.fi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread161
  %i.fj = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.278)
  br i1 %i.fj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fk = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.279)
  br i1 %i.fk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fl = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.280)
  br i1 %i.fl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.281)
  br i1 %i.fm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fn = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.282)
  br i1 %i.fn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fo = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.283)
  br i1 %i.fo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fp = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.284)
  br i1 %i.fp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fq = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.285)
  br i1 %i.fq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fr = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.286)
  br i1 %i.fr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fs = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.287)
  br i1 %i.fs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ft = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.288)
  br i1 %i.ft, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fu = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.289)
  br i1 %i.fu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fv = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.290)
  br i1 %i.fv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fw = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.291)
  br i1 %i.fw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fx = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.292)
  br i1 %i.fx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fy = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.293)
  br i1 %i.fy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fz = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.294)
  br i1 %i.fz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ga = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.295)
  br i1 %i.ga, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gb = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.296)
  br i1 %i.gb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.297, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_S7_DpT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %9, ptr noundef nonnull %11)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.gc = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.be
  call void @_ZdlPv(ptr noundef %i.gc) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  %i.gf = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  call void @_ZdlPv(ptr noundef %i.gf) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  br label %bb.bk
end_hunk_3
begin_hunk_4_@_ZN6duckdb10StringUtil5TitleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !139  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %.not23 = icmp samesign eq i64 %i.e, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %.025 = phi i1 [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ true, %bb.a ]
  %.sroa.020.024 = phi ptr [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = load i8, ptr %.sroa.020.024, align 1, !tbaa !79 ; 9 uses
  %i.h = and i8 %i.g, -33
  %i.i = add i8 %i.h, -91
  %i.j = icmp ult i8 %i.i, -26                    ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !139  ; 8 uses
  %i.l = add i64 %i.k, 1                          ; 5 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.n = icmp eq ptr %i.m, %i.a                   ; 6 uses
  br i1 %i.j, label %bb.j, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  br i1 %.025, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = add i8 %i.g, -97
  %or.cond.i = icmp ult i8 %i.o, 26
  %i.p = add nsw i8 %i.g, -32
  %.0.i = select i1 %or.cond.i, i8 %i.p, i8 %i.g  ; 2 uses
  br i1 %i.n, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.d, %bb.c
  %i.r = load i64, ptr %i.a, align 8
  %i.s = select i1 %i.n, i64 15, i64 %i.r
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.f:                                             ; preds = %bb.l, %bb.i, %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef %i.v) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %bb.b
  %i.x = add i8 %i.g, -65
  %or.cond.i11 = icmp ult i8 %i.x, 26
  %i.y = or disjoint i8 %i.g, 32
  %spec.select.i = select i1 %or.cond.i11, i8 %i.y, i8 %i.g ; 2 uses
  br i1 %i.n, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12

bb.h:                                             ; preds = %bb.g
  %i.z = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12: ; preds = %bb.h, %bb.g
  %i.aa = load i64, ptr %i.a, align 8
  %i.ab = select i1 %i.n, i64 15, i64 %i.aa
  %i.ac = icmp ugt i64 %i.l, %i.ab
  br i1 %i.ac, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc14 unwind label %bb.f

.noexc14:                                         ; preds = %bb.i
  %.pre.i.i13 = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.j:                                             ; preds = %.lr.ph
  br i1 %i.n, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i16

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i16: ; preds = %bb.k, %bb.j
  %i.ae = load i64, ptr %i.a, align 8
  %i.af = select i1 %i.n, i64 15, i64 %i.ae
  %i.ag = icmp ugt i64 %i.l, %i.af
  br i1 %i.ag, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc18 unwind label %bb.f

.noexc18:                                         ; preds = %bb.l
  %.pre.i.i17 = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %.noexc18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i16, %.noexc14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12, %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.sink31 = phi ptr [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %.pre.i.i, %.noexc ], [ %.pre.i.i13, %.noexc14 ], [ %.pre.i.i17, %.noexc18 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i16 ]
  %.sink29 = phi i8 [ %spec.select.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12 ], [ %.0.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %.0.i, %.noexc ], [ %spec.select.i, %.noexc14 ], [ %i.g, %.noexc18 ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i16 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink31, i64 %i.k
  store i8 %.sink29, ptr %i.ah, align 1, !tbaa !79
  store i64 %i.l, ptr %i.b, align 8, !tbaa !139
  %i.ai = load ptr, ptr %0, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l
  store i8 0, ptr %i.aj, align 1, !tbaa !79
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.020.024, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb10StringUtil7IsLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3386)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !178, !alias.scope !3386
  %i.c = load ptr, ptr %0, align 8, !tbaa !16, !noalias !3386 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !139, !noalias !3386 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !3386
  store i64 %i.e, ptr %i.a, align 8, !tbaa !33, !noalias !3386
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !16, !alias.scope !3386
  %i.h = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !3386
  store i64 %i.h, ptr %i.b, align 8, !tbaa !79, !alias.scope !3386
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !79
  store i8 %i.j, ptr %i.i, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !3386 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !139, !alias.scope !3386
  %i.m = load ptr, ptr %1, align 8, !tbaa !16, !alias.scope !3386
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !3386
  %i.o = load ptr, ptr %1, align 8, !tbaa !16, !alias.scope !3386 ; 6 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !139, !alias.scope !3386 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %.not6.i.i = icmp samesign eq i64 %i.p, 0
  br i1 %.not6.i.i, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.p, 24
  %n.vec = and i64 %i.p, -32                      ; 4 uses
  %i.r = getelementptr i8, ptr %i.o, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %index ; 3 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !79 ; 3 uses
  %wide.load7 = load <16 x i8>, ptr %i.s, align 1, !tbaa !79 ; 3 uses
  %i.t = add <16 x i8> %wide.load, splat (i8 -65)
  %i.u = add <16 x i8> %wide.load7, splat (i8 -65)
  %i.v = icmp ult <16 x i8> %i.t, splat (i8 26)
  %i.w = icmp ult <16 x i8> %i.u, splat (i8 26)
  %2 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.x = or disjoint <16 x i8> %wide.load7, splat (i8 32)
  %i.y = select <16 x i1> %i.v, <16 x i8> %2, <16 x i8> %wide.load
  %3 = select <16 x i1> %i.w, <16 x i8> %i.x, <16 x i8> %wide.load7
  store <16 x i8> %i.y, ptr %next.gep, align 1, !tbaa !79
  store <16 x i8> %3, ptr %i.s, align 1, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !3389

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !607

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %i.p, -8                      ; 3 uses
  %i.aa = getelementptr i8, ptr %i.o, i64 %n.vec9
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.o, i64 %index10 ; 2 uses
  %wide.load12 = load <8 x i8>, ptr %next.gep11, align 1, !tbaa !79 ; 3 uses
  %i.ab = add <8 x i8> %wide.load12, splat (i8 -65)
  %i.ac = icmp ult <8 x i8> %i.ab, splat (i8 26)
  %4 = or disjoint <8 x i8> %wide.load12, splat (i8 32)
  %5 = select <8 x i1> %i.ac, <8 x i8> %4, <8 x i8> %wide.load12
  store <8 x i8> %5, ptr %next.gep11, align 1, !tbaa !79
  %index.next13 = add nuw i64 %index10, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next13, %n.vec9
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3390

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %i.p, %n.vec9
  br i1 %cmp.n14, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !79 ; 3 uses
  %i.af = add i8 %i.ae, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.af, 26
  %i.ag = or disjoint i8 %i.ae, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.ag, i8 %i.ae
  store i8 %spec.select.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !79
  %i.ah = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.q
  br i1 %.not.i.i, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !3391

_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre = load i64, ptr %i.l, align 8, !tbaa !139 ; 3 uses
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !139
  %i.aj = icmp eq i64 %i.ai, %.pre
  br i1 %i.aj, label %bb.d, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !139
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.thread, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

.thread:                                          ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !16
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.pre2 = load ptr, ptr %1, align 8, !tbaa !16
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.d:                                             ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.am = icmp eq i64 %.pre, 0
  %.pre3 = load ptr, ptr %1, align 8, !tbaa !16   ; 3 uses
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %0, align 8, !tbaa !16
  %bcmp.i = call i32 @bcmp(ptr %i.an, ptr %.pre3, i64 %.pre)
  %i.ao = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.thread, %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.d, %bb.e
  %i.ap = phi ptr [ %.pre2, %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre3, %bb.e ], [ %.pre3, %bb.d ], [ %.pre35, %.thread ] ; 2 uses
  %i.aq = phi i1 [ false, %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.ao, %bb.e ], [ true, %bb.d ], [ true, %.thread ]
  %i.ar = icmp eq ptr %i.ap, %i.b
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @_ZdlPv(ptr noundef %i.ap) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  ret i1 %i.aq
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb10StringUtil7IsUpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3392)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !178, !alias.scope !3392
  %i.c = load ptr, ptr %0, align 8, !tbaa !16, !noalias !3392 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !139, !noalias !3392 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !3392
  store i64 %i.e, ptr %i.a, align 8, !tbaa !33, !noalias !3392
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !16, !alias.scope !3392
  %i.h = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !3392
  store i64 %i.h, ptr %i.b, align 8, !tbaa !79, !alias.scope !3392
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !79
  store i8 %i.j, ptr %i.i, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !3392 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !139, !alias.scope !3392
  %i.m = load ptr, ptr %1, align 8, !tbaa !16, !alias.scope !3392
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !3392
  %i.o = load ptr, ptr %1, align 8, !tbaa !16, !alias.scope !3392 ; 2 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !139, !alias.scope !3392 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %.not6.i.i = icmp samesign eq i64 %i.p, 0
  br i1 %.not6.i.i, label %_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 3 uses
  %i.r = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !79
  %i.s = zext i8 %i.r to i32
  %i.t = call noundef i32 @toupper(i32 noundef %i.s) #66
  %i.u = trunc i32 %i.t to i8
  store i8 %i.u, ptr %.sroa.0.08.i.i, align 1, !tbaa !79
  %i.v = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i.i, label %_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !1461

_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i
  %.pre = load i64, ptr %i.l, align 8, !tbaa !139 ; 3 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !139
  %i.x = icmp eq i64 %i.w, %.pre
  br i1 %i.x, label %bb.d, label %_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.y = load i64, ptr %i.d, align 8, !tbaa !139
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.thread, label %_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

.thread:                                          ; preds = %_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !16
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.pre2 = load ptr, ptr %1, align 8, !tbaa !16
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.d:                                             ; preds = %_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = icmp eq i64 %.pre, 0
  %.pre3 = load ptr, ptr %1, align 8, !tbaa !16   ; 3 uses
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %0, align 8, !tbaa !16
  %bcmp.i = call i32 @bcmp(ptr %i.ab, ptr %.pre3, i64 %.pre)
  %i.ac = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.thread, %_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.d, %bb.e
  %i.ad = phi ptr [ %.pre2, %_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre3, %bb.e ], [ %.pre3, %bb.d ], [ %.pre35, %.thread ] ; 2 uses
  %i.ae = phi i1 [ false, %_ZN6duckdb10StringUtil5UpperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.ac, %bb.e ], [ true, %bb.d ], [ true, %.thread ]
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @_ZdlPv(ptr noundef %i.ad) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  ret i1 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, 4294967296) i64 @_ZN6duckdb10StringUtil6CIHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !139  ; 5 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb10StringUtil6CIHashEPKcm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.c, 1
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %.lr.ph.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_4
begin_hunk_5_@_ZN6duckdb10StringUtil11TopNStringsERKNS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1ESaIS9_EEEmm:bb.a
  %.not4.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bl, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i ], [ %i.bg, %bb.k ] ; 3 uses
  %i.bi = load ptr, ptr %.05.i.i.i, align 8, !tbaa !16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.bi) #60
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3415

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 16, !tbaa !3401
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.k
  %i.bm = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.bg, %bb.k ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bm) #60
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i, %bb.l
  %i.bn = load ptr, ptr %4, align 16, !tbaa !3401 ; 3 uses
  %i.bo = load ptr, ptr %i.q, align 8, !tbaa !3403 ; 2 uses
  %.not4.i.i.i28 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not4.i.i.i28, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i36, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i32
  %.05.i.i.i30 = phi ptr [ %i.bs, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i32 ], [ %i.bn, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit ] ; 3 uses
  %i.bp = load ptr, ptr %.05.i.i.i30, align 8, !tbaa !16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i30, i64 16
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i29
  call void @_ZdlPv(ptr noundef %i.bp) #60
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i32

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i32: ; preds = %.lr.ph.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i30, i64 40 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bs, %i.bo
  br i1 %.not.i.i.i33, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i34, label %.lr.ph.i.i.i29, !llvm.loop !3415

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i34: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i32
  %.pr.i35 = load ptr, ptr %4, align 16, !tbaa !3401
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i36

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i36: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i34, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit
  %i.bt = phi ptr [ %.pr.i35, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i34 ], [ %i.bn, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i37 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i1.i37, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit39, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i36
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #60
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit39

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit39: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i36, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  ret void

bb.n:                                             ; preds = %._crit_edge57
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #58
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdED2Ev.exit27
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdED2Ev.exit27 ], [ %i.bu, %bb.n ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3401   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3403 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #60
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3415

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !3401
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #60
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb10StringUtil19LevenshteinDistanceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_m(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3416)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !178, !alias.scope !3416
  %i.d = load ptr, ptr %0, align 8, !tbaa !16, !noalias !3416 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !139, !noalias !3416 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58, !noalias !3416
  store i64 %i.f, ptr %i.b, align 8, !tbaa !33, !noalias !3416
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !16, !alias.scope !3416
  %i.i = load i64, ptr %i.b, align 8, !tbaa !33, !noalias !3416
  store i64 %i.i, ptr %i.c, align 8, !tbaa !79, !alias.scope !3416
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !79
  store i8 %i.k, ptr %i.j, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !33, !noalias !3416 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !139, !alias.scope !3416
  %i.n = load ptr, ptr %3, align 8, !tbaa !16, !alias.scope !3416
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58, !noalias !3416
  %i.p = load ptr, ptr %3, align 8, !tbaa !16, !alias.scope !3416 ; 6 uses
  %i.q = load i64, ptr %i.m, align 8, !tbaa !139, !alias.scope !3416 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %.not6.i.i = icmp samesign eq i64 %i.q, 0
  br i1 %.not6.i.i, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %min.iters.check = icmp ult i64 %i.q, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check126 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.q, 24
  %n.vec = and i64 %i.q, -32                      ; 4 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %index ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !79 ; 3 uses
  %wide.load127 = load <16 x i8>, ptr %i.t, align 1, !tbaa !79 ; 3 uses
  %i.u = add <16 x i8> %wide.load, splat (i8 -65)
  %i.v = add <16 x i8> %wide.load127, splat (i8 -65)
  %i.w = icmp ult <16 x i8> %i.u, splat (i8 26)
  %i.x = icmp ult <16 x i8> %i.v, splat (i8 26)
  %5 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.y = or disjoint <16 x i8> %wide.load127, splat (i8 32)
  %i.z = select <16 x i1> %i.w, <16 x i8> %5, <16 x i8> %wide.load
  %6 = select <16 x i1> %i.x, <16 x i8> %i.y, <16 x i8> %wide.load127
  store <16 x i8> %i.z, ptr %next.gep, align 1, !tbaa !79
  store <16 x i8> %6, ptr %i.t, align 1, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !3419

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !607

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec129 = and i64 %i.q, -8                    ; 3 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %n.vec129
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index130 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next133, %vec.epilog.vector.body ] ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.p, i64 %index130 ; 2 uses
  %wide.load132 = load <8 x i8>, ptr %next.gep131, align 1, !tbaa !79 ; 3 uses
  %i.ac = add <8 x i8> %wide.load132, splat (i8 -65)
  %i.ad = icmp ult <8 x i8> %i.ac, splat (i8 26)
  %7 = or disjoint <8 x i8> %wide.load132, splat (i8 32)
  %8 = select <8 x i1> %i.ad, <8 x i8> %7, <8 x i8> %wide.load132
  store <8 x i8> %8, ptr %next.gep131, align 1, !tbaa !79
  %index.next133 = add nuw i64 %index130, 8       ; 2 uses
  %i.ae = icmp eq i64 %index.next133, %n.vec129
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3420

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n134 = icmp eq i64 %i.q, %n.vec129
  br i1 %cmp.n134, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.af = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !79 ; 3 uses
  %i.ag = add i8 %i.af, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.ag, 26
  %i.ah = or disjoint i8 %i.af, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.ah, i8 %i.af
  store i8 %spec.select.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !79
  %i.ai = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.r
  br i1 %.not.i.i, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !3421

_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.experimental.noalias.scope.decl(metadata !3422)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !178, !alias.scope !3422
  %i.ak = load ptr, ptr %1, align 8, !tbaa !16, !noalias !3422 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !139, !noalias !3422 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !3422
  store i64 %i.am, ptr %i.a, align 8, !tbaa !33, !noalias !3422
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %.noexc.i.i75, label %._crit_edge.i.i.i67

.noexc.i.i75:                                     ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i75
  store ptr %i.ao, ptr %4, align 8, !tbaa !16, !alias.scope !3422
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !3422
  store i64 %i.ap, ptr %i.aj, align 8, !tbaa !79, !alias.scope !3422
  br label %._crit_edge.i.i.i67

._crit_edge.i.i.i67:                              ; preds = %.noexc, %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aq = phi ptr [ %i.ao, %.noexc ], [ %i.aj, %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  switch i64 %i.am, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i67
  %i.ar = load i8, ptr %i.ak, align 1, !tbaa !79
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68

bb.e:                                             ; preds = %._crit_edge.i.i.i67
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.ak, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i67
  %i.as = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !3422 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.as, ptr %i.at, align 8, !tbaa !139, !alias.scope !3422
  %i.au = load ptr, ptr %4, align 8, !tbaa !16, !alias.scope !3422
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !3422
  %i.aw = load ptr, ptr %4, align 8, !tbaa !16, !alias.scope !3422 ; 6 uses
  %i.ax = load i64, ptr %i.at, align 8, !tbaa !139 ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  %.not6.i.i69 = icmp samesign eq i64 %i.ax, 0
  br i1 %.not6.i.i69, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76.thread, label %iter.check151

iter.check151:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68
  %min.iters.check136 = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check136, label %.lr.ph.i.i70.preheader, label %vector.main.loop.iter.check137

vector.main.loop.iter.check137:                   ; preds = %iter.check151
  %min.iters.check138 = icmp ult i64 %i.ax, 32
  br i1 %min.iters.check138, label %vec.epilog.ph155, label %vector.ph139

vector.ph139:                                     ; preds = %vector.main.loop.iter.check137
  %n.mod.vf140 = and i64 %i.ax, 24
  %n.vec141 = and i64 %i.ax, -32                  ; 4 uses
  %i.az = getelementptr i8, ptr %i.aw, i64 %n.vec141
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph139
  %index143 = phi i64 [ 0, %vector.ph139 ], [ %index.next147, %vector.body142 ] ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.aw, i64 %index143 ; 3 uses
  %i.ba = getelementptr i8, ptr %next.gep144, i64 16 ; 2 uses
  %wide.load145 = load <16 x i8>, ptr %next.gep144, align 1, !tbaa !79 ; 3 uses
  %wide.load146 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !79 ; 3 uses
  %i.bb = add <16 x i8> %wide.load145, splat (i8 -65)
  %i.bc = add <16 x i8> %wide.load146, splat (i8 -65)
  %i.bd = icmp ult <16 x i8> %i.bb, splat (i8 26)
  %i.be = icmp ult <16 x i8> %i.bc, splat (i8 26)
  %9 = or disjoint <16 x i8> %wide.load145, splat (i8 32)
  %i.bf = or disjoint <16 x i8> %wide.load146, splat (i8 32)
  %i.bg = select <16 x i1> %i.bd, <16 x i8> %9, <16 x i8> %wide.load145
  %10 = select <16 x i1> %i.be, <16 x i8> %i.bf, <16 x i8> %wide.load146
  store <16 x i8> %i.bg, ptr %next.gep144, align 1, !tbaa !79
  store <16 x i8> %10, ptr %i.ba, align 1, !tbaa !79
  %index.next147 = add nuw i64 %index143, 32      ; 2 uses
  %i.bh = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.bh, label %middle.block148, label %vector.body142, !llvm.loop !3425

middle.block148:                                  ; preds = %vector.body142
  %cmp.n149 = icmp eq i64 %i.ax, %n.vec141
  br i1 %cmp.n149, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block148
  %min.epilog.iters.check154 = icmp eq i64 %n.mod.vf140, 0
  br i1 %min.epilog.iters.check154, label %.lr.ph.i.i70.preheader, label %vec.epilog.ph155, !prof !607

vec.epilog.ph155:                                 ; preds = %vector.main.loop.iter.check137, %vec.epilog.iter.check153
  %vec.epilog.resume.val150 = phi i64 [ %n.vec141, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check137 ]
  %n.vec157 = and i64 %i.ax, -8                   ; 3 uses
  %i.bi = getelementptr i8, ptr %i.aw, i64 %n.vec157
  br label %vec.epilog.vector.body158

vec.epilog.vector.body158:                        ; preds = %vec.epilog.vector.body158, %vec.epilog.ph155
  %index159 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph155 ], [ %index.next162, %vec.epilog.vector.body158 ] ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.aw, i64 %index159 ; 2 uses
  %wide.load161 = load <8 x i8>, ptr %next.gep160, align 1, !tbaa !79 ; 3 uses
  %i.bj = add <8 x i8> %wide.load161, splat (i8 -65)
  %i.bk = icmp ult <8 x i8> %i.bj, splat (i8 26)
  %11 = or disjoint <8 x i8> %wide.load161, splat (i8 32)
  %12 = select <8 x i1> %i.bk, <8 x i8> %11, <8 x i8> %wide.load161
  store <8 x i8> %12, ptr %next.gep160, align 1, !tbaa !79
  %index.next162 = add nuw i64 %index159, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.bl, label %vec.epilog.middle.block163, label %vec.epilog.vector.body158, !llvm.loop !3426

vec.epilog.middle.block163:                       ; preds = %vec.epilog.vector.body158
  %cmp.n164 = icmp eq i64 %i.ax, %n.vec157
  br i1 %cmp.n164, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76, label %.lr.ph.i.i70.preheader

.lr.ph.i.i70.preheader:                           ; preds = %iter.check151, %vec.epilog.iter.check153, %vec.epilog.middle.block163
  %.sroa.0.08.i.i71.ph = phi ptr [ %i.aw, %iter.check151 ], [ %i.az, %vec.epilog.iter.check153 ], [ %i.bi, %vec.epilog.middle.block163 ]
  br label %.lr.ph.i.i70

.lr.ph.i.i70:                                     ; preds = %.lr.ph.i.i70.preheader, %.lr.ph.i.i70
  %.sroa.0.08.i.i71 = phi ptr [ %i.bp, %.lr.ph.i.i70 ], [ %.sroa.0.08.i.i71.ph, %.lr.ph.i.i70.preheader ] ; 3 uses
  %i.bm = load i8, ptr %.sroa.0.08.i.i71, align 1, !tbaa !79 ; 3 uses
  %i.bn = add i8 %i.bm, -65
  %or.cond.i.i.i.i72 = icmp ult i8 %i.bn, 26
  %i.bo = or disjoint i8 %i.bm, 32
  %spec.select.i.i.i.i73 = select i1 %or.cond.i.i.i.i72, i8 %i.bo, i8 %i.bm
  store i8 %spec.select.i.i.i.i73, ptr %.sroa.0.08.i.i71, align 1, !tbaa !79
  %i.bp = getelementptr i8, ptr %.sroa.0.08.i.i71, i64 1 ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.bp, %i.ay
  br i1 %.not.i.i74, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76, label %.lr.ph.i.i70, !llvm.loop !3427

_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76: ; preds = %.lr.ph.i.i70, %vec.epilog.middle.block163, %middle.block148
  %.pr = load i64, ptr %i.at, align 8, !tbaa !139 ; 5 uses
  %i.bq = load i64, ptr %i.m, align 8, !tbaa !139 ; 4 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.thread, label %bb.g

_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68
  %i.bs = load i64, ptr %i.m, align 8, !tbaa !139
  br label %.thread

bb.f:                                             ; preds = %.noexc.i.i75
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76
  %i.bu = icmp eq i64 %.pr, 0
  br i1 %i.bu, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = add i64 %i.bq, 1                        ; 13 uses
  %i.bw = add i64 %.pr, 1                         ; 4 uses
  %i.bx = mul i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = icmp ugt i64 %i.bx, 2305843009213693951
  %i.bz = shl nuw i64 %i.bx, 3
  %i.ca = select i1 %i.by, i64 -1, i64 %i.bz      ; 2 uses
  %i.cb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ca) #64
          to label %bb.i unwind label %bb.j       ; 13 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cb, i8 0, i64 %i.ca, i1 false), !noalias !3428
  store i64 0, ptr %i.cb, align 8, !tbaa !33
  %umax = call i64 @llvm.umax.i64(i64 %i.bv, i64 1) ; 2 uses
  %min.iters.check166 = icmp ult i64 %i.bv, 4
  br i1 %min.iters.check166, label %scalar.ph.preheader, label %vector.ph167

vector.ph167:                                     ; preds = %bb.i
  %n.vec169 = and i64 %umax, -4                   ; 3 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph167
  %index171 = phi i64 [ 0, %vector.ph167 ], [ %index.next172, %vector.body170 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph167 ], [ %vec.ind.next, %vector.body170 ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %index171 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  store <2 x i64> %vec.ind, ptr %i.cc, align 8, !tbaa !33
  store <2 x i64> %step.add, ptr %i.cd, align 8, !tbaa !33
  %index.next172 = add nuw i64 %index171, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ce = icmp eq i64 %index.next172, %n.vec169
  br i1 %i.ce, label %middle.block173, label %vector.body170, !llvm.loop !3431

middle.block173:                                  ; preds = %vector.body170
  %cmp.n174 = icmp eq i64 %i.bv, %n.vec169
  br i1 %cmp.n174, label %.preheader108.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.i, %middle.block173
  %.051109.ph = phi i64 [ 0, %bb.i ], [ %n.vec169, %middle.block173 ]
  br label %scalar.ph

bb.j:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.aj
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.051109 = phi i64 [ %i.cj, %scalar.ph ], [ %.051109.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ci = getelementptr [8 x i8], ptr %i.cb, i64 %.051109
  store i64 %.051109, ptr %i.ci, align 8, !tbaa !33
  %i.cj = add nuw i64 %.051109, 1                 ; 2 uses
  %exitcond = icmp eq i64 %i.cj, %umax
  br i1 %exitcond, label %.preheader108.preheader, label %scalar.ph, !llvm.loop !3432

.preheader108.preheader:                          ; preds = %scalar.ph, %middle.block173
  %umax113 = call i64 @llvm.umax.i64(i64 %i.bw, i64 1) ; 2 uses
  %xtraiter = and i64 %umax113, 3                 ; 3 uses
  %i.ck = icmp ult i64 %i.bw, 4
  br i1 %i.ck, label %.preheader108.epil.preheader, label %.preheader108.preheader.new

.preheader108.preheader.new:                      ; preds = %.preheader108.preheader
  %unroll_iter = and i64 %umax113, -4
  br label %.preheader108

.preheader107.unr-lcssa:                          ; preds = %.preheader108
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader107, label %.preheader108.epil.preheader

.preheader108.epil.preheader:                     ; preds = %.preheader107.unr-lcssa, %.preheader108.preheader
  %.054110.epil.init = phi i64 [ 0, %.preheader108.preheader ], [ %i.db, %.preheader107.unr-lcssa ]
  %lcmp.mod175 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod175)
  br label %.preheader108.epil

.preheader108.epil:                               ; preds = %.preheader108.epil, %.preheader108.epil.preheader
  %.054110.epil = phi i64 [ %i.cn, %.preheader108.epil ], [ %.054110.epil.init, %.preheader108.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader108.epil ], [ 0, %.preheader108.epil.preheader ]
  %i.cl = mul i64 %.054110.epil, %i.bv
  %i.cm = getelementptr [8 x i8], ptr %i.cb, i64 %i.cl
  store i64 %.054110.epil, ptr %i.cm, align 8, !tbaa !33
  %i.cn = add nuw i64 %.054110.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader107, label %.preheader108.epil, !llvm.loop !3433

.preheader107:                                    ; preds = %.preheader108.epil, %.preheader107.unr-lcssa
  %i.co = load ptr, ptr %3, align 8, !tbaa !16
  %i.cp = load ptr, ptr %4, align 8, !tbaa !16
  %umax115 = call i64 @llvm.umax.i64(i64 %i.bw, i64 2)
  %umax117 = call i64 @llvm.umax.i64(i64 %i.bv, i64 2)
  br label %.preheader

.preheader108:                                    ; preds = %.preheader108, %.preheader108.preheader.new
  %.054110 = phi i64 [ 0, %.preheader108.preheader.new ], [ %i.db, %.preheader108 ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader108.preheader.new ], [ %niter.next.3, %.preheader108 ]
  %i.cq = mul i64 %.054110, %i.bv
  %i.cr = getelementptr [8 x i8], ptr %i.cb, i64 %i.cq
  store i64 %.054110, ptr %i.cr, align 8, !tbaa !33
  %i.cs = or disjoint i64 %.054110, 1             ; 2 uses
  %i.ct = mul i64 %i.cs, %i.bv
  %i.cu = getelementptr [8 x i8], ptr %i.cb, i64 %i.ct
  store i64 %i.cs, ptr %i.cu, align 8, !tbaa !33
  %i.cv = or disjoint i64 %.054110, 2             ; 2 uses
  %i.cw = mul i64 %i.cv, %i.bv
  %i.cx = getelementptr [8 x i8], ptr %i.cb, i64 %i.cw
  store i64 %i.cv, ptr %i.cx, align 8, !tbaa !33
  %i.cy = or disjoint i64 %.054110, 3             ; 2 uses
  %i.cz = mul i64 %i.cy, %i.bv
  %i.da = getelementptr [8 x i8], ptr %i.cb, i64 %i.cz
  store i64 %i.cy, ptr %i.da, align 8, !tbaa !33
  %i.db = add nuw i64 %.054110, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader107.unr-lcssa, label %.preheader108, !llvm.loop !3434

.preheader:                                       ; preds = %.preheader107, %bb.k
  %.053112 = phi i64 [ 1, %.preheader107 ], [ %i.de, %bb.k ] ; 4 uses
  %i.dc = add i64 %.053112, -1                    ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dc
  %.pre = load i8, ptr %i.dd, align 1, !tbaa !79
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.de = add nuw i64 %.053112, 1                 ; 2 uses
  %exitcond118 = icmp eq i64 %i.de, %umax117
  br i1 %exitcond118, label %_ZN6duckdb16LevenshteinArrayD2Ev.exit, label %.preheader, !llvm.loop !3435

bb.l:                                             ; preds = %.preheader, %bb.l
  %.052111 = phi i64 [ 1, %.preheader ], [ %i.ea, %bb.l ] ; 3 uses
  %i.df = add i64 %.052111, -1                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !79
  %i.di = icmp eq i8 %.pre, %i.dh
  %i.dj = select i1 %i.di, i64 0, i64 %2
  %i.dk = mul i64 %.052111, %i.bv
  %i.dl = getelementptr [8 x i8], ptr %i.cb, i64 %i.dk ; 2 uses
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %i.dc
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !33
  %i.do = add i64 %i.dn, 1
  %i.dp = mul i64 %i.df, %i.bv
  %i.dq = getelementptr [8 x i8], ptr %i.cb, i64 %i.dp ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %.053112
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !33
  %i.dt = getelementptr [8 x i8], ptr %i.dq, i64 %i.dc
  %i.du = add i64 %i.ds, 1
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !33
  %i.dw = add i64 %i.dv, %i.dj
  %i.dx = call noundef i64 @llvm.umin.i64(i64 %i.do, i64 %i.du)
  %i.dy = call noundef i64 @llvm.umin.i64(i64 %i.dx, i64 %i.dw)
  %i.dz = getelementptr [8 x i8], ptr %i.dl, i64 %.053112
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !33
  %i.ea = add nuw i64 %.052111, 1                 ; 2 uses
  %exitcond116 = icmp eq i64 %i.ea, %umax115
end_hunk_5
begin_hunk_6_@_ZN6duckdb17VirtualFileSystemD2Ev:bb.a
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1163 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10FileSystemEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10FileSystemEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #58, !inline_history !4071
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10FileSystemEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4070

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !4065
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #60
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1, label %_ZN6duckdb10shared_ptrINS_18FileSystemRegistryELb1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !73
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #58, !inline_history !4050
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #58, !inline_history !4050
  br label %_ZN6duckdb10shared_ptrINS_18FileSystemRegistryELb1EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZN6duckdb10shared_ptrINS_18FileSystemRegistryELb1EED2Ev.exit, !prof !81

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #58
  br label %_ZN6duckdb10shared_ptrINS_18FileSystemRegistryELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_18FileSystemRegistryELb1EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb17VirtualFileSystemD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6duckdb17VirtualFileSystemD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #58
  tail call void @_ZdlPv(ptr noundef nonnull %0) #60
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17VirtualFileSystem16OpenFileExtendedERKNS_12OpenFileInfoENS_13FileOpenFlagsENS_12optional_ptrINS_10FileOpenerELb1EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr.443") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 %3, i64 %4, ptr %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.duckdb::unique_ptr.443", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %15 = alloca %"class.duckdb::optional_ptr.1298", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.duckdb::shared_ptr.2140", align 8 ; 8 uses
  %22 = alloca %"class.duckdb::shared_ptr.2183", align 8 ; 7 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %23 = alloca %"class.duckdb::unique_ptr.443", align 8 ; 5 uses
  %24 = alloca %"class.duckdb::unique_ptr.443", align 8 ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::allocator", align 1   ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::allocator", align 1   ; 5 uses
  %29 = alloca %"class.duckdb::unique_ptr.443", align 8 ; 6 uses
  %30 = alloca %"class.duckdb::unique_ptr.443", align 8 ; 4 uses
  %.sroa.8.8.extract.shift = lshr i64 %4, 8
  %.sroa.8.8.extract.trunc = trunc i64 %.sroa.8.8.extract.shift to i8 ; 2 uses
  %.sroa.10.8.extract.shift = lshr i64 %4, 16
  %.sroa.10.8.extract.trunc = trunc i64 %.sroa.10.8.extract.shift to i8 ; 2 uses
  store ptr %5, ptr %15, align 8
  %i.f = icmp eq i8 %.sroa.10.8.extract.trunc, 0
  br i1 %i.f, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #58
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4072)
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.g, ptr %16, align 8, !tbaa !178, !alias.scope !4072
  %i.h = load ptr, ptr %2, align 8, !tbaa !16, !noalias !4072 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !139, !noalias !4072 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58, !noalias !4072
  store i64 %i.j, ptr %i.d, align 8, !tbaa !33, !noalias !4072
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %16, align 8, !tbaa !16, !alias.scope !4072
  %i.m = load i64, ptr %i.d, align 8, !tbaa !33, !noalias !4072
  store i64 %i.m, ptr %i.g, align 8, !tbaa !79, !alias.scope !4072
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc.i.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !79
  store i8 %i.o, ptr %i.n, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.d, align 8, !tbaa !33, !noalias !4072 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !139, !alias.scope !4072
  %i.r = load ptr, ptr %16, align 8, !tbaa !16, !alias.scope !4072
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58, !noalias !4072
  %i.t = load ptr, ptr %16, align 8, !tbaa !16, !alias.scope !4072 ; 6 uses
  %i.u = load i64, ptr %i.q, align 8, !tbaa !139, !alias.scope !4072 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %.not6.i.i = icmp samesign eq i64 %i.u, 0
  br i1 %.not6.i.i, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %min.iters.check = icmp ult i64 %i.u, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check292 = icmp ult i64 %i.u, 32
  br i1 %min.iters.check292, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.u, 24
  %n.vec = and i64 %i.u, -32                      ; 4 uses
  %i.w = getelementptr i8, ptr %i.t, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %index ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !79 ; 3 uses
  %wide.load293 = load <16 x i8>, ptr %i.x, align 1, !tbaa !79 ; 3 uses
  %i.y = add <16 x i8> %wide.load, splat (i8 -65)
  %i.z = add <16 x i8> %wide.load293, splat (i8 -65)
  %i.aa = icmp ult <16 x i8> %i.y, splat (i8 26)
  %i.ab = icmp ult <16 x i8> %i.z, splat (i8 26)
  %31 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.ac = or disjoint <16 x i8> %wide.load293, splat (i8 32)
  %i.ad = select <16 x i1> %i.aa, <16 x i8> %31, <16 x i8> %wide.load
  %32 = select <16 x i1> %i.ab, <16 x i8> %i.ac, <16 x i8> %wide.load293
  store <16 x i8> %i.ad, ptr %next.gep, align 1, !tbaa !79
  store <16 x i8> %32, ptr %i.x, align 1, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !4075

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !607

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec295 = and i64 %i.u, -8                    ; 3 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %n.vec295
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index296 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next299, %vec.epilog.vector.body ] ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.t, i64 %index296 ; 2 uses
  %wide.load298 = load <8 x i8>, ptr %next.gep297, align 1, !tbaa !79 ; 3 uses
  %i.ag = add <8 x i8> %wide.load298, splat (i8 -65)
  %i.ah = icmp ult <8 x i8> %i.ag, splat (i8 26)
  %33 = or disjoint <8 x i8> %wide.load298, splat (i8 32)
  %34 = select <8 x i1> %i.ah, <8 x i8> %33, <8 x i8> %wide.load298
  store <8 x i8> %34, ptr %next.gep297, align 1, !tbaa !79
  %index.next299 = add nuw i64 %index296, 8       ; 2 uses
  %i.ai = icmp eq i64 %index.next299, %n.vec295
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4076

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n300 = icmp eq i64 %i.u, %n.vec295
  br i1 %cmp.n300, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.aj = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !79 ; 3 uses
  %i.ak = add i8 %i.aj, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.ak, 26
  %i.al = or disjoint i8 %i.aj, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.al, i8 %i.aj
  store i8 %spec.select.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !79
  %i.am = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %i.v
  br i1 %.not.i.i, label %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !4077

_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre = load i64, ptr %i.q, align 8, !tbaa !139 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #58
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.an, ptr %17, align 8, !tbaa !178
  store i32 1886221358, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 4, ptr %i.ao, align 8, !tbaa !139
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i8 0, ptr %i.ap, align 4, !tbaa !79
  %i.aq = icmp ult i64 %.pre, 4
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ar = load ptr, ptr %16, align 8, !tbaa !16, !noalias !4078
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !79
  %i.av = icmp eq i8 %i.au, 112
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.preheader.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !79
  %i.ay = icmp eq i8 %i.ax, 109
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.az = getelementptr inbounds i8, ptr %i.as, i64 -3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !79
  %i.bb = icmp eq i8 %i.ba, 116
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.3, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %i.bc = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !79
  %i.be = icmp eq i8 %i.bd, 46
  br i1 %i.be, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %.lr.ph.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #58
  br label %bb.o

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #58
  %i.bf = add i64 %.pre, -4
  call void @llvm.experimental.noalias.scope.decl(metadata !4081)
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 8 uses
  store ptr %i.bg, ptr %18, align 8, !tbaa !178, !alias.scope !4081
  %i.bh = load ptr, ptr %16, align 8, !tbaa !16, !noalias !4081 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bf, i64 %.pre) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58, !noalias !4081
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !33, !noalias !4081
  %i.bi = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bi, label %.noexc10.i.i, label %._crit_edge.i.i.i55

.noexc10.i.i:                                     ; preds = %bb.e
  %i.bj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc56 unwind label %bb.n   ; 2 uses

.noexc56:                                         ; preds = %.noexc10.i.i
  store ptr %i.bj, ptr %18, align 8, !tbaa !16, !alias.scope !4081
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !33, !noalias !4081
  store i64 %i.bk, ptr %i.bg, align 8, !tbaa !79, !alias.scope !4081
  br label %._crit_edge.i.i.i55

._crit_edge.i.i.i55:                              ; preds = %.noexc56, %bb.e
  %i.bl = phi ptr [ %i.bj, %.noexc56 ], [ %i.bg, %bb.e ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i55
  %i.bm = load i8, ptr %i.bh, align 1, !tbaa !79
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !79
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bh, i64 %spec.select.i.i.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i55
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !33, !noalias !4081 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !139, !alias.scope !4081
  %i.bp = load ptr, ptr %18, align 8, !tbaa !16, !alias.scope !4081
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 0, ptr %i.bq, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58, !noalias !4081
  %i.br = load ptr, ptr %16, align 8, !tbaa !16   ; 6 uses
  %i.bs = icmp eq ptr %i.br, %i.g
  %i.bt = load ptr, ptr %18, align 8, !tbaa !16   ; 5 uses
  %i.bu = icmp eq ptr %i.bt, %i.bg                ; 2 uses
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.bu, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.bu, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !139 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  switch i64 %i.bv, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !79
  store i8 %i.bx, ptr %i.br, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bt, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.by = load i64, ptr %i.bo, align 8, !tbaa !139 ; 2 uses
  store i64 %i.by, ptr %i.q, align 8, !tbaa !139
  %i.bz = load ptr, ptr %16, align 8, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !79
  %.pre.i = load ptr, ptr %18, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bt, ptr %16, align 8, !tbaa !16
  %i.cb = load <2 x i64>, ptr %i.bo, align 8, !tbaa !79
  store <2 x i64> %i.cb, ptr %i.q, align 8, !tbaa !79
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cc = load i64, ptr %i.g, align 8, !tbaa !79
  store ptr %i.bt, ptr %16, align 8, !tbaa !16
  %i.cd = load <2 x i64>, ptr %i.bo, align 8, !tbaa !79
  store <2 x i64> %i.cd, ptr %i.q, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.br, ptr %18, align 8, !tbaa !16
  store i64 %i.cc, ptr %i.bg, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bg, ptr %18, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.ce = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.br, %bb.l ], [ %i.bg, %bb.m ]
  store i64 0, ptr %i.bo, align 8, !tbaa !139
  store i8 0, ptr %i.ce, align 1, !tbaa !79
  %i.cf = load ptr, ptr %18, align 8, !tbaa !16   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bg
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.cf) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #58
  br label %bb.o

bb.n:                                             ; preds = %.noexc10.i.i
  %i.ch = landingpad { ptr, i32 }
end_hunk_6
