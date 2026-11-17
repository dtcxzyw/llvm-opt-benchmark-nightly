Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/string?download=true
inline.NumInlined: 451
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5arrow9HexEncodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.a = shl i64 %1, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %0, align 8, !tbaa !34, !alias.scope !83
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.a, i8 noundef signext 0)
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.preheader: ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.epil.preheader, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.preheader.new

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.preheader.new: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.preheader
  %unroll_iter = and i64 %1, -2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.preheader.new
  %.014.i.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.preheader.new ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i ] ; 4 uses
  %.01213.i.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.preheader.new ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.preheader.new ], [ %niter.next.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.01213.i.i ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !35, !noalias !83
  %i.f = lshr i8 %i.e, 4
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @.str, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !35, !noalias !83
  %i.j = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !83
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.014.i.i
  store i8 %i.i, ptr %i.k, align 1, !tbaa !35
  %i.l = load i8, ptr %i.d, align 1, !tbaa !35, !noalias !83
  %i.m = and i8 %i.l, 15
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @.str, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !35, !noalias !83
  %i.q = or disjoint i64 %.014.i.i, 2             ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.014.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 %i.p, ptr %i.t, align 1, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.01213.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35, !noalias !83
  %i.x = lshr i8 %i.w, 4
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @.str, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35, !noalias !83
  %i.ab = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.q
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !35
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !35, !noalias !83
  %i.ae = and i8 %i.ad, 15
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @.str, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35, !noalias !83
  %i.ai = add i64 %.014.i.i, 4                    ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !83
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.q
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 %i.ah, ptr %i.al, align 1, !tbaa !35
  %i.am = add nuw i64 %.01213.i.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i, !llvm.loop !0

_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.epil.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.epil.preheader: ; preds = %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.preheader
  %.014.i.i.epil.init = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.preheader ], [ %i.ai, %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01213.i.i.epil.init = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.preheader ], [ %i.am, %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa ]
  %lcmp.mod1 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.01213.i.i.epil.init ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35, !noalias !83
  %i.ap = lshr i8 %i.ao, 4
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @.str, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35, !noalias !83
  %i.at = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !83
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.014.i.i.epil.init
  store i8 %i.as, ptr %i.au, align 1, !tbaa !35
  %i.av = load i8, ptr %i.an, align 1, !tbaa !35, !noalias !83
  %i.aw = and i8 %i.av, 15
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !35, !noalias !83
  %i.ba = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !83
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.014.i.i.epil.init
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !35
  br label %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit

_ZN5arrow9HexEncodeB5cxx11EPKcm.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.epil.preheader, %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6EscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 !guid !84 {
bb.a:
  tail call void @_ZN5arrow6EscapeB5cxx11EPKcm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %2, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow13ParseHexValueEPKcPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 !guid !87 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !35      ; 3 uses
  %i.b = add i8 %i.a, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.b, 10
  %i.c = add i8 %i.a, -65
  %or.cond5.i = icmp ult i8 %i.c, 6
  %i.d = add nsw i8 %i.a, -55
  %spec.select.i = select i1 %or.cond5.i, i8 %i.d, i8 -1
  %.0.i = select i1 %or.cond.i, i8 %i.b, i8 %spec.select.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35    ; 3 uses
  %i.g = add i8 %i.f, -48                         ; 2 uses
  %or.cond.i9 = icmp ult i8 %i.g, 10
  %i.h = add i8 %i.f, -65
  %or.cond5.i10 = icmp ult i8 %i.h, 6
  %i.i = add nsw i8 %i.f, -55
  %spec.select.i11 = select i1 %or.cond5.i10, i8 %i.i, i8 -1
  %.0.i12 = select i1 %or.cond.i9, i8 %i.g, i8 %spec.select.i11 ; 2 uses
  %i.j = icmp eq i8 %.0.i, -1
  %i.k = icmp eq i8 %.0.i12, -1
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(26) @.str.6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = shl i8 %.0.i, 4
  %i.m = or i8 %i.l, %.0.i12
  store i8 %i.m, ptr %2, align 1, !tbaa !35
  store ptr null, ptr %0, align 8, !tbaa !43, !alias.scope !88
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14ParseHexValuesESt17basic_string_viewIcSt11char_traitsIcEEPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i64 %1, ptr nofree readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !96 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = and i64 %1, 1
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.b = lshr exact i64 %1, 1
  %.not14 = icmp eq i64 %1, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA27_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(27) @.str.7)
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader, %_ZN5arrow6StatusD2Ev.exit10
  %.0813 = phi i64 [ %i.t, %_ZN5arrow6StatusD2Ev.exit10 ], [ 0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = shl nuw i64 %.0813, 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !35, !noalias !97 ; 3 uses
  %i.f = add i8 %i.e, -48                         ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.f, 10
  %i.g = add i8 %i.e, -65
  %or.cond5.i.i = icmp ult i8 %i.g, 6
  %i.h = add nsw i8 %i.e, -55
  %spec.select.i.i = select i1 %or.cond5.i.i, i8 %i.h, i8 -1
  %.0.i.i = select i1 %or.cond.i.i, i8 %i.f, i8 %spec.select.i.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35, !noalias !97 ; 3 uses
  %i.k = add i8 %i.j, -48                         ; 2 uses
  %or.cond.i9.i = icmp ult i8 %i.k, 10
  %i.l = add i8 %i.j, -65
  %or.cond5.i10.i = icmp ult i8 %i.l, 6
  %i.m = add nsw i8 %i.j, -55
  %spec.select.i11.i = select i1 %or.cond5.i10.i, i8 %i.m, i8 -1
  %.0.i12.i = select i1 %or.cond.i9.i, i8 %i.k, i8 %spec.select.i11.i ; 2 uses
  %i.n = icmp eq i8 %.0.i.i, -1
  %i.o = icmp eq i8 %.0.i12.i, -1
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %.0813
  %i.q = shl i8 %.0.i.i, 4
  %i.r = or i8 %i.q, %.0.i12.i
  store i8 %i.r, ptr %i.p, align 1, !tbaa !35, !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN5arrow6StatusD2Ev.exit10

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.lr.ph
  call void @_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(26) @.str.6)
  %.pr = load ptr, ptr %4, align 8, !tbaa !43, !noalias !98 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.s = icmp eq ptr %.pr, null
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit10, label %.critedge.loopexit

_ZN5arrow6StatusD2Ev.exit10:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.t = add nuw nsw i64 %.0813, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !93

._crit_edge:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit10, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !43, !alias.scope !99
  br label %.critedge

.critedge.loopexit:                               ; preds = %_ZN5arrow6StatusD2Ev.exit
  store ptr %.pr, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11SplitStringESt17basic_string_viewIcSt11char_traitsIcEEcl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, i64 %1, ptr %2, i8 noundef signext %3, i64 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !105 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp sgt i64 %4, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = add nsw i64 %4, -1
  %i.e = sext i8 %3 to i32
  %i.f = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit, %bb.a
  %i.g = phi ptr [ null, %bb.a ], [ %i.ao, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 9 uses
  %i.h = phi ptr [ null, %bb.a ], [ %i.ap, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %i.i = phi ptr [ null, %bb.a ], [ %i.aq, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 13 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.as, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 9 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 4
  %.not = icmp ugt i64 %i.d, %i.m
  %i.n = icmp ult i64 %.0, %1
  %or.cond = select i1 %.not, i1 %i.n, i1 false
  br i1 %or.cond, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

bb.d:                                             ; preds = %bb.b
  %.old = icmp ult i64 %.0, %1
  br i1 %.old, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.c, %bb.d
  %i.o = sub nuw i64 %1, %.0
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.0
  %i.q = tail call ptr @memchr(ptr noundef %i.p, i32 noundef %i.e, i64 noundef %i.o) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.f
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %bb.e, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.d, %bb.c
  %.011 = phi i64 [ -1, %bb.c ], [ -1, %bb.d ], [ %i.s, %bb.e ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 3 uses
  %i.t = icmp ugt i64 %.0, %1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  store ptr %i.i, ptr %0, align 8
  store ptr %i.g, ptr %i.c, align 8
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i64 noundef %.0, i64 noundef %1) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %i.u = sub i64 %.011, %.0
  %i.v = sub nuw i64 %1, %.0
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.0 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %.sroa.speculated.i, ptr %i.h, align 8, !tbaa !44
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.b, align 8, !tbaa !48
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.y = ptrtoint ptr %i.g to i64
  %i.z = ptrtoint ptr %i.i to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775792
  br i1 %i.ab, label %bb.j, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.i, ptr %0, align 8
  store ptr %i.g, ptr %i.c, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #21
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ac = ashr exact i64 %i.aa, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487)
  %i.ag = select i1 %i.ae, i64 576460752303423487, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #23
          to label %.noexc14 unwind label %.loopexit ; 5 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.aj, align 8, !tbaa !44
  %.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx16, align 8, !tbaa !45
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc14, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.noexc14 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc14 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !106, !alias.scope !107
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !103

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc14
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ai, %.noexc14 ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.aa) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.am, ptr %i.b, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ag
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.h
  %i.ao = phi ptr [ %i.an, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.g, %bb.h ] ; 2 uses
  %i.ap = phi ptr [ %i.am, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.x, %bb.h ]
  %i.aq = phi ptr [ %i.ai, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.i, %bb.h ] ; 2 uses
  %i.ar = icmp eq i64 %.011, -1
  %i.as = add nuw i64 %.011, 1
  br i1 %i.ar, label %bb.n, label %bb.b, !llvm.loop !104

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  store ptr %i.g, ptr %i.c, align 8
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.f, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = ptrtoint ptr %i.g to i64
  %i.au = ptrtoint ptr %i.i to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.av) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %lpad.phi

bb.n:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  store ptr %i.aq, ptr %0, align 8
  store ptr %i.ao, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11JoinStringsB5cxx11ERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EES5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !111 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48, !noalias !112
  %i.d = load ptr, ptr %1, align 8, !tbaa !113, !noalias !112 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %._crit_edge.i.i.i, label %bb.b

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !34, !alias.scope !112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !40, !alias.scope !112
  store i8 0, ptr %i.f, align 8, !tbaa !35, !alias.scope !112
  br label %_ZN5arrow8internalL15JoinStringLikesISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS4_SaIcEEERKSt6vectorIT_SaISB_EES5_.exit

bb.b:                                             ; preds = %bb.a
end_hunk_0
