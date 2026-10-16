Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/field_mask.pb?download=true
inline.NumInlined: 143
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK6google8protobuf9FieldMask12ByteSizeLongEv:_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !17   ; 5 uses
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
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
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
  %.01517 = phi i64 [ %i.q, %.lr.ph.split.preheader.new ], [ %i.bq, %.lr.ph.split ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !29 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = or i32 %i.as, 1
  %i.au = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.at, i1 true)
  %i.av = xor i32 %i.au, 31
  %i.aw = mul nuw nsw i32 %i.av, 9
  %i.ax = add nuw nsw i32 %i.aw, 73
  %i.ay = lshr i32 %i.ax, 6
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = add i64 %i.ar, %.01517
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !29 ; 2 uses
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
  %.01517.epil.init = phi i64 [ %i.q, %.lr.ph.split.preheader ], [ %i.bq, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i32 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !29 ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = or i32 %i.bv, 1
  %i.bx = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.by = xor i32 %i.bx, 31
  %i.bz = mul nuw nsw i32 %i.by, 9
  %i.ca = add nuw nsw i32 %i.bz, 73
  %i.cb = lshr i32 %i.ca, 6
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = add i64 %i.bu, %.01517.epil.init
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %i.c, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %i.c to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !6    ; 2 uses
  %i.k = and i32 %i.j, 1
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 0
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %i.n
  br i1 %or.cond.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef %.0.i.i.i.i)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit.i.i

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit.i.i: ; preds = %bb.e, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !6
  %i.s = or i32 %i.r, %i.j
  store i32 %i.s, ptr %i.q, align 8, !tbaa !6
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !9    ; 2 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf9FieldMask9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit.i.i
  %i.w = add nsw i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
  br label %_ZN6google8protobuf9FieldMask9MergeFromERKS1_.exit

_ZN6google8protobuf9FieldMask9MergeFromERKS1_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf9FieldMask12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !49
  %i.d = load i64, ptr %i.b, align 8, !tbaa !49
  store i64 %i.d, ptr %i.a, align 8, !tbaa !49
  store i64 %i.c, ptr %i.b, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !6
  %i.h = load i32, ptr %i.f, align 8, !tbaa !6
  store i32 %i.h, ptr %i.e, align 8, !tbaa !6
  store i32 %i.g, ptr %i.f, align 8, !tbaa !6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.k = load <8 x i8>, ptr %i.j, align 8, !tbaa !14, !alias.scope !54
  %i.l = load <8 x i8>, ptr %i.i, align 8, !tbaa !14, !alias.scope !52, !noalias !55
  store <8 x i8> %i.k, ptr %i.i, align 8, !tbaa !14, !alias.scope !52, !noalias !55
  store <8 x i8> %i.l, ptr %i.j, align 8, !tbaa !14, !alias.scope !54
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 8, !tbaa !14, !alias.scope !54
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !14, !alias.scope !52, !noalias !55
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !14, !alias.scope !52, !noalias !55
  store <4 x i8> %i.o, ptr %i.m, align 8, !tbaa !14, !alias.scope !54
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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !58
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 0, i32 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24   ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !28   ; 2 uses
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
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !56

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit: ; preds = %._crit_edge
  %i.ab = add nsw i64 %.pre-phi17, -1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !59
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = add nsw i64 %i.af, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #18
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
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
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !29
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !28
  store i8 0, ptr %i.o, align 1, !tbaa !14
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !29
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !28
  store i8 0, ptr %i.t, align 1, !tbaa !14
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !29
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !28
  store i8 0, ptr %i.y, align 1, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !29
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !28
  store i8 0, ptr %i.ad, align 1, !tbaa !14
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !60

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.c ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !29
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !28
  store i8 0, ptr %i.ah, align 1, !tbaa !14
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !61

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  store i32 0, ptr %i.a, align 8, !tbaa !6
  ret void
}

declare void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream18WriteStringOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i64, ptr, ptr noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__I_000102() #13 section ".text.startup" {
bb.a:
  tail call void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef nonnull @descriptor_table_google_2fprotobuf_2ffield_5fmask_2eproto)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"long", !4, i64 0}
!8 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !3, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj0EEE", !5, i64 0}
!13 = !{!12, !5, i64 0}
!14 = !{!4, !4, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBaseE", !15, i64 0, !5, i64 8, !12, i64 12}
!17 = !{!16, !5, i64 8}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !15, i64 0}
!20 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!16, !15, i64 0}
!23 = !{!"bool", !4, i64 0}
!24 = !{!15, !15, i64 0}
!25 = !{!"p1 omnipotent char", !15, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !7, i64 8, !4, i64 16}
!28 = !{!27, !25, i64 0}
!29 = !{!27, !7, i64 8}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"p1 _ZTSN6google8protobuf11MessageLiteE", !15, i64 0}
!32 = !{!"p1 _ZTSN6google8protobuf8internal16TcParseTableBaseE", !15, i64 0}
!33 = !{!"_ZTSN6google8protobuf8internal14MessageCreator3TagE", !4, i64 0}
!34 = !{!"_ZTSN6google8protobuf8internal14MessageCreatorE", !5, i64 0, !33, i64 4, !4, i64 5, !4, i64 8}
!35 = !{!"_ZTSN6google8protobuf8internal9ClassDataE", !31, i64 0, !32, i64 8, !15, i64 16, !15, i64 24, !34, i64 32, !5, i64 48, !23, i64 52, !23, i64 53}
!36 = !{!35, !32, i64 8}
!37 = distinct !{!37, !30}
!38 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !15, i64 0}
!39 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !25, i64 0, !25, i64 8, !4, i64 16, !38, i64 48, !23, i64 56, !23, i64 57, !23, i64 58, !23, i64 59}
!40 = !{!39, !25, i64 0}
!41 = distinct !{!41, !30}
!42 = distinct !{!42, i1 true, !"_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12InternalSwapEPS8_"}
!43 = distinct !{!43, !42, !"_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12InternalSwapEPS8_: argument 0"}
!44 = distinct !{!44, i1 true, !"_ZN6google8protobuf8internal20RepeatedPtrFieldBase12InternalSwapEPS2_"}
!45 = distinct !{!45, !44, !"_ZN6google8protobuf8internal20RepeatedPtrFieldBase12InternalSwapEPS2_: argument 0"}
!46 = distinct !{!46, i1 true, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_"}
!47 = distinct !{!47, !46, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_: argument 0"}
!48 = distinct !{!48, !46, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_: argument 1"}
!49 = !{!7, !7, i64 0}
!50 = !{!43}
!51 = !{!45}
!52 = !{!47}
!53 = !{!48}
!54 = !{!48, !45, !43}
!55 = !{!45, !43}
!56 = distinct !{!56, !30}
!57 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBase3RepE", !5, i64 0, !5, i64 4, !4, i64 8}
!58 = !{!57, !5, i64 4}
!59 = !{!57, !5, i64 0}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
