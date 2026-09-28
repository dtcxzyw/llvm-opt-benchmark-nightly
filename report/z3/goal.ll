Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/goal?download=true
inline.NumInlined: 1183
inline.NumDeleted: 414
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE13expand_vectorEv:bb.a
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !116
  %i.y = load i64, ptr %i.s, align 8, !tbaa !28
  store i64 %i.y, ptr %i.q, align 8, !tbaa !28
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !27
  store ptr %i.s, ptr %1, align 8, !tbaa !116
  store i64 0, ptr %i.aa, align 8, !tbaa !27
  store i8 0, ptr %i.s, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !116   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !28
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @__cxa_free_exception(ptr %i.o) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !207
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !153
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #24
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !314

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !116
  store i64 %i.c, ptr %i.a, align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.j, ptr %i.i, align 1, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17default_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !105
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14parray_managerIN11ast_manager17expr_array_configEE9push_backERNS2_3refERKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE2mkERNS2_3refE.exit, label %bb.b

_ZN14parray_managerIN11ast_manager17expr_array_configEE2mkERNS2_3refE.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.e = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.d, i64 noundef 24) ; 4 uses
  store i32 -1073741823, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  store ptr %i.e, ptr %1, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !32
  br label %bb.b

bb.b:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE2mkERNS2_3refE.exit, %bb.a
  %i.h = phi ptr [ %i.e, %_ZN14parray_managerIN11ast_manager17expr_array_configEE2mkERNS2_3refE.exit ], [ %i.a, %bb.a ] ; 15 uses
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.i, 1073741823
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.d, label %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !153  ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !208  ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i

_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i: ; preds = %bb.d
  %i.r = icmp eq i32 %i.o, 0
  br i1 %i.r, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i, label %bb.e

_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i: ; preds = %bb.d
  %i.s = zext i32 %i.o to i64                     ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !203
  %i.v = icmp eq i64 %i.u, %i.s
  br i1 %i.v, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i, label %bb.e

_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i
  %i.w = phi i64 [ 0, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i ], [ %i.s, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i ] ; 8 uses
  %i.x = icmp eq i64 %i.w, 0                      ; 2 uses
  %i.y = mul nuw nsw i64 %i.w, 3
  %i.z = add nuw nsw i64 %i.y, 1
  %i.aa = lshr i64 %i.z, 1
  %i.ab = select i1 %i.x, i64 2, i64 %i.aa        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.ae = shl nuw nsw i64 %i.ab, 3
  %i.af = add nuw nsw i64 %i.ae, 8
  %i.ag = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.ad, i64 noundef %i.af) ; 3 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !203
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 8 uses
  br i1 %i.x, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !208 ; 8 uses
  %min.iters.check117 = icmp samesign ult i64 %i.w, 10
  br i1 %min.iters.check117, label %scalar.ph116.preheader, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.preheader.i.i.i
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = sub i64 %i.ah, %i.ak
  %i.am = add i64 %i.al, 7
  %diff.check115 = icmp ult i64 %i.am, 31
  br i1 %diff.check115, label %scalar.ph116.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec119 = and i64 %i.w, 4294967292            ; 3 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next124, %vector.body120 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index121 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load122 = load <2 x ptr>, ptr %i.an, align 8, !tbaa !127
  %wide.load123 = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !127
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index121 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x ptr> %wide.load122, ptr %i.ap, align 8, !tbaa !127
  store <2 x ptr> %wide.load123, ptr %i.aq, align 8, !tbaa !127
  %index.next124 = add nuw i64 %index121, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next124, %n.vec119
  br i1 %i.ar, label %middle.block125, label %vector.body120, !llvm.loop !315

middle.block125:                                  ; preds = %vector.body120
  %cmp.n126 = icmp eq i64 %i.w, %n.vec119
  br i1 %cmp.n126, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i, label %scalar.ph116.preheader

scalar.ph116.preheader:                           ; preds = %vector.memcheck114, %.preheader.i.i.i, %middle.block125
  %.016.i.i.i.ph = phi i64 [ 0, %vector.memcheck114 ], [ 0, %.preheader.i.i.i ], [ %n.vec119, %middle.block125 ] ; 3 uses
  %xtraiter134 = and i64 %i.w, 3                  ; 2 uses
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol

scalar.ph116.prol:                                ; preds = %scalar.ph116.preheader, %scalar.ph116.prol
  %.016.i.i.i.prol = phi i64 [ %i.av, %scalar.ph116.prol ], [ %.016.i.i.i.ph, %scalar.ph116.preheader ] ; 3 uses
  %prol.iter136 = phi i64 [ %prol.iter136.next, %scalar.ph116.prol ], [ 0, %scalar.ph116.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.016.i.i.i.prol
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !127
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.016.i.i.i.prol
  store ptr %i.at, ptr %i.au, align 8, !tbaa !127
  %i.av = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter136.next = add i64 %prol.iter136, 1   ; 2 uses
  %prol.iter136.cmp.not = icmp eq i64 %prol.iter136.next, %xtraiter134
  br i1 %prol.iter136.cmp.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol, !llvm.loop !316

scalar.ph116.prol.loopexit:                       ; preds = %scalar.ph116.prol, %scalar.ph116.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %scalar.ph116.preheader ], [ %i.av, %scalar.ph116.prol ]
  %i.aw = sub nsw i64 %.016.i.i.i.ph, %i.w
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i, label %scalar.ph116

_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i: ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116, %middle.block125
  %i.ay = getelementptr inbounds i8, ptr %i.aj, i64 -8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !203
  %i.ba = load ptr, ptr %i.ac, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.bb = shl i64 %i.az, 3
  %i.bc = add i64 %i.bb, 8
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.ba, i64 noundef %i.bc, ptr noundef nonnull %i.ay)
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i

scalar.ph116:                                     ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116
  %.016.i.i.i = phi i64 [ %i.bs, %scalar.ph116 ], [ %.016.i.i.i.unr, %scalar.ph116.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.016.i.i.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !127
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.016.i.i.i
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !127
  %i.bg = add nuw nsw i64 %.016.i.i.i, 1          ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !127
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bg
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !127
  %i.bk = add nuw nsw i64 %.016.i.i.i, 2          ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !127
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bk
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !127
  %i.bo = add nuw nsw i64 %.016.i.i.i, 3          ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !127
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bo
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !127
  %i.bs = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bs, %i.w
  br i1 %exitcond.not.i.i.i.3, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i, label %scalar.ph116, !llvm.loop !317

_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i
  store ptr %i.ai, ptr %i.m, align 8, !tbaa !208
  br label %bb.e

bb.e:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i
  %i.bt = phi ptr [ %i.p, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i ], [ %i.ai, %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i ], [ null, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i ]
  %i.bu = load ptr, ptr %2, align 8, !tbaa !127   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backEPNS2_4cellERKP4expr.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !120
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !120
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backEPNS2_4cellERKP4expr.exit

_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backEPNS2_4cellERKP4expr.exit: ; preds = %bb.e, %bb.f
  %i.by = load i32, ptr %i.n, align 4, !tbaa !153 ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bz
  store ptr %i.bu, ptr %i.ca, align 8, !tbaa !127
  %i.cb = add i32 %i.by, 1
  store i32 %i.cb, ptr %i.n, align 4, !tbaa !153
  br label %bb.u

_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit: ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !28
  %i.cg = icmp ugt i32 %i.cd, %i.cf
  br i1 %i.cg, label %3, label %bb.k

3:                                                ; preds = %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit
  %or.cond.i = icmp eq i32 %i.i, -1073741823
  br i1 %or.cond.i, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit, label %bb.g

bb.g:                                             ; preds = %3
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.cj = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.ci, i64 noundef 24) ; 5 uses
  store i32 -1073741823, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ck, i8 0, i64 20, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = tail call noundef i32 @_ZN14parray_managerIN11ast_manager17expr_array_configEE10get_valuesEPNS2_4cellERPP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !28
  %i.cn = load i32, ptr %i.h, align 8             ; 2 uses
  %i.co = add i32 %i.cn, 1073741823
  %i.cp = and i32 %i.co, 1073741823               ; 2 uses
  %i.cq = and i32 %i.cn, -1073741824
  %i.cr = or disjoint i32 %i.cp, %i.cq
  store i32 %i.cr, ptr %i.h, align 8
  %i.cs = icmp eq i32 %i.cp, 0
  br i1 %i.cs, label %bb.h, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN14parray_managerIN11ast_manager17expr_array_configEE3delEPNS2_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.h)
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i

_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i: ; preds = %bb.h, %bb.g
  store ptr %i.cj, ptr %1, align 8, !tbaa !31
  store i32 0, ptr %i.cc, align 8, !tbaa !32
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit

_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit: ; preds = %3, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i
  %4 = phi ptr [ %i.h, %3 ], [ %i.cj, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.ct = load i32, ptr %6, align 4, !tbaa !153   ; 2 uses
  %i.cu = load ptr, ptr %5, align 8, !tbaa !208   ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i46, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i38

_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i46: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit
  %i.cw = icmp eq i32 %i.ct, 0
  br i1 %i.cw, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i40, label %bb.i

_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i38: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit
  %i.cx = zext i32 %i.ct to i64                   ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 -8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !203
  %i.da = icmp eq i64 %i.cz, %i.cx
  br i1 %i.da, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i40, label %bb.i

_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i40: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i38, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i46
  %i.db = phi i64 [ 0, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i46 ], [ %i.cx, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i38 ] ; 8 uses
  %i.dc = icmp eq i64 %i.db, 0                    ; 2 uses
  %i.dd = mul nuw nsw i64 %i.db, 3
  %i.de = add nuw nsw i64 %i.dd, 1
  %i.df = lshr i64 %i.de, 1
  %i.dg = select i1 %i.dc, i64 2, i64 %i.df       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %7, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.di = shl nuw nsw i64 %i.dg, 3
  %i.dj = add nuw nsw i64 %i.di, 8
  %i.dk = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.dh, i64 noundef %i.dj) ; 3 uses
  %i.dl = ptrtoaddr ptr %i.dk to i64
  store i64 %i.dg, ptr %i.dk, align 8, !tbaa !203
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 8 uses
  br i1 %i.dc, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i45, label %.preheader.i.i.i41

.preheader.i.i.i41:                               ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i40
  %i.dn = load ptr, ptr %5, align 8, !tbaa !208   ; 8 uses
  %min.iters.check103 = icmp samesign ult i64 %i.db, 10
  br i1 %min.iters.check103, label %scalar.ph102.preheader, label %vector.memcheck100

vector.memcheck100:                               ; preds = %.preheader.i.i.i41
  %i.do = ptrtoaddr ptr %i.dn to i64
  %i.dp = sub i64 %i.dl, %i.do
  %i.dq = add i64 %i.dp, 7
  %diff.check101 = icmp ult i64 %i.dq, 31
  br i1 %diff.check101, label %scalar.ph102.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck100
  %n.vec105 = and i64 %i.db, 4294967292           ; 3 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next110, %vector.body106 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %index107 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load108 = load <2 x ptr>, ptr %i.dr, align 8, !tbaa !127
  %wide.load109 = load <2 x ptr>, ptr %i.ds, align 8, !tbaa !127
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index107 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <2 x ptr> %wide.load108, ptr %i.dt, align 8, !tbaa !127
  store <2 x ptr> %wide.load109, ptr %i.du, align 8, !tbaa !127
  %index.next110 = add nuw i64 %index107, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next110, %n.vec105
  br i1 %i.dv, label %middle.block111, label %vector.body106, !llvm.loop !318

middle.block111:                                  ; preds = %vector.body106
  %cmp.n112 = icmp eq i64 %i.db, %n.vec105
  br i1 %cmp.n112, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i44, label %scalar.ph102.preheader

scalar.ph102.preheader:                           ; preds = %vector.memcheck100, %.preheader.i.i.i41, %middle.block111
  %.016.i.i.i42.ph = phi i64 [ 0, %vector.memcheck100 ], [ 0, %.preheader.i.i.i41 ], [ %n.vec105, %middle.block111 ] ; 3 uses
  %xtraiter131 = and i64 %i.db, 3                 ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %scalar.ph102.prol.loopexit, label %scalar.ph102.prol

scalar.ph102.prol:                                ; preds = %scalar.ph102.preheader, %scalar.ph102.prol
  %.016.i.i.i42.prol = phi i64 [ %i.dz, %scalar.ph102.prol ], [ %.016.i.i.i42.ph, %scalar.ph102.preheader ] ; 3 uses
  %prol.iter133 = phi i64 [ %prol.iter133.next, %scalar.ph102.prol ], [ 0, %scalar.ph102.preheader ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.016.i.i.i42.prol
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !127
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.016.i.i.i42.prol
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !127
  %i.dz = add nuw nsw i64 %.016.i.i.i42.prol, 1   ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %scalar.ph102.prol.loopexit, label %scalar.ph102.prol, !llvm.loop !319

scalar.ph102.prol.loopexit:                       ; preds = %scalar.ph102.prol, %scalar.ph102.preheader
  %.016.i.i.i42.unr = phi i64 [ %.016.i.i.i42.ph, %scalar.ph102.preheader ], [ %i.dz, %scalar.ph102.prol ]
  %i.ea = sub nsw i64 %.016.i.i.i42.ph, %i.db
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i44, label %scalar.ph102

_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i44: ; preds = %scalar.ph102.prol.loopexit, %scalar.ph102, %middle.block111
  %i.ec = getelementptr inbounds i8, ptr %i.dn, i64 -8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !203
  %i.ee = load ptr, ptr %7, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.ef = shl i64 %i.ed, 3
  %i.eg = add i64 %i.ef, 8
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.ee, i64 noundef %i.eg, ptr noundef nonnull %i.ec)
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i45

scalar.ph102:                                     ; preds = %scalar.ph102.prol.loopexit, %scalar.ph102
  %.016.i.i.i42 = phi i64 [ %i.ew, %scalar.ph102 ], [ %.016.i.i.i42.unr, %scalar.ph102.prol.loopexit ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.016.i.i.i42
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !127
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.016.i.i.i42
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !127
  %i.ek = add nuw nsw i64 %.016.i.i.i42, 1        ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !127
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ek
  store ptr %i.em, ptr %i.en, align 8, !tbaa !127
  %i.eo = add nuw nsw i64 %.016.i.i.i42, 2        ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !127
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.eo
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !127
  %i.es = add nuw nsw i64 %.016.i.i.i42, 3        ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !127
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.es
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !127
  %i.ew = add nuw nsw i64 %.016.i.i.i42, 4        ; 2 uses
  %exitcond.not.i.i.i43.3 = icmp eq i64 %i.ew, %i.db
  br i1 %exitcond.not.i.i.i43.3, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i44, label %scalar.ph102, !llvm.loop !320

_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i45: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i44, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i40
  store ptr %i.dm, ptr %5, align 8, !tbaa !208
  br label %bb.i

bb.i:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i45, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i38, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i46
  %i.ex = phi ptr [ %i.cu, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i38 ], [ %i.dm, %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i45 ], [ null, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i46 ]
  %i.ey = load ptr, ptr %2, align 8, !tbaa !127   ; 3 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i39, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backEPNS2_4cellERKP4expr.exit47, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !120
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !120
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backEPNS2_4cellERKP4expr.exit47

_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backEPNS2_4cellERKP4expr.exit47: ; preds = %bb.i, %bb.j
  %i.fc = load i32, ptr %6, align 4, !tbaa !153   ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fd
  store ptr %i.ey, ptr %i.fe, align 8, !tbaa !127
  %i.ff = add i32 %i.fc, 1
  store i32 %i.ff, ptr %6, align 4, !tbaa !153
  br label %bb.u

bb.k:                                             ; preds = %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit
  %i.fg = add i32 %i.cd, 1
  store i32 %i.fg, ptr %i.cc, align 8, !tbaa !32
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.fj = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.fi, i64 noundef 24) ; 6 uses
  store i32 -1073741823, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fk, i8 0, i64 20, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !28
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !28
  %i.fn = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !28
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 4 uses
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !28
  store i32 -1073741822, ptr %i.fj, align 8
  %i.fq = load i32, ptr %i.h, align 8             ; 2 uses
  %i.fr = and i32 %i.fq, 1073741823
  %i.fs = or disjoint i32 %i.fr, -2147483648
  store i32 %i.fs, ptr %i.h, align 8
  %i.ft = load i32, ptr %i.fk, align 4, !tbaa !28
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fl, align 4, !tbaa !28
  store ptr %i.fj, ptr %i.fn, align 8, !tbaa !28
  %i.fv = add i32 %i.fq, 1073741823
  %i.fw = and i32 %i.fv, 1073741823               ; 2 uses
  %i.fx = or disjoint i32 %i.fw, -2147483648
  store i32 %i.fx, ptr %i.h, align 8
  %i.fy = icmp eq i32 %i.fw, 0
  br i1 %i.fy, label %bb.l, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN14parray_managerIN11ast_manager17expr_array_configEE3delEPNS2_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.h)
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit

_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit: ; preds = %bb.k, %bb.l
  store ptr %i.fj, ptr %1, align 8, !tbaa !31
  %i.fz = load i32, ptr %i.fk, align 4, !tbaa !153 ; 2 uses
  %i.ga = load ptr, ptr %i.fp, align 8, !tbaa !208 ; 3 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i57, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i49

_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i57: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit
  %i.gc = icmp eq i32 %i.fz, 0
  br i1 %i.gc, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i51, label %bb.m

_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i49: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit
  %i.gd = zext i32 %i.fz to i64                   ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %i.ga, i64 -8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !203
  %i.gg = icmp eq i64 %i.gf, %i.gd
  br i1 %i.gg, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i51, label %bb.m

_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i51: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i49, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i57
  %i.gh = phi i64 [ 0, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i57 ], [ %i.gd, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i49 ] ; 8 uses
  %i.gi = icmp eq i64 %i.gh, 0                    ; 2 uses
  %i.gj = mul nuw nsw i64 %i.gh, 3
  %i.gk = add nuw nsw i64 %i.gj, 1
  %i.gl = lshr i64 %i.gk, 1
  %i.gm = select i1 %i.gi, i64 2, i64 %i.gl       ; 2 uses
  %i.gn = load ptr, ptr %i.fh, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.go = shl nuw nsw i64 %i.gm, 3
  %i.gp = add nuw nsw i64 %i.go, 8
  %i.gq = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.gn, i64 noundef %i.gp) ; 3 uses
  %i.gr = ptrtoaddr ptr %i.gq to i64
  store i64 %i.gm, ptr %i.gq, align 8, !tbaa !203
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 8 uses
  br i1 %i.gi, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i56, label %.preheader.i.i.i52

.preheader.i.i.i52:                               ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i51
  %i.gt = load ptr, ptr %i.fp, align 8, !tbaa !208 ; 8 uses
  %min.iters.check = icmp samesign ult i64 %i.gh, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.i.i52
  %i.gu = ptrtoaddr ptr %i.gt to i64
  %i.gv = sub i64 %i.gr, %i.gu
  %i.gw = add i64 %i.gv, 7
  %diff.check = icmp ult i64 %i.gw, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gh, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %index ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %wide.load = load <2 x ptr>, ptr %i.gx, align 8, !tbaa !127
  %wide.load99 = load <2 x ptr>, ptr %i.gy, align 8, !tbaa !127
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %index ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <2 x ptr> %wide.load, ptr %i.gz, align 8, !tbaa !127
  store <2 x ptr> %wide.load99, ptr %i.ha, align 8, !tbaa !127
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gh, %n.vec
  br i1 %cmp.n, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i55, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.i.i.i52, %middle.block
  %.016.i.i.i53.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.i52 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.gh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.016.i.i.i53.prol = phi i64 [ %i.hf, %scalar.ph.prol ], [ %.016.i.i.i53.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.016.i.i.i53.prol
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !127
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.016.i.i.i53.prol
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !127
  %i.hf = add nuw nsw i64 %.016.i.i.i53.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !322

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.016.i.i.i53.unr = phi i64 [ %.016.i.i.i53.ph, %scalar.ph.preheader ], [ %i.hf, %scalar.ph.prol ]
  %i.hg = sub nsw i64 %.016.i.i.i53.ph, %i.gh
  %i.hh = icmp ugt i64 %i.hg, -4
  br i1 %i.hh, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i55, label %scalar.ph

_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i55: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.hi = getelementptr inbounds i8, ptr %i.gt, i64 -8 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !203
  %i.hk = load ptr, ptr %i.fh, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.hl = shl i64 %i.hj, 3
  %i.hm = add i64 %i.hl, 8
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.hk, i64 noundef %i.hm, ptr noundef nonnull %i.hi)
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i56

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.016.i.i.i53 = phi i64 [ %i.ic, %scalar.ph ], [ %.016.i.i.i53.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.016.i.i.i53
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !127
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.016.i.i.i53
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !127
  %i.hq = add nuw nsw i64 %.016.i.i.i53, 1        ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !127
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.hq
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !127
  %i.hu = add nuw nsw i64 %.016.i.i.i53, 2        ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !127
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.hu
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !127
  %i.hy = add nuw nsw i64 %.016.i.i.i53, 3        ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !127
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.hy
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !127
  %i.ic = add nuw nsw i64 %.016.i.i.i53, 4        ; 2 uses
  %exitcond.not.i.i.i54.3 = icmp eq i64 %i.ic, %i.gh
  br i1 %exitcond.not.i.i.i54.3, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i55, label %scalar.ph, !llvm.loop !323

_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i56: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i.i55, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i51
  store ptr %i.gs, ptr %i.fp, align 8, !tbaa !208
  br label %bb.m

bb.m:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i56, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i49, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i57
  %i.id = phi ptr [ %i.ga, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i.i49 ], [ %i.gs, %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i.i56 ], [ null, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i57 ]
  %i.ie = load ptr, ptr %2, align 8, !tbaa !127   ; 3 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i50, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backEPNS2_4cellERKP4expr.exit58, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !120
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !120
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backEPNS2_4cellERKP4expr.exit58

_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backEPNS2_4cellERKP4expr.exit58: ; preds = %bb.m, %bb.n
  %i.ii = load i32, ptr %i.fk, align 4, !tbaa !153 ; 2 uses
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ij
  store ptr %i.ie, ptr %i.ik, align 8, !tbaa !127
  %i.il = add i32 %i.ii, 1
  store i32 %i.il, ptr %i.fk, align 4, !tbaa !153
  br label %bb.u

bb.o:                                             ; preds = %bb.b
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.io = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.in, i64 noundef 24) ; 5 uses
  store i32 1073741825, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ip, i8 0, i64 20, i1 false)
  %i.iq = load ptr, ptr %1, align 8, !tbaa !31    ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit63, label %.preheader.i59
end_hunk_0
begin_hunk_1_@_ZN14parray_managerIN11ast_manager17expr_array_configEE10get_valuesEPNS2_4cellERPP4expr:bb.a
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !127
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ei
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !127
  %i.em = add nuw nsw i64 %.016.i.i, 3            ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !127
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.em
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !127
  %i.eq = add nuw nsw i64 %.016.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.eq, %i.cv
  br i1 %exitcond.not.i.i.3, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i, label %scalar.ph, !llvm.loop !328

_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i.i, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i.i
  store ptr %i.dg, ptr %2, align 8, !tbaa !208
  br label %bb.q

bb.q:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i24
  %i.er = phi ptr [ %i.co, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.thread.i ], [ %i.dg, %_ZN14parray_managerIN11ast_manager17expr_array_configEE6expandERPP4expr.exit.i ], [ null, %_ZN14parray_managerIN11ast_manager17expr_array_configEE8capacityEPP4expr.exit.i24 ]
  %i.es = load ptr, ptr %i.cn, align 8, !tbaa !127 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i22, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backERPP4exprRjRKS4_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !120
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !120
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backERPP4exprRjRKS4_.exit

_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backERPP4exprRjRKS4_.exit: ; preds = %bb.q, %bb.r
  %i.ew = zext i32 %.03035 to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ew
  store ptr %i.es, ptr %i.ex, align 8, !tbaa !127
  %i.ey = add i32 %.03035, 1
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPP4exprRj.exit

bb.s:                                             ; preds = %.lr.ph36
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.18, i32 noundef 231, ptr noundef nonnull @.str.19)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPP4exprRj.exit

default.unreachable54:                            ; preds = %.lr.ph36
  unreachable

_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPP4exprRj.exit: ; preds = %bb.o, %bb.n, %bb.m, %bb.s, %_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backERPP4exprRjRKS4_.exit, %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPP4exprjRKS4_.exit
  %.1 = phi i32 [ %i.ce, %bb.o ], [ %.03035, %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPP4exprjRKS4_.exit ], [ %.03035, %bb.s ], [ %i.ey, %_ZN14parray_managerIN11ast_manager17expr_array_configEE10rpush_backERPP4exprRjRKS4_.exit ], [ %i.ce, %bb.m ], [ %i.ce, %bb.n ] ; 2 uses
  %.not16.wide = icmp eq i64 %i.bg, 0
  br i1 %.not16.wide, label %._crit_edge37, label %.lr.ph36, !llvm.loop !329
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIPN14parray_managerIN11ast_manager17expr_array_configEE4cellELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !211    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !153
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !153
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !211
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !153  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !24
  %i.r = load ptr, ptr %1, align 8, !tbaa !116    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !116
  %i.y = load i64, ptr %i.s, align 8, !tbaa !28
  store i64 %i.y, ptr %i.q, align 8, !tbaa !28
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !27
  store ptr %i.s, ptr %1, align 8, !tbaa !116
  store i64 0, ptr %i.aa, align 8, !tbaa !27
  store i8 0, ptr %i.s, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !116   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !28
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @__cxa_free_exception(ptr %i.o) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !211
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !153
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9push_backERNS2_3refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE2mkERNS2_3refE.exit, label %bb.b

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE2mkERNS2_3refE.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206, !nonnull !114, !align !115
  %i.e = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.d, i64 noundef 24) ; 4 uses
  store i32 -1073741823, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  store ptr %i.e, ptr %1, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !36
  br label %bb.b

bb.b:                                             ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE2mkERNS2_3refE.exit, %bb.a
  %i.h = phi ptr [ %i.e, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE2mkERNS2_3refE.exit ], [ %i.a, %bb.a ] ; 15 uses
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.i, 1073741823
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.d, label %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  tail call void @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10rpush_backERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERjRKS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.n

_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !36   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !28
  %i.s = icmp ugt i32 %i.p, %i.r
  br i1 %i.s, label %3, label %bb.g

3:                                                ; preds = %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit
  %or.cond.i = icmp eq i32 %i.i, -1073741823
  br i1 %or.cond.i, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit, label %bb.e

bb.e:                                             ; preds = %3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !206, !nonnull !114, !align !115
  %i.v = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.u, i64 noundef 24) ; 5 uses
  store i32 -1073741823, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = tail call noundef i32 @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10get_valuesEPNS2_4cellERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  store i32 %i.y, ptr %i.w, align 4, !tbaa !28
  %i.z = load i32, ptr %i.h, align 8              ; 2 uses
  %i.aa = add i32 %i.z, 1073741823
  %i.ab = and i32 %i.aa, 1073741823               ; 2 uses
  %i.ac = and i32 %i.z, -1073741824
  %i.ad = or disjoint i32 %i.ab, %i.ac
  store i32 %i.ad, ptr %i.h, align 8
  %i.ae = icmp eq i32 %i.ab, 0
  br i1 %i.ae, label %bb.f, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE3delEPNS2_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.h)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i: ; preds = %bb.f, %bb.e
  store ptr %i.v, ptr %1, align 8, !tbaa !35
  store i32 0, ptr %i.o, align 8, !tbaa !36
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit: ; preds = %3, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i
  %4 = phi ptr [ %i.h, %3 ], [ %i.v, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 4
  tail call void @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10rpush_backERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERjRKS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.n

bb.g:                                             ; preds = %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit
  %i.af = add i32 %i.p, 1
  store i32 %i.af, ptr %i.o, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !206, !nonnull !114, !align !115
  %i.ai = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.ah, i64 noundef 24) ; 6 uses
  store i32 -1073741823, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aj, i8 0, i64 20, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !28
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !28
  store i32 -1073741822, ptr %i.ai, align 8
  %i.ap = load i32, ptr %i.h, align 8             ; 2 uses
  %i.aq = and i32 %i.ap, 1073741823
  %i.ar = or disjoint i32 %i.aq, -2147483648
  store i32 %i.ar, ptr %i.h, align 8
  %i.as = load i32, ptr %i.aj, align 4, !tbaa !28
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ak, align 4, !tbaa !28
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !28
  %i.au = add i32 %i.ap, 1073741823
  %i.av = and i32 %i.au, 1073741823               ; 2 uses
  %i.aw = or disjoint i32 %i.av, -2147483648
  store i32 %i.aw, ptr %i.h, align 8
  %i.ax = icmp eq i32 %i.av, 0
  br i1 %i.ax, label %bb.h, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE3delEPNS2_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.h)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit: ; preds = %bb.g, %bb.h
  store ptr %i.ai, ptr %1, align 8, !tbaa !35
  tail call void @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10rpush_backERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERjRKS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.n

bb.i:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !206, !nonnull !114, !align !115
  %i.ba = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.az, i64 noundef 24) ; 5 uses
  store i32 1073741825, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bb, i8 0, i64 20, i1 false)
  %i.bc = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43, label %.preheader.i39

.preheader.i39:                                   ; preds = %bb.i, %bb.j
  %.0.i40 = phi ptr [ %i.bh, %bb.j ], [ %i.bc, %bb.i ] ; 5 uses
  %i.be = load i32, ptr %.0.i40, align 8
  %i.bf = lshr i32 %i.be, 30
  switch i32 %i.bf, label %default.unreachable [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

bb.j:                                             ; preds = %.preheader.i39
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i40, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !28
  br label %.preheader.i39, !llvm.loop !7

bb.k:                                             ; preds = %.preheader.i39
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i40, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !28
  %i.bk = add i32 %i.bj, 1
  br label %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43

bb.l:                                             ; preds = %.preheader.i39
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i40, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !28
  %i.bn = add i32 %i.bm, -1
  br label %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43

bb.m:                                             ; preds = %.preheader.i39
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i40, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !28
  br label %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43

default.unreachable:                              ; preds = %.preheader.i39
  unreachable

_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  %.07.i41 = phi i32 [ %i.bp, %bb.m ], [ %i.bk, %bb.k ], [ %i.bn, %bb.l ], [ 0, %bb.i ]
  store i32 %.07.i41, ptr %i.bb, align 4, !tbaa !28
  %i.bq = load ptr, ptr %2, align 8, !tbaa !128   ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i44, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit, label %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i

_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i: ; preds = %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.bs = add i32 %i.br, 1
  %i.bt = and i32 %i.bs, 1073741823
  %i.bu = and i32 %i.br, -1073741824
  %i.bv = or disjoint i32 %i.bt, %i.bu
  store i32 %i.bv, ptr %i.bq, align 4
  %.pre = load ptr, ptr %2, align 8, !tbaa !128
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit: ; preds = %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43, %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i
  %i.bw = phi ptr [ null, %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43 ], [ %.pre, %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !214
  %i.by = load ptr, ptr %1, align 8, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !28
  store ptr %i.ba, ptr %1, align 8, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10rpush_backERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERjRKS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !153    ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !215    ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.thread

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit: ; preds = %bb.a
  %i.d = icmp eq i32 %i.a, 0
  br i1 %i.d, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i, label %bb.b

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.thread: ; preds = %bb.a
  %i.e = zext i32 %i.a to i64                     ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !203
  %i.h = icmp eq i64 %i.g, %i.e
  br i1 %i.h, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i, label %bb.b

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i: ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.thread, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit
  %i.i = phi i64 [ 0, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit ], [ %i.e, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.thread ] ; 8 uses
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = mul nuw nsw i64 %i.i, 3
  %i.l = add nuw nsw i64 %i.k, 1
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !206, !nonnull !114, !align !115
  %i.q = shl nuw nsw i64 %i.n, 3
  %i.r = add nuw nsw i64 %i.q, 8
  %i.s = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.p, i64 noundef %i.r) ; 3 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  store i64 %i.n, ptr %i.s, align 8, !tbaa !203
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 8 uses
  br i1 %i.j, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE6expandERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i
  %i.v = load ptr, ptr %1, align 8, !tbaa !215    ; 8 uses
  %min.iters.check = icmp samesign ult i64 %i.i, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = sub i64 %i.t, %i.w
  %i.y = add i64 %i.x, 7
  %diff.check = icmp ult i64 %i.y, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967292               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <2 x ptr>, ptr %i.z, align 8, !tbaa !128
  %wide.load13 = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !128
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x ptr> %wide.load, ptr %i.ab, align 8, !tbaa !128
  store <2 x ptr> %wide.load13, ptr %i.ac, align 8, !tbaa !128
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !330

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.i, %middle.block
  %.016.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.016.i.prol = phi i64 [ %i.ah, %scalar.ph.prol ], [ %.016.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
end_hunk_1
begin_hunk_2_@_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10get_valuesEPNS2_4cellERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE:bb.a
  %.016.i.i = phi i64 [ %i.eo, %scalar.ph ], [ %.016.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.016.i.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !128
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.016.i.i
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !128
  %i.ec = add nuw nsw i64 %.016.i.i, 1            ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !128
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.ec
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !128
  %i.eg = add nuw nsw i64 %.016.i.i, 2            ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !128
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.eg
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !128
  %i.ek = add nuw nsw i64 %.016.i.i, 3            ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !128
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.ek
  store ptr %i.em, ptr %i.en, align 8, !tbaa !128
  %i.eo = add nuw nsw i64 %.016.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.eo, %i.ct
  br i1 %exitcond.not.i.i.3, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i.i, label %scalar.ph, !llvm.loop !337

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE6expandERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i: ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i.i, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i
  store ptr %i.de, ptr %2, align 8, !tbaa !215
  br label %bb.m

bb.m:                                             ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE6expandERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.thread.i, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i26
  %i.ep = phi ptr [ %i.cm, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.thread.i ], [ %i.de, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE6expandERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i ], [ null, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i26 ]
  %i.eq = load ptr, ptr %i.cl, align 8, !tbaa !128 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i22, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10rpush_backERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERjRKS7_.exit, label %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i23

_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i23: ; preds = %bb.m
  %i.er = load i32, ptr %i.eq, align 4            ; 2 uses
  %i.es = add i32 %i.er, 1
  %i.et = and i32 %i.es, 1073741823
  %i.eu = and i32 %i.er, -1073741824
  %i.ev = or disjoint i32 %i.et, %i.eu
  store i32 %i.ev, ptr %i.eq, align 4
  %.pre.i24 = load ptr, ptr %i.cl, align 8, !tbaa !128
  %.pre9.i = load ptr, ptr %2, align 8, !tbaa !215
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10rpush_backERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERjRKS7_.exit

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10rpush_backERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERjRKS7_.exit: ; preds = %bb.m, %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i23
  %i.ew = phi ptr [ %i.ep, %bb.m ], [ %.pre9.i, %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i23 ]
  %i.ex = phi ptr [ null, %bb.m ], [ %.pre.i24, %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i23 ]
  %i.ey = zext i32 %.03237 to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ey
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !128
  %i.fa = add i32 %.03237, 1
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERj.exit

bb.n:                                             ; preds = %.lr.ph38
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.18, i32 noundef 231, ptr noundef nonnull @.str.19)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERj.exit

default.unreachable56:                            ; preds = %.lr.ph38
  unreachable

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERj.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.n, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10rpush_backERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERjRKS7_.exit, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyEjRKS7_.exit
  %.1 = phi i32 [ %i.bz, %bb.k ], [ %.03237, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyEjRKS7_.exit ], [ %.03237, %bb.n ], [ %i.fa, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10rpush_backERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERjRKS7_.exit ], [ %i.bz, %bb.i ], [ %i.bz, %bb.j ] ; 2 uses
  %.not16.wide = icmp eq i64 %i.aw, 0
  br i1 %.not16.wide, label %._crit_edge39, label %.lr.ph38, !llvm.loop !338
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !216    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !153
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !153
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !216
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !153  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !24
  %i.r = load ptr, ptr %1, align 8, !tbaa !116    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !116
  %i.y = load i64, ptr %i.s, align 8, !tbaa !28
  store i64 %i.y, ptr %i.q, align 8, !tbaa !28
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !27
  store ptr %i.s, ptr %1, align 8, !tbaa !116
  store i64 0, ptr %i.aa, align 8, !tbaa !27
  store i8 0, ptr %i.s, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !116   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !28
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @__cxa_free_exception(ptr %i.o) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !216
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !153
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14parray_managerIN11ast_manager17expr_array_configEE3setERNS2_3refEjRKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !31     ; 16 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1073741823
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = load ptr, ptr %3, align 8, !tbaa !127    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !120
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !120
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i

_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i: ; preds = %bb.d, %bb.c
  %i.l = zext i32 %2 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !114, !align !115
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !127  ; 3 uses
  %.not.i.i6.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i6.i.i, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit, label %bb.e

bb.e:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !120
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4, !tbaa !120
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.n, ptr noundef nonnull %i.o)
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !127
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit

_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i, %bb.e, %bb.f
  %i.t = phi ptr [ %i.h, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i ], [ %i.h, %bb.e ], [ %.pre.i.i, %bb.f ]
  store ptr %i.t, ptr %i.m, align 8, !tbaa !127
  br label %bb.t

_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !28
  %i.y = icmp ugt i32 %i.v, %i.x
  br i1 %i.y, label %4, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refEPNS2_4cellE.exit

4:                                                ; preds = %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit
  %or.cond.i = icmp eq i32 %i.b, -1073741823
  br i1 %or.cond.i, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit, label %bb.g

bb.g:                                             ; preds = %4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.ab = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.aa, i64 noundef 24) ; 5 uses
  store i32 -1073741823, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = tail call noundef i32 @_ZN14parray_managerIN11ast_manager17expr_array_configEE10get_valuesEPNS2_4cellERPP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !28
  %i.af = load i32, ptr %i.a, align 8             ; 2 uses
  %i.ag = add i32 %i.af, 1073741823
  %i.ah = and i32 %i.ag, 1073741823               ; 2 uses
  %i.ai = and i32 %i.af, -1073741824
  %i.aj = or disjoint i32 %i.ah, %i.ai
  store i32 %i.aj, ptr %i.a, align 8
  %i.ak = icmp eq i32 %i.ah, 0
  br i1 %i.ak, label %bb.h, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN14parray_managerIN11ast_manager17expr_array_configEE3delEPNS2_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a)
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i

_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i: ; preds = %bb.h, %bb.g
  store ptr %i.ab, ptr %1, align 8, !tbaa !31
  store i32 0, ptr %i.u, align 8, !tbaa !32
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit

_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit: ; preds = %4, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i
  %5 = phi ptr [ %i.a, %4 ], [ %i.ab, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i ]
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = load ptr, ptr %6, align 8, !tbaa !28
  %i.am = load ptr, ptr %3, align 8, !tbaa !127   ; 4 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i42, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i43, label %bb.i

bb.i:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !120
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !120
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i43

_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i43: ; preds = %bb.i, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit
  %i.aq = zext i32 %2 to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !114, !align !115
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !127 ; 3 uses
  %.not.i.i6.i.i44 = icmp eq ptr %i.at, null
  br i1 %.not.i.i6.i.i44, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit46, label %bb.j

bb.j:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i43
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !120
  %i.aw = add i32 %i.av, -1                       ; 2 uses
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !120
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit46

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.as, ptr noundef nonnull %i.at)
  %.pre.i.i45 = load ptr, ptr %3, align 8, !tbaa !127
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit46

_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit46: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i43, %bb.j, %bb.k
  %i.ay = phi ptr [ %i.am, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i43 ], [ %i.am, %bb.j ], [ %.pre.i.i45, %bb.k ]
  store ptr %i.ay, ptr %i.ar, align 8, !tbaa !127
  br label %bb.t

_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refEPNS2_4cellE.exit: ; preds = %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit
  %i.az = add i32 %i.v, 1
  store i32 %i.az, ptr %i.u, align 8, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.bc = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.bb, i64 noundef 24) ; 6 uses
  store i32 -1073741823, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bd, i8 0, i64 20, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !28
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !28
  store i32 -1073741822, ptr %i.bc, align 8
  %i.bj = load i32, ptr %i.a, align 8
  %i.bk = and i32 %i.bj, 1073741823               ; 2 uses
  store i32 %i.bk, ptr %i.a, align 8
  store i32 %2, ptr %i.be, align 4, !tbaa !28
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.bm = zext i32 %2 to i64                      ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !127 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !210
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refEPNS2_4cellE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !120
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !120
  %.pre61 = load i32, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refEPNS2_4cellE.exit
  %i.bt = phi i32 [ %.pre61, %bb.l ], [ %i.bk, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refEPNS2_4cellE.exit ] ; 2 uses
  store ptr %i.bc, ptr %i.bg, align 8, !tbaa !28
  %i.bu = add i32 %i.bt, 1073741823
  %i.bv = and i32 %i.bu, 1073741823               ; 2 uses
  %i.bw = and i32 %i.bt, -1073741824
  %i.bx = or disjoint i32 %i.bv, %i.bw
  store i32 %i.bx, ptr %i.a, align 8
  %i.by = icmp eq i32 %i.bv, 0
  br i1 %i.by, label %bb.n, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN14parray_managerIN11ast_manager17expr_array_configEE3delEPNS2_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a)
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit

_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit: ; preds = %bb.m, %bb.n
  store ptr %i.bc, ptr %1, align 8, !tbaa !31
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !28
  %i.ca = load ptr, ptr %3, align 8, !tbaa !127   ; 4 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i48, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i49, label %bb.o

bb.o:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !120
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !120
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i49

_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i49: ; preds = %bb.o, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bm ; 2 uses
  %i.cf = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !114, !align !115
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !127 ; 3 uses
  %.not.i.i6.i.i50 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i6.i.i50, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit52, label %bb.p

bb.p:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i49
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !120
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !120
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.q, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit52

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cf, ptr noundef nonnull %i.cg)
  %.pre.i.i51 = load ptr, ptr %3, align 8, !tbaa !127
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit52

_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit52: ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i49, %bb.p, %bb.q
  %i.cl = phi ptr [ %i.ca, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit.i.i49 ], [ %i.ca, %bb.p ], [ %.pre.i.i51, %bb.q ]
  store ptr %i.cl, ptr %i.ce, align 8, !tbaa !127
  br label %bb.t

bb.r:                                             ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.co = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.cn, i64 noundef 24) ; 6 uses
  store i32 1, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  store i32 %2, ptr %i.cp, align 4, !tbaa !28
  %i.cr = load ptr, ptr %3, align 8, !tbaa !127   ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i53, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit54, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !120
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !120
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit54

_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit54: ; preds = %bb.r, %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cr, ptr %i.cv, align 8, !tbaa !210
  %i.cw = load ptr, ptr %1, align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !28
  store ptr %i.co, ptr %1, align 8, !tbaa !31
  br label %bb.t

bb.t:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refERKP4expr.exit54, %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit52, %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit46, %_ZN14parray_managerIN11ast_manager17expr_array_configEE4rsetEPNS2_4cellEjRKP4expr.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE3setERNS2_3refEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !35     ; 16 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1073741823
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = load ptr, ptr %3, align 8, !tbaa !128    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i, label %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i.i

_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i.i: ; preds = %bb.c
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = add i32 %i.i, 1
  %i.k = and i32 %i.j, 1073741823
  %i.l = and i32 %i.i, -1073741824
  %i.m = or disjoint i32 %i.k, %i.l
  store i32 %i.m, ptr %i.h, align 4
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i: ; preds = %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i.i, %bb.c
  %i.n = zext i32 %2 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !205, !nonnull !114, !align !115
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !128  ; 4 uses
  %.not.i.i6.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i6.i.i, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = add i32 %i.r, 1073741823
  %i.t = and i32 %i.s, 1073741823                 ; 2 uses
  %i.u = and i32 %i.r, -1073741824
  %i.v = or disjoint i32 %i.t, %i.u
  store i32 %i.v, ptr %i.q, align 4
  %i.w = icmp eq i32 %i.t, 0
  br i1 %i.w, label %bb.e, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 648
  tail call void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull %i.q)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit: ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i, %bb.d, %bb.e
  %i.y = load ptr, ptr %3, align 8, !tbaa !128
  store ptr %i.y, ptr %i.o, align 8, !tbaa !128
  br label %bb.o

_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit: ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !28
  %i.ad = icmp ugt i32 %i.aa, %i.ac
  br i1 %i.ad, label %4, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refEPNS2_4cellE.exit

4:                                                ; preds = %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit
  %or.cond.i = icmp eq i32 %i.b, -1073741823
  br i1 %or.cond.i, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit, label %bb.f

bb.f:                                             ; preds = %4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !206, !nonnull !114, !align !115
  %i.ag = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.af, i64 noundef 24) ; 5 uses
  store i32 -1073741823, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ah, i8 0, i64 20, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = tail call noundef i32 @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10get_valuesEPNS2_4cellERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !28
  %i.ak = load i32, ptr %i.a, align 8             ; 2 uses
  %i.al = add i32 %i.ak, 1073741823
  %i.am = and i32 %i.al, 1073741823               ; 2 uses
  %i.an = and i32 %i.ak, -1073741824
  %i.ao = or disjoint i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.a, align 8
  %i.ap = icmp eq i32 %i.am, 0
  br i1 %i.ap, label %bb.g, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE3delEPNS2_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i: ; preds = %bb.g, %bb.f
  store ptr %i.ag, ptr %1, align 8, !tbaa !35
  store i32 0, ptr %i.z, align 8, !tbaa !36
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit: ; preds = %4, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i
  %5 = phi ptr [ %i.a, %4 ], [ %i.ag, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i ]
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = load ptr, ptr %6, align 8, !tbaa !28
  %i.ar = load ptr, ptr %3, align 8, !tbaa !128   ; 3 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i42, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i44, label %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i.i43

_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i.i43: ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = add i32 %i.as, 1
  %i.au = and i32 %i.at, 1073741823
  %i.av = and i32 %i.as, -1073741824
  %i.aw = or disjoint i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.ar, align 4
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i44

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i44: ; preds = %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i.i43, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit
  %i.ax = zext i32 %2 to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !205, !nonnull !114, !align !115
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !128 ; 4 uses
  %.not.i.i6.i.i45 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i6.i.i45, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit46, label %bb.h

bb.h:                                             ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i44
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = add i32 %i.bb, 1073741823
  %i.bd = and i32 %i.bc, 1073741823               ; 2 uses
  %i.be = and i32 %i.bb, -1073741824
  %i.bf = or disjoint i32 %i.bd, %i.be
  store i32 %i.bf, ptr %i.ba, align 4
  %i.bg = icmp eq i32 %i.bd, 0
  br i1 %i.bg, label %bb.i, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit46

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 648
  tail call void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull %i.ba)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit46

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit46: ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i44, %bb.h, %bb.i
  %i.bi = load ptr, ptr %3, align 8, !tbaa !128
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !128
  br label %bb.o

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refEPNS2_4cellE.exit: ; preds = %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit
  %i.bj = add i32 %i.aa, 1
  store i32 %i.bj, ptr %i.z, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !206, !nonnull !114, !align !115
  %i.bm = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.bl, i64 noundef 24) ; 6 uses
  store i32 -1073741823, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bn, i8 0, i64 20, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !28
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !28
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !28
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !28
  store i32 -1073741822, ptr %i.bm, align 8
  %i.bt = load i32, ptr %i.a, align 8
  %i.bu = and i32 %i.bt, 1073741823               ; 2 uses
  store i32 %i.bu, ptr %i.a, align 8
  store i32 %2, ptr %i.bo, align 4, !tbaa !28
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !28
  %i.bw = zext i32 %2 to i64                      ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !128 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !214
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %bb.j, label %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i

_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i: ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refEPNS2_4cellE.exit
  %i.ca = load i32, ptr %i.by, align 4            ; 2 uses
  %i.cb = add i32 %i.ca, 1
  %i.cc = and i32 %i.cb, 1073741823
  %i.cd = and i32 %i.ca, -1073741824
  %i.ce = or disjoint i32 %i.cc, %i.cd
  store i32 %i.ce, ptr %i.by, align 4
  %.pre63 = load i32, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refEPNS2_4cellE.exit
  %i.cf = phi i32 [ %.pre63, %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i ], [ %i.bu, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refEPNS2_4cellE.exit ] ; 2 uses
  store ptr %i.bm, ptr %i.bq, align 8, !tbaa !28
  %i.cg = add i32 %i.cf, 1073741823
  %i.ch = and i32 %i.cg, 1073741823               ; 2 uses
  %i.ci = and i32 %i.cf, -1073741824
  %i.cj = or disjoint i32 %i.ch, %i.ci
  store i32 %i.cj, ptr %i.a, align 8
  %i.ck = icmp eq i32 %i.ch, 0
  br i1 %i.ck, label %bb.k, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE3delEPNS2_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit: ; preds = %bb.j, %bb.k
  store ptr %i.bm, ptr %1, align 8, !tbaa !35
  %i.cl = load ptr, ptr %i.bs, align 8, !tbaa !28
  %i.cm = load ptr, ptr %3, align 8, !tbaa !128   ; 3 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i48, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i50, label %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i.i49

_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i.i49: ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = add i32 %i.cn, 1
  %i.cp = and i32 %i.co, 1073741823
  %i.cq = and i32 %i.cn, -1073741824
  %i.cr = or disjoint i32 %i.cp, %i.cq
  store i32 %i.cr, ptr %i.cm, align 4
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i50

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i50: ; preds = %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i.i49, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.bw ; 2 uses
  %i.ct = load ptr, ptr %0, align 8, !tbaa !205, !nonnull !114, !align !115
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !128 ; 4 uses
  %.not.i.i6.i.i51 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i6.i.i51, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit52, label %bb.l

bb.l:                                             ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i50
  %i.cv = load i32, ptr %i.cu, align 4            ; 2 uses
  %i.cw = add i32 %i.cv, 1073741823
  %i.cx = and i32 %i.cw, 1073741823               ; 2 uses
  %i.cy = and i32 %i.cv, -1073741824
  %i.cz = or disjoint i32 %i.cx, %i.cy
  store i32 %i.cz, ptr %i.cu, align 4
  %i.da = icmp eq i32 %i.cx, 0
  br i1 %i.da, label %bb.m, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit52

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 648
  tail call void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull %i.cu)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit52

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit52: ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i50, %bb.l, %bb.m
  %i.dc = load ptr, ptr %3, align 8, !tbaa !128
  store ptr %i.dc, ptr %i.cs, align 8, !tbaa !128
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !206, !nonnull !114, !align !115
  %i.df = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.de, i64 noundef 24) ; 6 uses
  store i32 1, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false)
  store i32 %2, ptr %i.dg, align 4, !tbaa !28
  %i.di = load ptr, ptr %3, align 8, !tbaa !128   ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.di, null
  br i1 %.not.i.i53, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit55, label %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i54

_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i54: ; preds = %bb.n
  %i.dj = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dk = add i32 %i.dj, 1
  %i.dl = and i32 %i.dk, 1073741823
  %i.dm = and i32 %i.dj, -1073741824
  %i.dn = or disjoint i32 %i.dl, %i.dm
  store i32 %i.dn, ptr %i.di, align 4
  %.pre = load ptr, ptr %3, align 8, !tbaa !128
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit55

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit55: ; preds = %bb.n, %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i54
  %i.do = phi ptr [ null, %bb.n ], [ %.pre, %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i54 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !214
  %i.dq = load ptr, ptr %1, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !28
  store ptr %i.df, ptr %1, align 8, !tbaa !35
  br label %bb.o

bb.o:                                             ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit55, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit52, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit46, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPNS2_4cellEjRKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

declare noundef ptr @_ZN11ast_manager6mk_appEiiSt4spanIKP4exprLm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr, i64) local_unnamed_addr #8

declare void @_Z9ast_ll_ppRSoR11ast_managerP3astbb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14parray_managerIN11ast_manager17expr_array_configEE8pop_backERNS2_3refE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !31     ; 16 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1073741823
  %i.e = icmp eq i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28   ; 2 uses
  br i1 %i.e, label %bb.c, label %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.j, ptr %i.f, align 4, !tbaa !153
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !114, !align !115
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPNS2_4cellE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !120
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.o, align 4, !tbaa !120
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPNS2_4cellE.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.m, ptr noundef nonnull %i.n)
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPNS2_4cellE.exit

_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = icmp ugt i32 %i.t, %i.g
  br i1 %i.u, label %2, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refEPNS2_4cellE.exit

2:                                                ; preds = %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit
  %or.cond.i = icmp eq i32 %i.b, -1073741823
  br i1 %or.cond.i, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit, label %bb.f

bb.f:                                             ; preds = %2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.x = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.w, i64 noundef 24) ; 5 uses
  store i32 -1073741823, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.y, i8 0, i64 20, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = tail call noundef i32 @_ZN14parray_managerIN11ast_manager17expr_array_configEE10get_valuesEPNS2_4cellERPP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !28
  %i.ab = load i32, ptr %i.a, align 8             ; 2 uses
  %i.ac = add i32 %i.ab, 1073741823
  %i.ad = and i32 %i.ac, 1073741823               ; 2 uses
  %i.ae = and i32 %i.ab, -1073741824
  %i.af = or disjoint i32 %i.ad, %i.ae
  store i32 %i.af, ptr %i.a, align 8
  %i.ag = icmp eq i32 %i.ad, 0
  br i1 %i.ag, label %bb.g, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN14parray_managerIN11ast_manager17expr_array_configEE3delEPNS2_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a)
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i

_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i: ; preds = %bb.g, %bb.f
  store ptr %i.x, ptr %1, align 8, !tbaa !31
  store i32 0, ptr %i.s, align 8, !tbaa !32
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit

_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit: ; preds = %2, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i
  %3 = phi ptr [ %i.a, %2 ], [ %i.x, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit.i ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load ptr, ptr %4, align 8, !tbaa !28
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ai = load i32, ptr %5, align 4, !tbaa !153
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.aj, ptr %5, align 4, !tbaa !153
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !114, !align !115
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !127 ; 3 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i34, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPNS2_4cellE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !120
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !120
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPNS2_4cellE.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.am, ptr noundef nonnull %i.an)
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPNS2_4cellE.exit

_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refEPNS2_4cellE.exit: ; preds = %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit
  %i.as = add i32 %i.t, 1
  store i32 %i.as, ptr %i.s, align 8, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.av = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.au, i64 noundef 24) ; 6 uses
  store i32 -1073741823, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aw, i8 0, i64 20, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !28
  store i32 -1073741822, ptr %i.av, align 8
  %i.bc = load i32, ptr %i.a, align 8
  %i.bd = and i32 %i.bc, 1073741823
  %i.be = or disjoint i32 %i.bd, 1073741824       ; 2 uses
  store i32 %i.be, ptr %i.a, align 8
  %i.bf = load i32, ptr %i.aw, align 4, !tbaa !28
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.ax, align 4, !tbaa !28
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !28
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !127 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !210
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refEPNS2_4cellE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !120
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !120
  %.pre56 = load i32, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refEPNS2_4cellE.exit
  %i.bp = phi i32 [ %.pre56, %bb.j ], [ %i.be, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7inc_refEPNS2_4cellE.exit ] ; 2 uses
  store ptr %i.av, ptr %i.az, align 8, !tbaa !28
  %i.bq = add i32 %i.bp, 1073741823
  %i.br = and i32 %i.bq, 1073741823               ; 2 uses
  %i.bs = and i32 %i.bp, -1073741824
  %i.bt = or disjoint i32 %i.br, %i.bs
  store i32 %i.bt, ptr %i.a, align 8
  %i.bu = icmp eq i32 %i.br, 0
  br i1 %i.bu, label %bb.l, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN14parray_managerIN11ast_manager17expr_array_configEE3delEPNS2_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a)
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit

_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit: ; preds = %bb.k, %bb.l
  store ptr %i.av, ptr %1, align 8, !tbaa !31
  %i.bv = load ptr, ptr %i.bb, align 8, !tbaa !28
  %i.bw = load i32, ptr %i.aw, align 4, !tbaa !153
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.aw, align 4, !tbaa !153
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.by
  %i.ca = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !114, !align !115
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !127 ; 3 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i37, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPNS2_4cellE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !120
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !120
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.n, label %_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPNS2_4cellE.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ca, ptr noundef nonnull %i.cb)
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPNS2_4cellE.exit

bb.o:                                             ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !204, !nonnull !114, !align !115
  %i.ci = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.ch, i64 noundef 24) ; 4 uses
  store i32 -2147483647, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cj, i8 0, i64 20, i1 false)
  %i.ck = load ptr, ptr %1, align 8, !tbaa !31    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit43, label %.preheader.i39

.preheader.i39:                                   ; preds = %bb.o, %bb.p
  %.0.i40 = phi ptr [ %i.cp, %bb.p ], [ %i.ck, %bb.o ] ; 5 uses
  %i.cm = load i32, ptr %.0.i40, align 8
  %i.cn = lshr i32 %i.cm, 30
  switch i32 %i.cn, label %default.unreachable [
    i32 0, label %bb.p
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.p:                                             ; preds = %.preheader.i39
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i40, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !28
  br label %.preheader.i39, !llvm.loop !5

bb.q:                                             ; preds = %.preheader.i39
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i40, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !28
  %i.cs = add i32 %i.cr, 1
  br label %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit43

bb.r:                                             ; preds = %.preheader.i39
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i40, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !28
  %i.cv = add i32 %i.cu, -1
  br label %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit43

bb.s:                                             ; preds = %.preheader.i39
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i40, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !28
  br label %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit43

default.unreachable:                              ; preds = %.preheader.i39
  unreachable

_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit43: ; preds = %bb.o, %bb.q, %bb.r, %bb.s
  %.07.i41 = phi i32 [ %i.cx, %bb.s ], [ %i.cs, %bb.q ], [ %i.cv, %bb.r ], [ 0, %bb.o ]
  store i32 %.07.i41, ptr %i.cj, align 4, !tbaa !28
  %i.cy = load ptr, ptr %1, align 8, !tbaa !31
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !28
  store ptr %i.ci, ptr %1, align 8, !tbaa !31
  br label %_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPNS2_4cellE.exit

_ZN14parray_managerIN11ast_manager17expr_array_configEE9rpop_backEPNS2_4cellE.exit: ; preds = %bb.n, %bb.m, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7dec_refEPNS2_4cellE.exit, %bb.i, %bb.h, %_ZN14parray_managerIN11ast_manager17expr_array_configEE7unshareERNS2_3refE.exit, %bb.e, %bb.d, %bb.c, %_ZNK14parray_managerIN11ast_manager17expr_array_configEE4sizeERKNS2_3refE.exit43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8pop_backERNS2_3refE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !35     ; 16 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1073741823
  %i.e = icmp eq i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28   ; 2 uses
  br i1 %i.e, label %bb.c, label %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.j, ptr %i.f, align 4, !tbaa !153
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %0, align 8, !tbaa !205, !nonnull !114, !align !115
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !128  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPNS2_4cellE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = add i32 %i.o, 1073741823
  %i.q = and i32 %i.p, 1073741823                 ; 2 uses
  %i.r = and i32 %i.o, -1073741824
  %i.s = or disjoint i32 %i.q, %i.r
  store i32 %i.s, ptr %i.n, align 4
  %i.t = icmp eq i32 %i.q, 0
  br i1 %i.t, label %bb.e, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPNS2_4cellE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 648
  tail call void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull %i.n)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPNS2_4cellE.exit

_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = icmp ugt i32 %i.w, %i.g
  br i1 %i.x, label %2, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refEPNS2_4cellE.exit

2:                                                ; preds = %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit
  %or.cond.i = icmp eq i32 %i.b, -1073741823
  br i1 %or.cond.i, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit, label %bb.f

bb.f:                                             ; preds = %2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !206, !nonnull !114, !align !115
  %i.aa = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.z, i64 noundef 24) ; 5 uses
  store i32 -1073741823, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ab, i8 0, i64 20, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = tail call noundef i32 @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10get_valuesEPNS2_4cellERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !28
  %i.ae = load i32, ptr %i.a, align 8             ; 2 uses
  %i.af = add i32 %i.ae, 1073741823
  %i.ag = and i32 %i.af, 1073741823               ; 2 uses
  %i.ah = and i32 %i.ae, -1073741824
  %i.ai = or disjoint i32 %i.ag, %i.ah
  store i32 %i.ai, ptr %i.a, align 8
  %i.aj = icmp eq i32 %i.ag, 0
  br i1 %i.aj, label %bb.g, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE3delEPNS2_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i: ; preds = %bb.g, %bb.f
  store ptr %i.aa, ptr %1, align 8, !tbaa !35
  store i32 0, ptr %i.v, align 8, !tbaa !36
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit: ; preds = %2, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i
  %3 = phi ptr [ %i.a, %2 ], [ %i.aa, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit.i ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load ptr, ptr %4, align 8, !tbaa !28
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.al = load i32, ptr %5, align 4, !tbaa !153
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %5, align 4, !tbaa !153
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load ptr, ptr %0, align 8, !tbaa !205, !nonnull !114, !align !115
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !128 ; 4 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i34, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPNS2_4cellE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = add i32 %i.ar, 1073741823
  %i.at = and i32 %i.as, 1073741823               ; 2 uses
  %i.au = and i32 %i.ar, -1073741824
  %i.av = or disjoint i32 %i.at, %i.au
  store i32 %i.av, ptr %i.aq, align 4
  %i.aw = icmp eq i32 %i.at, 0
  br i1 %i.aw, label %bb.i, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPNS2_4cellE.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 648
  tail call void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull %i.aq)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPNS2_4cellE.exit

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refEPNS2_4cellE.exit: ; preds = %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit
  %i.ay = add i32 %i.w, 1
  store i32 %i.ay, ptr %i.v, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !206, !nonnull !114, !align !115
  %i.bb = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.ba, i64 noundef 24) ; 6 uses
  store i32 -1073741823, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bc, i8 0, i64 20, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !28
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !28
  store i32 -1073741822, ptr %i.bb, align 8
  %i.bi = load i32, ptr %i.a, align 8
  %i.bj = and i32 %i.bi, 1073741823
  %i.bk = or disjoint i32 %i.bj, 1073741824       ; 2 uses
  store i32 %i.bk, ptr %i.a, align 8
  %i.bl = load i32, ptr %i.bc, align 4, !tbaa !28
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.bd, align 4, !tbaa !28
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !28
  %i.bo = zext i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !128 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !214
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %bb.j, label %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i

_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i: ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refEPNS2_4cellE.exit
  %i.bs = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.bt = add i32 %i.bs, 1
  %i.bu = and i32 %i.bt, 1073741823
  %i.bv = and i32 %i.bs, -1073741824
  %i.bw = or disjoint i32 %i.bu, %i.bv
  store i32 %i.bw, ptr %i.bq, align 4
  %.pre56 = load i32, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refEPNS2_4cellE.exit
  %i.bx = phi i32 [ %.pre56, %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i ], [ %i.bk, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refEPNS2_4cellE.exit ] ; 2 uses
  store ptr %i.bb, ptr %i.bf, align 8, !tbaa !28
  %i.by = add i32 %i.bx, 1073741823
  %i.bz = and i32 %i.by, 1073741823               ; 2 uses
  %i.ca = and i32 %i.bx, -1073741824
  %i.cb = or disjoint i32 %i.bz, %i.ca
  store i32 %i.cb, ptr %i.a, align 8
  %i.cc = icmp eq i32 %i.bz, 0
  br i1 %i.cc, label %bb.k, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE3delEPNS2_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit: ; preds = %bb.j, %bb.k
  store ptr %i.bb, ptr %1, align 8, !tbaa !35
  %i.cd = load ptr, ptr %i.bh, align 8, !tbaa !28
  %i.ce = load i32, ptr %i.bc, align 4, !tbaa !153
  %i.cf = add i32 %i.ce, -1                       ; 2 uses
  store i32 %i.cf, ptr %i.bc, align 4, !tbaa !153
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cg
  %i.ci = load ptr, ptr %0, align 8, !tbaa !205, !nonnull !114, !align !115
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !128 ; 4 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i37, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPNS2_4cellE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cl = add i32 %i.ck, 1073741823
  %i.cm = and i32 %i.cl, 1073741823               ; 2 uses
  %i.cn = and i32 %i.ck, -1073741824
  %i.co = or disjoint i32 %i.cm, %i.cn
  store i32 %i.co, ptr %i.cj, align 4
  %i.cp = icmp eq i32 %i.cm, 0
  br i1 %i.cp, label %bb.m, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPNS2_4cellE.exit

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 648
  tail call void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull %i.cj)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPNS2_4cellE.exit

bb.n:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !206, !nonnull !114, !align !115
  %i.ct = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.cs, i64 noundef 24) ; 4 uses
  store i32 -2147483647, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cu, i8 0, i64 20, i1 false)
  %i.cv = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43, label %.preheader.i39

.preheader.i39:                                   ; preds = %bb.n, %bb.o
  %.0.i40 = phi ptr [ %i.da, %bb.o ], [ %i.cv, %bb.n ] ; 5 uses
  %i.cx = load i32, ptr %.0.i40, align 8
  %i.cy = lshr i32 %i.cx, 30
  switch i32 %i.cy, label %default.unreachable [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.o:                                             ; preds = %.preheader.i39
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i40, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !28
  br label %.preheader.i39, !llvm.loop !7

bb.p:                                             ; preds = %.preheader.i39
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i40, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !28
  %i.dd = add i32 %i.dc, 1
  br label %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43

bb.q:                                             ; preds = %.preheader.i39
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i40, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28
  %i.dg = add i32 %i.df, -1
  br label %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43

bb.r:                                             ; preds = %.preheader.i39
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i40, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !28
  br label %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43

default.unreachable:                              ; preds = %.preheader.i39
  unreachable

_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43: ; preds = %bb.n, %bb.p, %bb.q, %bb.r
  %.07.i41 = phi i32 [ %i.di, %bb.r ], [ %i.dd, %bb.p ], [ %i.dg, %bb.q ], [ 0, %bb.n ]
  store i32 %.07.i41, ptr %i.cu, align 4, !tbaa !28
  %i.dj = load ptr, ptr %1, align 8, !tbaa !35
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !28
  store ptr %i.ct, ptr %1, align 8, !tbaa !35
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPNS2_4cellE.exit

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPNS2_4cellE.exit: ; preds = %bb.m, %bb.l, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7dec_refEPNS2_4cellE.exit, %bb.i, %bb.h, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7unshareERNS2_3refE.exit, %bb.e, %bb.d, %bb.c, %_ZNK14parray_managerIN11ast_manager28expr_dependency_array_configEE4sizeERKNS2_3refE.exit43
  ret void
}

declare noundef ptr @_ZN11ast_manager18mk_unit_resolutionEjPKP3app(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN11ast_manager17expr_array_configEE3getERKNS2_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.024 = load ptr, ptr %1, align 8, !tbaa !28    ; 5 uses
  %i.a = load i32, ptr %.024, align 8
  %i.b = lshr i32 %i.a, 30
  switch i32 %i.b, label %default.unreachable28 [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28
  %i.e = icmp eq i32 %2, %i.d
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.b
  %.024.lcssa26 = phi ptr [ %.024, %bb.b ], [ %.024.1, %bb.f ], [ %.024.2, %bb.h ], [ %.024.3, %bb.j ], [ %.024.4, %bb.l ], [ %.024.5, %bb.n ], [ %.024.6, %bb.p ], [ %.024.7, %bb.r ], [ %.024.8, %bb.t ], [ %.024.9, %bb.v ], [ %.024.10, %bb.x ], [ %.024.11, %bb.z ], [ %.024.12, %bb.ab ], [ %.024.13, %bb.ad ], [ %.024.14, %bb.af ], [ %.024.15, %bb.ah ], [ %.024.16, %bb.aj ]
  %i.f = getelementptr inbounds nuw i8, ptr %.024.lcssa26, i64 8
  br label %bb.al

bb.d:                                             ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.a
  %.024.lcssa25 = phi ptr [ %.024, %bb.a ], [ %.024.1, %bb.e ], [ %.024.2, %bb.g ], [ %.024.3, %bb.i ], [ %.024.4, %bb.k ], [ %.024.5, %bb.m ], [ %.024.6, %bb.o ], [ %.024.7, %bb.q ], [ %.024.8, %bb.s ], [ %.024.9, %bb.u ], [ %.024.10, %bb.w ], [ %.024.11, %bb.y ], [ %.024.12, %bb.aa ], [ %.024.13, %bb.ac ], [ %.024.14, %bb.ae ], [ %.024.15, %bb.ag ], [ %.024.16, %bb.ai ]
  %i.g = getelementptr inbounds nuw i8, ptr %.024.lcssa25, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = zext i32 %2 to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
end_hunk_2
