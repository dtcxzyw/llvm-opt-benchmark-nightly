inline.NumInlined: 1110
inline.NumDeleted: 387
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_:bb.a
  %i.am = icmp slt i8 %i.ah, 0
  br i1 %i.am, label %.critedge.5.i.i, label %bb.d, !prof !14

.critedge.5.i.i:                                  ; preds = %.critedge.4.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !46  ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 42
  %i.ar = add nsw i64 %i.al, -4398046511104
  %i.as = add nsw i64 %i.ar, %i.aq                ; 2 uses
  %i.at = icmp slt i8 %i.ao, 0
  br i1 %i.at, label %.critedge.6.i.i, label %bb.d, !prof !14

.critedge.6.i.i:                                  ; preds = %.critedge.5.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.av = load i8, ptr %i.au, align 1, !tbaa !46  ; 2 uses
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 49
  %i.ay = add nsw i64 %i.as, -562949953421312
  %i.az = add nsw i64 %i.ay, %i.ax                ; 2 uses
  %i.ba = icmp slt i8 %i.av, 0
  br i1 %i.ba, label %.critedge.7.i.i, label %bb.d, !prof !14

.critedge.7.i.i:                                  ; preds = %.critedge.6.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !46  ; 2 uses
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw i64 %i.bd, 56
  %i.bf = add nsw i64 %i.az, -72057594037927936
  %i.bg = add i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = icmp slt i8 %i.bc, 0
  br i1 %i.bh, label %.critedge.8.i.i, label %bb.d, !prof !14

.critedge.8.i.i:                                  ; preds = %.critedge.7.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !46  ; 2 uses
  %i.bk = xor i8 %i.bj, -1
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl i64 %i.bl, 63
  %i.bn = add i64 %i.bm, %i.bg
  %i.bo = icmp slt i8 %i.bj, 0
  br i1 %i.bo, label %_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit, label %bb.d, !prof !14

bb.d:                                             ; preds = %.critedge.8.i.i, %.critedge.7.i.i, %.critedge.6.i.i, %.critedge.5.i.i, %.critedge.4.i.i, %.critedge.3.i.i, %.critedge.2.i.i, %.critedge.1.i.i, %bb.c
  %.lcssa22.i.i = phi i64 [ 1, %bb.c ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ], [ 4, %.critedge.3.i.i ], [ 5, %.critedge.4.i.i ], [ 6, %.critedge.5.i.i ], [ 7, %.critedge.6.i.i ], [ 8, %.critedge.7.i.i ], [ 9, %.critedge.8.i.i ]
  %.lcssa.i.i = phi i64 [ %i.j, %bb.c ], [ %i.q, %.critedge.1.i.i ], [ %i.x, %.critedge.2.i.i ], [ %i.ae, %.critedge.3.i.i ], [ %i.al, %.critedge.4.i.i ], [ %i.as, %.critedge.5.i.i ], [ %i.az, %.critedge.6.i.i ], [ %i.bg, %.critedge.7.i.i ], [ %i.bn, %.critedge.8.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa22.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  br label %_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit

_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit: ; preds = %.critedge.8.i.i, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %i.bq, %bb.d ], [ null, %.critedge.8.i.i ]
  %.sroa.3.0.i.i = phi i64 [ %.lcssa.i.i, %bb.d ], [ 0, %.critedge.8.i.i ]
  store i64 %.sroa.3.0.i.i, ptr %1, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %.sroa.0.0.i.i, %_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit ]
  ret ptr %.0
}

declare zeroext i1 @utf8_range_IsValid(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKcS4_EES4_T_T0_S4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE(i64 %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !35     ; 7 uses
  %i.b = zext i32 %i.a to i64                     ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.critedge33, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i64 4, %i.b                      ; 4 uses
  %i.d = icmp ult i64 %0, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b ; 8 uses
  br i1 %i.d, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b
  %i.g = icmp ult i64 %0, 4
  tail call void @llvm.assume(i1 %i.g)
  %.not.i.i = icmp eq i64 %0, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge
  %i.h = load i8, ptr %1, align 1, !tbaa !46
  store i8 %i.h, ptr %i.f, align 1, !tbaa !46
  %exitcond.not.i.i = icmp eq i64 %0, 1
  br i1 %exitcond.not.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !46
  %exitcond.not.i.i.1 = icmp eq i64 %0, 2
  br i1 %exitcond.not.i.i.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !46
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.critedge
  %i.o = trunc nuw nsw i64 %0 to i32
  %i.p = add i32 %i.a, %i.o                       ; 2 uses
  store i32 %i.p, ptr %2, align 4, !tbaa !35
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noundef i64 @utf8_range_ValidPrefix(ptr noundef nonnull %i.e, i64 noundef %i.q) ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.u = sub i32 %i.t, %i.s                       ; 4 uses
  store i32 %i.u, ptr %2, align 4, !tbaa !35
  %i.v = and i64 %i.r, 4294967295
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.v ; 3 uses
  %i.x = icmp ult i32 %i.u, 4
  tail call void @llvm.assume(i1 %i.x)
  %.not.i.i34 = icmp eq i32 %i.t, %i.s
  br i1 %.not.i.i34, label %.critedge33.thread, label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.y = load i8, ptr %i.w, align 1, !tbaa !46
  store i8 %i.y, ptr %i.e, align 4, !tbaa !46
  %exitcond.not.i.i37 = icmp eq i32 %i.u, 1
  br i1 %exitcond.not.i.i37, label %.critedge33.thread, label %.lr.ph.i.i35.1

.lr.ph.i.i35.1:                                   ; preds = %.lr.ph.i.i35
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !46
  %exitcond.not.i.i37.1 = icmp eq i32 %i.u, 2
  br i1 %exitcond.not.i.i37.1, label %.critedge33.thread, label %.lr.ph.i.i35.2

.lr.ph.i.i35.2:                                   ; preds = %.lr.ph.i.i35.1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %i.ad, ptr %i.ae, align 2, !tbaa !46
  br label %.critedge33.thread

bb.c:                                             ; preds = %bb.b
  %i.af = icmp ult i32 %i.a, 5
  tail call void @llvm.assume(i1 %i.af)
  %.not.i.i40 = icmp eq i32 %i.a, 4
  br i1 %.not.i.i40, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44, label %.lr.ph.i.i41.preheader

.lr.ph.i.i41.preheader:                           ; preds = %bb.c
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.ag = icmp samesign ult i32 %i.a, 4
  br i1 %i.ag, label %.lr.ph.i.i41.epil.preheader, label %.lr.ph.i.i41.preheader.new

.lr.ph.i.i41.preheader.new:                       ; preds = %.lr.ph.i.i41.preheader
  %unroll_iter = and i64 %i.c, -4
  br label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %.lr.ph.i.i41, %.lr.ph.i.i41.preheader.new
  %.07.i.i42 = phi i64 [ 0, %.lr.ph.i.i41.preheader.new ], [ %i.aw, %.lr.ph.i.i41 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i41.preheader.new ], [ %niter.next.3, %.lr.ph.i.i41 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.07.i.i42
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !46
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %.07.i.i42
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !46
  %i.ak = or disjoint i64 %.07.i.i42, 1           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ak
  store i8 %i.am, ptr %i.an, align 1, !tbaa !46
  %i.ao = or disjoint i64 %.07.i.i42, 2           ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ao
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !46
  %i.as = or disjoint i64 %.07.i.i42, 3           ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.as
  store i8 %i.au, ptr %i.av, align 1, !tbaa !46
  %i.aw = add nuw nsw i64 %.07.i.i42, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.loopexit.unr-lcssa, label %.lr.ph.i.i41, !llvm.loop !104

_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i41
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44, label %.lr.ph.i.i41.epil.preheader

.lr.ph.i.i41.epil.preheader:                      ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.loopexit.unr-lcssa, %.lr.ph.i.i41.preheader
  %.07.i.i42.epil.init = phi i64 [ 0, %.lr.ph.i.i41.preheader ], [ %i.aw, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.loopexit.unr-lcssa ]
  %lcmp.mod102 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i.i41.epil

.lr.ph.i.i41.epil:                                ; preds = %.lr.ph.i.i41.epil, %.lr.ph.i.i41.epil.preheader
  %.07.i.i42.epil = phi i64 [ %i.ba, %.lr.ph.i.i41.epil ], [ %.07.i.i42.epil.init, %.lr.ph.i.i41.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i41.epil ], [ 0, %.lr.ph.i.i41.epil.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %.07.i.i42.epil
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %.07.i.i42.epil
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !46
  %i.ba = add nuw nsw i64 %.07.i.i42.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44, label %.lr.ph.i.i41.epil, !llvm.loop !105

_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.loopexit.unr-lcssa, %.lr.ph.i.i41.epil, %bb.c
  %i.bb = trunc nuw nsw i64 %i.c to i32
  %i.bc = add nuw nsw i32 %i.a, %i.bb             ; 2 uses
  store i32 %i.bc, ptr %2, align 4, !tbaa !35
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = tail call noundef i64 @utf8_range_ValidPrefix(ptr noundef nonnull %i.e, i64 noundef %i.bd) ; 2 uses
  %.not64 = icmp eq i64 %i.be, 0
  br i1 %.not64, label %.critedge33.thread, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44
  %i.bf = sub i64 %i.be, %i.b                     ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.bh = sub i64 %0, %i.bf
  br label %.critedge33

.critedge33:                                      ; preds = %bb.d, %bb.a
  %.sroa.11.0 = phi ptr [ %1, %bb.a ], [ %i.bg, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %0, %bb.a ], [ %i.bh, %bb.d ] ; 4 uses
  %i.bi = tail call noundef i64 @utf8_range_ValidPrefix(ptr noundef %.sroa.11.0, i64 noundef %.sroa.0.0) ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 %i.bi ; 5 uses
  %i.bk = sub i64 %.sroa.0.0, %i.bi               ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 4
  br i1 %i.bl, label %bb.e, label %.critedge33.thread

bb.e:                                             ; preds = %.critedge33
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %.not.i.i47 = icmp eq i64 %.sroa.0.0, %i.bi
  br i1 %.not.i.i47, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i48.preheader

.lr.ph.i.i48.preheader:                           ; preds = %bb.e
  %i.bn = sub i64 %i.bi, %.sroa.0.0
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %.lr.ph.i.i48.epil.preheader, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %.lr.ph.i.i48.preheader, %.lr.ph.i.i48
  %.07.i.i49 = phi i64 [ %3, %.lr.ph.i.i48 ], [ 0, %.lr.ph.i.i48.preheader ] ; 6 uses
  %niter108 = phi i64 [ %niter108.next.3, %.lr.ph.i.i48 ], [ 0, %.lr.ph.i.i48.preheader ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.07.i.i49
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !46
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.07.i.i49
  store i8 %i.bq, ptr %i.br, align 4, !tbaa !46
  %i.bs = or disjoint i64 %.07.i.i49, 1           ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !46
  %i.bw = or disjoint i64 %.07.i.i49, 2           ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 2, !tbaa !46
  %i.ca = or disjoint i64 %.07.i.i49, 3           ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !46
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !46
  %3 = add nuw nsw i64 %.07.i.i49, 4              ; 2 uses
  %niter108.next.3 = add i64 %niter108, 4         ; 2 uses
  %niter108.ncmp.3 = icmp eq i64 %niter108.next.3, 0
  br i1 %niter108.ncmp.3, label %.lr.ph.i.i48.epil.preheader, label %.lr.ph.i.i48, !llvm.loop !107

.lr.ph.i.i48.epil.preheader:                      ; preds = %.lr.ph.i.i48, %.lr.ph.i.i48.preheader
  %.07.i.i49.epil.init = phi i64 [ 0, %.lr.ph.i.i48.preheader ], [ %3, %.lr.ph.i.i48 ]
  br label %.lr.ph.i.i48.epil

.lr.ph.i.i48.epil:                                ; preds = %.lr.ph.i.i48.epil, %.lr.ph.i.i48.epil.preheader
  %.07.i.i49.epil = phi i64 [ %i.ch, %.lr.ph.i.i48.epil ], [ %.07.i.i49.epil.init, %.lr.ph.i.i48.epil.preheader ] ; 3 uses
  %epil.iter104 = phi i64 [ %epil.iter104.next, %.lr.ph.i.i48.epil ], [ 0, %.lr.ph.i.i48.epil.preheader ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.07.i.i49.epil
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !46
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.07.i.i49.epil
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !46
  %i.ch = add nuw nsw i64 %.07.i.i49.epil, 1
  %epil.iter104.next = add i64 %epil.iter104, 1   ; 2 uses
  %epil.iter104.cmp.not = icmp eq i64 %epil.iter104.next, %i.bk
  br i1 %epil.iter104.cmp.not, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i48.epil, !llvm.loop !108

_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i48.epil, %bb.e
  %i.ci = trunc nuw nsw i64 %i.bk to i32
  store i32 %i.ci, ptr %2, align 4, !tbaa !35
  br label %.critedge33.thread

.critedge33.thread:                               ; preds = %.lr.ph.i.i35, %.lr.ph.i.i35.1, %.lr.ph.i.i35.2, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit, %.critedge33
  %.5 = phi i1 [ true, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ false, %.critedge33 ], [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44 ], [ true, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ true, %.lr.ph.i.i35.2 ], [ true, %.lr.ph.i.i35.1 ], [ true, %.lr.ph.i.i35 ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

declare i64 @utf8_range_ValidPrefix(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN4absl12lts_202505124Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !46      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !46    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !14

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !46    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !14

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !46    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !46  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !14

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
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8  ; 2 uses
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
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !29
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = load i32, ptr %2, align 4, !tbaa !109
  %i.bd = and i32 %i.bc, 1
  %i.be = icmp eq i32 %i.bd, 0                    ; 3 uses
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !111 ; 4 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !46 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !46
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.v.i.i.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %2, %bb.h ]
  %i.bi = phi i32 [ %i.bh, %bb.i ], [ 2, %bb.h ]
  %i.bj = icmp eq i32 %i.bf, %i.bi
  %i.bk = add nsw i32 %i.bf, 1                    ; 3 uses
  br i1 %i.bj, label %bb.j, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i, !prof !14

bb.j:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.be, i32 noundef %i.bf, i32 noundef %i.bk)
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !46
  %.pre36.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !111
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i: ; preds = %bb.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  %i.bm = phi i32 [ %.pre36.i.i.i.i, %bb.j ], [ %i.bf, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ]
  %.pn.i.i.i.i = phi ptr [ %i.bl, %bb.j ], [ %.0.v.i.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i1 [ false, %bb.j ], [ %i.be, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ]
  %.027.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 8
  store i32 %i.bk, ptr %i.at, align 4, !tbaa !111
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.027.i.i.i.i, i64 %i.bn
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !70
  %i.bp = load i32, ptr %i.at, align 4, !tbaa !111
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
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !8
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
