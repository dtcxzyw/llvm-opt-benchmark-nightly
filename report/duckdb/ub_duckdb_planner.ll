inline.NumInlined: 13015
inline.NumDeleted: 6155
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK6duckdb10unique_ptrINS_12TreeRendererESt14default_deleteIS1_ELb1EEptEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12TreeRendererESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb12TreeRenderer8ToStreamERNS_10RenderTreeERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10unique_ptrINS_10RenderTreeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !802    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10RenderTreeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.121, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_10RenderTreeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.e) #33
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #32
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %0, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.a, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !805
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb15LogicalOperator6VerifyERNS_13ClientContextE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15LogicalOperator8AddChildENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(97) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !721  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !825
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !722
  store i64 %i.f, ptr %i.c, align 8, !tbaa !722
  store ptr null, ptr %1, align 8, !tbaa !722
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !721
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !720  ; 10 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #35 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = load i64, ptr %1, align 8, !tbaa !722
  store i64 %i.u, ptr %i.t, align 8, !tbaa !722
  store ptr null, ptr %1, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = sub i64 %i.i, %i.j
  %i.w = add i64 %i.v, -8                         ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.z = add i64 %i.i, -8
  %i.aa = sub i64 %i.z, %i.j
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.ac
  %scevgep3 = getelementptr i8, ptr %i.h, i64 %i.ac
  %bound0 = icmp ult ptr %i.s, %scevgep3
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.h, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ag ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.h, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.ah = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !tbaa !722, !alias.scope !831, !noalias !826
  %wide.load5 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !722, !alias.scope !831, !noalias !826
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !722, !alias.scope !834, !noalias !831
  store <2 x i64> %wide.load5, ptr %i.ai, align 8, !tbaa !722, !alias.scope !834, !noalias !831
  %i.aj = getelementptr i8, ptr %next.gep4, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep4, align 8, !tbaa !722, !alias.scope !831, !noalias !826
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !722, !alias.scope !831, !noalias !826
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !836

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.preheader7:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.al = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !829, !noalias !826
  store i64 %i.al, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !826, !noalias !829
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !829, !noalias !826
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !837

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !720
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !721
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ap, ptr %i.d, align 8, !tbaa !825
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb15LogicalOperator19EstimateCardinalityERNS_13ClientContextE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !733, !range !263, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !734
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !777  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !777  ; 2 uses
  %.not11 = icmp eq ptr %i.g, %i.i
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.07.lcssa = phi i64 [ 0, %bb.c ], [ %i.p, %.lr.ph ] ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !733
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.07.lcssa, ptr %i.j, align 8, !tbaa !734
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0713 = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.c ]
  %.sroa.08.012 = phi ptr [ %i.q, %.lr.ph ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.08.012) ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(97) %i.k, ptr noundef nonnull align 8 dereferenceable(512) %1)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %.0713) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %.07.lcssa, %._crit_edge ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15LogicalOperator5PrintEv(ptr noundef nonnull align 8 dereferenceable(97) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(97) %0, i8 noundef zeroext 0)
  invoke void @_ZN6duckdb7Printer5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.d) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.h) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZNK6duckdb15LogicalOperator13GetTableIndexEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.431") align 8 captures(none) initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb15LogicalOperator4CopyERNS_13ClientContextE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.301") align 8 %0, ptr noundef nonnull align 8 dereferenceable(97) %1, ptr noundef nonnull align 8 dereferenceable(512) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.duckdb::MemoryStream", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::SerializationOptions", align 8 ; 14 uses
  %5 = alloca %"class.duckdb::SerializationCompatibility", align 8 ; 16 uses
  %6 = alloca %"class.duckdb::BinarySerializer", align 8 ; 16 uses
  %7 = alloca %"class.duckdb::SerializationOptions", align 8 ; 6 uses
  %8 = alloca %"class.duckdb::ErrorData", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::unordered_map.129", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %2)
  call void @_ZN6duckdb12MemoryStreamC1ERNS_9AllocatorEm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 512)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i8 0, ptr %4, align 8, !tbaa !838
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 0, ptr %i.c, align 1, !tbaa !841
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv:bb.a
bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_17GlobalBinderStateELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(129) ptr @_ZN6duckdb6Binder22GetStatementPropertiesEv(ptr noundef nonnull align 8 dereferenceable(472) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define ptr @_ZN6duckdb6Binder13GetParametersEv(ptr noundef nonnull align 8 dereferenceable(472) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !1100
  ret ptr %.sroa.0.0.copyload
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder13SetParametersERNS_17BoundParameterMapE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.d = ptrtoint ptr %1 to i64
  store i64 %i.d, ptr %i.c, align 8, !tbaa !1100
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !980    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_16QueryBinderStateELb1EE13AssertNotNullEb.exit, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.124, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_16QueryBinderStateELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder18AddUsingBindingSetENS_10unique_ptrINS_14UsingColumnSetESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1101 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 280 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1102
  %.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !tbaa !1103
  store i64 %i.h, ptr %i.e, align 8, !tbaa !1103
  store ptr null, ptr %1, align 8, !tbaa !1103
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !1101
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !1105 ; 10 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #35 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = load i64, ptr %1, align 8, !tbaa !1103
  store i64 %i.w, ptr %i.v, align 8, !tbaa !1103
  store ptr null, ptr %1, align 8, !tbaa !1103
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = sub i64 %i.k, %i.l
  %i.y = add i64 %i.x, -8                         ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ab = add i64 %i.k, -8
  %i.ac = sub i64 %i.ab, %i.l
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep3 = getelementptr i8, ptr %i.j, i64 %i.ae
  %bound0 = icmp ult ptr %i.u, %scevgep3
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.j, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ai ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.j, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.aj = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !tbaa !1103, !alias.scope !1111, !noalias !1106
  %wide.load5 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !1103, !alias.scope !1111, !noalias !1106
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1103, !alias.scope !1114, !noalias !1111
  store <2 x i64> %wide.load5, ptr %i.ak, align 8, !tbaa !1103, !alias.scope !1114, !noalias !1111
  %i.al = getelementptr i8, ptr %next.gep4, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep4, align 8, !tbaa !1103, !alias.scope !1111, !noalias !1106
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1103, !alias.scope !1111, !noalias !1106
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.preheader7:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.an = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1103, !alias.scope !1109, !noalias !1106
  store i64 %i.an, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1103, !alias.scope !1106, !noalias !1109
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1103, !alias.scope !1109, !noalias !1106
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.e
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1117

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.u, ptr %i.c, align 8, !tbaa !1105
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !1101
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !1102
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder25MoveCorrelatedExpressionsERS0_(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(472) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !610  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE.exit, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i

_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i:      ; preds = %bb.a, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i
  %i.e = phi ptr [ %i.i, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i ], [ %i.d, %bb.a ]
  %storemerge4.i = phi i64 [ %i.g, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %storemerge4.i
  tail call void @_ZN6duckdb6Binder19AddCorrelatedColumnERKNS_20CorrelatedColumnInfoE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.f)
  %i.g = add nuw i64 %storemerge4.i, 1            ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !610  ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 80
  %i.n = icmp ult i64 %i.g, %i.m
  br i1 %i.n, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i, label %_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE.exit, !llvm.loop !1118

_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE.exit: ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i, %bb.a
  %i.o = phi ptr [ %i.c, %bb.a ], [ %i.h, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i ] ; 2 uses
  %i.p = phi ptr [ %i.d, %bb.a ], [ %i.i, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i, label %_ZN6duckdb17CorrelatedColumns5clearEv.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE.exit, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i.i.i ], [ %i.p, %_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE.exit ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 56
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.r) #33
  br label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #32
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, %i.o
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !997

_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i.i.i
  store ptr %i.p, ptr %i.b, align 8, !tbaa !610
  br label %_ZN6duckdb17CorrelatedColumns5clearEv.exit

_ZN6duckdb17CorrelatedColumns5clearEv.exit:       ; preds = %_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE.exit, %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !610
  %i.c = load ptr, ptr %1, align 8, !tbaa !996    ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit

._crit_edge:                                      ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit, %bb.a
  ret void

_ZNK6duckdb17CorrelatedColumnsixERKm.exit:        ; preds = %bb.a, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit
  %i.d = phi ptr [ %i.h, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit ], [ %i.c, %bb.a ]
  %storemerge4 = phi i64 [ %i.f, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %storemerge4
  tail call void @_ZN6duckdb6Binder19AddCorrelatedColumnERKNS_20CorrelatedColumnInfoE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.e)
  %i.f = add nuw i64 %storemerge4, 1              ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !610
  %i.h = load ptr, ptr %1, align 8, !tbaa !996    ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 80
  %i.m = icmp ult i64 %i.f, %i.l
  br i1 %i.m, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit, label %._crit_edge, !llvm.loop !1118
}

; Function Attrs: mustprogress uwtable
define ptr @_ZN6duckdb6Binder18GetMatchingBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !11
  store i8 0, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !11
  store i8 0, ptr %i.c, align 8, !tbaa !14
  %i.e = invoke ptr @_ZN6duckdb6Binder18GetMatchingBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_RNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.f) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN6duckdb6Binder13BindReturningENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_17TableCatalogEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS2_INS_15LogicalOperatorES4_ISJ_ELb1EEESt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSN_EEE:bb.a
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn42 = phi { ptr, i32 } [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.hd = load ptr, ptr %18, align 8, !tbaa !104  ; 3 uses
  %.not.i78 = icmp eq ptr %i.hd, null
  br i1 %.not.i78, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i79

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i79: ; preds = %bb.bh
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(88) %i.hd) #32, !inline_history !121
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i79, %bb.bh, %bb.be
  %.pn42.pn = phi { ptr, i32 } [ %i.gy, %bb.be ], [ %.pn42, %bb.bh ], [ %.pn42, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.cn

._crit_edge.thread:                               ; preds = %bb.aj, %._crit_edge
  %i.hh = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.bi unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread

bb.bi:                                            ; preds = %._crit_edge.thread
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void @__cxa_throw(ptr nonnull %i.hh, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.cr unwind label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread: ; preds = %._crit_edge.thread
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.019 = phi i1 [ false, %bb.bj ], [ true, %bb.bi ] ; 2 uses
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hk = load ptr, ptr %20, align 8, !tbaa !15   ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.bk
  call void @_ZdlPv(ptr noundef %i.hk) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br i1 %.019, label %bb.bl, label %bb.cn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br i1 %.019, label %bb.bl, label %bb.cn

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %.pn38155 = phi { ptr, i32 } [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread ], [ %i.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ]
  call void @__cxa_free_exception(ptr %i.hh) #32
  br label %bb.cn

bb.bm:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.ho = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn)
          to label %bb.bn unwind label %bb.cj     ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !1087 ; 2 uses
  %i.hq = add i64 %i.hp, 1
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !1087
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.hr = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #35
          to label %.noexc87 unwind label %bb.cj  ; 3 uses

.noexc87:                                         ; preds = %bb.bn
  %i.hs = load ptr, ptr %15, align 8, !tbaa !281, !noalias !1166
  store ptr %i.hs, ptr %8, align 8, !tbaa !281, !noalias !1166
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.gv, ptr %i.ht, align 8, !tbaa !283, !noalias !1166
  %i.hu = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.gu, ptr %i.hu, align 8, !tbaa !284, !noalias !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !1166
  invoke void @_ZN6duckdb17LogicalProjectionC1EmNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.hr, i64 noundef %i.hp, ptr noundef nonnull %8)
          to label %bb.bo unwind label %bb.bq, !noalias !1166

bb.bo:                                            ; preds = %.noexc87
  store ptr %i.hr, ptr %22, align 8, !tbaa !1169, !alias.scope !1166
  %i.hv = load ptr, ptr %8, align 8, !tbaa !281, !noalias !1166 ; 3 uses
  %i.hw = load ptr, ptr %i.ht, align 8, !tbaa !283, !noalias !1166 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.hv, %i.hw
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i85

.lr.ph.i.i.i.i85:                                 ; preds = %bb.bo, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ib, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.hv, %bb.bo ] ; 2 uses
  %i.hx = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !104, !noalias !1166 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i85
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !16, !noalias !1166
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !1166
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(88) %i.hx) #32, !noalias !1166, !inline_history !1171
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i85
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.ib, %i.hw
  br i1 %.not.i.i.i.i86, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i85, !llvm.loop !287

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !281, !noalias !1166
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.bo
  %i.ic = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.hv, %bb.bo ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i1.i.i, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ic) #33, !noalias !1166
  br label %bb.br

bb.bq:                                            ; preds = %.noexc87
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #32, !noalias !1166
  call void @_ZdlPv(ptr noundef nonnull %i.hr) #33, !noalias !1166
  br label %.body88

bb.br:                                            ; preds = %bb.bp, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ie = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.bs unwind label %bb.ck     ; 3 uses

bb.bs:                                            ; preds = %bb.br
  %i.if = load i64, ptr %6, align 8, !tbaa !722   ; 4 uses
  %i.ig = inttoptr i64 %i.if to ptr               ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !722
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 24 ; 3 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !721 ; 6 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 32 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !825
  %.not.i.i.i = icmp eq ptr %i.ij, %i.il
  br i1 %.not.i.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i64 %i.if, ptr %i.ij, align 8, !tbaa !722
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store ptr %i.im, ptr %i.ii, align 8, !tbaa !721
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

bb.bu:                                            ; preds = %bb.bs
  %i.in = load ptr, ptr %i.ih, align 8, !tbaa !720 ; 10 uses
  %i.io = ptrtoint ptr %i.ij to i64               ; 3 uses
  %i.ip = ptrtoint ptr %i.in to i64               ; 3 uses
  %i.iq = sub i64 %i.io, %i.ip                    ; 3 uses
  %i.ir = icmp eq i64 %i.iq, 9223372036854775800
  br i1 %i.ir, label %bb.bv, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc90 unwind label %bb.cl

.noexc90:                                         ; preds = %bb.bv
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bu
  %i.is = ashr exact i64 %i.iq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.is, i64 1)
  %i.it = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.is ; 2 uses
  %i.iu = icmp ult i64 %i.it, %i.is
  %i.iv = call i64 @llvm.umin.i64(i64 %i.it, i64 1152921504606846975)
  %i.iw = select i1 %i.iu, i64 1152921504606846975, i64 %i.iv ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.iw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ix = shl nuw nsw i64 %i.iw, 3
  %i.iy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ix) #35
          to label %.noexc91 unwind label %bb.cl  ; 10 uses

.noexc91:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.iq
  store i64 %i.if, ptr %i.iz, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.in, %i.ij
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc91
  %i.ja = sub i64 %i.io, %i.ip
  %i.jb = add i64 %i.ja, -8                       ; 2 uses
  %i.jc = lshr i64 %i.jb, 3
  %i.jd = add nuw nsw i64 %i.jc, 1                ; 2 uses
  %min.iters.check268 = icmp ult i64 %i.jb, 152
  br i1 %min.iters.check268, label %.lr.ph.i.i.i.i.i.i.i.i.preheader283, label %vector.memcheck261

vector.memcheck261:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.je = add i64 %i.io, -8
  %i.jf = sub i64 %i.je, %i.ip
  %i.jg = and i64 %i.jf, -8
  %i.jh = add i64 %i.jg, 8                        ; 2 uses
  %scevgep262 = getelementptr i8, ptr %i.iy, i64 %i.jh
  %scevgep263 = getelementptr i8, ptr %i.in, i64 %i.jh
  %bound0264 = icmp ult ptr %i.iy, %scevgep263
  %bound1265 = icmp ult ptr %i.in, %scevgep262
  %found.conflict266 = and i1 %bound0264, %bound1265
  br i1 %found.conflict266, label %.lr.ph.i.i.i.i.i.i.i.i.preheader283, label %vector.ph269

vector.ph269:                                     ; preds = %vector.memcheck261
  %n.vec271 = and i64 %i.jd, 4611686018427387900  ; 3 uses
  %i.ji = shl i64 %n.vec271, 3                    ; 2 uses
  %i.jj = getelementptr i8, ptr %i.iy, i64 %i.ji  ; 2 uses
  %i.jk = getelementptr i8, ptr %i.in, i64 %i.ji
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph269
  %index273 = phi i64 [ 0, %vector.ph269 ], [ %index.next278, %vector.body272 ] ; 2 uses
  %i.jl = shl i64 %index273, 3                    ; 2 uses
  %next.gep274 = getelementptr i8, ptr %i.iy, i64 %i.jl ; 2 uses
  %next.gep275 = getelementptr i8, ptr %i.in, i64 %i.jl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.jm = getelementptr i8, ptr %next.gep275, i64 16
  %wide.load276 = load <2 x i64>, ptr %next.gep275, align 8, !tbaa !722, !alias.scope !1177, !noalias !1172
  %wide.load277 = load <2 x i64>, ptr %i.jm, align 8, !tbaa !722, !alias.scope !1177, !noalias !1172
  %i.jn = getelementptr i8, ptr %next.gep274, i64 16
  store <2 x i64> %wide.load276, ptr %next.gep274, align 8, !tbaa !722, !alias.scope !1180, !noalias !1177
  store <2 x i64> %wide.load277, ptr %i.jn, align 8, !tbaa !722, !alias.scope !1180, !noalias !1177
  %i.jo = getelementptr i8, ptr %next.gep275, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep275, align 8, !tbaa !722, !alias.scope !1177, !noalias !1172
  store <2 x ptr> splat (ptr null), ptr %i.jo, align 8, !tbaa !722, !alias.scope !1177, !noalias !1172
  %index.next278 = add nuw i64 %index273, 4       ; 2 uses
  %i.jp = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.jp, label %middle.block279, label %vector.body272, !llvm.loop !1182

middle.block279:                                  ; preds = %vector.body272
  %cmp.n280 = icmp eq i64 %i.jd, %n.vec271
  br i1 %cmp.n280, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader283

.lr.ph.i.i.i.i.i.i.i.i.preheader283:              ; preds = %vector.memcheck261, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block279
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.iy, %vector.memcheck261 ], [ %i.iy, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.jj, %middle.block279 ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.in, %vector.memcheck261 ], [ %i.in, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.jk, %middle.block279 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader283, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader283 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader283 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.jq = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !1175, !noalias !1172
  store i64 %i.jq, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !1172, !noalias !1175
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !1175, !noalias !1172
  %i.jr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.jr, %i.ij
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1183

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block279, %.noexc91
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.iy, %.noexc91 ], [ %i.jj, %middle.block279 ], [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.in) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.bw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.iy, ptr %i.ih, align 8, !tbaa !720
  store ptr %i.jt, ptr %i.ii, align 8, !tbaa !721
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.iw
  store ptr %i.ju, ptr %i.ik, align 8, !tbaa !825
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bt, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i
  %i.jv = load ptr, ptr %22, align 8, !tbaa !1169
  store ptr null, ptr %22, align 8, !tbaa !1169
  %i.jw = load ptr, ptr %0, align 8, !tbaa !722   ; 3 uses
  store ptr %i.jv, ptr %0, align 8, !tbaa !722
  %.not.i.i.i.i.i93 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i.i.i93, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit96, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.jw) #32, !inline_history !1057
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit96

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit96: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.ka = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn)
          to label %bb.bx unwind label %bb.cm     ; 2 uses

bb.bx:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit96
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 121
  store i8 0, ptr %i.kb, align 1, !tbaa !1184
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 123
  store i8 0, ptr %i.kc, align 1, !tbaa !1185
  %i.kd = load ptr, ptr %22, align 8, !tbaa !1169 ; 3 uses
  %.not.i98 = icmp eq ptr %i.kd, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i: ; preds = %bb.bx
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(112) %i.kd) #32, !inline_history !1186
  br label %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bx, %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  %i.kh = load ptr, ptr %17, align 8, !tbaa !520  ; 3 uses
  %i.ki = load ptr, ptr %i.dp, align 8, !tbaa !517 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.kh, %i.ki
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kn, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.kh, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.kj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !471 ; 3 uses
  %.not.i.i.i.i.i99 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i.i.i99, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(56) %i.kj) #32, !inline_history !1187
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.kn, %i.ki
  br i1 %.not.i.i.i100, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1059

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !520
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit
  %i.ko = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.kh, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ko) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @_ZN6duckdb16ExpressionBinderD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.kp = load ptr, ptr %12, align 8, !tbaa !480
  %i.kq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !477
  invoke void @_ZSt8_DestroyIPN6duckdb11ColumnIndexEEvT_S3_(ptr noundef %i.kp, ptr noundef %i.kr)
          to label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i unwind label %bb.ca, !inline_history !1188

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.ks = load ptr, ptr %12, align 8, !tbaa !480  ; 2 uses
  %.not.i.i.i108 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ks) #33, !inline_history !1188
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit

bb.ca:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.kt = landingpad { ptr, i32 }
          catch ptr null
  %i.ku = extractvalue { ptr, i32 } %i.kt, 0
  call void @__clang_call_terminate(ptr %i.ku) #36, !inline_history !1188
  unreachable

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.kv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i109 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i109, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 4 uses
  %i.ky = load atomic i64, ptr %i.kx acquire, align 8 ; 2 uses
  %i.kz = icmp eq i64 %i.ky, 4294967297
  %i.la = trunc i64 %i.ky to i32                  ; 2 uses
  br i1 %i.kz, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.kx, align 8, !tbaa !210
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
end_hunk_2
begin_hunk_3_@_ZN6duckdb6Binder13BindReturningENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_17TableCatalogEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS2_INS_15LogicalOperatorES4_ISJ_ELb1EEESt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSN_EEE:bb.a
bb.ch:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.lt) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.lu = load ptr, ptr %9, align 8, !tbaa !393   ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !392 ; 2 uses
  %.not4.i.i.i117 = icmp eq ptr %i.lu, %i.lw
  br i1 %.not4.i.i.i117, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.lr.ph.i.i.i118
  %.05.i.i.i119 = phi ptr [ %i.lx, %.lr.ph.i.i.i118 ], [ %i.lu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i119) #32
  %i.lx = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 24 ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %i.lx, %i.lw
  br i1 %.not.i.i.i120, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i118, !llvm.loop !426

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i118
  %.pr.i121 = load ptr, ptr %9, align 8, !tbaa !393
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ly = phi ptr [ %.pr.i121, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.lu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i122 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i1.i122, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ly) #33
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.cj:                                            ; preds = %bb.bn, %bb.bm
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %.body88

bb.ck:                                            ; preds = %bb.br
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125

bb.cl:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.bv
  %i.mb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i123 = icmp eq i64 %i.if, 0
  br i1 %.not.i123, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i124

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i124: ; preds = %bb.cl
  %i.mc = load ptr, ptr %i.ig, align 8, !tbaa !16
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ig) #32, !inline_history !1073
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125

bb.cm:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit96
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i124, %bb.cl, %bb.cm, %bb.ck
  %.pn = phi { ptr, i32 } [ %i.mf, %bb.cm ], [ %i.ma, %bb.ck ], [ %i.mb, %bb.cl ], [ %i.mb, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i124 ] ; 2 uses
  %i.mg = load ptr, ptr %22, align 8, !tbaa !1169 ; 3 uses
  %.not.i126 = icmp eq ptr %i.mg, null
  br i1 %.not.i126, label %.body88, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i127

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i127: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !16
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(112) %i.mg) #32, !inline_history !1186
  br label %.body88

.body88:                                          ; preds = %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i127, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125, %bb.cj, %bb.bq
  %.pn.pn = phi { ptr, i32 } [ %i.id, %bb.bq ], [ %i.lz, %bb.cj ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125 ], [ %.pn, %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.bd, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.bl, %.body88, %bb.ao
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.ao ], [ %.pn38155, %bb.bl ], [ %i.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn.pn, %.body88 ], [ %.pn42.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80 ], [ %i.gx, %bb.bd ], [ %i.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ]
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #32
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #32
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.an
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %bb.cn ], [ %i.ef, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @_ZN6duckdb16ExpressionBinderD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %14) #32
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.am
  %.pn42.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn, %bb.co ], [ %i.ee, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %.body

.body:                                            ; preds = %bb.w, %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h, %bb.cp, %bb.al, %bb.ak
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.ak ], [ %.pn42.pn.pn.pn.pn.pn, %bb.cp ], [ %i.ed, %bb.al ], [ %i.af, %bb.h ], [ %i.bx, %bb.y ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bo, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #32
  br label %bb.cq

bb.cq:                                            ; preds = %.body, %bb.g
  %.pn49.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn, %.body ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  resume { ptr, i32 } %.pn49.pn.pn.pn.pn

bb.cr:                                            ; preds = %bb.bj
  unreachable
}

declare { ptr, i8 } @_ZNK6duckdb10ColumnList7LogicalEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb16ColumnDefinition4NameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK6duckdb16ColumnDefinition9GeneratedEv(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext12AddBaseTableEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEERNS9_INS_11ColumnIndexELb1ESaISJ_EEERNS_17TableCatalogEntryESt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSQ_EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(448) %6, ptr noundef nonnull %7) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %8 = alloca %"class.duckdb::unique_ptr.1397", align 8 ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr %6, ptr %i.b, align 8, !tbaa !1189
  call void @_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEEPNS_17TableCatalogEntryERmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSS_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1397") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %7)
  %i.c = load ptr, ptr %8, align 8, !tbaa !1191   ; 5 uses
  store ptr null, ptr %8, align 8, !tbaa !1191
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1005 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1193
  %.not.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !1006
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !1005
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !1004 ; 10 uses
  %i.l = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.c, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 4 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.t, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #35
          to label %.noexc7 unwind label %bb.d    ; 12 uses

.noexc7:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %i.c to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !1006
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc7
  %i.y = sub i64 %i.l, %i.m
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.ac = add i64 %i.l, -8
  %i.ad = sub i64 %i.ac, %i.m
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.af
  %scevgep27 = getelementptr i8, ptr %i.k, i64 %i.af
  %bound0 = icmp ult ptr %i.v, %scevgep27
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.k, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aj ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.k, i64 %i.aj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.ak = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep28, align 8, !tbaa !1006, !alias.scope !1199, !noalias !1194
  %wide.load29 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !1006, !alias.scope !1199, !noalias !1194
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1006, !alias.scope !1202, !noalias !1199
  store <2 x i64> %wide.load29, ptr %i.al, align 8, !tbaa !1006, !alias.scope !1202, !noalias !1199
  %i.am = getelementptr i8, ptr %next.gep28, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep28, align 8, !tbaa !1006, !alias.scope !1199, !noalias !1194
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !1006, !alias.scope !1199, !noalias !1194
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.i.i.i.preheader31:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader31 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1197, !noalias !1194
  store i64 %i.ao, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1194, !noalias !1197
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1197, !noalias !1194
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1205

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc7
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.noexc7 ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread24, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread24: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.v, ptr %i.d, align 8, !tbaa !1004
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !1005
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.as, ptr %i.g, align 8, !tbaa !1193
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #33
  %.pre.pre = load ptr, ptr %8, align 8, !tbaa !1191 ; 3 uses
  store ptr %i.v, ptr %i.d, align 8, !tbaa !1004
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !1005
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.at, ptr %i.g, align 8, !tbaa !1193
  %.not.i8 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit
  %i.au = load ptr, ptr %.pre.pre, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(296) %.pre.pre) #32, !inline_history !1206
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread24, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  ret void

bb.d:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %.not.i9 = icmp eq ptr %i.c, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit11, label %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i10

_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i10: ; preds = %bb.d
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.c) #32, !inline_history !1207
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit11

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit11: ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i10
  %i.bb = load ptr, ptr %8, align 8, !tbaa !1191  ; 3 uses
  %.not.i12 = icmp eq ptr %i.bb, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit14, label %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i13

_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i13: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit11
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(296) %i.bb) #32, !inline_history !1206
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit14

_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit14: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit11, %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  resume { ptr, i32 } %i.ax
}

declare void @_ZN6duckdb15ReturningBinderC1ERNS_6BinderERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(512)) unnamed_addr #3

declare void @_ZN6duckdb6Binder21ExpandStarExpressionsERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES9_(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1169   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.121, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
end_hunk_3
begin_hunk_4_@_ZN6duckdb11BindContext16GetTypesAndNamesERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERNS1_INS_11LogicalTypeELb1ESaISB_EEE:bb.a
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !15
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !18
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.af = phi ptr [ %i.ad, %.noexc.i.i ], [ %i.y, %bb.c ] ; 2 uses
  switch i64 %i.ab, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !14
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !11
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !295
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.am, ptr %i.i, align 8, !tbaa !295
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.f:                                             ; preds = %_ZNK6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.f
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !392
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !393 ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 24                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.031, ptr %i.b, align 8, !tbaa !18
  store i64 %i.as, ptr %i.c, align 8, !tbaa !18
  %.not.i.i.i14 = icmp ult i64 %.031, %i.as
  br i1 %.not.i.i.i14, label %_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm.exit, label %.noexc.i23, !prof !126

.noexc.i23:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.at = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.au, ptr %3, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 55, ptr %i.a, align 8, !tbaa !18
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i15 ; 3 uses

.noexc24:                                         ; preds = %.noexc.i23
  store ptr %i.av, ptr %3, align 8, !tbaa !15
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.av, ptr noundef nonnull align 1 dereferenceable(55) @.str.109, i64 55, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  store i8 0, ptr %i.ay, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc24
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.k unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i15: ; preds = %.noexc.i23
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %.noexc24
  %.0.i.i.i18 = phi i1 [ false, %bb.g ], [ true, %.noexc24 ] ; 2 uses
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bb = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.au
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.bb) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %.0.i.i.i18, label %bb.i, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i20: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %.0.i.i.i18, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i15
  %.pn8.i.i.i16 = phi { ptr, i32 } [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i15 ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i20 ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19 ]
  call void @__cxa_free_exception(ptr %i.at) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19
  %.pn7.i.i.i17 = phi { ptr, i32 } [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i20 ], [ %.pn8.i.i.i16, %bb.i ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19 ]
  resume { ptr, i32 } %.pn7.i.i.i17

bb.k:                                             ; preds = %bb.g
  unreachable

_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.031 ; 2 uses
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !392 ; 3 uses
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !379
  %.not.i21 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm.exit
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !392
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.bh, ptr %i.k, align 8, !tbaa !392
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.m:                                             ; preds = %_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm.exit
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.l, %bb.m
  %i.bi = add nuw i64 %.031, 1                    ; 2 uses
  %i.bj = load ptr, ptr %i.p, align 8, !tbaa !295
  %i.bk = load ptr, ptr %i.n, align 8, !tbaa !293 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 5
  %i.bp = icmp ult i64 %i.bi, %i.bo
  br i1 %i.bp, label %_ZNK6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm.exit, label %._crit_edge, !llvm.loop !1471
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1005 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1193
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !1006
  store i64 %i.f, ptr %i.c, align 8, !tbaa !1006
  store ptr null, ptr %1, align 8, !tbaa !1006
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !1005
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !1004 ; 10 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #35 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = load i64, ptr %1, align 8, !tbaa !1006
  store i64 %i.u, ptr %i.t, align 8, !tbaa !1006
  store ptr null, ptr %1, align 8, !tbaa !1006
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = sub i64 %i.i, %i.j
  %i.w = add i64 %i.v, -8                         ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.z = add i64 %i.i, -8
  %i.aa = sub i64 %i.z, %i.j
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.ac
  %scevgep3 = getelementptr i8, ptr %i.h, i64 %i.ac
  %bound0 = icmp ult ptr %i.s, %scevgep3
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.h, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ag ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.h, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  %i.ah = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !tbaa !1006, !alias.scope !1477, !noalias !1472
  %wide.load5 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !1006, !alias.scope !1477, !noalias !1472
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1006, !alias.scope !1480, !noalias !1477
  store <2 x i64> %wide.load5, ptr %i.ai, align 8, !tbaa !1006, !alias.scope !1480, !noalias !1477
  %i.aj = getelementptr i8, ptr %next.gep4, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep4, align 8, !tbaa !1006, !alias.scope !1477, !noalias !1472
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !1006, !alias.scope !1477, !noalias !1472
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1482

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.preheader7:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  %i.al = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1475, !noalias !1472
  store i64 %i.al, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1472, !noalias !1475
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1475, !noalias !1472
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1483

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !1004
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !1005
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ap, ptr %i.d, align 8, !tbaa !1193
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEEPNS_17TableCatalogEntryERmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSS_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1397") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(56) %7) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::vector.212", align 8 ; 6 uses
  %9 = alloca %"class.duckdb::vector.183", align 8 ; 8 uses
  %10 = alloca %"class.std::unordered_map.386", align 8 ; 11 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #35 ; 3 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.m

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295  ; 3 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !293    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !107

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #35
          to label %.noexc13 unwind label %bb.n

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.j = phi ptr [ null, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %9, align 8, !tbaa !293
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !295
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !380
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.d, ptr %i.c, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc13
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  br label %.body

bb.e:                                             ; preds = %.noexc13
  store ptr %i.n, ptr %i.k, align 8, !tbaa !295
  %i.p = load ptr, ptr %5, align 8, !tbaa !1189
  %i.q = load i64, ptr %6, align 8, !tbaa !18
  %i.r = load ptr, ptr %7, align 8, !tbaa !432    ; 3 uses
  store ptr %i.r, ptr %10, align 8, !tbaa !432
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !434  ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !434
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !435  ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !143
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !436
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !436
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !412
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 5 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !437
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.af = icmp eq ptr %i.r, %i.ae
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.ad, ptr %10, align 8, !tbaa !432
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !437
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !437
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = phi ptr [ %i.ad, %bb.f ], [ %i.r, %bb.e ]
  %.not.i.i.i.i14 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i14, label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !18
  %i.ak = urem i64 %i.aj, %i.u
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ak
  store ptr %i.v, ptr %i.al, align 8, !tbaa !150
  br label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit

_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit: ; preds = %bb.g, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.am, align 8, !tbaa !438
  store i64 1, ptr %i.t, align 8, !tbaa !434
  store ptr null, ptr %i.ae, align 8, !tbaa !437
  store ptr %i.ae, ptr %7, align 8, !tbaa !432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb12TableBindingC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaISA_EEENS9_IS6_Lb1ESaIS6_EEERNS9_INS_11ColumnIndexELb1ESaISF_EEENS_12optional_ptrINS_13StandardEntryELb1EEEmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSN_EEE(ptr noundef nonnull align 8 dereferenceable(296) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.p, i64 noundef %i.q, ptr noundef nonnull %10)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !1191
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !435 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6duckdb11BindContext12AddBaseTableEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEERNS9_INS_11ColumnIndexELb1ESaISJ_EEERNS_17TableCatalogEntryEb:bb.a

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !18
  %i.ao = urem i64 %i.an, %i.ab
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ao
  store ptr %i.af, ptr %i.ap, align 8, !tbaa !150
  br label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit

_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit: ; preds = %bb.i, %bb.j
  store i64 0, ptr %i.e, align 8, !tbaa !438
  store i64 1, ptr %i.b, align 8, !tbaa !434
  store ptr null, ptr %i.a, align 8, !tbaa !437
  store ptr %i.a, ptr %8, align 8, !tbaa !432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb11BindContext12AddBaseTableEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEERNS9_INS_11ColumnIndexELb1ESaISJ_EEERNS_17TableCatalogEntryESt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSQ_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(448) %6, ptr noundef nonnull %10)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !435 ; 2 uses
  %.not5.i.i.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not5.i.i.i.i13, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i19, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.k, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i17
  %.06.i.i.i.i15 = phi ptr [ %i.ar, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i17 ], [ %i.aq, %bb.k ] ; 5 uses
  %i.ar = load ptr, ptr %.06.i.i.i.i15, align 8, !tbaa !143 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.at) #32
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 32
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i16: ; preds = %.lr.ph.i.i.i.i14
  call void @_ZdlPv(ptr noundef %i.au) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i17

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i17: ; preds = %.lr.ph.i.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i16
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i15) #33
  %.not.i.i.i.i18 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i18, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i19, label %.lr.ph.i.i.i.i14, !llvm.loop !445

_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i19: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i17, %bb.k
  %i.ax = load ptr, ptr %10, align 8, !tbaa !432
  %i.ay = load i64, ptr %i.ae, align 8, !tbaa !434
  %i.az = shl i64 %i.ay, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %i.az, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ba = load ptr, ptr %10, align 8, !tbaa !432  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ai
  br i1 %i.bb, label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit21, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i19
  call void @_ZdlPv(ptr noundef %i.ba) #33
  br label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit21

_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit21: ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i19, %bb.l
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !435 ; 2 uses
  %.not5.i.i.i.i22 = icmp eq ptr %i.bc, null
  br i1 %.not5.i.i.i.i22, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i28, label %.lr.ph.i.i.i.i23

.lr.ph.i.i.i.i23:                                 ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit21, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i26
  %.06.i.i.i.i24 = phi ptr [ %i.bd, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i26 ], [ %i.bc, %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit21 ] ; 5 uses
  %i.bd = load ptr, ptr %.06.i.i.i.i24, align 8, !tbaa !143 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i24, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i24, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bf) #32
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !15 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i24, i64 32
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i25: ; preds = %.lr.ph.i.i.i.i23
  call void @_ZdlPv(ptr noundef %i.bg) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i26

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i26: ; preds = %.lr.ph.i.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i25
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i24) #33
  %.not.i.i.i.i27 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i27, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i28, label %.lr.ph.i.i.i.i23, !llvm.loop !445

_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i28: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i26, %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit21
  %i.bj = load ptr, ptr %8, align 8, !tbaa !432
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !434
  %i.bl = shl i64 %i.bk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %i.bl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.bm = load ptr, ptr %8, align 8, !tbaa !432   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.a
  br i1 %i.bn, label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit30, label %bb.m

bb.m:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i28
  call void @_ZdlPv(ptr noundef %i.bm) #33
  br label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit30

_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit30: ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i28, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  ret void

bb.n:                                             ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.n ], [ %i.z, %bb.f ]
  call void @_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext12AddBaseTableEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEERNS9_INS_11ColumnIndexELb1ESaISJ_EEES8_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %7 = alloca %"class.std::unordered_map.386", align 8 ; 13 uses
  %8 = alloca %"class.duckdb::unique_ptr.1397", align 8 ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !432
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 1, ptr %i.d, align 8, !tbaa !434
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, ptr %6, ptr %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr null, ptr %i.b, align 8, !tbaa !1484
  invoke void @_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEEDnRmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSQ_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1397") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %8, align 8, !tbaa !1191   ; 5 uses
  store ptr null, ptr %8, align 8, !tbaa !1191
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1005 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1193
  %.not.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.b
  %i.r = ptrtoint ptr %i.l to i64
  store i64 %i.r, ptr %i.o, align 8, !tbaa !1006
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.s, ptr %i.n, align 8, !tbaa !1005
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !1004 ; 10 uses
  %i.u = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.c
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 4 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #35
          to label %.noexc10 unwind label %bb.g   ; 12 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  %i.ag = ptrtoint ptr %i.l to i64
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !1006
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.o
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc10
  %i.ah = sub i64 %i.u, %i.v
  %i.ai = add i64 %i.ah, -8                       ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.al = add i64 %i.u, -8
  %i.am = sub i64 %i.al, %i.v
  %i.an = and i64 %i.am, -8
  %i.ao = add i64 %i.an, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.ao
  %scevgep34 = getelementptr i8, ptr %i.t, i64 %i.ao
  %bound0 = icmp ult ptr %i.ae, %scevgep34
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.t, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.as ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.t, i64 %i.as ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.at = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !1006, !alias.scope !1491, !noalias !1486
  %wide.load36 = load <2 x i64>, ptr %i.at, align 8, !tbaa !1006, !alias.scope !1491, !noalias !1486
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1006, !alias.scope !1494, !noalias !1491
  store <2 x i64> %wide.load36, ptr %i.au, align 8, !tbaa !1006, !alias.scope !1494, !noalias !1491
  %i.av = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !1006, !alias.scope !1491, !noalias !1486
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !1006, !alias.scope !1491, !noalias !1486
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1496

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader38

.lr.ph.i.i.i.i.i.i.i.i.preheader38:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader38, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader38 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader38 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1489, !noalias !1486
  store i64 %i.ax, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1486, !noalias !1489
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1489, !noalias !1486
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1497

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.noexc10 ], [ %i.aq, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread31, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread31: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.ae, ptr %i.m, align 8, !tbaa !1004
  store ptr %i.ba, ptr %i.n, align 8, !tbaa !1005
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !1193
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.t) #33
  %.pre.pre = load ptr, ptr %8, align 8, !tbaa !1191 ; 3 uses
  store ptr %i.ae, ptr %i.m, align 8, !tbaa !1004
  store ptr %i.ba, ptr %i.n, align 8, !tbaa !1005
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.bc, ptr %i.p, align 8, !tbaa !1193
  %.not.i11 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit
  %i.bd = load ptr, ptr %.pre.pre, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(296) %.pre.pre) #32, !inline_history !1206
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread31, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !435 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.bh, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i ], [ %i.bg, %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit ] ; 5 uses
  %i.bh = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !143 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bj) #32
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bk) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #33
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !445

_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit
  %i.bn = load ptr, ptr %7, align 8, !tbaa !432
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !434
  %i.bp = shl i64 %i.bo, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bn, i8 0, i64 %i.bp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.bq = load ptr, ptr %7, align 8, !tbaa !432   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.c
  br i1 %i.br, label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.bq) #33
  br label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit

_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  ret void

bb.f:                                             ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit17

bb.g:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.d
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i12 = icmp eq ptr %i.l, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit14, label %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i13

_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i13: ; preds = %bb.g
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.l) #32, !inline_history !1207
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit14

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit14: ; preds = %bb.g, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i13
  %i.bx = load ptr, ptr %8, align 8, !tbaa !1191  ; 3 uses
  %.not.i15 = icmp eq ptr %i.bx, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit17, label %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i16

_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i16: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit14
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(296) %i.bx) #32, !inline_history !1206
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit17

_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit17: ; preds = %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i16, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit14, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.f ], [ %i.bt, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit14 ], [ %i.bt, %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEEDnRmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSQ_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1397") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(56) %7) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::vector.212", align 8 ; 6 uses
  %9 = alloca %"class.duckdb::vector.183", align 8 ; 8 uses
  %10 = alloca %"class.std::unordered_map.386", align 8 ; 11 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #35 ; 3 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.m

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295  ; 3 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !293    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %.noexc12, label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
end_hunk_5
begin_hunk_6_@_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEEDnRmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSQ_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !1191
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !435 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.an, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i ], [ %i.am, %bb.i ] ; 5 uses
  %i.an = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !143 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ap) #32
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !15 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.aq) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #33
  %.not.i.i.i.i14 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i14, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !445

_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i, %bb.i
  %i.at = load ptr, ptr %10, align 8, !tbaa !432
  %i.au = load i64, ptr %i.r, align 8, !tbaa !434
  %i.av = shl i64 %i.au, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.av, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.aw = load ptr, ptr %10, align 8, !tbaa !432  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ac
  br i1 %i.ax, label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.aw) #33
  br label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit

_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.j
  %i.ay = load ptr, ptr %9, align 8, !tbaa !293   ; 3 uses
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ay, %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit ] ; 3 uses
  %i.ba = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.ba) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, %i.az
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !296

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !293
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit
  %i.be = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ay, %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.be) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.k
  %i.bf = load ptr, ptr %8, align 8, !tbaa !393   ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !392 ; 2 uses
  %.not4.i.i.i15 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not4.i.i.i15, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.lr.ph.i.i.i16
  %.05.i.i.i17 = phi ptr [ %i.bi, %.lr.ph.i.i.i16 ], [ %i.bf, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i17) #32
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i17, i64 24 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i.i.i18, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i16, !llvm.loop !426

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i16
  %.pr.i19 = load ptr, ptr %8, align 8, !tbaa !393
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bj = phi ptr [ %.pr.i19, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bf, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i20 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i20, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bj) #33
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.l
  ret void

bb.m:                                             ; preds = %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #32
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #32
  br label %.body

.body:                                            ; preds = %bb.n, %bb.d, %bb.c, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.o ], [ %i.bl, %bb.n ], [ %i.o, %bb.d ], [ %i.o, %bb.c ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #32
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bk, %bb.m ]
  call void @_ZdlPv(ptr noundef nonnull %i.a) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext16AddTableFunctionEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEERNS9_INS_11ColumnIndexELb1ESaISJ_EEENS_12optional_ptrINS_13StandardEntryELb1EEESt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSR_EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6, ptr noundef nonnull %7) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::optional_ptr.385", align 8 ; 2 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %9 = alloca %"class.duckdb::unique_ptr.1397", align 8 ; 8 uses
  %i.b = inttoptr i64 %6 to ptr
  store ptr %i.b, ptr %8, align 8
  store i64 %1, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEERNS_12optional_ptrINS_13StandardEntryELb1EEERmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSU_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1397") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %7)
  %i.c = load ptr, ptr %9, align 8, !tbaa !1191   ; 5 uses
  store ptr null, ptr %9, align 8, !tbaa !1191
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1005 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1193
  %.not.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !1006
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !1005
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !1004 ; 10 uses
  %i.l = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.c, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 4 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.t, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #35
          to label %.noexc6 unwind label %bb.d    ; 12 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %i.c to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !1006
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc6
  %i.y = sub i64 %i.l, %i.m
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.ac = add i64 %i.l, -8
  %i.ad = sub i64 %i.ac, %i.m
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.af
  %scevgep26 = getelementptr i8, ptr %i.k, i64 %i.af
  %bound0 = icmp ult ptr %i.v, %scevgep26
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.k, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aj ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.k, i64 %i.aj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.ak = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !1006, !alias.scope !1503, !noalias !1498
  %wide.load28 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !1006, !alias.scope !1503, !noalias !1498
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1006, !alias.scope !1506, !noalias !1503
  store <2 x i64> %wide.load28, ptr %i.al, align 8, !tbaa !1006, !alias.scope !1506, !noalias !1503
  %i.am = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !1006, !alias.scope !1503, !noalias !1498
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !1006, !alias.scope !1503, !noalias !1498
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1508

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.i.i.preheader30:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader30 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1501, !noalias !1498
  store i64 %i.ao, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1498, !noalias !1501
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1501, !noalias !1498
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1509

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc6
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.noexc6 ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread23, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread23: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.v, ptr %i.d, align 8, !tbaa !1004
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !1005
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.as, ptr %i.g, align 8, !tbaa !1193
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #33
  %.pre.pre = load ptr, ptr %9, align 8, !tbaa !1191 ; 3 uses
  store ptr %i.v, ptr %i.d, align 8, !tbaa !1004
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !1005
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.at, ptr %i.g, align 8, !tbaa !1193
  %.not.i7 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit
  %i.au = load ptr, ptr %.pre.pre, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(296) %.pre.pre) #32, !inline_history !1206
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread23, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.d:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %.not.i8 = icmp eq ptr %i.c, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10, label %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i9

_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i9: ; preds = %bb.d
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.c) #32, !inline_history !1207
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10: ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i9
  %i.bb = load ptr, ptr %9, align 8, !tbaa !1191  ; 3 uses
  %.not.i11 = icmp eq ptr %i.bb, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit13, label %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i12

_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i12: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(296) %i.bb) #32, !inline_history !1206
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit13

_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit13: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10, %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  resume { ptr, i32 } %i.ax
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEERNS_12optional_ptrINS_13StandardEntryELb1EEERmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSU_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1397") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(56) %7) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::vector.212", align 8 ; 6 uses
  %9 = alloca %"class.duckdb::vector.183", align 8 ; 8 uses
  %10 = alloca %"class.std::unordered_map.386", align 8 ; 11 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #35 ; 3 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.m

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295  ; 3 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !293    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !107

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #35
          to label %.noexc13 unwind label %bb.n

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.j = phi ptr [ null, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %9, align 8, !tbaa !293
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !295
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !380
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.d, ptr %i.c, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc13
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  br label %.body

bb.e:                                             ; preds = %.noexc13
  store ptr %i.n, ptr %i.k, align 8, !tbaa !295
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !427
  %i.p = load i64, ptr %6, align 8, !tbaa !18
  %i.q = load ptr, ptr %7, align 8, !tbaa !432    ; 3 uses
  store ptr %i.q, ptr %10, align 8, !tbaa !432
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !434  ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !434
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !435  ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !143
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24
end_hunk_6
begin_hunk_7_@_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EED2Ev:bb.a

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !1368
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1367
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.k, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !1368   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.l) #33
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext11AddSubqueryEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11SubqueryRefERNS_14BoundStatementE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(136) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::vector.183", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZN6duckdb11BindContext16AliasColumnNamesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEESD_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.183") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void @_ZN6duckdb11BindContext17AddGenericBindingEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !293    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !295  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.g) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !296

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !293
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext17AddGenericBindingEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %5 = alloca %"class.duckdb::unique_ptr.1259", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"struct.duckdb::BindingAlias", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i32 0, ptr %i.c, align 4, !tbaa !1528
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !7
  %i.e = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.g, ptr %i.a, align 8, !tbaa !18
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !15
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.j, ptr %i.d, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !14
  store i8 %i.l, ptr %i.k, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !11
  %i.o = load ptr, ptr %7, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN6duckdb12BindingAliasC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull %7)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZN6duckdb9make_uniqINS_7BindingEJNS_11BindingTypeENS_12BindingAliasERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERKNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISF_EEERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1259") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1005 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1193
  %.not.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i.i.i, label %bb.f, label %_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit.thread

_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit.thread: ; preds = %bb.e
  %i.v = load i64, ptr %5, align 8, !tbaa !1006
  store i64 %i.v, ptr %i.s, align 8, !tbaa !1006
  store ptr null, ptr %5, align 8, !tbaa !1006
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.w, ptr %i.r, align 8, !tbaa !1005
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !1004 ; 10 uses
  %i.y = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.g, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #35
          to label %.noexc9 unwind label %bb.k    ; 10 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  %i.ak = load i64, ptr %5, align 8, !tbaa !1006
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !1006
  store ptr null, ptr %5, align 8, !tbaa !1006
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc9
  %i.al = sub i64 %i.y, %i.z
  %i.am = add i64 %i.al, -8                       ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.ap = add i64 %i.y, -8
  %i.aq = sub i64 %i.ap, %i.z
  %i.ar = and i64 %i.aq, -8
  %i.as = add i64 %i.ar, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.as
  %scevgep25 = getelementptr i8, ptr %i.x, i64 %i.as
  %bound0 = icmp ult ptr %i.ai, %scevgep25
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.ai, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.x, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.aw ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.x, i64 %i.aw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.ax = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep26, align 8, !tbaa !1006, !alias.scope !1534, !noalias !1529
  %wide.load27 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !1006, !alias.scope !1534, !noalias !1529
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1006, !alias.scope !1537, !noalias !1534
  store <2 x i64> %wide.load27, ptr %i.ay, align 8, !tbaa !1006, !alias.scope !1537, !noalias !1534
  %i.az = getelementptr i8, ptr %next.gep26, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep26, align 8, !tbaa !1006, !alias.scope !1534, !noalias !1529
  store <2 x ptr> splat (ptr null), ptr %i.az, align 8, !tbaa !1006, !alias.scope !1534, !noalias !1529
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.i.i.i.preheader29:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader29 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader29 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1532, !noalias !1529
  store i64 %i.bb, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1529, !noalias !1532
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1532, !noalias !1529
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1540

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.noexc9 ], [ %i.au, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i.i.i, label %_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.x) #33
  br label %_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit

_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, %bb.h
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !1004
  store ptr %i.be, ptr %i.r, align 8, !tbaa !1005
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.bf, ptr %i.t, align 8, !tbaa !1193
  %.pr = load ptr, ptr %5, align 8, !tbaa !1006   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i: ; preds = %_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit
  %i.bg = load ptr, ptr %.pr, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %.pr) #32, !inline_history !1207
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit.thread, %_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !15 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !15 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.br = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZN6duckdb12BindingAliasD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.br) #33
  br label %_ZN6duckdb12BindingAliasD2Ev.exit

_ZN6duckdb12BindingAliasD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.bu = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.d
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6duckdb12BindingAliasD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb12BindingAliasD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit12

bb.k:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.g
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %5, align 8, !tbaa !1006  ; 3 uses
  %.not.i10 = icmp eq ptr %i.bz, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit12, label %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i11

_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i11: ; preds = %bb.k
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.bz) #32, !inline_history !1207
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit12

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit12: ; preds = %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i11, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.by, %bb.k ], [ %i.by, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i11 ]
  call void @_ZN6duckdb12BindingAliasD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #32
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit12, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit12 ], [ %i.bw, %bb.i ]
  %i.cd = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.d
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.cd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext15AddEntryBindingEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEERNS_13StandardEntryE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(312) %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %6 = alloca %"class.duckdb::unique_ptr.1406", align 8 ; 8 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZN6duckdb9make_uniqINS_12EntryBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERmRNS_13StandardEntryEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1406") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(312) %5)
  %i.b = load ptr, ptr %6, align 8, !tbaa !1541   ; 5 uses
  store ptr null, ptr %6, align 8, !tbaa !1541
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1005 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1193
  %.not.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.a
  %i.h = ptrtoint ptr %i.b to i64
  store i64 %i.h, ptr %i.e, align 8, !tbaa !1006
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !1005
  br label %_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !1004 ; 10 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.c, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 4 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #35
          to label %.noexc6 unwind label %bb.d    ; 12 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = ptrtoint ptr %i.b to i64
  store i64 %i.w, ptr %i.v, align 8, !tbaa !1006
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc6
  %i.x = sub i64 %i.k, %i.l
  %i.y = add i64 %i.x, -8                         ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.ab = add i64 %i.k, -8
  %i.ac = sub i64 %i.ab, %i.l
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep26 = getelementptr i8, ptr %i.j, i64 %i.ae
  %bound0 = icmp ult ptr %i.u, %scevgep26
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.j, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ai ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.j, i64 %i.ai ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  %i.aj = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !1006, !alias.scope !1548, !noalias !1543
  %wide.load28 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !1006, !alias.scope !1548, !noalias !1543
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1006, !alias.scope !1551, !noalias !1548
  store <2 x i64> %wide.load28, ptr %i.ak, align 8, !tbaa !1006, !alias.scope !1551, !noalias !1548
  %i.al = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !1006, !alias.scope !1548, !noalias !1543
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1006, !alias.scope !1548, !noalias !1543
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1553

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.i.i.preheader30:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader30 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  %i.an = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1546, !noalias !1543
  store i64 %i.an, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1543, !noalias !1546
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1546, !noalias !1543
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1554

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc6
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc6 ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread23, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread23: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.u, ptr %i.c, align 8, !tbaa !1004
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !1005
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !1193
  br label %_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  %.pre.pre = load ptr, ptr %6, align 8, !tbaa !1541 ; 3 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !1004
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !1005
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.as, ptr %i.f, align 8, !tbaa !1193
  %.not.i7 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12EntryBindingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12EntryBindingEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit
  %i.at = load ptr, ptr %.pre.pre, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(232) %.pre.pre) #32, !inline_history !1555
  br label %_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread23, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12EntryBindingEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret void

bb.d:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %.not.i8 = icmp eq ptr %i.b, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10, label %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i9

_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i9: ; preds = %bb.d
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.b) #32, !inline_history !1207
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10: ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i9
  %i.ba = load ptr, ptr %6, align 8, !tbaa !1541  ; 3 uses
  %.not.i11 = icmp eq ptr %i.ba, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit13, label %_ZNKSt14default_deleteIN6duckdb12EntryBindingEEclEPS1_.exit.i12

_ZNKSt14default_deleteIN6duckdb12EntryBindingEEclEPS1_.exit.i12: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(232) %i.ba) #32, !inline_history !1555
  br label %_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit13

_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit13: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10, %_ZNKSt14default_deleteIN6duckdb12EntryBindingEEclEPS1_.exit.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %i.aw
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_12EntryBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERmRNS_13StandardEntryEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1406") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(312) %5) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::vector.212", align 8 ; 6 uses
  %7 = alloca %"class.duckdb::vector.183", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #35 ; 3 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.i

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295  ; 3 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !293    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %.noexc11, label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !107

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #35
          to label %.noexc11 unwind label %bb.j

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.j = phi ptr [ null, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !293
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !295
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !380
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.d, ptr %i.c, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc11
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  br label %.body

bb.e:                                             ; preds = %.noexc11
  store ptr %i.n, ptr %i.k, align 8, !tbaa !295
  %i.p = load i64, ptr %4, align 8, !tbaa !18
  invoke void @_ZN6duckdb12EntryBindingC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaISA_EEENS9_IS6_Lb1ESaIS6_EEEmRNS_13StandardEntryE(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(312) %5)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  store ptr %i.a, ptr %0, align 8, !tbaa !1541
  %i.q = load ptr, ptr %7, align 8, !tbaa !293    ; 3 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !295  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.q, %bb.f ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
end_hunk_7
begin_hunk_8_@_ZN6duckdb9make_uniqINS_7BindingEJNS_11BindingTypeENS_12BindingAliasERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERKNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISF_EEERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  br i1 %.not.i.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdlPv(ptr noundef nonnull %i.ay) #33
  br label %.body

bb.h:                                             ; preds = %.noexc11
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !295
  %i.be = load i64, ptr %5, align 8, !tbaa !18
  invoke void @_ZN6duckdb7BindingC1ENS_11BindingTypeENS_12BindingAliasENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISC_EEEm(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i32 noundef %i.b, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i64 noundef %i.be)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  store ptr %i.a, ptr %0, align 8, !tbaa !1006
  %i.bf = load ptr, ptr %8, align 8, !tbaa !293   ; 3 uses
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bf, %bb.i ] ; 3 uses
  %i.bh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.bh) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !296

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !293
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.i
  %i.bl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bf, %bb.i ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.j
  %i.bm = load ptr, ptr %7, align 8, !tbaa !393   ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !392 ; 2 uses
  %.not4.i.i.i12 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not4.i.i.i12, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.lr.ph.i.i.i13
  %.05.i.i.i14 = phi ptr [ %i.bp, %.lr.ph.i.i.i13 ], [ %i.bm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i14) #32
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 24 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i13, !llvm.loop !426

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i13
  %.pr.i16 = load ptr, ptr %7, align 8, !tbaa !393
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bq = phi ptr [ %.pr.i16, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i17 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i17, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #33
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.k
  %i.br = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ae
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.br) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !15  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.q
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bv = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.c
  br i1 %i.bw, label %_ZN6duckdb12BindingAliasD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.bv) #33
  br label %_ZN6duckdb12BindingAliasD2Ev.exit

_ZN6duckdb12BindingAliasD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  ret void

bb.l:                                             ; preds = %_ZN6duckdb12BindingAliasC2EOS0_.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.h
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #32
  br label %.body

.body:                                            ; preds = %bb.m, %bb.g, %bb.f, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.n ], [ %i.by, %bb.m ], [ %i.bd, %bb.g ], [ %i.bd, %bb.f ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #32
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bx, %bb.l ]
  call void @_ZN6duckdb12BindingAliasD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #32
  call void @_ZdlPv(ptr noundef nonnull %i.a) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext13AddCTEBindingENS_10unique_ptrINS_10CTEBindingESt14default_deleteIS2_ELb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1074 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1074 ; 3 uses
  %.not33 = icmp eq ptr %i.b, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !999
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.a ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1556
  %.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = load i64, ptr %1, align 8, !tbaa !1000
  store i64 %i.h, ptr %i.e, align 8, !tbaa !1000
  store ptr null, ptr %1, align 8, !tbaa !1000
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.c, align 8, !tbaa !999
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !998  ; 10 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #35 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = load i64, ptr %1, align 8, !tbaa !1000
  store i64 %i.w, ptr %i.v, align 8, !tbaa !1000
  store ptr null, ptr %1, align 8, !tbaa !1000
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = sub i64 %i.k, %i.l
  %i.y = add i64 %i.x, -8                         ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader49, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ab = add i64 %i.k, -8
  %i.ac = sub i64 %i.ab, %i.l
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep45 = getelementptr i8, ptr %i.j, i64 %i.ae
  %bound0 = icmp ult ptr %i.u, %scevgep45
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.j, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ai ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.j, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %i.aj = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !1000, !alias.scope !1562, !noalias !1557
  %wide.load47 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !1000, !alias.scope !1562, !noalias !1557
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1000, !alias.scope !1565, !noalias !1562
  store <2 x i64> %wide.load47, ptr %i.ak, align 8, !tbaa !1000, !alias.scope !1565, !noalias !1562
  %i.al = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !1000, !alias.scope !1562, !noalias !1557
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1000, !alias.scope !1562, !noalias !1557
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1567

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.i.preheader49:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader49 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader49 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %i.an = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1000, !alias.scope !1560, !noalias !1557
  store i64 %i.an, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1000, !alias.scope !1557, !noalias !1560
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1000, !alias.scope !1560, !noalias !1557
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.e
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1568

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !998
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !999
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !1556
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread
  %.sroa.015.034 = phi ptr [ %i.bs, %_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread ], [ %i.b, %bb.a ] ; 2 uses
  %i.as = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10CTEBindingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.015.034) ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10CTEBindingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = tail call noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(96) %i.at, ptr noundef nonnull align 8 dereferenceable(96) %i.av)
  br i1 %i.aw, label %bb.f, label %_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread

bb.f:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.az = tail call noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
  br i1 %i.az, label %_ZNK6duckdb12BindingAliaseqERKS0_.exit, label %_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread

_ZNK6duckdb12BindingAliaseqERKS0_.exit:           ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.bc = tail call noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
  br i1 %i.bc, label %bb.g, label %_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread

bb.g:                                             ; preds = %_ZNK6duckdb12BindingAliaseqERKS0_.exit
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.be = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10CTEBindingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  invoke void @_ZNK6duckdb12BindingAlias8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(96) %i.bf)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb15BinderExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.o unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread: ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bl = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bp = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.bp) #33
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bl) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br i1 %.0, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br i1 %.0, label %bb.m, label %bb.n

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread
  %.pn.pn21.ph = phi { ptr, i32 } [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn.pn21 = phi { ptr, i32 } [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn.pn21.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bd) #32
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn.pn20 = phi { ptr, i32 } [ %.pn.pn21, %bb.m ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ]
  resume { ptr, i32 } %.pn.pn20

_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread:    ; preds = %.lr.ph, %bb.f, %_ZNK6duckdb12BindingAliaseqERKS0_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.015.034, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bs, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.o:                                             ; preds = %bb.k
  unreachable
end_hunk_8
begin_hunk_9_@_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_23BoundFunctionExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_23BoundOperatorExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.31") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_24BoundParameterExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.31") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_24BoundReferenceExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.31") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_23BoundSubqueryExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.31") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_21BoundWindowExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.31") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_21BoundUnnestExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.31") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14TableFilterSet10PushFilterERKNS_11ColumnIndexENS_10unique_ptrINS_11TableFilterESt14default_deleteIS5_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.2452", align 8   ; 4 uses
  %4 = alloca %"class.std::tuple.2450", align 1   ; 3 uses
  %5 = alloca %"class.std::tuple.2452", align 8   ; 4 uses
  %6 = alloca %"class.std::tuple.2450", align 1   ; 3 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %7 = alloca %"class.duckdb::unique_ptr.1851", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.b = tail call noundef i64 @_ZNK6duckdb11ColumnIndex15GetPrimaryIndexEv(ptr noundef nonnull align 8 dereferenceable(104) %1) ; 5 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = icmp ult i64 %i.g, %i.b                  ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2001

_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.i, label %.lr.ph.i.i.i.i.preheader, label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit

_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  %i.l = icmp ult i64 %i.b, %i.k
  br i1 %i.l, label %.lr.ph.i.i.i.i.preheader, label %bb.c

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18
  %i.o = icmp ult i64 %i.n, %i.b                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2001

_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i, %i.e
  br i1 %i.p, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  %i.s = icmp ult i64 %i.b, %i.r
  br i1 %i.s, label %.critedge.i, label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEEixERS9_.exit

.critedge.i:                                      ; preds = %bb.a, %bb.b, %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.b ], [ %.19.i.i.i.i, %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %i.a, ptr %5, align 8, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.t = call ptr @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEEixERS9_.exit

_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEEixERS9_.exit: ; preds = %bb.b, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.t, %.critedge.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !2002
  store ptr null, ptr %2, align 8, !tbaa !2002
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !2002 ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !2002
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEEixERS9_.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.w) #32, !inline_history !2004
  br label %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit

bb.c:                                             ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 6 uses
  %i.ab = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !2005
  %i.ae = icmp eq i8 %i.ad, 4
  br i1 %i.ae, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.af = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.ag = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb11TableFilter4CastINS_20ConjunctionAndFilterEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2008 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2011
  %.not.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load i64, ptr %2, align 8, !tbaa !2002
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !2002
  store ptr null, ptr %2, align 8, !tbaa !2002
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !2008
  br label %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !2012 ; 10 uses
  %i.ap = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.g, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i.i6 = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i6)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #35 ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  %i.bb = load i64, ptr %2, align 8, !tbaa !2002
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !2002
  store ptr null, ptr %2, align 8, !tbaa !2002
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.aj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = sub i64 %i.ap, %i.aq
  %i.bd = add i64 %i.bc, -8                       ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check133 = icmp ult i64 %i.bd, 152
  br i1 %min.iters.check133, label %.lr.ph.i.i.i.i.i.i.i.preheader148, label %vector.memcheck126

vector.memcheck126:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bg = add i64 %i.ap, -8
  %i.bh = sub i64 %i.bg, %i.aq
  %i.bi = and i64 %i.bh, -8
  %i.bj = add i64 %i.bi, 8                        ; 2 uses
  %scevgep127 = getelementptr i8, ptr %i.az, i64 %i.bj
  %scevgep128 = getelementptr i8, ptr %i.ao, i64 %i.bj
  %bound0129 = icmp ult ptr %i.az, %scevgep128
  %bound1130 = icmp ult ptr %i.ao, %scevgep127
  %found.conflict131 = and i1 %bound0129, %bound1130
  br i1 %found.conflict131, label %.lr.ph.i.i.i.i.i.i.i.preheader148, label %vector.ph134

vector.ph134:                                     ; preds = %vector.memcheck126
  %n.vec136 = and i64 %i.bf, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec136, 3                    ; 2 uses
  %i.bl = getelementptr i8, ptr %i.az, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ao, i64 %i.bk
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph134
  %index138 = phi i64 [ 0, %vector.ph134 ], [ %index.next143, %vector.body137 ] ; 2 uses
  %i.bn = shl i64 %index138, 3                    ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.az, i64 %i.bn ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.ao, i64 %i.bn ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  %i.bo = getelementptr i8, ptr %next.gep140, i64 16
  %wide.load141 = load <2 x i64>, ptr %next.gep140, align 8, !tbaa !2002, !alias.scope !2018, !noalias !2013
  %wide.load142 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !2002, !alias.scope !2018, !noalias !2013
  %i.bp = getelementptr i8, ptr %next.gep139, i64 16
  store <2 x i64> %wide.load141, ptr %next.gep139, align 8, !tbaa !2002, !alias.scope !2021, !noalias !2018
  store <2 x i64> %wide.load142, ptr %i.bp, align 8, !tbaa !2002, !alias.scope !2021, !noalias !2018
  %i.bq = getelementptr i8, ptr %next.gep140, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep140, align 8, !tbaa !2002, !alias.scope !2018, !noalias !2013
  store <2 x ptr> splat (ptr null), ptr %i.bq, align 8, !tbaa !2002, !alias.scope !2018, !noalias !2013
  %index.next143 = add nuw i64 %index138, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next143, %n.vec136
  br i1 %i.br, label %middle.block144, label %vector.body137, !llvm.loop !2023

middle.block144:                                  ; preds = %vector.body137
  %cmp.n145 = icmp eq i64 %i.bf, %n.vec136
  br i1 %cmp.n145, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader148

.lr.ph.i.i.i.i.i.i.i.preheader148:                ; preds = %vector.memcheck126, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block144
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck126 ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block144 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck126 ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block144 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader148, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader148 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader148 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  %i.bs = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !2002, !alias.scope !2016, !noalias !2013
  store i64 %i.bs, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !2002, !alias.scope !2013, !noalias !2016
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !2002, !alias.scope !2016, !noalias !2013
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.aj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2024

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block144, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bl, %middle.block144 ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.az, ptr %i.ah, align 8, !tbaa !2012
  store ptr %i.bv, ptr %i.ai, align 8, !tbaa !2008
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bw, ptr %i.ak, align 8, !tbaa !2011
  br label %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  %i.bx = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35, !noalias !2025 ; 3 uses
  invoke void @_ZN6duckdb20ConjunctionAndFilterC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bx)
          to label %_ZN6duckdb9make_uniqINS_20ConjunctionAndFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.j, !noalias !2025

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit62, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.by, %bb.j ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit62 ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.bx) #33, !noalias !2025
  br label %common.resume

_ZN6duckdb9make_uniqINS_20ConjunctionAndFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.i
  store ptr %i.bx, ptr %7, align 8, !tbaa !2028, !alias.scope !2025
  %i.bz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20ConjunctionAndFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.k unwind label %bb.v       ; 3 uses

bb.k:                                             ; preds = %_ZN6duckdb9make_uniqINS_20ConjunctionAndFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2008 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2011
  %.not.i.i7 = icmp eq ptr %i.cc, %i.ce
  br i1 %.not.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = load i64, ptr %i.aa, align 8, !tbaa !2002
  store i64 %i.cf, ptr %i.cc, align 8, !tbaa !2002
  store ptr null, ptr %i.aa, align 8, !tbaa !2002
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.cg, ptr %i.cb, align 8, !tbaa !2008
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21

bb.m:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !2012 ; 10 uses
  %i.ci = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.cj = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 3 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i8

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i8: ; preds = %bb.m
  %i.cm = ashr exact i64 %i.ck, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i9 = call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i.i9, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = call i64 @llvm.umin.i64(i64 %i.cn, i64 1152921504606846975)
  %i.cq = select i1 %i.co, i64 1152921504606846975, i64 %i.cp ; 3 uses
  %.not.i.i.i.i10 = icmp ne i64 %i.cq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i10)
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #35
          to label %.noexc20 unwind label %bb.v   ; 10 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck
  %i.cu = load i64, ptr %i.aa, align 8, !tbaa !2002
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !2002
  store ptr null, ptr %i.aa, align 8, !tbaa !2002
  %.not10.i.i.i.i.i.i.i11 = icmp eq ptr %i.ch, %i.cc
  br i1 %.not10.i.i.i.i.i.i.i11, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16, label %.lr.ph.i.i.i.i.i.i.i12.preheader

.lr.ph.i.i.i.i.i.i.i12.preheader:                 ; preds = %.noexc20
  %i.cv = sub i64 %i.ci, %i.cj
  %i.cw = add i64 %i.cv, -8                       ; 2 uses
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cw, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i12.preheader151, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i12.preheader
  %i.cz = add i64 %i.ci, -8
  %i.da = sub i64 %i.cz, %i.cj
  %i.db = and i64 %i.da, -8
  %i.dc = add i64 %i.db, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cs, i64 %i.dc
  %scevgep100 = getelementptr i8, ptr %i.ch, i64 %i.dc
  %bound0 = icmp ult ptr %i.cs, %scevgep100
  %bound1 = icmp ult ptr %i.ch, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i12.preheader151, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cy, 4611686018427387900     ; 3 uses
  %i.dd = shl i64 %n.vec, 3                       ; 2 uses
  %i.de = getelementptr i8, ptr %i.cs, i64 %i.dd  ; 2 uses
  %i.df = getelementptr i8, ptr %i.ch, i64 %i.dd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cs, i64 %i.dg ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.ch, i64 %i.dg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  %i.dh = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep101, align 8, !tbaa !2002, !alias.scope !2035, !noalias !2030
  %wide.load102 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !2002, !alias.scope !2035, !noalias !2030
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !2002, !alias.scope !2038, !noalias !2035
  store <2 x i64> %wide.load102, ptr %i.di, align 8, !tbaa !2002, !alias.scope !2038, !noalias !2035
  %i.dj = getelementptr i8, ptr %next.gep101, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep101, align 8, !tbaa !2002, !alias.scope !2035, !noalias !2030
  store <2 x ptr> splat (ptr null), ptr %i.dj, align 8, !tbaa !2002, !alias.scope !2035, !noalias !2030
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !2040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16, label %.lr.ph.i.i.i.i.i.i.i12.preheader151

.lr.ph.i.i.i.i.i.i.i12.preheader151:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i12.preheader, %middle.block
  %.012.i.i.i.i.i.i.i13.ph = phi ptr [ %i.cs, %vector.memcheck ], [ %i.cs, %.lr.ph.i.i.i.i.i.i.i12.preheader ], [ %i.de, %middle.block ]
  %.0911.i.i.i.i.i.i.i14.ph = phi ptr [ %i.ch, %vector.memcheck ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i12.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i12

.lr.ph.i.i.i.i.i.i.i12:                           ; preds = %.lr.ph.i.i.i.i.i.i.i12.preheader151, %.lr.ph.i.i.i.i.i.i.i12
  %.012.i.i.i.i.i.i.i13 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.i12 ], [ %.012.i.i.i.i.i.i.i13.ph, %.lr.ph.i.i.i.i.i.i.i12.preheader151 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i14 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i.i12 ], [ %.0911.i.i.i.i.i.i.i14.ph, %.lr.ph.i.i.i.i.i.i.i12.preheader151 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  %i.dl = load i64, ptr %.0911.i.i.i.i.i.i.i14, align 8, !tbaa !2002, !alias.scope !2033, !noalias !2030
  store i64 %i.dl, ptr %.012.i.i.i.i.i.i.i13, align 8, !tbaa !2002, !alias.scope !2030, !noalias !2033
  store ptr null, ptr %.0911.i.i.i.i.i.i.i14, align 8, !tbaa !2002, !alias.scope !2033, !noalias !2030
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i14, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i13, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i15 = icmp eq ptr %i.dm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i15, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16, label %.lr.ph.i.i.i.i.i.i.i12, !llvm.loop !2041

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16: ; preds = %.lr.ph.i.i.i.i.i.i.i12, %middle.block, %.noexc20
  %.0.lcssa.i.i.i.i.i.i.i17 = phi ptr [ %i.cs, %.noexc20 ], [ %i.de, %middle.block ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i12 ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i17, i64 8
  %.not.i23.i.i.i18 = icmp eq ptr %i.ch, null
  br i1 %.not.i23.i.i.i18, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i19, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16
  call void @_ZdlPv(ptr noundef nonnull %i.ch) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i19

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i19: ; preds = %bb.n, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16
  store ptr %i.cs, ptr %i.ca, align 8, !tbaa !2012
  store ptr %i.do, ptr %i.cb, align 8, !tbaa !2008
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cq
  store ptr %i.dp, ptr %i.cd, align 8, !tbaa !2011
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i19, %bb.l
  %i.dq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20ConjunctionAndFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.o unwind label %bb.v       ; 3 uses

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !2008 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 32 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !2011
  %.not.i.i22 = icmp eq ptr %i.dt, %i.dv
  br i1 %.not.i.i22, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = load i64, ptr %2, align 8, !tbaa !2002
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !2002
  store ptr null, ptr %2, align 8, !tbaa !2002
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !2008
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit37

bb.q:                                             ; preds = %bb.o
  %i.dy = load ptr, ptr %i.dr, align 8, !tbaa !2012 ; 10 uses
  %i.dz = ptrtoint ptr %i.dt to i64               ; 3 uses
  %i.ea = ptrtoint ptr %i.dy to i64               ; 3 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = icmp eq i64 %i.eb, 9223372036854775800
  br i1 %i.ec, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i23

.invoke:                                          ; preds = %bb.q, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.cont unwind label %bb.v

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i23: ; preds = %bb.q
  %i.ed = ashr exact i64 %i.eb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i24 = call i64 @llvm.umax.i64(i64 %i.ed, i64 1)
  %i.ee = add nsw i64 %.sroa.speculated.i.i.i.i24, %i.ed ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ed
  %i.eg = call i64 @llvm.umin.i64(i64 %i.ee, i64 1152921504606846975)
  %i.eh = select i1 %i.ef, i64 1152921504606846975, i64 %i.eg ; 3 uses
  %.not.i.i.i.i25 = icmp ne i64 %i.eh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i25)
  %i.ei = shl nuw nsw i64 %i.eh, 3
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #35
          to label %.noexc36 unwind label %bb.v   ; 10 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i23
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eb
  %i.el = load i64, ptr %2, align 8, !tbaa !2002
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !2002
  store ptr null, ptr %2, align 8, !tbaa !2002
  %.not10.i.i.i.i.i.i.i26 = icmp eq ptr %i.dy, %i.dt
  br i1 %.not10.i.i.i.i.i.i.i26, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i27.preheader

.lr.ph.i.i.i.i.i.i.i27.preheader:                 ; preds = %.noexc36
  %i.em = sub i64 %i.dz, %i.ea
  %i.en = add i64 %i.em, -8                       ; 2 uses
  %i.eo = lshr i64 %i.en, 3
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check111 = icmp ult i64 %i.en, 152
  br i1 %min.iters.check111, label %.lr.ph.i.i.i.i.i.i.i27.preheader149, label %vector.memcheck104

vector.memcheck104:                               ; preds = %.lr.ph.i.i.i.i.i.i.i27.preheader
  %i.eq = add i64 %i.dz, -8
  %i.er = sub i64 %i.eq, %i.ea
  %i.es = and i64 %i.er, -8
  %i.et = add i64 %i.es, 8                        ; 2 uses
  %scevgep105 = getelementptr i8, ptr %i.ej, i64 %i.et
  %scevgep106 = getelementptr i8, ptr %i.dy, i64 %i.et
  %bound0107 = icmp ult ptr %i.ej, %scevgep106
  %bound1108 = icmp ult ptr %i.dy, %scevgep105
  %found.conflict109 = and i1 %bound0107, %bound1108
  br i1 %found.conflict109, label %.lr.ph.i.i.i.i.i.i.i27.preheader149, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck104
  %n.vec114 = and i64 %i.ep, 4611686018427387900  ; 3 uses
  %i.eu = shl i64 %n.vec114, 3                    ; 2 uses
  %i.ev = getelementptr i8, ptr %i.ej, i64 %i.eu  ; 2 uses
  %i.ew = getelementptr i8, ptr %i.dy, i64 %i.eu
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph112
  %index116 = phi i64 [ 0, %vector.ph112 ], [ %index.next121, %vector.body115 ] ; 2 uses
  %i.ex = shl i64 %index116, 3                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.ej, i64 %i.ex ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.dy, i64 %i.ex ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  %i.ey = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load119 = load <2 x i64>, ptr %next.gep118, align 8, !tbaa !2002, !alias.scope !2047, !noalias !2042
  %wide.load120 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !2002, !alias.scope !2047, !noalias !2042
  %i.ez = getelementptr i8, ptr %next.gep117, i64 16
  store <2 x i64> %wide.load119, ptr %next.gep117, align 8, !tbaa !2002, !alias.scope !2050, !noalias !2047
  store <2 x i64> %wide.load120, ptr %i.ez, align 8, !tbaa !2002, !alias.scope !2050, !noalias !2047
  %i.fa = getelementptr i8, ptr %next.gep118, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep118, align 8, !tbaa !2002, !alias.scope !2047, !noalias !2042
  store <2 x ptr> splat (ptr null), ptr %i.fa, align 8, !tbaa !2002, !alias.scope !2047, !noalias !2042
  %index.next121 = add nuw i64 %index116, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.fb, label %middle.block122, label %vector.body115, !llvm.loop !2052

middle.block122:                                  ; preds = %vector.body115
  %cmp.n123 = icmp eq i64 %i.ep, %n.vec114
  br i1 %cmp.n123, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i27.preheader149

.lr.ph.i.i.i.i.i.i.i27.preheader149:              ; preds = %vector.memcheck104, %.lr.ph.i.i.i.i.i.i.i27.preheader, %middle.block122
  %.012.i.i.i.i.i.i.i28.ph = phi ptr [ %i.ej, %vector.memcheck104 ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i27.preheader ], [ %i.ev, %middle.block122 ]
  %.0911.i.i.i.i.i.i.i29.ph = phi ptr [ %i.dy, %vector.memcheck104 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i27.preheader ], [ %i.ew, %middle.block122 ]
  br label %.lr.ph.i.i.i.i.i.i.i27

.lr.ph.i.i.i.i.i.i.i27:                           ; preds = %.lr.ph.i.i.i.i.i.i.i27.preheader149, %.lr.ph.i.i.i.i.i.i.i27
  %.012.i.i.i.i.i.i.i28 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i.i27 ], [ %.012.i.i.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i.i.i27.preheader149 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i29 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i.i27 ], [ %.0911.i.i.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i.i.i27.preheader149 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  %i.fc = load i64, ptr %.0911.i.i.i.i.i.i.i29, align 8, !tbaa !2002, !alias.scope !2045, !noalias !2042
  store i64 %i.fc, ptr %.012.i.i.i.i.i.i.i28, align 8, !tbaa !2002, !alias.scope !2042, !noalias !2045
  store ptr null, ptr %.0911.i.i.i.i.i.i.i29, align 8, !tbaa !2002, !alias.scope !2045, !noalias !2042
  %i.fd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i29, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i28, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i30 = icmp eq ptr %i.fd, %i.dt
  br i1 %.not.i.i.i.i.i.i.i30, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i27, !llvm.loop !2053

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i.i.i27, %middle.block122, %.noexc36
  %.0.lcssa.i.i.i.i.i.i.i32 = phi ptr [ %i.ej, %.noexc36 ], [ %i.ev, %middle.block122 ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i27 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i32, i64 8
  %.not.i23.i.i.i33 = icmp eq ptr %i.dy, null
  br i1 %.not.i23.i.i.i33, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i34, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i31
  call void @_ZdlPv(ptr noundef nonnull %i.dy) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i34

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i34: ; preds = %bb.r, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i31
  store ptr %i.ej, ptr %i.dr, align 8, !tbaa !2012
  store ptr %i.ff, ptr %i.ds, align 8, !tbaa !2008
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eh
  store ptr %i.fg, ptr %i.du, align 8, !tbaa !2011
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit37

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit37: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i34, %bb.p
  %i.fh = load ptr, ptr %7, align 8, !tbaa !2028  ; 4 uses
  store ptr null, ptr %7, align 8, !tbaa !2028
  %i.fi = load ptr, ptr %i.c, align 8, !tbaa !163 ; 2 uses
  %.not10.i.i.i.i38 = icmp eq ptr %i.fi, null
  br i1 %.not10.i.i.i.i38, label %.critedge.i49, label %.lr.ph.i.i.i.i39

.lr.ph.i.i.i.i39:                                 ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit37
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i39
  %.012.i.i.i.i40 = phi ptr [ %i.fi, %.lr.ph.i.i.i.i39 ], [ %.1.i.i.i.i45, %bb.s ] ; 3 uses
  %.0811.i.i.i.i41 = phi ptr [ %i.e, %.lr.ph.i.i.i.i39 ], [ %.19.i.i.i.i42, %bb.s ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i40, i64 32
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !18
  %i.fm = icmp ult i64 %i.fl, %i.fj               ; 2 uses
  %.19.i.i.i.i42 = select i1 %i.fm, ptr %.0811.i.i.i.i41, ptr %.012.i.i.i.i40 ; 6 uses
  %.1.in.v.i.i.i.i43 = select i1 %i.fm, i64 24, i64 16
  %.1.in.i.i.i.i44 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i40, i64 %.1.in.v.i.i.i.i43
  %.1.i.i.i.i45 = load ptr, ptr %.1.in.i.i.i.i44, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %.1.i.i.i.i45, null
  br i1 %.not.i.i.i.i46, label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i47, label %bb.s, !llvm.loop !2001

_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i47: ; preds = %bb.s
  %i.fn = icmp eq ptr %.19.i.i.i.i42, %i.e
  br i1 %i.fn, label %.critedge.i49, label %bb.t

bb.t:                                             ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i47
  %i.fo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i42, i64 32
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !18
  %i.fq = icmp ult i64 %i.fj, %i.fp
  br i1 %i.fq, label %.critedge.i49, label %bb.u

.critedge.i49:                                    ; preds = %bb.t, %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i47, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit37
  %.08.lcssa.i.i.i11.i50 = phi ptr [ %.19.i.i.i.i42, %bb.t ], [ %.19.i.i.i.i42, %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i47 ], [ %i.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit37 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.a, ptr %3, align 8, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.fr = invoke ptr @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11.i50, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc51 unwind label %bb.w

.noexc51:                                         ; preds = %.critedge.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.u

bb.u:                                             ; preds = %.noexc51, %bb.t
  %.sroa.06.0.i48 = phi ptr [ %i.fr, %.noexc51 ], [ %.19.i.i.i.i42, %bb.t ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i48, i64 40 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !2002 ; 3 uses
  store ptr %i.fh, ptr %i.fs, align 8, !tbaa !2002
  %.not.i.i.i.i.i53 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i.i.i53, label %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i.i.i.i.i54

_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i.i.i.i.i54: ; preds = %bb.u
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ft) #32, !inline_history !2004
  br label %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i.i.i.i.i54, %bb.u
  %i.fx = load ptr, ptr %7, align 8, !tbaa !2028  ; 3 uses
  %.not.i56 = icmp eq ptr %i.fx, null
  br i1 %.not.i56, label %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20ConjunctionAndFilterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20ConjunctionAndFilterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(40) %i.fx) #32, !inline_history !2054
  br label %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb20ConjunctionAndFilterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit

bb.v:                                             ; preds = %.invoke, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i23, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i8, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21, %_ZN6duckdb9make_uniqINS_20ConjunctionAndFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit59

bb.w:                                             ; preds = %.critedge.i49
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fh, null
  br i1 %.not.i57, label %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit59, label %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i58

_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i58: ; preds = %bb.w
  %i.gd = load ptr, ptr %i.fh, align 8, !tbaa !16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.fh) #32, !inline_history !2055
  br label %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit59

_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit59: ; preds = %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i58, %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.gb, %bb.v ], [ %i.gc, %bb.w ], [ %i.gc, %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i58 ]
  %i.gg = load ptr, ptr %7, align 8, !tbaa !2028  ; 3 uses
  %.not.i60 = icmp eq ptr %i.gg, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit62, label %_ZNKSt14default_deleteIN6duckdb20ConjunctionAndFilterEEclEPS1_.exit.i61

_ZNKSt14default_deleteIN6duckdb20ConjunctionAndFilterEEclEPS1_.exit.i61: ; preds = %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit59
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(40) %i.gg) #32, !inline_history !2054
  br label %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit62

_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit62: ; preds = %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit59, %_ZNKSt14default_deleteIN6duckdb20ConjunctionAndFilterEEclEPS1_.exit.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %common.resume

_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.e, %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i.i.i.i.i, %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEEixERS9_.exit, %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_9
