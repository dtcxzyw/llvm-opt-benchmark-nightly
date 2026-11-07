Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Parser?download=true
inline.NumInlined: 5874
inline.NumDeleted: 2424
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE:bb.a
  %.not.i.i = icmp ugt i64 %i.z, %i.p
  br i1 %.not.i.i, label %.loopexit, label %bb.e, !llvm.loop !9

bb.h:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !350
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.g, %bb.b, %bb.c, %bb.a, %bb.h
  %i.ad = phi ptr [ %i.ac, %bb.h ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.g ], [ null, %bb.f ]
  ret ptr %i.ad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1232) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55   ; 5 uses
  %i.c = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprLocalEE5valueE, align 4, !tbaa !29
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !342
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load i8, ptr %i.g, align 8, !tbaa !343, !range !64, !noundef !65
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprGlobalEE5valueE, align 4, !tbaa !29
  %i.k = icmp eq i32 %i.b, %i.j
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr @_ZN5FFlag27DebugLuauUserDefinedClassesE, align 8, !tbaa !346, !range !64, !noundef !65
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.p = load i64, ptr %i.o, align 8, !tbaa !347
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !339  ; 3 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !339  ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.x = load i64, ptr %i.w, align 8, !tbaa !348
  %i.y = add i64 %i.x, -1                         ; 2 uses
  %i.z = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.aa = lshr i64 %i.z, 4
  %i.ab = lshr i64 %i.z, 9
  %i.ac = xor i64 %i.aa, %i.ab
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !213
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i.i.i = phi i64 [ %i.ac, %bb.g ], [ %i.aj, %bb.j ]
  %.01828.i.i.i = phi i64 [ 0, %bb.g ], [ %i.ai, %bb.j ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.y        ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.01929.i.i.i ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !339 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.t
  br i1 %i.ag, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp eq ptr %i.af, %i.u
  br i1 %i.ah, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = add i64 %.01828.i.i.i, 1                ; 3 uses
  %i.aj = add i64 %i.ai, %.01929.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.ai, %i.y
  br i1 %.not.i.i.i, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.thread, label %bb.h, !llvm.loop !9

_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit: ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !350
  %.not = icmp eq ptr %i.al, null
  %i.am = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexExprEE5valueE, align 4
  %i.an = icmp eq i32 %i.b, %i.am
  %or.cond10 = select i1 %.not, i1 true, i1 %i.an
  br i1 %or.cond10, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.thread, label %bb.l

bb.k:                                             ; preds = %bb.c
  %.old = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexExprEE5valueE, align 4, !tbaa !29
  %.old9 = icmp eq i32 %i.b, %.old
  br i1 %.old9, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit, %bb.k
  %i.ao = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexNameEE5valueE, align 4, !tbaa !29
  %i.ap = icmp eq i32 %i.b, %i.ao
  br label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.thread

_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.thread: ; preds = %bb.i, %bb.j, %bb.e, %bb.f, %bb.l, %bb.k, %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit, %bb.d, %bb.b
  %i.aq = phi i1 [ true, %bb.k ], [ true, %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit ], [ true, %bb.d ], [ true, %bb.b ], [ %i.ap, %bb.l ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %i.aq
}

; Function Attrs: mustprogress uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4Luau6Parser17validateAttributeENS_8LocationEPKcRKNS_10TempVectorIPNS_7AstAttrEEERKNS_8AstArrayIPNS_7AstExprEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i64 %1, i64 %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Luau::Location", align 16  ; 4 uses
  %7 = alloca %"struct.Luau::Location", align 16  ; 6 uses
  %8 = alloca %"class.std::optional", align 8     ; 13 uses
  %9 = alloca %"class.std::vector", align 8       ; 10 uses
  store i64 %1, ptr %7, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store i8 0, ptr %i.b, align 8, !tbaa !63
  %i.c = load ptr, ptr @_ZN4Luau17kAttributeEntriesE, align 16, !tbaa !467 ; 2 uses
  %.not.not82 = icmp eq ptr %i.c, null
  br i1 %.not.not82, label %_ZNSt8optionalISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEEEaSERKSM_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr @_ZN4Luau17kAttributeEntriesE, i64 %indvars.iv.next
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !467  ; 2 uses
  %.not.not = icmp eq ptr %i.e, null
  br i1 %.not.not, label %_ZNSt8optionalISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEEEaSERKSM_.exit, label %.lr.ph, !llvm.loop !789

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %i.f) #40
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw [56 x i8], ptr @_ZN4Luau17kAttributeEntriesE, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !793
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  invoke void @_ZNSt22_Optional_payload_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEEE14_M_copy_assignERKSM_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %_ZNSt8optionalISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEEEaSERKSM_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt8optionalISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEEEaSERKSM_.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.not.not80 = phi i1 [ false, %bb.c ], [ true, %bb.a ], [ true, %bb.b ]
  %.sroa.061.0 = phi i32 [ %i.k, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ] ; 3 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4Luau22kDebugAttributeEntriesE, i64 56), align 8, !tbaa !795, !nonnull !65, !align !337
  %i.n = load i8, ptr %i.m, align 8, !tbaa !346, !range !64, !noundef !65
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNSt8optionalISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEEEaSERKSM_.exit
  %i.p = load ptr, ptr @_ZN4Luau22kDebugAttributeEntriesE, align 16, !tbaa !467
  %i.q = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %i.p) #40
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4Luau22kDebugAttributeEntriesE, i64 8), align 8, !tbaa !793
  invoke void @_ZNSt22_Optional_payload_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEEE14_M_copy_assignERKSM_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZN4Luau22kDebugAttributeEntriesE, i64 16))
          to label %.critedge.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %bb.d, %_ZNSt8optionalISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEEEaSERKSM_.exit
  br i1 %.not.not80, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %.critedge
  %char0 = load i8, ptr %3, align 1
  %i.t = icmp eq i8 %char0, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull @.str.169)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  invoke void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull @.str.170, ptr noundef nonnull %3)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge.thread:                                 ; preds = %bb.e, %.critedge
  %.sroa.061.172 = phi i32 [ %.sroa.061.0, %.critedge ], [ %i.s, %bb.e ] ; 3 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !470, !nonnull !65, !align !337
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !399
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !471
  %i.y = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !472 ; 2 uses
  %.idx = shl nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 %.idx
  %.not86 = icmp eq i64 %i.aa, 0
  br i1 %.not86, label %._crit_edge, label %.lr.ph88

._crit_edge:                                      ; preds = %bb.j, %.critedge.thread
  %i.ac = load i8, ptr %i.b, align 8, !tbaa !63, !range !64, !noundef !65
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.k, label %_ZNSt14_Optional_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0EED2Ev.exit

.lr.ph88:                                         ; preds = %.critedge.thread, %bb.j
  %.sroa.050.087 = phi ptr [ %i.ai, %bb.j ], [ %i.y, %.critedge.thread ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.050.087, align 8, !tbaa !401
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !797
  %i.ah = icmp eq i32 %i.ag, %.sroa.061.172
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph88
  invoke void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull @.str.171, ptr noundef %3)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.g, %bb.h, %bb.c, %bb.e
  %lpad.loopexit.split-lp115 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.i, %.lr.ph88
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.050.087, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.ab
  br i1 %.not, label %._crit_edge, label %.lr.ph88

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.aj = load <2 x i64>, ptr %7, align 16, !tbaa !29
  store <2 x i64> %i.aj, ptr %6, align 16, !noalias !798
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !67, !noalias !798
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !474, !noalias !798
  invoke void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.n unwind label %bb.p, !inline_history !792

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ao = load ptr, ptr %9, align 8, !tbaa !799   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !799 ; 2 uses
  %.not7889 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not7889, label %_ZSt8_DestroyIPSt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph92

._crit_edge93:                                    ; preds = %bb.q
  %.pre = load ptr, ptr %9, align 8, !tbaa !46    ; 3 uses
  %.pre98 = load ptr, ptr %i.ap, align 8, !tbaa !48 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre98
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge93, %_ZSt8_DestroyISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge93 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZSt8_DestroyISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !42
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #36
  br label %_ZSt8_DestroyISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %.pre98
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !46
  br label %_ZSt8_DestroyIPSt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %._crit_edge93
  %i.ay = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge93 ], [ %i.ao, %bb.n ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !47
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #36
  br label %_ZNSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.t

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.lr.ph92:                                         ; preds = %bb.n, %bb.q
  %.sroa.046.090 = phi ptr [ %i.bh, %bb.q ], [ %i.ao, %bb.n ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.046.090, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !41
  invoke void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.046.090, ptr noundef nonnull @.str.172, ptr noundef %i.bg)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.lr.ph92
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.046.090, i64 48 ; 2 uses
  %.not78 = icmp eq ptr %i.bh, %i.aq
  br i1 %.not78, label %._crit_edge93, label %.lr.ph92

bb.r:                                             ; preds = %.lr.ph92
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #34
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.r ], [ %i.be, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.loopexit.split-lp

bb.t:                                             ; preds = %_ZNSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit, %bb.g, %bb.h
  %.sroa.464.174.ph = phi i64 [ 0, %bb.h ], [ 0, %bb.g ], [ 1, %_ZNSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit ] ; 3 uses
  %.sroa.061.173.ph = phi i32 [ %.sroa.061.0, %bb.h ], [ %.sroa.061.0, %bb.g ], [ %.sroa.061.172, %_ZNSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit ] ; 3 uses
  %i.bj = load i8, ptr %i.b, align 8, !tbaa !63
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.u, label %_ZNSt14_Optional_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0EED2Ev.exit

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %i.b, align 8, !tbaa !63
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt14_Optional_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = invoke noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 3)
          to label %_ZNSt14_Optional_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0EED2Ev.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #38
  unreachable

_ZNSt14_Optional_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0EED2Ev.exit: ; preds = %._crit_edge, %bb.t, %bb.u, %bb.v
  %.sroa.061.17383 = phi i32 [ %.sroa.061.173.ph, %bb.v ], [ %.sroa.061.173.ph, %bb.t ], [ %.sroa.061.173.ph, %bb.u ], [ %.sroa.061.172, %._crit_edge ]
  %.sroa.464.17482 = phi i64 [ %.sroa.464.174.ph, %bb.v ], [ %.sroa.464.174.ph, %bb.t ], [ %.sroa.464.174.ph, %bb.u ], [ 1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %.sroa.464.0.insert.shift = shl nuw nsw i64 %.sroa.464.17482, 32
  %.sroa.061.0.insert.ext = zext i32 %.sroa.061.17383 to i64
  %.sroa.061.0.insert.insert = or disjoint i64 %.sroa.464.0.insert.shift, %.sroa.061.0.insert.ext
  ret i64 %.sroa.061.0.insert.insert

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s
  %.pn42 = phi { ptr, i32 } [ %.pn, %bb.s ], [ %lpad.loopexit.split-lp115, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt14_Optional_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  resume { ptr, i32 } %.pn42
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ...) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @_ZN4Luau6Parser6reportERKNS_8LocationEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63, !range !64, !noundef !65
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt17_Optional_payloadISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef 3)
          to label %_ZNSt17_Optional_payloadISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0ELb0EED2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #38
  unreachable

_ZNSt17_Optional_payloadISt8functionIFSt6vectorISt4pairIN4Luau8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EES4_RKNS3_8AstArrayIPNS3_7AstExprEEEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Parser13parseAttrListERNS_10TempVectorIPNS_7AstAttrEEEPNS1_IPNS_11CstAttrListEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::AstArray", align 8   ; 9 uses
  %4 = alloca %"struct.Luau::Location", align 8   ; 9 uses
  %5 = alloca %"class.Luau::TempVector.198", align 8 ; 10 uses
  %6 = alloca %"struct.Luau::Position", align 8   ; 6 uses
  %7 = alloca %"class.std::tuple.211", align 8    ; 8 uses
  %8 = alloca %"struct.Luau::Location", align 8   ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"struct.Luau::Location", align 8   ; 6 uses
  %10 = alloca %"struct.Luau::Location", align 8  ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"struct.Luau::Parser::MatchLexeme", align 4 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %.sroa.0222.0.copyload = load i32, ptr %i.d, align 8, !tbaa !228
  %.sroa.5223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 6 uses
  %.sroa.5223.0.copyload = load i64, ptr %.sroa.5223.0..sroa_idx, align 4, !tbaa !29 ; 4 uses
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !376
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = load i32, ptr %i.d, align 8, !tbaa !117  ; 2 uses
  %.not = icmp eq i32 %i.l, 93
  br i1 %.not, label %bb.ar, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.8.8..sroa_idx212 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.sroa.2.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.aq
  %i.ac = phi i32 [ %.pre, %bb.aq ], [ %i.l, %.preheader ]
  %.sroa.12.0 = phi i64 [ %.sroa.12.1, %bb.aq ], [ 0, %.preheader ] ; 3 uses
  %.not.i.i = icmp eq i32 %i.ac, 281
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !42, !noalias !815
  %.sroa.5.8.copyload211 = load i64, ptr %.sroa.5223.0..sroa_idx, align 4
  %.sroa.8.8.copyload213 = load i64, ptr %.sroa.8.8..sroa_idx212, align 4
  invoke void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
          to label %._crit_edge280 unwind label %.loopexit.split-lp237.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge280:                                   ; preds = %bb.c
  %.pre281 = load i64, ptr %.sroa.5223.0..sroa_idx, align 4, !tbaa !29
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN4Luau6Parser15reportNameErrorEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.173)
          to label %.noexc87 unwind label %.loopexit.split-lp237.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc87:                                         ; preds = %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.5223.0..sroa_idx, align 4, !tbaa !29, !noalias !816 ; 3 uses
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !59, !noalias !816
  %i.af = inttoptr i64 %i.ae to ptr
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge280, %.noexc87
  %i.ag = phi i64 [ %.sroa.0.0.copyload.i, %.noexc87 ], [ %.pre281, %._crit_edge280 ]
  %.sroa.8.0 = phi i64 [ %.sroa.0.0.copyload.i, %.noexc87 ], [ %.sroa.8.8.copyload213, %._crit_edge280 ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %.sroa.0.0.copyload.i, %.noexc87 ], [ %.sroa.5.8.copyload211, %._crit_edge280 ] ; 2 uses
  %.sink.i = phi ptr [ %i.af, %.noexc87 ], [ %i.ad, %._crit_edge280 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i64 %.sroa.5.0, ptr %4, align 8, !tbaa !29
  store i64 %.sroa.8.0, ptr %.sroa.8.8..sroa_idx, align 8, !tbaa !29
  %.sroa.028.0.copyload = load i32, ptr %i.d, align 8, !tbaa !228
  switch i32 %.sroa.028.0.copyload, label %bb.y [
    i32 40, label %.invoke
    i32 123, label %bb.f
    i32 278, label %bb.f
    i32 279, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  br label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ -1, %bb.f ], [ %i.ag, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store ptr %i.o, ptr %5, align 8, !tbaa !375
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !376
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !127
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  store i64 %i.am, ptr %i.p, align 8, !tbaa !378
  store i64 0, ptr %i.r, align 8, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i64 -1, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.an = load i8, ptr %i.s, align 8, !tbaa !351, !range !64, !noundef !65
  %i.ao = trunc nuw i8 %i.an to i1                ; 2 uses
  %. = select i1 %i.ao, ptr %5, ptr null
  %.324 = select i1 %i.ao, ptr %6, ptr null
  invoke void @_ZN4Luau6Parser13parseCallListEPNS_10TempVectorINS_8PositionEEEPS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.211") align 8 %7, ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %., ptr noundef %.324)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.invoke
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !49  ; 2 uses
  %i.aq = load i64, ptr %i.v, align 8, !tbaa !35  ; 2 uses
  %.idx = shl nuw nsw i64 %i.aq, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx
  %.not69263 = icmp eq i64 %i.aq, 0
  br i1 %.not69263, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %bb.g
  %.sroa.08.0.copyload = load i64, ptr %4, align 8, !tbaa !29
  %.sroa.29.0.copyload = load i64, ptr %.sroa.8.8..sroa_idx, align 8, !tbaa !29
  %i.as = invoke i64 @_ZN4Luau6Parser17validateAttributeENS_8LocationEPKcRKNS_10TempVectorIPNS_7AstAttrEEERKNS_8AstArrayIPNS_7AstExprEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i64 %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload, ptr noundef %.sink.i, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.lr.ph:                                           ; preds = %bb.g, %bb.l
  %.060264 = phi ptr [ %i.aw, %bb.l ], [ %i.ap, %bb.g ] ; 2 uses
  %i.at = load ptr, ptr %.060264, align 8, !tbaa !51 ; 2 uses
  %i.au = invoke noundef zeroext i1 @_ZN4Luau17isConstantLiteralEPKNS_7AstExprE(ptr noundef %i.at)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
