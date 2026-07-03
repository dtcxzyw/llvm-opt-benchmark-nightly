inline.NumInlined: 143
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK6google8protobuf9FieldMask18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE:bb.a

_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit: ; preds = %.critedge.i, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit
  %.0.i = phi ptr [ %i.ad, %.critedge.i ], [ %i.ai, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !39

.loopexit:                                        ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit, %bb.b, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %1, %bb.b ], [ %.0.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !7  ; 2 uses
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.e, !prof !18

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %.loopexit
  %i.am = add nsw i64 %i.ak, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef %.1, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %.loopexit
  %.2 = phi ptr [ %i.ap, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.1, %.loopexit ]
  ret ptr %.2
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef, i32 noundef, i32 noundef, i64, ptr) local_unnamed_addr #6

declare noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf9FieldMask12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3
  %i.n = and i32 %i.m, 1
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !15   ; 5 uses
  %i.q = zext i32 %i.p to i64                     ; 6 uses
  %i.r = icmp sgt i32 %i.p, 0
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  %.fr20 = freeze ptr %i.t                        ; 2 uses
  %i.u = ptrtoint ptr %.fr20 to i64               ; 2 uses
  %i.v = and i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, 0
  %i.x = add i64 %i.u, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  br i1 %i.w, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %i.q, 1
  %i.aa = icmp eq i32 %i.p, 1
  br i1 %i.aa, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %i.q, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.fr20, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = or i32 %i.ad, 1
  %i.af = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ae, i1 true)
  %i.ag = xor i32 %i.af, 31
  %i.ah = mul nuw nsw i32 %i.ag, 9
  %i.ai = add nuw nsw i32 %i.ah, 73
  %i.aj = lshr i32 %i.ai, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %invariant.op = add i64 %i.ac, %i.ak
  %i.al = zext nneg i32 %i.p to i64
  %i.am = mul i64 %invariant.op, %i.al
  %i.an = add i64 %i.am, %i.q
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 3 uses
  %.018 = phi i64 [ %i.q, %.lr.ph.split.preheader.new ], [ %i.bq, %.lr.ph.split ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !35 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = or i32 %i.as, 1
  %i.au = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.at, i1 true)
  %i.av = xor i32 %i.au, 31
  %i.aw = mul nuw nsw i32 %i.av, 9
  %i.ax = add nuw nsw i32 %i.aw, 73
  %i.ay = lshr i32 %i.ax, 6
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = add i64 %i.ar, %.018
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !35 ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = or i32 %i.bh, 1
  %i.bj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bi, i1 true)
  %i.bk = xor i32 %i.bj, 31
  %i.bl = mul nuw nsw i32 %i.bk, 9
  %i.bm = add nuw nsw i32 %i.bl, 73
  %i.bn = lshr i32 %i.bm, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = add i64 %i.bg, %i.bb
  %i.bq = add i64 %i.bp, %i.bo                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !41

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.018.epil.init = phi i64 [ %i.q, %.lr.ph.split.preheader ], [ %i.bq, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i32 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !35 ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = or i32 %i.bv, 1
  %i.bx = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.by = xor i32 %i.bx, 31
  %i.bz = mul nuw nsw i32 %i.by, 9
  %i.ca = add nuw nsw i32 %i.bz, 73
  %i.cb = lshr i32 %i.ca, 6
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = add i64 %i.bu, %.018.epil.init
  %i.ce = add i64 %i.cd, %i.cc
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.lr.ph.split.us, %bb.a, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.1 = phi i64 [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ], [ %i.q, %bb.a ], [ %i.an, %.lr.ph.split.us ], [ %i.bq, %.loopexit.loopexit.unr-lcssa ], [ %i.ce, %.lr.ph.split.epil.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cg = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.1, ptr noundef nonnull %i.cf)
  ret i64 %i.cg
}

declare noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9FieldMask8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN6google8protobuf9FieldMask9MergeFromERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf9FieldMask5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7    ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %i.c, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %i.c to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !3    ; 2 uses
  %i.k = and i32 %i.j, 1
  %.not.i.i = icmp eq i32 %i.k, 0
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %3 = load i32, ptr %2, align 8
  %i.l = icmp eq i32 %3, 0
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef %.0.i.i.i.i)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit.i.i

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit.i.i: ; preds = %bb.e, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !3
  %i.q = or i32 %i.p, %i.j
  store i32 %i.q, ptr %i.o, align 8, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !7    ; 2 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf9FieldMask9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit.i.i
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  br label %_ZN6google8protobuf9FieldMask9MergeFromERKS1_.exit

_ZN6google8protobuf9FieldMask9MergeFromERKS1_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf9FieldMask12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !42
  %i.d = load i64, ptr %i.b, align 8, !tbaa !42
  store i64 %i.d, ptr %i.a, align 8, !tbaa !42
  store i64 %i.c, ptr %i.b, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.k = load <8 x i8>, ptr %i.j, align 8, !tbaa !14, !alias.scope !54, !noalias !49
  %i.l = load <8 x i8>, ptr %i.i, align 8, !tbaa !14, !alias.scope !49, !noalias !54
  store <8 x i8> %i.k, ptr %i.i, align 8, !tbaa !14, !alias.scope !49, !noalias !54
  store <8 x i8> %i.l, ptr %i.j, align 8, !tbaa !14, !alias.scope !54, !noalias !49
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 8, !tbaa !14, !alias.scope !54, !noalias !49
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !14, !alias.scope !49, !noalias !54
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !14, !alias.scope !49, !noalias !54
  store <4 x i8> %i.o, ptr %i.m, align 8, !tbaa !14, !alias.scope !54, !noalias !49
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf9FieldMask11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf9FieldMask12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #6

declare void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #6

declare void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = and i64 %i.b, 1                          ; 2 uses
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.a, null
  %i.e = zext i1 %.not.i to i32
  %.pre13 = add i64 %i.b, -1
  %.pre14 = inttoptr i64 %.pre13 to ptr
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.b, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit: ; preds = %bb.b, %bb.c
  %.pre-phi15 = phi ptr [ %.pre14, %bb.b ], [ %i.g, %bb.c ]
  %i.j = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pre-phi15, i64 8
  %i.l = select i1 %i.d, ptr %0, ptr %i.k         ; 2 uses
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %i.n = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !22
  %.pre16 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre18 = and i64 %.pre16, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %.pre-phi19 = phi i64 [ %.pre18, %._crit_edge.loopexit ], [ %i.c, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ]
  %.pre-phi17 = phi i64 [ %.pre16, %._crit_edge.loopexit ], [ %i.b, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ]
  %i.o = icmp eq i64 %.pre-phi19, 0
  br i1 %i.o, label %bb.g, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit ] ; 3 uses
  %i.p = add nuw nsw i64 %indvars.iv, 5           ; 2 uses
  %i.q = icmp samesign ult i64 %i.p, %i.n
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 0, i32 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !14
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 32) #19
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !57

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit: ; preds = %._crit_edge
  %i.ab = add nsw i64 %.pre-phi17, -1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !58
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = add nsw i64 %i.af, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #18
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0
  %i.g = add i64 %i.d, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = select i1 %i.f, ptr %0, ptr %i.i         ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.k = icmp slt i32 %i.b, 4
  br i1 %i.k, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
end_hunk_0
