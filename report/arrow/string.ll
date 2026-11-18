Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/string?download=true
inline.NumInlined: 496
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5arrow9HexEncodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  store ptr %i.f, ptr %0, align 8, !tbaa !38, !alias.scope !84
  store i64 %i.a, ptr %i.b, align 8, !tbaa !39, !alias.scope !84
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %cond.i.i = icmp eq i64 %i.a, 0
  br i1 %cond.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread7.i.i.i.i
  %i.g = phi ptr [ %i.f, %.thread7.i.i.i.i ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 0, i64 %i.a, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %i.b, %bb.c ], [ %i.g, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.i, align 8, !tbaa !40, !alias.scope !84
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.j, align 1, !tbaa !39
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter = and i64 %1, 1
  %i.k = icmp eq i64 %1, 1
  br i1 %i.k, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %1, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.016.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.aq, %.lr.ph.i.i ] ; 4 uses
  %.01215.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.au, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.01215.i.i ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !39, !noalias !84
  %i.n = lshr i8 %i.m, 4
  %i.o = zext nneg i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @.str, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !39, !noalias !84
  %i.r = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.016.i.i
  store i8 %i.q, ptr %i.s, align 1, !tbaa !39
  %i.t = load i8, ptr %i.l, align 1, !tbaa !39, !noalias !84
  %i.u = and i8 %i.t, 15
  %i.v = zext nneg i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @.str, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !39, !noalias !84
  %i.y = or disjoint i64 %.016.i.i, 2             ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !84
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %i.x, ptr %i.ab, align 1, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %.01215.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !39, !noalias !84
  %i.af = lshr i8 %i.ae, 4
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !39, !noalias !84
  %i.aj = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !84
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.y
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !39
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !39, !noalias !84
  %i.am = and i8 %i.al, 15
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !39, !noalias !84
  %i.aq = add i64 %.016.i.i, 4                    ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !84
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.y
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %i.ap, ptr %i.at, align 1, !tbaa !39
  %i.au = add nuw i64 %.01215.i.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !0

_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.aq, %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01215.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.au, %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %.01215.i.i.epil.init ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !39, !noalias !84
  %i.ax = lshr i8 %i.aw, 4
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !39, !noalias !84
  %i.bb = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !84
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.016.i.i.epil.init
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !39
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !39, !noalias !84
  %i.be = and i8 %i.bd, 15
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !39, !noalias !84
  %i.bi = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !84
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.016.i.i.epil.init
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !39
  br label %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit

_ZN5arrow9HexEncodeB5cxx11EPKcm.exit:             ; preds = %.lr.ph.i.i.epil.preheader, %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6EscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 !guid !85 {
bb.a:
  tail call void @_ZN5arrow6EscapeB5cxx11EPKcm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %2, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow13ParseHexValueEPKcPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 !guid !88 {
bb.a:
  %i.a = load <2 x i8>, ptr %1, align 1, !tbaa !39 ; 3 uses
  %i.b = add <2 x i8> %i.a, splat (i8 -48)        ; 2 uses
  %i.c = icmp ult <2 x i8> %i.b, splat (i8 10)
  %i.d = add <2 x i8> %i.a, splat (i8 -65)
  %i.e = icmp ult <2 x i8> %i.d, splat (i8 6)
  %i.f = add nsw <2 x i8> %i.a, splat (i8 -55)
  %i.g = select <2 x i1> %i.e, <2 x i8> %i.f, <2 x i8> splat (i8 -1)
  %i.h = select <2 x i1> %i.c, <2 x i8> %i.b, <2 x i8> %i.g ; 3 uses
  %i.i = icmp eq <2 x i8> %i.h, splat (i8 -1)
  %i.j = bitcast <2 x i1> %i.i to i2
  %.not = icmp eq i2 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(26) @.str.6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = extractelement <2 x i8> %i.h, i64 0
  %i.l = shl i8 %i.k, 4
  %i.m = extractelement <2 x i8> %i.h, i64 1
  %i.n = or i8 %i.l, %i.m
  store i8 %i.n, ptr %2, align 1, !tbaa !39
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !89
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14ParseHexValuesESt17basic_string_viewIcSt11char_traitsIcEEPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i64 %1, ptr nofree readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !95 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = and i64 %1, 1
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.b = lshr exact i64 %1, 1
  %.not18 = icmp eq i64 %1, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA27_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(27) @.str.7)
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader, %_ZN5arrow6StatusD2Ev.exit14
  %.017 = phi i64 [ %i.u, %_ZN5arrow6StatusD2Ev.exit14 ], [ 0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.c = shl nuw i64 %.017, 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %i.e = load <2 x i8>, ptr %i.d, align 1, !tbaa !39, !noalias !96 ; 3 uses
  %i.f = add <2 x i8> %i.e, splat (i8 -48)        ; 2 uses
  %i.g = icmp ult <2 x i8> %i.f, splat (i8 10)
  %i.h = add <2 x i8> %i.e, splat (i8 -65)
  %i.i = icmp ult <2 x i8> %i.h, splat (i8 6)
  %i.j = add nsw <2 x i8> %i.e, splat (i8 -55)
  %i.k = select <2 x i1> %i.i, <2 x i8> %i.j, <2 x i8> splat (i8 -1)
  %i.l = select <2 x i1> %i.g, <2 x i8> %i.f, <2 x i8> %i.k ; 3 uses
  %i.m = icmp eq <2 x i8> %i.l, splat (i8 -1)
  %i.n = bitcast <2 x i1> %i.m to i2
  %.not19 = icmp eq i2 %i.n, 0
  br i1 %.not19, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %.017
  %i.p = extractelement <2 x i8> %i.l, i64 0
  %i.q = shl i8 %i.p, 4
  %i.r = extractelement <2 x i8> %i.l, i64 1
  %i.s = or i8 %i.q, %i.r
  store i8 %i.s, ptr %i.o, align 1, !tbaa !39, !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN5arrow6StatusD2Ev.exit14

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.lr.ph
  call void @_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(26) @.str.6)
  %.pr = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.t = icmp eq ptr %.pr, null
  br i1 %i.t, label %_ZN5arrow6StatusD2Ev.exit14, label %.critedge.loopexit

_ZN5arrow6StatusD2Ev.exit14:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.u = add nuw nsw i64 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !97
  br label %.critedge

.critedge.loopexit:                               ; preds = %_ZN5arrow6StatusD2Ev.exit
  store ptr %.pr, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11SplitStringESt17basic_string_viewIcSt11char_traitsIcEEcl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, i64 %1, ptr %2, i8 noundef signext %3, i64 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !103 {
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
  %i.q = tail call ptr @memchr(ptr noundef %i.p, i32 noundef %i.e, i64 noundef %i.o) #24 ; 2 uses
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
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i64 noundef %.0, i64 noundef %1) #21
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
  store i64 %.sroa.speculated.i, ptr %i.h, align 8, !tbaa !46
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.b, align 8, !tbaa !50
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #21
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
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #22
          to label %.noexc14 unwind label %.loopexit ; 5 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.aj, align 8, !tbaa !46
  %.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx16, align 8, !tbaa !47
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc14, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.noexc14 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc14 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !104, !alias.scope !105
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !101

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc14
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ai, %.noexc14 ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.am, ptr %i.b, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ag
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.h
  %i.ao = phi ptr [ %i.an, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.g, %bb.h ] ; 2 uses
  %i.ap = phi ptr [ %i.am, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.x, %bb.h ]
  %i.aq = phi ptr [ %i.ai, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.i, %bb.h ] ; 2 uses
  %i.ar = icmp eq i64 %.011, -1
  %i.as = add nuw i64 %.011, 1
  br i1 %i.ar, label %bb.n, label %bb.b, !llvm.loop !102

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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.av) #23
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %lpad.phi

bb.n:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  store ptr %i.aq, ptr %0, align 8
  store ptr %i.ao, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11JoinStringsB5cxx11ERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EES5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !109 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !noalias !110
  %i.c = load ptr, ptr %1, align 8, !tbaa !111, !noalias !110 ; 3 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %._crit_edge.i.i.i, label %bb.b

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !35, !alias.scope !110
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !40, !alias.scope !110
  store i8 0, ptr %i.e, align 8, !tbaa !39, !alias.scope !110
  br label %_ZN5arrow8internalL15JoinStringLikesISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS4_SaIcEEERKSt6vectorIT_SaISB_EES5_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !tbaa !46, !noalias !110 ; 9 uses
end_hunk_0
