Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Subprocess?download=true
inline.NumInlined: 2346
inline.NumDeleted: 1250
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNSt12system_errorC2ESt10error_codePKc:bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.h:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.i:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !38    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.s
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.i
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !39
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.h
  %.pn = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.au, %bb.i ] ; 2 uses
  %i.az = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.e
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !39
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ]
  %i.bd = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !39
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #49
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !38     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !179

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !39
  store i8 %i.v, ptr %i.t, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !39
  store i8 %i.w, ptr %i.m, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !43
  %i.x = load ptr, ptr %0, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !39
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5folly10Subprocess7OptionsC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 8 dereferenceable(736) %1) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode.116", align 8 ; 4 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !61   ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !66
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvEC2ERKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, 1152921504606846975
  br i1 %i.e, label %bb.c, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_3dtl4pairIiiEEEEmNS_11move_detail17integral_constantIjLj1EEEEC2IRKS6_mEENS0_27vector_uninitialized_size_tEOT_T0_.exit.i, !prof !46

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.31) #49
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_3dtl4pairIiiEEEEmNS_11move_detail17integral_constantIjLj1EEEEC2IRKS6_mEENS0_27vector_uninitialized_size_tEOT_T0_.exit.i: ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.b, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #54 ; 10 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !72
  store i64 %i.b, ptr %i.d, align 8, !tbaa !66
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !61 ; 8 uses
  %.not17.i.i = icmp eq i64 %.pre.i, 0
  br i1 %.not17.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvEC2ERKS7_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_3dtl4pairIiiEEEEmNS_11move_detail17integral_constantIjLj1EEEEC2IRKS6_mEENS0_27vector_uninitialized_size_tEOT_T0_.exit.i
  %i.h = load ptr, ptr %1, align 8, !tbaa !58     ; 9 uses
  %min.iters.check = icmp ult i64 %.pre.i, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %i.i = shl i64 %.pre.i, 3                       ; 3 uses
  %i.j = add i64 %i.i, -4                         ; 2 uses
  %i.k = getelementptr i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr i8, ptr %i.h, i64 %i.j
  %4 = getelementptr i8, ptr %i.g, i64 4
  %5 = getelementptr i8, ptr %i.g, i64 %i.i
  %6 = getelementptr nuw i8, ptr %i.h, i64 4
  %i.m = getelementptr i8, ptr %i.h, i64 %i.i
  %bound0 = icmp ult ptr %i.g, %i.l
  %bound1 = icmp ult ptr %i.h, %i.k
  %found.conflict = and i1 %bound0, %bound1
  %bound068 = icmp ult ptr %4, %i.m
  %bound169 = icmp ult ptr %6, %5
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx = or i1 %found.conflict, %found.conflict70
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.pre.i, -4                    ; 3 uses
  %i.n = and i64 %.pre.i, 3
  %i.o = shl i64 %n.vec, 3                        ; 2 uses
  %i.p = getelementptr i8, ptr %i.h, i64 %i.o
  %i.q = getelementptr i8, ptr %i.g, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 3                        ; 3 uses
  %i.s = or disjoint i64 %i.r, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.r
  %next.gep71 = getelementptr i8, ptr %i.h, i64 %i.s
  %next.gep72 = getelementptr i8, ptr %i.g, i64 %i.r
  %next.gep73 = getelementptr i8, ptr %i.g, i64 %i.s
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !33
  %wide.vec75 = load <4 x i32>, ptr %next.gep71, align 4, !tbaa !33
  store <4 x i32> %wide.vec, ptr %next.gep72, align 4, !tbaa !33
  store <4 x i32> %wide.vec75, ptr %next.gep73, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre.i, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvEC2ERKS7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.020.i.i.ph = phi i64 [ %.pre.i, %vector.memcheck ], [ %.pre.i, %.lr.ph.i.preheader.i ], [ %i.n, %middle.block ] ; 4 uses
  %.0819.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader.i ], [ %i.p, %middle.block ] ; 2 uses
  %.01618.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.preheader.i ], [ %i.q, %middle.block ] ; 2 uses
  %i.u = add i64 %.020.i.i.ph, -1
  %xtraiter = and i64 %.020.i.i.ph, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.020.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.prol ], [ %.020.i.i.ph, %.lr.ph.i.i.preheader ]
  %.0819.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.prol ], [ %.0819.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.y, %.lr.ph.i.i.prol ], [ %.01618.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.v = add i64 %.020.i.i.prol, -1               ; 2 uses
  %i.w = load <2 x i32>, ptr %.0819.i.i.prol, align 4, !tbaa !33
  store <2 x i32> %i.w, ptr %.01618.i.i.prol, align 4, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1330

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.020.i.i.unr = phi i64 [ %.020.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.v, %.lr.ph.i.i.prol ]
  %.0819.i.i.unr = phi ptr [ %.0819.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.x, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %.01618.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.y, %.lr.ph.i.i.prol ]
  %i.z = icmp ult i64 %i.u, 7
  br i1 %i.z, label %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvEC2ERKS7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.0819.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.01618.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.aa = load <2 x i32>, ptr %.0819.i.i, align 4, !tbaa !33
  store <2 x i32> %i.aa, ptr %.01618.i.i, align 4, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.ad = load <2 x i32>, ptr %i.ab, align 4, !tbaa !33
  store <2 x i32> %i.ad, ptr %i.ac, align 4, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %i.ag = load <2 x i32>, ptr %i.ae, align 4, !tbaa !33
  store <2 x i32> %i.ag, ptr %i.af, align 4, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 24
  %i.aj = load <2 x i32>, ptr %i.ah, align 4, !tbaa !33
  store <2 x i32> %i.aj, ptr %i.ai, align 4, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 32
  %i.am = load <2 x i32>, ptr %i.ak, align 4, !tbaa !33
  store <2 x i32> %i.am, ptr %i.al, align 4, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 40
  %i.ap = load <2 x i32>, ptr %i.an, align 4, !tbaa !33
  store <2 x i32> %i.ap, ptr %i.ao, align 4, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 48
  %i.as = load <2 x i32>, ptr %i.aq, align 4, !tbaa !33
  store <2 x i32> %i.as, ptr %i.ar, align 4, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 56
  %i.av = add i64 %.020.i.i, -8                   ; 2 uses
  %i.aw = load <2 x i32>, ptr %i.at, align 4, !tbaa !33
  store <2 x i32> %i.aw, ptr %i.au, align 4, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 64
  %.not.i6.i.7 = icmp eq i64 %i.av, 0
  br i1 %.not.i6.i.7, label %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvEC2ERKS7_.exit, label %.lr.ph.i.i, !llvm.loop !1331

_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvEC2ERKS7_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.a, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_3dtl4pairIiiEEEEmNS_11move_detail17integral_constantIjLj1EEEEC2IRKS6_mEENS0_27vector_uninitialized_size_tEOT_T0_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !42
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !38 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !43 ; 8 uses
  %i.bh = icmp ugt i64 %i.bg, 15
  br i1 %i.bh, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvEC2ERKS7_.exit
  %i.bi = icmp slt i64 %i.bg, 0
  br i1 %i.bi, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #49
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.bj = add nuw i64 %i.bg, 1                    ; 2 uses
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !46

.noexc6.i:                                        ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #49
          to label %.noexc22 unwind label %bb.ap

.noexc22:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #52
          to label %.noexc23 unwind label %bb.ap  ; 2 uses

.noexc23:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !38
  store i64 %i.bg, ptr %i.bd, align 8, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc23, %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvEC2ERKS7_.exit
  %i.bm = phi ptr [ %i.bl, %.noexc23 ], [ %i.bd, %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvEC2ERKS7_.exit ] ; 3 uses
  switch i64 %i.bg, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bn = load i8, ptr %i.be, align 1, !tbaa !39
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !39
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr align 1 %i.be, i64 %i.bg, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bg, ptr %i.bo, align 8, !tbaa !43
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bg
  store i8 0, ptr %i.bp, align 1, !tbaa !39
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !115
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !115
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !116 ; 2 uses
  %i.bx = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !113
  store <2 x ptr> %i.bx, ptr %i.bt, align 8, !tbaa !113
  %.not.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i, label %_ZN5folly10Subprocess7Options12AttrWithMetaIiEC2ERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !33
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !33
  br label %_ZN5folly10Subprocess7Options12AttrWithMetaIiEC2ERKS3_.exit

bb.k:                                             ; preds = %bb.i
  %i.cc = atomicrmw volatile add ptr %i.by, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5folly10Subprocess7Options12AttrWithMetaIiEC2ERKS3_.exit

_ZN5folly10Subprocess7Options12AttrWithMetaIiEC2ERKS3_.exit: ; preds = %bb.h, %bb.j, %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_0
