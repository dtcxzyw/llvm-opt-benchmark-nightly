inline.NumInlined: 1053
inline.NumDeleted: 332
begin_hunk_0_@_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_7by_kindEE5clearEv:bb.a

_ZN8facebook5velox9functions9prestosql6Parser10value_type7destroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKNS0_4TypeEEEEEvv.exit: ; preds = %bb.q, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.aa, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.y, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.a, %bb.b
  store i32 -2, ptr %0, align 16, !tbaa !25
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions9prestosql6Parser10yytnamerr_B5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !28
  %i.b = icmp eq i8 %i.a, 34
  br i1 %i.b, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !60
  store i8 0, ptr %i.c, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.b
  %.011 = phi ptr [ %1, %bb.b ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.011, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !28    ; 2 uses
  switch i8 %i.f, label %bb.e [
    i8 39, label %bb.h
    i8 44, label %bb.h
    i8 92, label %bb.d
    i8 34, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 2 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28
  %.not = icmp eq i8 %i.h, 92
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.i = load i64, ptr %i.d, align 8, !tbaa !60   ; 4 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.e
  %i.m = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.n = load i64, ptr %i.c, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.o = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.p = icmp ugt i64 %i.j, %i.o
  br i1 %i.p, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.q = phi ptr [ %.pre.i.i, %.noexc ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  store i8 %i.f, ptr %i.r, align 1, !tbaa !28
  store i64 %i.j, ptr %i.d, align 8, !tbaa !60
  %i.s = load ptr, ptr %0, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  store i8 0, ptr %i.t, align 1, !tbaa !28
  br label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.x = load i64, ptr %i.c, align 8, !tbaa !28
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.c
  %i.z = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.h
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !28
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !54
  %i.ae = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 8 uses
  %i.af = icmp ugt i64 %i.ae, 15
  br i1 %i.af, label %bb.i, label %._crit_edge.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread
  %i.ag = icmp slt i64 %i.ae, 0
  br i1 %i.ag, label %.noexc.i, label %bb.j

.noexc.i:                                         ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #31
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ah = add nuw i64 %i.ae, 1                    ; 2 uses
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !53

.noexc11.i:                                       ; preds = %bb.j
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.j
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #32 ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !57
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread
  %i.ak = phi ptr [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread ] ; 3 uses
  switch i64 %i.ae, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.al = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !28
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull align 1 %1, i64 %i.ae, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.am, align 8, !tbaa !60
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ae
  store i8 0, ptr %i.an, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.c, %bb.m
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions9prestosql6Parser11symbol_nameB5cxx11ENS3_11symbol_kind16symbol_kind_typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr @_ZN8facebook5velox9functions9prestosql6Parser8yytname_E, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102
  tail call void @_ZN8facebook5velox9functions9prestosql6Parser10yytnamerr_B5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN8facebook5velox9functions9prestosql6Parser7contextC2ERKS3_RKNS3_11symbol_typeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 16 dereferenceable(64) %2) unnamed_addr #3 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK8facebook5velox9functions9prestosql6Parser7context15expected_tokensEPNS3_11symbol_kind16symbol_kind_typeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111, !nonnull !82, !align !83 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr i8, ptr %i.e, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -64
  %i.k = load i8, ptr %i.j, align 16, !tbaa !29
  %i.l = sext i8 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser7yypact_E, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28    ; 4 uses
  %i.o = icmp eq i8 %i.n, -27
  br i1 %i.o, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = sext i8 %i.n to i32                        ; 2 uses
  %i.p = icmp slt i8 %i.n, 0
  %i.q = sub nsw i32 0, %3
  %i.r = select i1 %i.p, i32 %i.q, i32 0          ; 2 uses
  %i.s = sub nsw i32 98, %3
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 21) ; 2 uses
  %.not4345 = icmp slt i32 %i.r, %i.t
  br i1 %.not4345, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %.not = icmp eq ptr %1, null
  %i.u = sext i32 %i.r to i64                     ; 9 uses
  %i.v = sext i8 %i.n to i64
  %i.w = sext i32 %i.t to i64                     ; 3 uses
  %invariant.gep62 = getelementptr i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser8yycheck_E, i64 %i.v ; 4 uses
  br i1 %.not, label %iter.check, label %.lr.ph.split

iter.check:                                       ; preds = %.lr.ph
  %i.x = sub nsw i64 %i.w, %i.u                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.x, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check65 = icmp ult i64 %i.x, 16
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %i.x, 12
  %n.vec = and i64 %i.x, -16                      ; 4 uses
  %i.z = add nsw i64 %n.vec, %i.u                 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %invariant.gep = getelementptr i8, ptr %invariant.gep62, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi66 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8) ; 2 uses
  %gep86 = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %gep86, i64 8
  %wide.load = load <8 x i8>, ptr %gep86, align 1, !tbaa !28
  %wide.load67 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !28
  %i.ab = sext <8 x i8> %wide.load to <8 x i64>
  %i.ac = sext <8 x i8> %wide.load67 to <8 x i64>
  %i.ad = icmp eq <8 x i64> %vec.ind, %i.ab
  %i.ae = icmp eq <8 x i64> %step.add, %i.ac
  %i.af = icmp ne <8 x i64> %vec.ind, splat (i64 1)
  %i.ag = icmp ne <8 x i64> %step.add, splat (i64 1)
  %i.ah = and <8 x i1> %i.af, %i.ad
  %i.ai = and <8 x i1> %i.ag, %i.ae
  %i.aj = zext <8 x i1> %i.ah to <8 x i32>
  %i.ak = zext <8 x i1> %i.ai to <8 x i32>
  %i.al = add <8 x i32> %vec.phi, %i.aj           ; 2 uses
  %i.am = add <8 x i32> %vec.phi66, %i.ak         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !116

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.z, %vec.epilog.iter.check ], [ %i.u, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ao, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec68 = and i64 %i.x, -4                     ; 3 uses
  %i.ap = add nsw i64 %n.vec68, %i.u
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert69 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat70 = shufflevector <4 x i64> %broadcast.splatinsert69, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction71 = add nsw <4 x i64> %broadcast.splat70, <i64 0, i64 1, i64 2, i64 3>
  %invariant.gep87 = getelementptr i8, ptr %invariant.gep62, i64 %i.u
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index72 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind73 = phi <4 x i64> [ %induction71, %vec.epilog.ph ], [ %vec.ind.next77, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi74 = phi <4 x i32> [ %i.aq, %vec.epilog.ph ], [ %i.aw, %vec.epilog.vector.body ]
  %gep88 = getelementptr i8, ptr %invariant.gep87, i64 %index72
  %wide.load75 = load <4 x i8>, ptr %gep88, align 1, !tbaa !28
  %i.ar = sext <4 x i8> %wide.load75 to <4 x i64>
  %i.as = icmp eq <4 x i64> %vec.ind73, %i.ar
  %i.at = icmp ne <4 x i64> %vec.ind73, splat (i64 1)
  %i.au = and <4 x i1> %i.at, %i.as
  %i.av = zext <4 x i1> %i.au to <4 x i32>
  %i.aw = add <4 x i32> %vec.phi74, %i.av         ; 2 uses
  %index.next76 = add nuw i64 %index72, 4         ; 2 uses
  %vec.ind.next77 = add nsw <4 x i64> %vec.ind73, splat (i64 4)
  %i.ax = icmp eq i64 %index.next76, %n.vec68
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ay = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aw) ; 2 uses
  %cmp.n78 = icmp eq i64 %i.x, %n.vec68
  br i1 %cmp.n78, label %.loopexit, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv50.ph = phi i64 [ %i.u, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.03846.us.ph = phi i32 [ 0, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %.lr.ph.split.us ], [ %indvars.iv50.ph, %.lr.ph.split.us.preheader ] ; 4 uses
  %.03846.us = phi i32 [ %spec.select, %.lr.ph.split.us ], [ %.03846.us.ph, %.lr.ph.split.us.preheader ]
  %gep63 = getelementptr i8, ptr %invariant.gep62, i64 %indvars.iv50
  %i.az = load i8, ptr %gep63, align 1, !tbaa !28
  %i.ba = sext i8 %i.az to i64
  %i.bb = icmp eq i64 %indvars.iv50, %i.ba
  %i.bc = icmp ne i64 %indvars.iv50, 1
  %or.cond.us = and i1 %i.bc, %i.bb
  %i.bd = zext i1 %or.cond.us to i32
  %spec.select = add nuw nsw i32 %.03846.us, %i.bd ; 2 uses
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, 1 ; 2 uses
  %.not43.us = icmp slt i64 %indvars.iv.next51, %i.w
  br i1 %.not43.us, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !118

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.u, %.lr.ph ] ; 4 uses
  %.03846 = phi i32 [ %.1, %bb.e ], [ 0, %.lr.ph ] ; 4 uses
  %gep = getelementptr i8, ptr %invariant.gep62, i64 %indvars.iv
  %i.be = load i8, ptr %gep, align 1, !tbaa !28
  %i.bf = sext i8 %i.be to i32                    ; 2 uses
  %i.bg = trunc nsw i64 %indvars.iv to i32
  %i.bh = icmp eq i32 %i.bg, %i.bf
  %i.bi = icmp ne i64 %indvars.iv, 1
  %or.cond = and i1 %i.bi, %i.bh
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.split
  %i.bj = icmp eq i32 %.03846, %2
  br i1 %i.bj, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = add nsw i32 %.03846, 1
  %i.bl = sext i32 %.03846 to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bl
  store i32 %i.bf, ptr %i.bm, align 4, !tbaa !119
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.split, %bb.d
  %.1 = phi i32 [ %.03846, %.lr.ph.split ], [ %i.bk, %bb.d ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not43 = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %.not43, label %.lr.ph.split, label %.critedge, !llvm.loop !120

.critedge:                                        ; preds = %bb.e, %bb.b, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1, %bb.e ] ; 2 uses
  %i.bn = icmp ne ptr %1, null
  %i.bo = icmp eq i32 %.2, 0
  %or.cond4 = select i1 %i.bn, i1 %i.bo, i1 false
  %i.bp = icmp sgt i32 %2, 0
  %or.cond6 = and i1 %i.bp, %or.cond4
  br i1 %or.cond6, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.critedge
  store i32 -2, ptr %1, align 4, !tbaa !119
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block, %.critedge, %bb.f
  %.140 = phi i32 [ %.2, %.critedge ], [ 0, %bb.f ], [ %spec.select, %.lr.ph.split.us ], [ %i.ay, %vec.epilog.middle.block ], [ %i.ao, %middle.block ], [ 0, %bb.c ]
  ret i32 %.140
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121, !nonnull !82, !align !122
  %i.c = load i32, ptr %i.b, align 16, !tbaa !25  ; 2 uses
  %i.d = icmp eq i32 %i.c, -2
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %2, align 4, !tbaa !119
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.f = add nsw i32 %3, -1
  %i.g = load ptr, ptr %1, align 8, !tbaa !111, !nonnull !82, !align !83 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -64
  %i.q = load i8, ptr %i.p, align 16, !tbaa !29
  %i.r = sext i8 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser7yypact_E, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28    ; 4 uses
  %i.u = icmp eq i8 %i.t, -27
  br i1 %i.u, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %4 = sext i8 %i.t to i32                        ; 2 uses
  %i.v = icmp slt i8 %i.t, 0
  %i.w = sub nsw i32 0, %4
  %i.x = select i1 %i.v, i32 %i.w, i32 0          ; 2 uses
  %i.y = sub nsw i32 98, %4
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.y, i32 21) ; 2 uses
  %.not4345.i = icmp slt i32 %i.x, %i.z
  br i1 %.not4345.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.aa = sext i32 %i.x to i64                    ; 9 uses
  %i.ab = sext i8 %i.t to i64
  %i.ac = sext i32 %i.z to i64                    ; 3 uses
  %invariant.gep62.i = getelementptr i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser8yycheck_E, i64 %i.ab ; 4 uses
  br i1 %.not, label %.lr.ph.split.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i
  %i.ad = sub nsw i64 %i.ac, %i.aa                ; 7 uses
  %min.iters.check = icmp ult i64 %i.ad, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check22 = icmp ult i64 %i.ad, 16
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ad, 12
  %n.vec = and i64 %i.ad, -16                     ; 4 uses
  %i.af = add nsw i64 %n.vec, %i.aa               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.aa, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %invariant.gep = getelementptr i8, ptr %invariant.gep62.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi23 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8) ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ag = getelementptr i8, ptr %gep, i64 8
  %wide.load = load <8 x i8>, ptr %gep, align 1, !tbaa !28
  %wide.load24 = load <8 x i8>, ptr %i.ag, align 1, !tbaa !28
  %i.ah = sext <8 x i8> %wide.load to <8 x i64>
  %i.ai = sext <8 x i8> %wide.load24 to <8 x i64>
  %i.aj = icmp eq <8 x i64> %vec.ind, %i.ah
  %i.ak = icmp eq <8 x i64> %step.add, %i.ai
  %i.al = icmp ne <8 x i64> %vec.ind, splat (i64 1)
  %i.am = icmp ne <8 x i64> %step.add, splat (i64 1)
  %i.an = and <8 x i1> %i.al, %i.aj
  %i.ao = and <8 x i1> %i.am, %i.ak
  %i.ap = zext <8 x i1> %i.an to <8 x i32>
  %i.aq = zext <8 x i1> %i.ao to <8 x i32>
  %i.ar = add <8 x i32> %vec.phi, %i.ap           ; 2 uses
  %i.as = add <8 x i32> %vec.phi23, %i.aq         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.as, %i.ar
  %i.au = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNK8facebook5velox9functions9prestosql6Parser7context15expected_tokensEPNS3_11symbol_kind16symbol_kind_typeEi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.preheader, label %vec.epilog.ph, !prof !116

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.af, %vec.epilog.iter.check ], [ %i.aa, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.au, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.ad, -4                    ; 3 uses
  %i.av = add nsw i64 %n.vec25, %i.aa
  %i.aw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert26 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat27 = shufflevector <4 x i64> %broadcast.splatinsert26, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction28 = add nsw <4 x i64> %broadcast.splat27, <i64 0, i64 1, i64 2, i64 3>
  %invariant.gep43 = getelementptr i8, ptr %invariant.gep62.i, i64 %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind30 = phi <4 x i64> [ %induction28, %vec.epilog.ph ], [ %vec.ind.next34, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi31 = phi <4 x i32> [ %i.aw, %vec.epilog.ph ], [ %i.bc, %vec.epilog.vector.body ]
  %gep44 = getelementptr i8, ptr %invariant.gep43, i64 %index29
  %wide.load32 = load <4 x i8>, ptr %gep44, align 1, !tbaa !28
  %i.ax = sext <4 x i8> %wide.load32 to <4 x i64>
  %i.ay = icmp eq <4 x i64> %vec.ind30, %i.ax
  %i.az = icmp ne <4 x i64> %vec.ind30, splat (i64 1)
  %i.ba = and <4 x i1> %i.az, %i.ay
  %i.bb = zext <4 x i1> %i.ba to <4 x i32>
  %i.bc = add <4 x i32> %vec.phi31, %i.bb         ; 2 uses
  %index.next33 = add nuw i64 %index29, 4         ; 2 uses
  %vec.ind.next34 = add nsw <4 x i64> %vec.ind30, splat (i64 4)
  %i.bd = icmp eq i64 %index.next33, %n.vec25
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bc) ; 2 uses
  %cmp.n35 = icmp eq i64 %i.ad, %n.vec25
  br i1 %cmp.n35, label %_ZNK8facebook5velox9functions9prestosql6Parser7context15expected_tokensEPNS3_11symbol_kind16symbol_kind_typeEi.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv50.i.ph = phi i64 [ %i.aa, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.03846.us.i.ph = phi i32 [ 0, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %indvars.iv50.i = phi i64 [ %indvars.iv.next51.i, %.lr.ph.split.us.i ], [ %indvars.iv50.i.ph, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %.03846.us.i = phi i32 [ %spec.select.i, %.lr.ph.split.us.i ], [ %.03846.us.i.ph, %.lr.ph.split.us.i.preheader ]
  %gep63.i = getelementptr i8, ptr %invariant.gep62.i, i64 %indvars.iv50.i
  %i.bf = load i8, ptr %gep63.i, align 1, !tbaa !28
  %i.bg = sext i8 %i.bf to i64
  %i.bh = icmp eq i64 %indvars.iv50.i, %i.bg
  %i.bi = icmp ne i64 %indvars.iv50.i, 1
  %or.cond.us.i = and i1 %i.bi, %i.bh
  %i.bj = zext i1 %or.cond.us.i to i32
  %spec.select.i = add nuw nsw i32 %.03846.us.i, %i.bj ; 2 uses
  %indvars.iv.next51.i = add nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next51.i, %i.ac
  br i1 %exitcond.not, label %_ZNK8facebook5velox9functions9prestosql6Parser7context15expected_tokensEPNS3_11symbol_kind16symbol_kind_typeEi.exit, label %.lr.ph.split.us.i, !llvm.loop !125

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ %i.aa, %.lr.ph.i ] ; 4 uses
  %.03846.i = phi i32 [ %.1.i, %bb.h ], [ 0, %.lr.ph.i ] ; 4 uses
  %gep.i = getelementptr i8, ptr %invariant.gep62.i, i64 %indvars.iv.i
  %i.bk = load i8, ptr %gep.i, align 1, !tbaa !28
  %i.bl = sext i8 %i.bk to i32                    ; 2 uses
  %i.bm = trunc nsw i64 %indvars.iv.i to i32
  %i.bn = icmp eq i32 %i.bm, %i.bl
  %i.bo = icmp ne i64 %indvars.iv.i, 1
  %or.cond.i = and i1 %i.bo, %i.bn
  br i1 %or.cond.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.bp = icmp eq i32 %.03846.i, %i.f
  br i1 %i.bp, label %_ZNK8facebook5velox9functions9prestosql6Parser7context15expected_tokensEPNS3_11symbol_kind16symbol_kind_typeEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = add nsw i32 %.03846.i, 1
  %i.br = sext i32 %.03846.i to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.br
  store i32 %i.bl, ptr %i.bs, align 4, !tbaa !119
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.i
  %.1.i = phi i32 [ %.03846.i, %.lr.ph.split.i ], [ %i.bq, %bb.g ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond13.not = icmp eq i64 %indvars.iv.next.i, %i.ac
  br i1 %exitcond13.not, label %.critedge.i, label %.lr.ph.split.i, !llvm.loop !120

.critedge.i:                                      ; preds = %bb.h, %bb.e, %bb.d
  %.2.i = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %.1.i, %bb.h ] ; 2 uses
  %i.bt = icmp eq i32 %.2.i, 0
  %or.cond4.i = select i1 %.not, i1 %i.bt, i1 false
  %i.bu = icmp sgt i32 %3, 1
  %or.cond6.i = and i1 %i.bu, %or.cond4.i
  br i1 %or.cond6.i, label %bb.i, label %_ZNK8facebook5velox9functions9prestosql6Parser7context15expected_tokensEPNS3_11symbol_kind16symbol_kind_typeEi.exit

bb.i:                                             ; preds = %.critedge.i
  store i32 -2, ptr %i.e, align 4, !tbaa !119
  br label %_ZNK8facebook5velox9functions9prestosql6Parser7context15expected_tokensEPNS3_11symbol_kind16symbol_kind_typeEi.exit

_ZNK8facebook5velox9functions9prestosql6Parser7context15expected_tokensEPNS3_11symbol_kind16symbol_kind_typeEi.exit: ; preds = %.lr.ph.split.us.i, %bb.f, %middle.block, %vec.epilog.middle.block, %.critedge.i, %bb.i
  %.140.i = phi i32 [ %.2.i, %.critedge.i ], [ 0, %bb.i ], [ 0, %bb.f ], [ %i.be, %vec.epilog.middle.block ], [ %i.au, %middle.block ], [ %spec.select.i, %.lr.ph.split.us.i ]
  %i.bv = add nsw i32 %.140.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNK8facebook5velox9functions9prestosql6Parser7context15expected_tokensEPNS3_11symbol_kind16symbol_kind_typeEi.exit
  %.0 = phi i32 [ %i.bv, %_ZNK8facebook5velox9functions9prestosql6Parser7context15expected_tokensEPNS3_11symbol_kind16symbol_kind_typeEi.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox9functions9prestosql6Parser15yysyntax_error_B5cxx11ERKNS3_7contextE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !121, !nonnull !82, !align !122
  %i.d = load i32, ptr %i.c, align 16, !tbaa !25  ; 2 uses
  %i.e = icmp eq i32 %i.d, -2
  br i1 %i.e, label %_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr %i.a, align 16, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !111, !nonnull !82, !align !83 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -64
  %i.q = load i8, ptr %i.p, align 16, !tbaa !29
  %i.r = sext i8 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser7yypact_E, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28    ; 4 uses
  %i.u = icmp eq i8 %i.t, -27
  br i1 %i.u, label %.critedge.i.i.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = sext i8 %i.t to i32                        ; 2 uses
  %i.v = icmp slt i8 %i.t, 0
  %i.w = sub nsw i32 0, %4
  %i.x = select i1 %i.v, i32 %i.w, i32 0          ; 2 uses
  %i.y = sub nsw i32 98, %4
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.y, i32 21) ; 2 uses
  %.not4345.i.i = icmp slt i32 %i.x, %i.z
  br i1 %.not4345.i.i, label %.lr.ph.i.i, label %.critedge.i.i.thread

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.aa = sext i32 %i.x to i64
  %i.ab = sext i8 %i.t to i64
  %i.ac = sext i32 %i.z to i64
  %invariant.gep62.i.i = getelementptr i8, ptr @_ZN8facebook5velox9functions9prestosql6Parser8yycheck_E, i64 %i.ab
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.f
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ %i.aa, %.lr.ph.i.i ] ; 4 uses
  %.03846.i.i = phi i32 [ %.1.i.i, %bb.f ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %gep.i.i = getelementptr i8, ptr %invariant.gep62.i.i, i64 %indvars.iv.i.i
  %i.ad = load i8, ptr %gep.i.i, align 1, !tbaa !28
  %i.ae = sext i8 %i.ad to i32                    ; 2 uses
  %i.af = trunc nsw i64 %indvars.iv.i.i to i32
  %i.ag = icmp eq i32 %i.af, %i.ae
  %i.ah = icmp ne i64 %indvars.iv.i.i, 1
  %or.cond.i.i = and i1 %i.ah, %i.ag
  br i1 %or.cond.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.split.i.i
  %i.ai = icmp eq i32 %.03846.i.i, 4
  br i1 %i.ai, label %_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = add nsw i32 %.03846.i.i, 1
  %i.ak = sext i32 %.03846.i.i to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ak
  store i32 %i.ae, ptr %i.al, align 4, !tbaa !119
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %.03846.i.i, %.lr.ph.split.i.i ], [ %i.aj, %bb.e ] ; 6 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next.i.i, %i.ac
  br i1 %exitcond13.not.i, label %.critedge.i.i, label %.lr.ph.split.i.i, !llvm.loop !120

.critedge.i.i:                                    ; preds = %bb.f
  %i.am = icmp eq i32 %.1.i.i, 0
  br i1 %i.am, label %.critedge.i.i.thread, label %_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit

.critedge.i.i.thread:                             ; preds = %bb.c, %bb.b, %.critedge.i.i
  store i32 -2, ptr %i.f, align 4, !tbaa !119
  br label %_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit.thread

_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit: ; preds = %.critedge.i.i
  %i.an = add nsw i32 %.1.i.i, 1
  %i.ao = icmp ult i32 %.1.i.i, 5
  br i1 %i.ao, label %switch.lookup, label %_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit.thread

switch.lookup:                                    ; preds = %_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit
  %switch.offset = add nuw nsw i32 %.1.i.i, 1
  %i.ap = zext nneg i32 %.1.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK8facebook5velox9functions9prestosql6Parser15yysyntax_error_B5cxx11ERKNS3_7contextE, i64 %i.ap
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit.thread

_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit.thread: ; preds = %bb.d, %switch.lookup, %_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit, %.critedge.i.i.thread, %bb.a
  %.0.i36 = phi i32 [ 0, %bb.a ], [ %i.an, %_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit ], [ %switch.offset, %switch.lookup ], [ 1, %.critedge.i.i.thread ], [ 1, %bb.d ]
  %.021 = phi ptr [ @.str.19, %bb.a ], [ @.str.19, %_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit ], [ %switch.load, %switch.lookup ], [ @.str.20, %.critedge.i.i.thread ], [ @.str.20, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !60
  store i8 0, ptr %i.aq, align 8, !tbaa !28
  %i.as = sext i32 %.0.i36 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.v, %_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit.thread
  %.019 = phi i64 [ 0, %_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit.thread ], [ %.120, %bb.v ] ; 4 uses
  %.017 = phi ptr [ %.021, %_ZNK8facebook5velox9functions9prestosql6Parser26yy_syntax_error_arguments_ERKNS3_7contextEPNS3_11symbol_kind16symbol_kind_typeEi.exit.thread ], [ %i.cr, %bb.v ] ; 3 uses
  %i.av = load i8, ptr %.017, align 1, !tbaa !28  ; 2 uses
  switch i8 %i.av, label %bb.s [
    i8 0, label %bb.x
    i8 37, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.017, i64 1 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !28
  %i.ay = icmp eq i8 %i.ax, 115
  %i.az = icmp slt i64 %.019, %i.as
  %or.cond = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ba = add nsw i64 %.019, 1
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.019
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !119
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr @_ZN8facebook5velox9functions9prestosql6Parser8yytname_E, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !102, !noalias !126
  invoke void @_ZN8facebook5velox9functions9prestosql6Parser10yytnamerr_B5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %i.bf)
          to label %_ZN8facebook5velox9functions9prestosql6Parser11symbol_nameB5cxx11ENS3_11symbol_kind16symbol_kind_typeE.exit unwind label %bb.q

_ZN8facebook5velox9functions9prestosql6Parser11symbol_nameB5cxx11ENS3_11symbol_kind16symbol_kind_typeE.exit: ; preds = %bb.i
  %i.bg = load ptr, ptr %3, align 8, !tbaa !57    ; 3 uses
  %i.bh = load i64, ptr %i.at, align 8, !tbaa !60 ; 6 uses
  %i.bi = load i64, ptr %i.ar, align 8, !tbaa !60 ; 5 uses
  %i.bj = sub i64 9223372036854775807, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.bh
  br i1 %i.bk, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.j:                                             ; preds = %_ZN8facebook5velox9functions9prestosql6Parser11symbol_nameB5cxx11ENS3_11symbol_kind16symbol_kind_typeE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZN8facebook5velox9functions9prestosql6Parser11symbol_nameB5cxx11ENS3_11symbol_kind16symbol_kind_typeE.exit
  %i.bl = add i64 %i.bi, %i.bh                    ; 3 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.aq
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bo = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bp = load i64, ptr %i.aq, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bq = phi i64 [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not8.i.i.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bi ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.bh, 1
  br i1 %cond.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bs = load i8, ptr %i.bg, align 1, !tbaa !28
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !28
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bi, i64 noundef 0, ptr noundef %i.bg, i64 noundef %i.bh)
          to label %bb.p unwind label %.loopexit

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.o
  store i64 %i.bl, ptr %i.ar, align 8, !tbaa !60
  %i.bt = load ptr, ptr %0, align 8, !tbaa !57
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bl
  store i8 0, ptr %i.bu, align 1, !tbaa !28
  %i.bv = load ptr, ptr %3, align 8, !tbaa !57    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.au
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.bx = load i64, ptr %i.au, align 8, !tbaa !28
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.v

bb.q:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ca = load ptr, ptr %3, align 8, !tbaa !57    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.au
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.r
  %i.cc = load i64, ptr %i.au, align 8, !tbaa !28
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.q ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %lpad.phi, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.s:                                             ; preds = %bb.g, %bb.h
  %i.ce = load i64, ptr %i.ar, align 8, !tbaa !60 ; 4 uses
  %i.cf = add i64 %i.ce, 1                        ; 3 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeC1EOS4_(ptr noundef nonnull align 16 dereferenceable(64) %.013.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.08.012.i.i.i.i.i)
          to label %_ZSt10_ConstructIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64 ; 2 uses
  %i.u = icmp eq ptr %i.s, %1
  br i1 %i.u, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !165

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #28 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.013.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %.05.i.i.i.i.i.i.i) #28
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, %.013.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !22

_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #31
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES5_EvT_S7_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #29
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt10_ConstructIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_.exit ], [ %i.t, %_ZSt10_ConstructIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 64 ; 3 uses
  %i.ac = icmp eq ptr %1, %i.b
  br i1 %i.ac, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit41, label %.lr.ph.i.i.i.i.i28

.lr.ph.i.i.i.i.i28:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZSt10_ConstructIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i36
  %.013.i.i.i.i.i29.idx = phi i64 [ %.013.i.i.i.i.i29.add, %_ZSt10_ConstructIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i36 ], [ 64, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i30 = phi ptr [ %i.ad, %_ZSt10_ConstructIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i36 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.013.i.i.i.i.i29.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.013.i.i.i.i.i29.idx ; 2 uses
  invoke void @_ZN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeC1EOS4_(ptr noundef nonnull align 16 dereferenceable(64) %.013.i.i.i.i.i29.ptr, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.08.012.i.i.i.i.i30)
          to label %_ZSt10_ConstructIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i36 unwind label %bb.g

_ZSt10_ConstructIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i28
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i30, i64 64 ; 2 uses
  %.013.i.i.i.i.i29.add = add nuw nsw i64 %.013.i.i.i.i.i29.idx, 64 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.b
  br i1 %i.ae, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit41.loopexit, label %.lr.ph.i.i.i.i.i28, !llvm.loop !165

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i28
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #28 ; 0 uses
  %.not4.i.i.i.i.i.i.i31 = icmp eq i64 %.013.i.i.i.i.i29.idx, 64
  br i1 %.not4.i.i.i.i.i.i.i31, label %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit.i.i.i.i.i35, label %.lr.ph.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i32:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i32
  %.05.i.i.i.i.i.i.i33 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %.05.i.i.i.i.i.i.i33) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i33, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i34 = icmp eq ptr %i.ai, %.013.i.i.i.i.i29.ptr
  br i1 %.not.i.i.i.i.i.i.i34, label %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit.i.i.i.i.i35, label %.lr.ph.i.i.i.i.i.i.i32, !llvm.loop !22

_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit.i.i.i.i.i35: ; preds = %.lr.ph.i.i.i.i.i.i.i32, %bb.g
  invoke void @__cxa_rethrow() #31
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit.i.i.i.i.i35
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #29
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit.i.i.i.i.i35
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit41.loopexit: ; preds = %_ZSt10_ConstructIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i36
  %.ptr58.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.013.i.i.i.i.i29.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit41

_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit41: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit41.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i.i.i.i37 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %.ptr58.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit41.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit41, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit41 ] ; 2 uses
  tail call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %.05.i.i) #28
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !22

_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES6_SaIS5_EET0_T_S9_S8_RT1_.exit41
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.c, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aq) #30
  br label %_ZNSt12_Vector_baseIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeEEvT_S7_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !20
  store ptr %.0.lcssa.i.i.i.i.i37, ptr %i.a, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !24
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeESaIS5_EE12_M_check_lenEmPKc.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #28 ; 0 uses
  br label %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES5_EvT_S7_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.av = extractvalue { ptr, i32 } %i.z, 0
  %i.aw = tail call ptr @__cxa_begin_catch(ptr %i.av) #28 ; 0 uses
  tail call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %i.q) #28
  br label %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES5_EvT_S7_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %i.ax = extractvalue { ptr, i32 } %i.aj, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %i.ax) #28 ; 0 uses
  %.not4.i.i43 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i43, label %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %bb.l, %.lr.ph.i.i44
  %.05.i.i45 = phi ptr [ %i.az, %.lr.ph.i.i44 ], [ %i.p, %bb.l ] ; 3 uses
  tail call void @_ZN8facebook5velox9functions9prestosql6Parser12basic_symbolINS3_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(64) %.05.i.i45) #28
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i45, i64 64
  %.not.i.i46 = icmp eq ptr %.05.i.i45, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i46, label %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i44, !llvm.loop !22

bb.m:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES5_EvT_S7_RSaIT0_E.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES5_EvT_S7_RSaIT0_E.exit: ; preds = %.lr.ph.i.i44, %.thread, %bb.l, %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES5_EvT_S7_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #30
  invoke void @__cxa_rethrow() #31
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ba

bb.o:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #29
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeES5_EvT_S7_RSaIT0_E.exit
  unreachable
}

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #25

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !19, i64 32}
!11 = !{!"_ZTSN8facebook5velox9functions9prestosql6ParserE", !12, i64 8, !19, i64 32}
!12 = !{!"_ZTSN8facebook5velox9functions9prestosql6Parser5stackINS3_17stack_symbol_typeESt6vectorIS5_SaIS5_EEEE", !13, i64 0}
!13 = !{!"_ZTSSt6vectorIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeESaIS5_EE", !14, i64 0}
!14 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeESaIS5_EE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeESaIS5_EE12_Vector_implE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeESaIS5_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 _ZTSN8facebook5velox9functions9prestosql6Parser17stack_symbol_typeE", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"p1 _ZTSN8facebook5velox9functions9prestosql7ScannerE", !18, i64 0}
!20 = !{!16, !17, i64 0}
!21 = !{!16, !17, i64 8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!16, !17, i64 16}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSN8facebook5velox9functions9prestosql6Parser7by_kindE", !27, i64 0}
!27 = !{!"_ZTSN8facebook5velox9functions9prestosql6Parser11symbol_kind16symbol_kind_typeE", !6, i64 0}
!28 = !{!6, !6, i64 0}
!29 = !{!30, !6, i64 0}
!30 = !{!"_ZTSN8facebook5velox9functions9prestosql6Parser8by_stateE", !6, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!33 = !{!34, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !18, i64 0}
!37 = !{!38, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!39 = !{!40, !40, i64 0}
!40 = !{!"long long", !6, i64 0}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0}
!43 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!44 = !{!18, !18, i64 0}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !47, i64 0, !42, i64 8}
!47 = !{!"p1 _ZTSN8facebook5velox4TypeE", !18, i64 0}
!48 = !{!49, !5, i64 8}
!49 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!50 = !{!49, !5, i64 12}
!51 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!52 = !{!5, !5, i64 0}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !56, i64 0}
!56 = !{!"p1 omnipotent char", !18, i64 0}
!57 = !{!58, !56, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !55, i64 0, !59, i64 8, !6, i64 16}
!59 = !{!"long", !6, i64 0}
!60 = !{!58, !59, i64 8}
!61 = distinct !{null, ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKN8facebook5velox4TypeEEED2Ev, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!62 = distinct !{!62, !23}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZSt9make_pairIRA1_KcRSt10shared_ptrIKN8facebook5velox4TypeEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_: argument 0"}
!65 = distinct !{!65, !"_ZSt9make_pairIRA1_KcRSt10shared_ptrIKN8facebook5velox4TypeEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_"}
!66 = !{!67, !56, i64 0}
!67 = !{!"_ZTSSt4pairIPKcSt10shared_ptrIKN8facebook5velox4TypeEEE", !56, i64 0, !68, i64 8}
!68 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !46, i64 0}
!69 = distinct !{!69, !23}
!70 = distinct !{!70, !23}
!71 = distinct !{!71, !23}
!72 = !{!73, !36, i64 736}
!73 = !{!"_ZTSN8facebook5velox9functions9prestosql7ScannerE", !74, i64 0, !36, i64 736, !81, i64 744}
!74 = !{!"_ZTS11yyFlexLexer", !75, i64 0, !5, i64 28, !5, i64 32, !76, i64 40, !77, i64 48, !78, i64 328, !6, i64 600, !5, i64 604, !56, i64 608, !5, i64 616, !5, i64 620, !5, i64 624, !59, i64 632, !59, i64 640, !79, i64 648, !5, i64 656, !56, i64 664, !76, i64 672, !76, i64 680, !56, i64 688, !76, i64 696, !5, i64 704, !5, i64 708, !5, i64 712, !5, i64 716, !5, i64 720, !5, i64 724, !5, i64 728}
!75 = !{!"_ZTS9FlexLexer", !56, i64 8, !5, i64 16, !5, i64 20, !5, i64 24}
!76 = !{!"p1 int", !18, i64 0}
!77 = !{!"_ZTSSi", !59, i64 8}
!78 = !{!"_ZTSSo"}
!79 = !{!"p2 _ZTS15yy_buffer_state", !80, i64 0}
!80 = !{!"any p2 pointer", !18, i64 0}
!81 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !59, i64 0, !56, i64 8}
!82 = !{}
!83 = !{i64 8}
!84 = distinct !{ptr @_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!85 = distinct !{null, null, null}
!86 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!87 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!88 = !{!34, !32, i64 8}
!89 = !{!34, !32, i64 0}
!90 = distinct !{!90, !23}
!91 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!92 = distinct !{null, null}
!93 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!94 = !{!38, !36, i64 8}
!95 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!96 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!97 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!98 = !{!38, !36, i64 0}
!99 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!100 = distinct !{!100, !23}
!101 = distinct !{null, ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!102 = !{!56, !56, i64 0}
!103 = distinct !{!103, !23}
!104 = distinct !{!104, !23}
!105 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!106 = distinct !{null, ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!107 = !{!108, !108, i64 0}
!108 = !{!"p1 _ZTSN8facebook5velox9functions9prestosql6ParserE", !18, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"p1 _ZTSN8facebook5velox9functions9prestosql6Parser11symbol_typeE", !18, i64 0}
!111 = !{!112, !108, i64 0}
!112 = !{!"_ZTSN8facebook5velox9functions9prestosql6Parser7contextE", !108, i64 0, !110, i64 8}
!113 = distinct !{!113, !23, !114, !115}
!114 = !{!"llvm.loop.isvectorized", i32 1}
!115 = !{!"llvm.loop.unroll.runtime.disable"}
!116 = !{!"branch_weights", i32 4, i32 12}
!117 = distinct !{!117, !23, !114, !115}
!118 = distinct !{!118, !23, !115, !114}
!119 = !{!27, !27, i64 0}
!120 = distinct !{!120, !23}
!121 = !{!112, !110, i64 8}
!122 = !{i64 16}
!123 = distinct !{!123, !23, !114, !115}
!124 = distinct !{!124, !23, !114, !115}
!125 = distinct !{!125, !23, !115, !114}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN8facebook5velox9functions9prestosql6Parser11symbol_nameB5cxx11ENS3_11symbol_kind16symbol_kind_typeE: argument 0"}
!128 = distinct !{!128, !"_ZN8facebook5velox9functions9prestosql6Parser11symbol_nameB5cxx11ENS3_11symbol_kind16symbol_kind_typeE"}
!129 = distinct !{!129, !23}
!130 = !{!59, !59, i64 0}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN8facebook5velox12errorMessageIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEEEES9_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!133 = distinct !{!133, !"_ZN8facebook5velox12errorMessageIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEEEES9_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!134 = distinct !{null}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!137 = distinct !{!137, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!140 = !{!136, !139}
!141 = distinct !{!141, !23}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
end_hunk_1
