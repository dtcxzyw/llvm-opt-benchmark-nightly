inline.NumInlined: 1058
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6google8protobuf8internal29VerifyBoolsAssumingLargeArrayEPKcS3_:bb.a
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = add i64 %i.c, -8
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = add i64 %i.e, 8
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.f)
  %i.h = xor i64 %i.e, -1
  %i.i = add i64 %i.g, %i.h                       ; 2 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, 4611686018427387900      ; 3 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi16 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.n = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.n  ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load17 = load <2 x i64>, ptr %i.o, align 1
  %i.p = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.q = or <2 x i64> %wide.load17, %vec.phi16    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.q, %i.p
  %i.s = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.01113.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi ptr [ %i.u, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ] ; 2 uses
  %.01113 = phi i64 [ %i.t, %.lr.ph ], [ %.01113.ph, %.lr.ph.preheader18 ]
  %.0.copyload1 = load i64, ptr %.014, align 1
  %i.t = or i64 %.0.copyload1, %.01113            ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.a
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.011.lcssa = phi i64 [ 0, %bb.a ], [ %i.s, %middle.block ], [ %i.t, %.lr.ph ]
  %.0.copyload = load i64, ptr %i.a, align 1
  %i.w = or i64 %.0.copyload, %.011.lcssa
  %i.x = and i64 %i.w, -72340172838076674
  %i.y = icmp eq i64 %i.x, 0
  ret i1 %i.y
}

declare i32 @utf8_range_IsValid(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN6google8protobuf8internal18EpsCopyInputStream18VerifyUTF8FallbackEPKcmENK3$_0clES4_i"(ptr %.0.val, ptr noundef %0, i32 noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = load i32, ptr %.0.val, align 4, !tbaa !40 ; 7 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.critedge33.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i64 4, %i.c                      ; 4 uses
  %i.e = icmp ugt i64 %i.d, %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 8 uses
  br i1 %i.e, label %.critedge.i, label %bb.c

.critedge.i:                                      ; preds = %bb.b
  %i.h = icmp ult i32 %1, 4
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i
  %i.i = load i8, ptr %0, align 1, !tbaa !37
  store i8 %i.i, ptr %i.g, align 1, !tbaa !37
  %exitcond.not.i.i.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !37
  %exitcond.not.i.i.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.i.i.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %i.n, ptr %i.o, align 1, !tbaa !37
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.critedge.i
  %i.p = add i32 %i.b, %1                         ; 2 uses
  store i32 %i.p, ptr %.0.val, align 4, !tbaa !40
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noundef i64 @utf8_range_ValidPrefix(ptr noundef nonnull %i.f, i64 noundef %i.q) ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = load i32, ptr %.0.val, align 4, !tbaa !40 ; 2 uses
  %i.u = sub i32 %i.t, %i.s                       ; 4 uses
  store i32 %i.u, ptr %.0.val, align 4, !tbaa !40
  %i.v = and i64 %i.r, 4294967295
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v ; 3 uses
  %i.x = icmp ult i32 %i.u, 4
  tail call void @llvm.assume(i1 %i.x)
  %.not.i.i34.i = icmp eq i32 %i.t, %i.s
  br i1 %.not.i.i34.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit, label %.lr.ph.i.i35.i

.lr.ph.i.i35.i:                                   ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.y = load i8, ptr %i.w, align 1, !tbaa !37
  store i8 %i.y, ptr %i.f, align 4, !tbaa !37
  %exitcond.not.i.i37.i = icmp eq i32 %i.u, 1
  br i1 %exitcond.not.i.i37.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit, label %.lr.ph.i.i35.i.1

.lr.ph.i.i35.i.1:                                 ; preds = %.lr.ph.i.i35.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !37
  %exitcond.not.i.i37.i.1 = icmp eq i32 %i.u, 2
  br i1 %exitcond.not.i.i37.i.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit, label %.lr.ph.i.i35.i.2

.lr.ph.i.i35.i.2:                                 ; preds = %.lr.ph.i.i35.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 6
  store i8 %i.ad, ptr %i.ae, align 2, !tbaa !37
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit

bb.c:                                             ; preds = %bb.b
  %i.af = icmp ult i32 %i.b, 5
  tail call void @llvm.assume(i1 %i.af)
  %.not.i.i40.i = icmp eq i32 %i.b, 4
  br i1 %.not.i.i40.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i, label %.lr.ph.i.i41.i.preheader

.lr.ph.i.i41.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.ag = icmp samesign ult i32 %i.b, 4
  br i1 %i.ag, label %.lr.ph.i.i41.i.epil.preheader, label %.lr.ph.i.i41.i.preheader.new

.lr.ph.i.i41.i.preheader.new:                     ; preds = %.lr.ph.i.i41.i.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.lr.ph.i.i41.i

.lr.ph.i.i41.i:                                   ; preds = %.lr.ph.i.i41.i, %.lr.ph.i.i41.i.preheader.new
  %.07.i.i42.i = phi i64 [ 0, %.lr.ph.i.i41.i.preheader.new ], [ %i.aw, %.lr.ph.i.i41.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i41.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i41.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.07.i.i42.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 %.07.i.i42.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !37
  %i.ak = or disjoint i64 %.07.i.i42.i, 1         ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ak
  store i8 %i.am, ptr %i.an, align 1, !tbaa !37
  %i.ao = or disjoint i64 %.07.i.i42.i, 2         ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ao
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !37
  %i.as = or disjoint i64 %.07.i.i42.i, 3         ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.as
  store i8 %i.au, ptr %i.av, align 1, !tbaa !37
  %i.aw = add nuw nsw i64 %.07.i.i42.i, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i.loopexit.unr-lcssa, label %.lr.ph.i.i41.i, !llvm.loop !82

_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i41.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i, label %.lr.ph.i.i41.i.epil.preheader

.lr.ph.i.i41.i.epil.preheader:                    ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i.loopexit.unr-lcssa, %.lr.ph.i.i41.i.preheader
  %.07.i.i42.i.epil.init = phi i64 [ 0, %.lr.ph.i.i41.i.preheader ], [ %i.aw, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph.i.i41.i.epil

.lr.ph.i.i41.i.epil:                              ; preds = %.lr.ph.i.i41.i.epil, %.lr.ph.i.i41.i.epil.preheader
  %.07.i.i42.i.epil = phi i64 [ %i.ba, %.lr.ph.i.i41.i.epil ], [ %.07.i.i42.i.epil.init, %.lr.ph.i.i41.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i41.i.epil ], [ 0, %.lr.ph.i.i41.i.epil.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.07.i.i42.i.epil
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 %.07.i.i42.i.epil
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !37
  %i.ba = add nuw nsw i64 %.07.i.i42.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i, label %.lr.ph.i.i41.i.epil, !llvm.loop !83

_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i.loopexit.unr-lcssa, %.lr.ph.i.i41.i.epil, %bb.c
  %i.bb = trunc nuw nsw i64 %i.d to i32
  %i.bc = add nuw nsw i32 %i.b, %i.bb             ; 2 uses
  store i32 %i.bc, ptr %.0.val, align 4, !tbaa !40
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = tail call noundef i64 @utf8_range_ValidPrefix(ptr noundef nonnull %i.f, i64 noundef %i.bd) ; 2 uses
  %.not64.i = icmp eq i64 %i.be, 0
  br i1 %.not64.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i
  %i.bf = sub i64 %i.be, %i.c                     ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  %i.bh = sub i64 %i.a, %i.bf
  br label %.critedge33.i

.critedge33.i:                                    ; preds = %bb.d, %bb.a
  %.sroa.11.0.i = phi ptr [ %0, %bb.a ], [ %i.bg, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.a, %bb.a ], [ %i.bh, %bb.d ] ; 4 uses
  %i.bi = tail call noundef i64 @utf8_range_ValidPrefix(ptr noundef %.sroa.11.0.i, i64 noundef %.sroa.0.0.i) ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 %i.bi ; 5 uses
  %i.bk = sub i64 %.sroa.0.0.i, %i.bi             ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 4
  br i1 %i.bl, label %bb.e, label %_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit

bb.e:                                             ; preds = %.critedge33.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.val, i64 4 ; 5 uses
  %.not.i.i47.i = icmp eq i64 %.sroa.0.0.i, %i.bi
  br i1 %.not.i.i47.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i48.i.preheader

.lr.ph.i.i48.i.preheader:                         ; preds = %bb.e
  %i.bn = sub i64 %i.bi, %.sroa.0.0.i
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %.lr.ph.i.i48.i.epil.preheader, label %.lr.ph.i.i48.i

.lr.ph.i.i48.i:                                   ; preds = %.lr.ph.i.i48.i.preheader, %.lr.ph.i.i48.i
  %.07.i.i49.i = phi i64 [ %2, %.lr.ph.i.i48.i ], [ 0, %.lr.ph.i.i48.i.preheader ] ; 6 uses
  %niter45 = phi i64 [ %niter45.next.3, %.lr.ph.i.i48.i ], [ 0, %.lr.ph.i.i48.i.preheader ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.07.i.i49.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.07.i.i49.i
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !37
  %i.bs = or disjoint i64 %.07.i.i49.i, 1         ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !37
  %i.bw = or disjoint i64 %.07.i.i49.i, 2         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !37
  %i.ca = or disjoint i64 %.07.i.i49.i, 3         ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !37
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !37
  %2 = add nuw nsw i64 %.07.i.i49.i, 4            ; 2 uses
  %niter45.next.3 = add i64 %niter45, 4           ; 2 uses
  %niter45.ncmp.3 = icmp eq i64 %niter45.next.3, 0
  br i1 %niter45.ncmp.3, label %.lr.ph.i.i48.i.epil.preheader, label %.lr.ph.i.i48.i, !llvm.loop !85

.lr.ph.i.i48.i.epil.preheader:                    ; preds = %.lr.ph.i.i48.i, %.lr.ph.i.i48.i.preheader
  %.07.i.i49.i.epil.init = phi i64 [ 0, %.lr.ph.i.i48.i.preheader ], [ %2, %.lr.ph.i.i48.i ]
  br label %.lr.ph.i.i48.i.epil

.lr.ph.i.i48.i.epil:                              ; preds = %.lr.ph.i.i48.i.epil, %.lr.ph.i.i48.i.epil.preheader
  %.07.i.i49.i.epil = phi i64 [ %i.ch, %.lr.ph.i.i48.i.epil ], [ %.07.i.i49.i.epil.init, %.lr.ph.i.i48.i.epil.preheader ] ; 3 uses
  %epil.iter41 = phi i64 [ %epil.iter41.next, %.lr.ph.i.i48.i.epil ], [ 0, %.lr.ph.i.i48.i.epil.preheader ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.07.i.i49.i.epil
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !37
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.07.i.i49.i.epil
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !37
  %i.ch = add nuw nsw i64 %.07.i.i49.i.epil, 1
  %epil.iter41.next = add i64 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i64 %epil.iter41.next, %i.bk
  br i1 %epil.iter41.cmp.not, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i48.i.epil, !llvm.loop !86

_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %.lr.ph.i.i48.i.epil, %bb.e
  %i.ci = trunc nuw nsw i64 %i.bk to i32
  store i32 %i.ci, ptr %.0.val, align 4, !tbaa !40
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit: ; preds = %.lr.ph.i.i35.i, %.lr.ph.i.i35.i.1, %.lr.ph.i.i35.i.2, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i, %.critedge33.i, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %.5.i = phi i1 [ true, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ], [ false, %.critedge33.i ], [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i ], [ true, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ], [ true, %.lr.ph.i.i35.i.2 ], [ true, %.lr.ph.i.i35.i.1 ], [ true, %.lr.ph.i.i35.i ]
  ret i1 %.5.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

declare i64 @utf8_range_ValidPrefix(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN4absl12lts_202505124Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !37      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !26

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !37    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !26

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !26

bb.d:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.b
  %.lcssa35.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %.critedge.1.i.i ], [ %i.aa, %.critedge.2.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa35.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = zext nneg i8 %i.ad to i32
  %i.ai = shl nuw nsw i32 %i.ah, 28
  %i.aj = add nsw i32 %i.aa, -268435456
  %i.ak = add nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 2147483631
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !26

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.035118 = trunc i64 %i.ar to i32               ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.035118
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.dk, %bb.u ] ; 3 uses
  %.035121 = phi i32 [ %.035118, %.lr.ph ], [ %.035, %bb.u ] ; 2 uses
  %.031120 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.df, %bb.u ] ; 2 uses
  %.078119 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.du, %bb.u ] ; 3 uses
  %i.ax = icmp ult ptr %.078119, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86

.lr.ph.i:                                         ; preds = %bb.g, %.thread.i.i.i.i
  %.079.i = phi ptr [ %i.ay, %.thread.i.i.i.i ], [ %.078119, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !65
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = load i32, ptr %2, align 4, !tbaa !87
  %i.bd = and i32 %i.bc, 1
  %i.be = icmp eq i32 %i.bd, 0                    ; 3 uses
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !89 ; 4 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !37 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !37
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.v.i.i.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %2, %bb.h ]
  %i.bi = phi i32 [ %i.bh, %bb.i ], [ 2, %bb.h ]
  %i.bj = icmp eq i32 %i.bf, %i.bi
  %i.bk = add nsw i32 %i.bf, 1                    ; 3 uses
  br i1 %i.bj, label %bb.j, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i, !prof !26

bb.j:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.be, i32 noundef %i.bf, i32 noundef %i.bk)
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !37
  %.pre38.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !89
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i: ; preds = %bb.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  %i.bm = phi i32 [ %.pre38.i.i.i.i, %bb.j ], [ %i.bf, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ]
  %.pn.i.i.i.i = phi ptr [ %i.bl, %bb.j ], [ %.0.v.i.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i1 [ false, %bb.j ], [ %i.be, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ]
  %.029.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 8
  store i32 %i.bk, ptr %i.at, align 4, !tbaa !89
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.029.i.i.i.i, i64 %i.bn
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !3
  %i.bp = load i32, ptr %i.at, align 4, !tbaa !89
  %i.bq = icmp eq i32 %i.bk, %i.bp
  call void @llvm.assume(i1 %i.bq)
  br i1 %.0.i.i.i.i, label %.thread.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i
  %i.br = load ptr, ptr %i.au, align 8
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i, %bb.k
  %.sink203 = phi ptr [ %i.br, %bb.k ], [ %2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i ]
  %i.bs = icmp eq ptr %.pn.i.i.i.i, %.sink203
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bt = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bt, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit: ; preds = %.thread.i.i.i.i
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !14
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit, %bb.g
  %i.bu = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit ] ; 2 uses
  %.2.i88 = phi ptr [ %.078119, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit ]
  %i.bv = ptrtoint ptr %.2.i88 to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = sub nsw i32 %.031120, %.035121          ; 2 uses
  %i.bz = icmp slt i32 %i.by, 17
  br i1 %i.bz, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.d, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bu, i64 16, i1 false)
  %i.ca = sext i32 %i.by to i64                   ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %i.d, i64 %i.ca ; 2 uses
end_hunk_0
