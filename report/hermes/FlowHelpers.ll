inline.NumInlined: 180
inline.NumDeleted: 125
begin_hunk_0_@_ZN6hermes6parser21getCommentsInDocBlockERNS_7ContextEj:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 1152
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !126
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #10
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !127
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.pre to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.as) #10
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, %bb.e, %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !128 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i
  call void @free(ptr noundef %i.au) #9
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i:        ; preds = %bb.f, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !128 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i
  call void @free(ptr noundef %i.ay) #9
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i:       ; preds = %bb.g, %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !129 ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i10, label %_ZN6hermes6parser7JSLexerD2Ev.exit, label %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i: ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !130
  call void @_ZdlPv(ptr noundef %i.be) #9
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 32) #10
  br label %_ZN6hermes6parser7JSLexerD2Ev.exit

_ZN6hermes6parser7JSLexerD2Ev.exit:               ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i, %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.sroa.4.8.extract.trunc = trunc i64 %i.d to i40
  store i40 %.sroa.4.8.extract.trunc, ptr %i.c, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes6parser7JSLexerC1EjRNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb(ptr noundef nonnull align 8 dereferenceable(1160), i32 noundef, ptr noundef nonnull align 8 dereferenceable(464), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

declare noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN6hermes6parser7JSLexer24isCurrentTokenADirectiveEv(ptr noundef nonnull align 8 dereferenceable(1160)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser13hasFlowPragmaEN4llvh8ArrayRefINS0_13StoredCommentEEE(ptr nofree readonly captures(address) %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::StringRef", align 8   ; 8 uses
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not54.not = icmp eq i64 %1, 0
  br i1 %.not54.not, label %.loopexit, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph58, %.thread45
  %.02855 = phi ptr [ %0, %.lr.ph58 ], [ %i.ai, %.thread45 ] ; 4 uses
  %i.c = load i32, ptr %.02855, align 8, !tbaa !131 ; 2 uses
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %.thread45, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.e = getelementptr inbounds nuw i8, ptr %.02855, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.g = icmp eq i32 %i.c, 1
  %i.h = getelementptr inbounds nuw i8, ptr %.02855, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %.idx.i = select i1 %i.g, i64 -2, i64 0
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.idx.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  store ptr %i.k, ptr %2, align 8
  store i64 %i.n, ptr %i.b, align 8
  %i.o = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str, i64 5, i64 noundef 0) #9 ; 2 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !135  ; 2 uses
  %i.q = add i64 %i.p, -4
  %i.r = icmp ult i64 %i.o, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %i.s = phi i64 [ %i.af, %bb.f ], [ %i.p, %bb.c ]
  %.02953 = phi i64 [ %i.ae, %bb.f ], [ %i.o, %bb.c ] ; 3 uses
  %i.t = add i64 %i.s, -5
  %i.u = icmp eq i64 %.02953, %i.t
  br i1 %i.u, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %2, align 8, !tbaa !136
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.02953
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.y = load i8, ptr %i.x, align 1, !tbaa !137   ; 3 uses
  %i.z = or i8 %i.y, 32
  %i.aa = add i8 %i.z, -97
  %or.cond38 = icmp ult i8 %i.aa, 26
  br i1 %or.cond38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.ab, 10
  %i.ac = icmp eq i8 %i.y, 95
  %or.cond6 = or i1 %i.ac, %or.cond
  br i1 %or.cond6, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = add nuw i64 %.02953, 1
  %i.ae = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str, i64 5, i64 noundef %i.ad) #9 ; 2 uses
  %i.af = load i64, ptr %i.b, align 8, !tbaa !135 ; 2 uses
  %i.ag = add i64 %i.af, -4
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !138

._crit_edge:                                      ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %.thread45

.thread45:                                        ; preds = %bb.b, %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %.02855, i64 24 ; 2 uses
  %.not.not = icmp eq ptr %i.ai, %i.a
  br i1 %.not.not, label %.loopexit, label %bb.b

bb.g:                                             ; preds = %.lr.ph, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %.loopexit

.loopexit:                                        ; preds = %.thread45, %bb.a, %bb.g
  %.not52 = phi i1 [ true, %bb.g ], [ false, %bb.a ], [ false, %.thread45 ]
  ret i1 %.not52
}

declare noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser11getDocBlockB5cxx11EN4llvh8ArrayRefINS0_13StoredCommentEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !139
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !141
  store i8 0, ptr %i.a, align 8, !tbaa !137
  %.idx = mul nuw nsw i64 %2, 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not9 = icmp eq i64 %2, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.010 = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.010, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !141
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.b, label %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11
  unreachable

_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit: ; preds = %.lr.ph
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.e, i64 noundef %i.j) #9 ; 0 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !141  ; 4 uses
  %i.p = add i64 %i.o, 1                          ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !143    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a                   ; 2 uses
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.c:                                             ; preds = %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit
  %i.s = icmp ult i64 %i.o, 16
  tail call void @llvm.assume(i1 %i.s)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.c, %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit
  %3 = load i64, ptr %i.a, align 8
  %4 = select i1 %i.r, i64 15, i64 %3
  %i.t = icmp ugt i64 %i.p, %4
  br i1 %i.t, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o, i64 noundef 0, ptr noundef null, i64 noundef 1) #9
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !143
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.d
  %i.u = phi ptr [ %.pre.i, %bb.d ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o
  store i8 10, ptr %i.v, align 1, !tbaa !137
  store i64 %i.p, ptr %i.b, align 8, !tbaa !141
  %i.w = load ptr, ptr %0, align 8, !tbaa !143
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.p
  store i8 0, ptr %i.x, align 1, !tbaa !137
  %i.y = getelementptr inbounds nuw i8, ptr %.010, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { noreturn nounwind }

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
!7 = !{!8, !44, i64 160}
!8 = !{!"_ZTSN6hermes7ContextE", !9, i64 0, !9, i64 32, !17, i64 64, !24, i64 72, !28, i64 104, !38, i64 152, !44, i64 160, !45, i64 168, !45, i64 169, !45, i64 170, !4, i64 172, !4, i64 176, !45, i64 180, !45, i64 181, !45, i64 182, !45, i64 183, !45, i64 184, !45, i64 185, !46, i64 188, !45, i64 192, !45, i64 193, !47, i64 200, !54, i64 208, !59, i64 232, !45, i64 236, !60, i64 240, !67, i64 632, !68, i64 640}
!9 = !{!"_ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !10, i64 0, !16, i64 24}
!10 = !{!"_ZTSSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !11, i64 0}
!11 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !12, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"p1 _ZTSSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS2_EE", !15, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocator5StateE", !15, i64 0}
!17 = !{!"_ZTSSt10unique_ptrIN6hermes6parser13PreParsedDataESt14default_deleteIS2_EE", !18, i64 0}
!18 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes6parser13PreParsedDataESt14default_deleteIS2_ELb1ELb1EE", !19, i64 0}
!19 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes6parser13PreParsedDataESt14default_deleteIS2_EE", !20, i64 0}
!20 = !{!"_ZTSSt5tupleIJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !21, i64 0}
!21 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !22, i64 0}
!22 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes6parser13PreParsedDataELb0EE", !23, i64 0}
!23 = !{!"p1 _ZTSN6hermes6parser13PreParsedDataE", !15, i64 0}
!24 = !{!"_ZTSN6hermes11StringTableE", !25, i64 0, !26, i64 8}
!25 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !15, i64 0}
!26 = !{!"_ZTSN4llvh8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S4_EEEE", !27, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!27 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairINS_9StringRefEPN6hermes12UniqueStringEEE", !15, i64 0}
!28 = !{!"_ZTSSt3mapISt4pairIPN6hermes12UniqueStringES3_ENS1_14CompiledRegExpESt4lessIS4_ESaIS0_IKS4_S5_EEE", !29, i64 0}
!29 = !{!"_ZTSSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE", !30, i64 0}
!30 = !{!"_ZTSNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !31, i64 0, !33, i64 8}
!31 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIPN6hermes12UniqueStringES4_EEE", !32, i64 0}
!32 = !{!"_ZTSSt4lessISt4pairIPN6hermes12UniqueStringES3_EE"}
!33 = !{!"_ZTSSt15_Rb_tree_header", !34, i64 0, !37, i64 32}
!34 = !{!"_ZTSSt18_Rb_tree_node_base", !35, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!35 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!36 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!37 = !{!"long", !5, i64 0}
!38 = !{!"_ZTSSt10unique_ptrIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !39, i64 0}
!39 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes18SourceErrorManagerESt14default_deleteIS1_ELb1ELb1EE", !40, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !41, i64 0}
!41 = !{!"_ZTSSt5tupleIJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !42, i64 0}
!42 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !43, i64 0}
!43 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes18SourceErrorManagerELb0EE", !44, i64 0}
!44 = !{!"p1 _ZTSN6hermes18SourceErrorManagerE", !15, i64 0}
!45 = !{!"bool", !5, i64 0}
!46 = !{!"_ZTSN6hermes16ParseFlowSettingE", !5, i64 0}
!47 = !{!"_ZTSSt10unique_ptrIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !48, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_ELb1ELb1EE", !49, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_implIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !50, i64 0}
!50 = !{!"_ZTSSt5tupleIJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !51, i64 0}
!51 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !52, i64 0}
!52 = !{!"_ZTSSt10_Head_baseILm0EPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEELb0EE", !53, i64 0}
!53 = !{!"p1 _ZTSN4llvh8DenseMapINS_9StringRefENS0_IS1_S1_NS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S1_EEEES3_NS5_IS1_S7_EEEE", !15, i64 0}
!54 = !{!"_ZTSSt6vectorIjSaIjEE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p1 int", !15, i64 0}
!59 = !{!"_ZTSN6hermes16DebugInfoSettingE", !5, i64 0}
!60 = !{!"_ZTSN6hermes22CodeGenerationSettingsE", !45, i64 0, !45, i64 1, !45, i64 2, !45, i64 3, !45, i64 4, !45, i64 5, !45, i64 6, !45, i64 7, !45, i64 8, !45, i64 9, !61, i64 16, !61, i64 168, !62, i64 320}
!61 = !{!"_ZTSN6hermes35CodeGenerationSettings_DumpSettingsE", !45, i64 0, !62, i64 8, !62, i64 80}
!62 = !{!"_ZTSN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEE", !63, i64 0}
!63 = !{!"_ZTSN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_EE", !64, i64 0}
!64 = !{!"_ZTSN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEEE", !4, i64 0, !4, i64 0, !4, i64 4, !65, i64 8}
!65 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA4_NS_6detail12DenseSetPairINS_9StringRefEEENS_13SmallDenseMapIS3_NS1_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EES4_E8LargeRepEccccccccEE", !66, i64 0}
!66 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm64EEE", !5, i64 0}
!67 = !{!"_ZTSN6hermes20OptimizationSettingsE", !45, i64 0, !45, i64 1, !45, i64 2, !45, i64 3, !45, i64 4, !45, i64 5}
!68 = !{!"_ZTSSt10shared_ptrIN6hermes3hbc14BackendContextEE", !69, i64 0}
!69 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc14BackendContextELN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0, !71, i64 8}
!70 = !{!"p1 _ZTSN6hermes3hbc14BackendContextE", !15, i64 0}
!71 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0}
!72 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!73 = !{}
!74 = !{i64 8}
!75 = !{!76, !76, i64 0}
!76 = !{!"_ZTSN6hermes9SubsystemE", !5, i64 0}
!77 = !{!45, !45, i64 0}
!78 = !{!8, !45, i64 168}
!79 = !{i8 0, i8 2}
!80 = !{!81, !45, i64 49}
!81 = !{!"_ZTSN6hermes6parser7JSLexerE", !44, i64 0, !25, i64 8, !4, i64 16, !82, i64 24, !88, i64 32, !89, i64 40, !45, i64 48, !45, i64 49, !45, i64 50, !45, i64 51, !90, i64 56, !93, i64 128, !94, i64 136, !94, i64 144, !94, i64 152, !45, i64 160, !98, i64 168, !98, i64 440, !5, i64 712, !105, i64 1080, !105, i64 1096, !106, i64 1112, !111, i64 1136}
!82 = !{!"_ZTSSt10unique_ptrIN6hermes11StringTableESt14default_deleteIS1_EE", !83, i64 0}
!83 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes11StringTableESt14default_deleteIS1_ELb1ELb1EE", !84, i64 0}
!84 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes11StringTableESt14default_deleteIS1_EE", !85, i64 0}
!85 = !{!"_ZTSSt5tupleIJPN6hermes11StringTableESt14default_deleteIS1_EEE", !86, i64 0}
!86 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes11StringTableESt14default_deleteIS1_EEE", !87, i64 0}
!87 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes11StringTableELb0EE", !88, i64 0}
!88 = !{!"p1 _ZTSN6hermes11StringTableE", !15, i64 0}
!89 = !{!"p1 _ZTSN4llvh8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_jEEEE", !15, i64 0}
!90 = !{!"_ZTSN6hermes6parser5TokenE", !91, i64 0, !92, i64 8, !95, i64 24, !96, i64 32, !96, i64 40, !97, i64 48, !96, i64 56, !45, i64 64}
!91 = !{!"_ZTSN6hermes6parser9TokenKindE", !5, i64 0}
!92 = !{!"_ZTSN4llvh7SMRangeE", !93, i64 0, !93, i64 8}
!93 = !{!"_ZTSN4llvh5SMLocE", !94, i64 0}
!94 = !{!"p1 omnipotent char", !15, i64 0}
!95 = !{!"double", !5, i64 0}
!96 = !{!"p1 _ZTSN6hermes12UniqueStringE", !15, i64 0}
!97 = !{!"p1 _ZTSN6hermes6parser13RegExpLiteralE", !15, i64 0}
!98 = !{!"_ZTSN4llvh11SmallStringILj256EEE", !99, i64 0}
!99 = !{!"_ZTSN4llvh11SmallVectorIcLj256EEE", !100, i64 0, !104, i64 16}
!100 = !{!"_ZTSN4llvh15SmallVectorImplIcEE", !101, i64 0}
!101 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIcLb1EEE", !102, i64 0}
!102 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIcvEE", !103, i64 0}
!103 = !{!"_ZTSN4llvh15SmallVectorBaseE", !15, i64 0, !4, i64 8, !4, i64 12}
!104 = !{!"_ZTSN4llvh18SmallVectorStorageIcLj256EEE", !5, i64 0}
!105 = !{!"_ZTSN4llvh9StringRefE", !94, i64 0, !37, i64 8}
!106 = !{!"_ZTSSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE", !107, i64 0}
!107 = !{!"_ZTSSt12_Vector_baseIN6hermes6parser13StoredCommentESaIS2_EE", !108, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIN6hermes6parser13StoredCommentESaIS2_EE12_Vector_implE", !109, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseIN6hermes6parser13StoredCommentESaIS2_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!110 = !{!"p1 _ZTSN6hermes6parser13StoredCommentE", !15, i64 0}
!111 = !{!"_ZTSSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE", !112, i64 0}
!112 = !{!"_ZTSSt12_Vector_baseIN6hermes6parser11StoredTokenESaIS2_EE", !113, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseIN6hermes6parser11StoredTokenESaIS2_EE12_Vector_implE", !114, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIN6hermes6parser11StoredTokenESaIS2_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!115 = !{!"p1 _ZTSN6hermes6parser11StoredTokenE", !15, i64 0}
!116 = !{!109, !110, i64 0}
!117 = !{!109, !110, i64 8}
!118 = !{!90, !91, i64 0}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN6hermes6parser7JSLexer18moveStoredCommentsEv: argument 0"}
!123 = distinct !{!123, !"_ZN6hermes6parser7JSLexer18moveStoredCommentsEv"}
!124 = !{!110, !110, i64 0}
!125 = !{!114, !115, i64 0}
!126 = !{!114, !115, i64 16}
!127 = !{!109, !110, i64 16}
!128 = !{!103, !15, i64 0}
!129 = !{!88, !88, i64 0}
!130 = !{!26, !27, i64 0}
!131 = !{!132, !133, i64 0}
!132 = !{!"_ZTSN6hermes6parser13StoredCommentE", !133, i64 0, !92, i64 8}
!133 = !{!"_ZTSN6hermes6parser13StoredComment4KindE", !5, i64 0}
end_hunk_0
