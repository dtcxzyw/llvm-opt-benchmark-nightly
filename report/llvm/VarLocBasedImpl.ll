Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VarLocBasedImpl?download=true
inline.NumInlined: 6395
inline.NumDeleted: 2943
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator13treeAdvanceToEm:bb.a
  %.08 = add i32 %.082838, -1                     ; 3 uses
  %.not9 = icmp eq i32 %.08, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph, !llvm.loop !1297

bb.f:                                             ; preds = %bb.e
  store i32 %.0.i10, ptr %i.ax, align 4, !tbaa !317
  tail call void @_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator12pathFillFindEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1)
  br label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread

._crit_edge:                                      ; preds = %.lr.ph39, %.preheader
  %i.bh = load ptr, ptr %0, align 8, !tbaa !379   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !317 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %i.bl = zext i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !357
  %i.bo = icmp ult i64 %i.bn, %1
  br i1 %i.bo, label %bb.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !382
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !317
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i11 = phi i32 [ %i.bs, %bb.g ], [ %i.by, %bb.h ] ; 3 uses
  %i.bu = zext i32 %.0.i11 to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !357
  %i.bx = icmp ult i64 %i.bw, %1
  %i.by = add i32 %.0.i11, 1
  br i1 %i.bx, label %bb.h, label %_ZNK4llvm15IntervalMapImpl10BranchNodeImcLj12ENS_15IntervalMapInfoImEEE8safeFindEjm.exit12, !llvm.loop !5

_ZNK4llvm15IntervalMapImpl10BranchNodeImcLj12ENS_15IntervalMapInfoImEEE8safeFindEjm.exit12: ; preds = %bb.h
  store i32 %.0.i11, ptr %i.br, align 4, !tbaa !317
  tail call void @_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator12pathFillFindEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1)
  br label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread

bb.i:                                             ; preds = %._crit_edge30, %._crit_edge
  %i.bz = phi i32 [ %.pre31, %._crit_edge30 ], [ %i.bj, %._crit_edge ] ; 3 uses
  %i.ca = phi ptr [ %.pre, %._crit_edge30 ], [ %i.bh, %._crit_edge ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 196
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !228 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %.not5.i = icmp eq i32 %i.bz, %i.cd
  br i1 %.not5.i, label %_ZNK4llvm15IntervalMapImpl10BranchNodeImcLj11ENS_15IntervalMapInfoImEEE8findFromEjjm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.06.i = phi i32 [ %i.cj, %bb.j ], [ %i.bz, %bb.i ] ; 3 uses
  %i.cf = zext i32 %.06.i to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !357
  %i.ci = icmp ult i64 %i.ch, %1
  br i1 %i.ci, label %bb.j, label %_ZNK4llvm15IntervalMapImpl10BranchNodeImcLj11ENS_15IntervalMapInfoImEEE8findFromEjjm.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.cj = add i32 %.06.i, 1                       ; 2 uses
  %.not.i = icmp eq i32 %i.cj, %i.cd
  br i1 %.not.i, label %_ZNK4llvm15IntervalMapImpl10BranchNodeImcLj11ENS_15IntervalMapInfoImEEE8findFromEjjm.exit, label %.lr.ph.i, !llvm.loop !3

_ZNK4llvm15IntervalMapImpl10BranchNodeImcLj11ENS_15IntervalMapInfoImEEE8findFromEjjm.exit: ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.0.lcssa.i = phi i32 [ %i.bz, %bb.i ], [ %.06.i, %.lr.ph.i ], [ %i.cd, %bb.j ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 192
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !227
  %.not.i13 = icmp eq i32 %i.cl, 0
  store i32 0, ptr %i.c, align 8, !tbaa !43
  %.sroa.4.8.insert.ext.i2.i = zext i32 %.0.lcssa.i to i64
  %.sroa.4.8.insert.shift.i3.i = shl nuw i64 %.sroa.4.8.insert.ext.i2.i, 32
  %.sroa.2.8.insert.ext.i4.i = zext i32 %i.cd to i64
  %.sroa.2.8.insert.insert.i5.i = or disjoint i64 %.sroa.4.8.insert.shift.i3.i, %.sroa.2.8.insert.ext.i4.i ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !44
  %.not.i.not.i6.i = icmp eq i32 %i.cn, 0         ; 2 uses
  br i1 %.not.i13, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm15IntervalMapImpl10BranchNodeImcLj11ENS_15IntervalMapInfoImEEE8findFromEjjm.exit
  br i1 %.not.i.not.i6.i, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator7setRootEj.exitthread-pre-split, label %bb.l, !prof !419

bb.l:                                             ; preds = %bb.k
  store ptr %i.cb, ptr %i.b, align 1
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.2.8.insert.insert.i5.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 1
  %i.co = load i32, ptr %i.c, align 8, !tbaa !43
  %i.cp = add i32 %i.co, 1                        ; 2 uses
  store i32 %i.cp, ptr %i.c, align 8, !tbaa !43
  br label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator7setRootEj.exit

bb.m:                                             ; preds = %_ZNK4llvm15IntervalMapImpl10BranchNodeImcLj11ENS_15IntervalMapInfoImEEE8findFromEjjm.exit
  br i1 %.not.i.not.i6.i, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator7setRootEj.exitthread-pre-split, label %bb.n, !prof !419

bb.n:                                             ; preds = %bb.m
  store ptr %i.ca, ptr %i.b, align 1
  %.sroa.3.0..sroa_idx.i.i7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.2.8.insert.insert.i5.i, ptr %.sroa.3.0..sroa_idx.i.i7.i, align 1
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !43
  %i.cr = add i32 %i.cq, 1                        ; 2 uses
  store i32 %i.cr, ptr %i.c, align 8, !tbaa !43
  br label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator7setRootEj.exit

_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator7setRootEj.exitthread-pre-split: ; preds = %bb.m, %bb.k
  %.sink = phi ptr [ %i.cb, %bb.k ], [ %i.ca, %bb.m ]
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_15IntervalMapImpl4Path5EntryELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr nonnull %.sink, i64 %.sroa.2.8.insert.insert.i5.i)
  %.pr = load i32, ptr %i.c, align 8, !tbaa !43
  br label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator7setRootEj.exit

_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator7setRootEj.exit: ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator7setRootEj.exitthread-pre-split, %bb.l, %bb.n
  %i.cs = phi i32 [ %.pr, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator7setRootEj.exitthread-pre-split ], [ %i.cp, %bb.l ], [ %i.cr, %bb.n ]
  %.not.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit: ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator7setRootEj.exit
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !381
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !383
  %i.cy = icmp ult i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.o, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread

bb.o:                                             ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit
  tail call void @_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator12pathFillFindEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1)
  br label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread: ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator7setRootEj.exit, %bb.f, %bb.o, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit, %_ZNK4llvm15IntervalMapImpl10BranchNodeImcLj12ENS_15IntervalMapInfoImEEE8safeFindEjm.exit12, %_ZNK4llvm15IntervalMapImpl8LeafNodeImcLj11ENS_15IntervalMapInfoImEEE8safeFindEjm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairImmELb1EE18growAndEmplaceBackIJmmEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !357    ; 2 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !357    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !343

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairImmELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.a, i64 %i.b)
  %.pre = load i32, ptr %i.c, align 8, !tbaa !43
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairImmELb1EE9push_backES2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g ; 2 uses
  store i64 %i.a, ptr %i.i, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.b, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !43
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !43
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairImmELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairImmELb1EE9push_backES2_.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %.pre, %bb.b ], [ %i.k, %bb.c ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !42
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -16
  ret ptr %i.p
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairImmELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #21
  %i.f = load ptr, ptr %0, align 8, !tbaa !42
  %i.g = load i32, ptr %i.a, align 8, !tbaa !43
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i64 %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !43
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN4llvm13LexicalScopes9dominatesEPKNS_10DILocationEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19CoalescingBitVectorImEeqERKS1_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::IntervalMap<unsigned long, char>::const_iterator", align 8 ; 9 uses
  %3 = alloca %"class.llvm::IntervalMap<unsigned long, char>::const_iterator", align 8 ; 9 uses
  %4 = alloca %"class.llvm::IntervalMap<unsigned long, char>::const_iterator", align 8 ; 11 uses
  %5 = alloca %"class.llvm::IntervalMap<unsigned long, char>::const_iterator", align 16 ; 7 uses
  %6 = alloca %"class.llvm::IntervalMap<unsigned long, char>::const_iterator", align 8 ; 14 uses
  %7 = alloca %"class.llvm::IntervalMap<unsigned long, char>::const_iterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !379, !alias.scope !1313
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !42, !alias.scope !1313
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !43, !alias.scope !1313
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 4, ptr %i.e, align 4, !tbaa !44, !alias.scope !1313
  call void @_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator9goToBeginEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !42, !alias.scope !1314
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 0, ptr %i.h, align 8, !tbaa !43, !alias.scope !1314
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 4, ptr %i.i, align 4, !tbaa !44, !alias.scope !1314
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !379, !alias.scope !1314
  call void @_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator9goToBeginEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  store ptr %i.a, ptr %4, align 8, !tbaa !379, !alias.scope !1315
  store ptr %i.k, ptr %i.j, align 8, !tbaa !42, !alias.scope !1315
  store i32 4, ptr %i.l, align 4, !tbaa !44, !alias.scope !1315
  %i.v = load i32, ptr %i.m, align 4, !tbaa !228, !noalias !1315 ; 2 uses
  %i.w = load i32, ptr %i.n, align 8, !tbaa !227, !noalias !1315
  %.not.i.i.i119 = icmp eq i32 %i.w, 0
  %.sink.idx.i120 = select i1 %.not.i.i.i119, i64 0, i64 8
  %.sink.i121 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink.idx.i120 ; 3 uses
  %.sroa.4.8.insert.ext.i.i.i.i122 = zext i32 %i.v to i64 ; 2 uses
  %.sroa.4.8.insert.shift.i.i.i.i123 = shl nuw i64 %.sroa.4.8.insert.ext.i.i.i.i122, 32
  %.sroa.2.8.insert.insert.i.i.i.i124 = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i.i123, %.sroa.4.8.insert.ext.i.i.i.i122 ; 3 uses
  store ptr %.sink.i121, ptr %i.k, align 8, !alias.scope !1315
  store i64 %.sroa.2.8.insert.insert.i.i.i.i124, ptr %i.o, align 8, !alias.scope !1315
  %i.x = load i32, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %.not.i.i.i.i.i125 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i125, label %.thread77, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i.preheader

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i.preheader: ; preds = %bb.a
  %8 = insertelement <2 x ptr> poison, ptr %i.p, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %i.q, i64 1
  br label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i

.thread77:                                        ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit29, %bb.a
  %.sink.i.lcssa = phi ptr [ %.sink.i121, %bb.a ], [ %.sink.i, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit29 ]
  %.sroa.2.8.insert.insert.i.i.i.i.lcssa = phi i64 [ %.sroa.2.8.insert.insert.i.i.i.i124, %bb.a ], [ %.sroa.2.8.insert.insert.i.i.i.i, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.a, ptr %6, align 8, !tbaa !379, !alias.scope !1316
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !42, !alias.scope !1316
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 4, ptr %i.ab, align 4, !tbaa !44, !alias.scope !1316
  store ptr %.sink.i.lcssa, ptr %i.z, align 8, !alias.scope !1316
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %.sroa.2.8.insert.insert.i.i.i.i.lcssa, ptr %i.ac, align 8, !alias.scope !1316
  store i32 1, ptr %i.aa, align 8, !tbaa !43, !alias.scope !1316
  br label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread.i

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i: ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i.preheader, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit29
  %i.ad = phi i32 [ %i.do, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit29 ], [ %i.x, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i.preheader ] ; 4 uses
  %.sroa.2.8.insert.insert.i.i.i.i127 = phi i64 [ %.sroa.2.8.insert.insert.i.i.i.i, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit29 ], [ %.sroa.2.8.insert.insert.i.i.i.i124, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i.preheader ]
  %.sink.i126 = phi ptr [ %.sink.i, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit29 ], [ %.sink.i121, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i.preheader ] ; 3 uses
  %i.ae = phi i32 [ %i.dm, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit29 ], [ %i.v, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i.preheader ] ; 2 uses
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !381
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !383
  %i.ak = icmp ult i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.b, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.sink.split

bb.b:                                             ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i
  %i.al = zext i32 %i.ad to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !381
  %.not.i.i = icmp eq i32 %i.ao, %i.ae
  br i1 %.not.i.i, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit.thread

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit: ; preds = %bb.b
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !382
  %i.ar = icmp eq ptr %i.aq, %.sink.i126
  br i1 %i.ar, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.sink.split, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit.thread

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit.thread: ; preds = %bb.b, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  store <2 x ptr> %9, ptr %5, align 16, !tbaa !360, !alias.scope !1317
  store i32 4, ptr %i.r, align 4, !tbaa !44, !alias.scope !1317
  %i.as = load i32, ptr %i.s, align 4, !tbaa !228, !noalias !1317 ; 2 uses
  %i.at = load i32, ptr %i.t, align 8, !tbaa !227, !noalias !1317
  %.not.i.i.i14 = icmp eq i32 %i.at, 0
  %.sink.idx.i15 = select i1 %.not.i.i.i14, i64 0, i64 8
  %.sink.i16 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink.idx.i15 ; 2 uses
  %.sroa.4.8.insert.ext.i.i.i.i17 = zext i32 %i.as to i64 ; 2 uses
  %.sroa.4.8.insert.shift.i.i.i.i18 = shl nuw i64 %.sroa.4.8.insert.ext.i.i.i.i17, 32
  %.sroa.2.8.insert.insert.i.i.i.i19 = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i.i18, %.sroa.4.8.insert.ext.i.i.i.i17
  store ptr %.sink.i16, ptr %i.q, align 8, !alias.scope !1317
  store i64 %.sroa.2.8.insert.insert.i.i.i.i19, ptr %i.u, align 16, !alias.scope !1317
  %i.au = load i32, ptr %i.h, align 8, !tbaa !43  ; 3 uses
  %.not.i.i.i.i.i20 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i.i20, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit27.thread74, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i21

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i21: ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit.thread
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !42  ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !381
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !383
  %i.ba = icmp ult i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.c, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit27.thread74

bb.c:                                             ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i21
  %i.bb = zext i32 %i.au to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !381
  %.not.i.i25 = icmp eq i32 %i.be, %i.as
  br i1 %.not.i.i25, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26.thread

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26: ; preds = %bb.c
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 -16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !382
  %i.bh = icmp eq ptr %i.bg, %.sink.i16
  br i1 %i.bh, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit27.thread74, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26._ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26.thread_crit_edge

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26._ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26.thread_crit_edge: ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !42
  %.pre62 = zext i32 %i.au to i64
  br label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26.thread

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26.thread: ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26._ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26.thread_crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre62, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26._ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26.thread_crit_edge ], [ %i.bb, %bb.c ]
  %i.bi = phi ptr [ %.pre, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26._ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26.thread_crit_edge ], [ %i.av, %bb.c ]
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.bk = zext i32 %i.ad to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !382
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !381
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bq ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !357
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.pre-phi ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !382
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !381
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.by ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !357
  %i.cb = icmp eq i64 %i.bs, %i.ca
  br i1 %i.cb, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit27, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit27.thread74

_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit27.thread74: ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26.thread, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit.thread, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.sink.split

_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit27: ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit26.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !357
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !357
  %i.cg = icmp eq i64 %i.cd, %i.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.cg, label %bb.d, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i

bb.d:                                             ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit27
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.ci = zext i32 %i.ad to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !317
  %i.cm = add i32 %i.cl, 1                        ; 2 uses
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !317
  %i.cn = load i32, ptr %i.d, align 8, !tbaa !43
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !383
  %i.cs = icmp eq i32 %i.cm, %i.cr
  br i1 %i.cs, label %bb.e, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ct = load ptr, ptr %2, align 8, !tbaa !379
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 192
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !227 ; 2 uses
  %.not.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm15IntervalMapImpl4Path9moveRightEj(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %i.cv) #21
  br label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit

_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !42  ; 2 uses
  %i.cx = load i32, ptr %i.h, align 8, !tbaa !43
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !317
  %i.dc = add i32 %i.db, 1                        ; 2 uses
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !317
  %i.dd = load i32, ptr %i.h, align 8, !tbaa !43
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !383
  %i.di = icmp eq i32 %i.dc, %i.dh
  br i1 %i.di, label %bb.g, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit29

bb.g:                                             ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit
  %i.dj = load ptr, ptr %3, align 8, !tbaa !379
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 192
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !227 ; 2 uses
  %.not.i28 = icmp eq i32 %i.dl, 0
  br i1 %.not.i28, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit29, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm15IntervalMapImpl4Path9moveRightEj(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i32 noundef %i.dl) #21
  br label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit29

_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit29: ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorppEv.exit, %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  store ptr %i.a, ptr %4, align 8, !tbaa !379, !alias.scope !1318
  store ptr %i.k, ptr %i.j, align 8, !tbaa !42, !alias.scope !1318
  store i32 4, ptr %i.l, align 4, !tbaa !44, !alias.scope !1318
  %i.dm = load i32, ptr %i.m, align 4, !tbaa !228, !noalias !1318 ; 2 uses
  %i.dn = load i32, ptr %i.n, align 8, !tbaa !227, !noalias !1318
  %.not.i.i.i = icmp eq i32 %i.dn, 0
  %.sink.idx.i = select i1 %.not.i.i.i, i64 0, i64 8
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink.idx.i ; 3 uses
  %.sroa.4.8.insert.ext.i.i.i.i = zext i32 %i.dm to i64 ; 2 uses
  %.sroa.4.8.insert.shift.i.i.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i.i.i.i, 32
  %.sroa.2.8.insert.insert.i.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i.i, %.sroa.4.8.insert.ext.i.i.i.i ; 3 uses
  store ptr %.sink.i, ptr %i.k, align 8, !alias.scope !1318
  store i64 %.sroa.2.8.insert.insert.i.i.i.i, ptr %i.o, align 8, !alias.scope !1318
  %i.do = load i32, ptr %i.d, align 8, !tbaa !43  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i.i.i.i, label %.thread77, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i, !llvm.loop !1310

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.sink.split: ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorneERKS4_.exit, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit27.thread74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i: ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit27, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.sink.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.a, ptr %6, align 8, !tbaa !379, !alias.scope !1316
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !42, !alias.scope !1316
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 4, ptr %i.dr, align 4, !tbaa !44, !alias.scope !1316
  store ptr %.sink.i126, ptr %i.dq, align 8, !alias.scope !1316
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %.sroa.2.8.insert.insert.i.i.i.i127, ptr %i.ds, align 8, !alias.scope !1316
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !381
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !383
  %i.dy = icmp ult i32 %i.dv, %i.dx
  br i1 %i.dy, label %bb.i, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread.i

bb.i:                                             ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i
  %i.dz = zext i32 %i.ad to i64
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !381
  %.not.i36 = icmp eq i32 %i.ec, %i.ae
  br i1 %.not.i36, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratoreqERKS4_.exit, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit51

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratoreqERKS4_.exit: ; preds = %bb.i
  %i.ed = getelementptr inbounds i8, ptr %i.ea, i64 -16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !382
  %i.ef = icmp eq ptr %i.ee, %.sink.i126
  br i1 %i.ef, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread.i, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit51

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread.i: ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i, %.thread77, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratoreqERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  store ptr %i.p, ptr %7, align 8, !tbaa !379, !alias.scope !1319
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.eh, ptr %i.eg, align 8, !tbaa !42, !alias.scope !1319
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 4, ptr %i.ei, align 4, !tbaa !44, !alias.scope !1319
  %i.ej = load i32, ptr %i.s, align 4, !tbaa !228, !noalias !1319 ; 2 uses
  %i.ek = load i32, ptr %i.t, align 8, !tbaa !227, !noalias !1319
  %.not.i.i.i37 = icmp eq i32 %i.ek, 0
  %.sink.idx.i38 = select i1 %.not.i.i.i37, i64 0, i64 8
  %.sink.i39 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink.idx.i38 ; 2 uses
  %.sroa.4.8.insert.ext.i.i.i.i40 = zext i32 %i.ej to i64 ; 2 uses
  %.sroa.4.8.insert.shift.i.i.i.i41 = shl nuw i64 %.sroa.4.8.insert.ext.i.i.i.i40, 32
  %.sroa.2.8.insert.insert.i.i.i.i42 = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i.i41, %.sroa.4.8.insert.ext.i.i.i.i40
  store ptr %.sink.i39, ptr %i.eh, align 8, !alias.scope !1319
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.sroa.2.8.insert.insert.i.i.i.i42, ptr %i.el, align 8, !alias.scope !1319
  %i.em = load i32, ptr %i.h, align 8, !tbaa !43  ; 2 uses
  %.not.i.i.i.i43 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i.i.i43, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit50, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i44

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i44: ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread.i
  %i.en = load ptr, ptr %i.f, align 8, !tbaa !42  ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !381
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !383
  %i.es = icmp ult i32 %i.ep, %i.er
  br i1 %i.es, label %bb.j, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit50

bb.j:                                             ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i44
  %i.et = zext i32 %i.em to i64
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !381
  %.not.i48 = icmp eq i32 %i.ew, %i.ej
  br i1 %.not.i48, label %bb.k, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit50

bb.k:                                             ; preds = %bb.j
  %i.ex = getelementptr inbounds i8, ptr %i.eu, i64 -16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !382
  %i.ez = icmp eq ptr %i.ey, %.sink.i39
  br label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit50

_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit50: ; preds = %bb.k, %bb.j, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread.i, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i44
  %.ph59 = phi i1 [ false, %bb.j ], [ %i.ez, %bb.k ], [ true, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread.i ], [ true, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit51

_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit51: ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit50, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratoreqERKS4_.exit, %bb.i
  %i.fa = phi i1 [ %.ph59, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit50 ], [ false, %bb.i ], [ false, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratoreqERKS4_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.fb = load ptr, ptr %i.f, align 8, !tbaa !42  ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.g
  br i1 %i.fc, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit52, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit51
  call void @free(ptr noundef %i.fb) #21
  br label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit52

_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit52: ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit51, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.fd = load ptr, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.c
  br i1 %i.fe, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit53, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit52
  call void @free(ptr noundef %i.fd) #21
  br label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit53

_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit53: ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit52, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i1 %i.fa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERN4llvm8SmallSetIjLj32ESt4lessIjEEENS1_8ArrayRefINS1_8RegisterEEERKNS1_19CoalescingBitVectorImEERKNS0_9VarLocMapE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(192) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SmallVector.162", align 8 ; 11 uses
  %6 = alloca %"class.llvm::CoalescingBitVector<unsigned long>::const_iterator", align 8 ; 12 uses
  %7 = alloca %"class.llvm::CoalescingBitVector<unsigned long>::const_iterator", align 8 ; 10 uses
  %8 = alloca %"class.llvm::SmallVector.304", align 8 ; 11 uses
  %9 = alloca %"struct.std::pair.578", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 32, ptr %i.c, align 4, !tbaa !44
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.e = call noundef ptr @_ZN4llvm15SmallVectorImplINS_8RegisterEE6insertIPKS1_vEEPS1_S6_T_S7_(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %i.d) ; 0 uses
  %.val = load ptr, ptr %5, align 8, !tbaa !42    ; 21 uses
  %.val23 = load i32, ptr %i.b, align 8, !tbaa !43 ; 4 uses
  %i.f = zext i32 %.val23 to i64                  ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.f, 2               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.val23, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE5eraseEPKS1_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %.val to i64
  %i.i = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  call fastcc void @"_ZSt16__introsort_loopIPN4llvm8RegisterElN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_SO_T0_T1_"(ptr noundef %.val, ptr noundef nonnull %i.g, i64 noundef %i.k)
  %i.l = icmp ugt i32 %.val23, 16
  br i1 %i.l, label %bb.c, label %.preheader.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %.val.pre23.i.i.i.i.i.i = load i32, ptr %.val, align 4, !tbaa !317
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.val.i.i.i.i.i.i = phi i32 [ %.val.pre23.i.i.i.i.i.i, %bb.c ], [ %.val25.i.i.i.i.i.i, %bb.i ] ; 2 uses
  %.021.i.idx.i.i.i.i.i = phi i64 [ 4, %bb.c ], [ %.021.i.add.i.i.i.i.i, %bb.i ] ; 4 uses
  %.pn20.i.i.i.i.i.i = phi ptr [ %.val, %bb.c ], [ %.021.i.ptr.i.i.i.i.i, %bb.i ] ; 3 uses
  %.021.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.021.i.idx.i.i.i.i.i ; 4 uses
  %.0.val.i.i.i.i.i.i = load i32, ptr %.021.i.ptr.i.i.i.i.i, align 4, !tbaa !317 ; 6 uses
  %i.m = icmp ult i32 %.0.val.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = icmp samesign ugt i64 %.021.i.idx.i.i.i.i.i, 4
  br i1 %i.n, label %bb.f, label %bb.g, !prof !343

bb.f:                                             ; preds = %bb.e
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.val, i64 %.021.i.idx.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i, i64 4
  store i32 %.val.i.i.i.i.i.i, ptr %i.o, align 4, !tbaa !317
  br label %_ZSt13move_backwardIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit.i.i.i.i.i.i

_ZSt13move_backwardIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  store i32 %.0.val.i.i.i.i.i.i, ptr %.val, align 4, !tbaa !317
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %.0.val12.i.i.i.i.i.i.i = load i32, ptr %.pn20.i.i.i.i.i.i, align 4, !tbaa !317 ; 2 uses
  %i.p = icmp ult i32 %.0.val.i.i.i.i.i.i, %.0.val12.i.i.i.i.i.i.i
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm8RegisterEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %.0.val15.i.i.i.i.i.i.i = phi i32 [ %.0.val.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.val12.i.i.i.i.i.i.i, %bb.h ]
  %.014.i.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.pn20.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0913.i.i.i.i.i.i.i = phi ptr [ %.014.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.ptr.i.i.i.i.i, %bb.h ]
  store i32 %.0.val15.i.i.i.i.i.i.i, ptr %.0913.i.i.i.i.i.i.i, align 4, !tbaa !317
  %.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i.i.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.i.i, align 4, !tbaa !317 ; 2 uses
  %i.q = icmp ult i32 %.0.val.i.i.i.i.i.i, %.0.val.i.i.i.i.i.i.i
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm8RegisterEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !1320

"_ZSt25__unguarded_linear_insertIPN4llvm8RegisterEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  %.09.lcssa.i.i.i.i.i.i.i = phi ptr [ %.021.i.ptr.i.i.i.i.i, %bb.h ], [ %.014.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  store i32 %.0.val.i.i.i.i.i.i, ptr %.09.lcssa.i.i.i.i.i.i.i, align 4, !tbaa !317
  %.val.pre.i.i.i.i.i.i = load i32, ptr %.val, align 4, !tbaa !317
  br label %bb.i

bb.i:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPN4llvm8RegisterEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %_ZSt13move_backwardIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit.i.i.i.i.i.i
  %.val25.i.i.i.i.i.i = phi i32 [ %.0.val.i.i.i.i.i.i, %_ZSt13move_backwardIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit.i.i.i.i.i.i ], [ %.val.pre.i.i.i.i.i.i, %"_ZSt25__unguarded_linear_insertIPN4llvm8RegisterEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i" ]
  %.021.i.add.i.i.i.i.i = add nuw nsw i64 %.021.i.idx.i.i.i.i.i, 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.021.i.add.i.i.i.i.i, 64
  br i1 %.not.i.i.i.i.i.i, label %"_ZSt16__insertion_sortIPN4llvm8RegisterEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_SO_T0_.exit.i.i.i.i.i", label %bb.d, !llvm.loop !1321

"_ZSt16__insertion_sortIPN4llvm8RegisterEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_SO_T0_.exit.i.i.i.i.i": ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 4 uses
  %i.s = add nsw i64 %.idx.i, -68                 ; 2 uses
  %i.t = and i64 %i.s, 4
  %lcmp.mod.not.not = icmp eq i64 %i.t, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %"_ZSt16__insertion_sortIPN4llvm8RegisterEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_SO_T0_.exit.i.i.i.i.i"
  %i.u = load i32, ptr %i.r, align 4, !tbaa !317  ; 3 uses
  %.011.i.i.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.val, i64 60 ; 2 uses
  %.0.val12.i.i13.i.i.i.i.i.prol = load i32, ptr %.011.i.i.i.i.i.i.i.prol, align 4, !tbaa !317 ; 2 uses
  %i.v = icmp ult i32 %i.u, %.0.val12.i.i13.i.i.i.i.i.prol
  br i1 %i.v, label %.lr.ph.i.i17.i.i.i.i.i.prol, label %"_ZSt25__unguarded_linear_insertIPN4llvm8RegisterEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i.prol"

.lr.ph.i.i17.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i17.i.i.i.i.i.prol
  %.0.val15.i.i18.i.i.i.i.i.prol = phi i32 [ %.0.val.i.i22.i.i.i.i.i.prol, %.lr.ph.i.i17.i.i.i.i.i.prol ], [ %.0.val12.i.i13.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.014.i.i19.i.i.i.i.i.prol = phi ptr [ %.0.i.i21.i.i.i.i.i.prol, %.lr.ph.i.i17.i.i.i.i.i.prol ], [ %.011.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ] ; 3 uses
  %.0913.i.i20.i.i.i.i.i.prol = phi ptr [ %.014.i.i19.i.i.i.i.i.prol, %.lr.ph.i.i17.i.i.i.i.i.prol ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  store i32 %.0.val15.i.i18.i.i.i.i.i.prol, ptr %.0913.i.i20.i.i.i.i.i.prol, align 4, !tbaa !317
  %.0.i.i21.i.i.i.i.i.prol = getelementptr inbounds i8, ptr %.014.i.i19.i.i.i.i.i.prol, i64 -4 ; 2 uses
  %.0.val.i.i22.i.i.i.i.i.prol = load i32, ptr %.0.i.i21.i.i.i.i.i.prol, align 4, !tbaa !317 ; 2 uses
  %i.w = icmp ult i32 %i.u, %.0.val.i.i22.i.i.i.i.i.prol
  br i1 %i.w, label %.lr.ph.i.i17.i.i.i.i.i.prol, label %"_ZSt25__unguarded_linear_insertIPN4llvm8RegisterEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i.prol", !llvm.loop !1320

"_ZSt25__unguarded_linear_insertIPN4llvm8RegisterEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i.prol": ; preds = %.lr.ph.i.i17.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol
  %.09.lcssa.i.i15.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %.014.i.i19.i.i.i.i.i.prol, %.lr.ph.i.i17.i.i.i.i.i.prol ]
  store i32 %i.u, ptr %.09.lcssa.i.i15.i.i.i.i.i.prol, align 4, !tbaa !317
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 68
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %"_ZSt25__unguarded_linear_insertIPN4llvm8RegisterEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i.prol", %"_ZSt16__insertion_sortIPN4llvm8RegisterEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_SO_T0_.exit.i.i.i.i.i"
  %.07.i.i.i.i.i.i.unr = phi ptr [ %i.r, %"_ZSt16__insertion_sortIPN4llvm8RegisterEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_SO_T0_.exit.i.i.i.i.i" ], [ %i.x, %"_ZSt25__unguarded_linear_insertIPN4llvm8RegisterEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i.prol" ]
  %i.y = icmp eq i64 %i.s, 0
  br i1 %i.y, label %"_ZN4llvm4sortIRNS_11SmallVectorINS_8RegisterELj32EEEZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS_8SmallSetIjLj32ESt4lessIjEEENS_8ArrayRefIS2_EERKNS_19CoalescingBitVectorImEERKNS6_9VarLocMapEE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %"_ZSt25__unguarded_linear_insertIPN4llvm8RegisterEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i.1"
  %.07.i.i.i.i.i.i = phi ptr [ %i.ag, %"_ZSt25__unguarded_linear_insertIPN4llvm8RegisterEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i.1" ], [ %.07.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.z = load i32, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !317 ; 3 uses
  %.011.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -4 ; 2 uses
  %.0.val12.i.i13.i.i.i.i.i = load i32, ptr %.011.i.i.i.i.i.i.i, align 4, !tbaa !317 ; 2 uses
  %i.aa = icmp ult i32 %i.z, %.0.val12.i.i13.i.i.i.i.i
  br i1 %i.aa, label %.lr.ph.i.i17.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm8RegisterEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_114VarLocBasedLDV17collectIDsForRegsERNS0_8SmallSetIjLj32ESt4lessIjEEENS0_8ArrayRefIS1_EERKNS0_19CoalescingBitVectorImEERKNS7_9VarLocMapEE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i"

.lr.ph.i.i17.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.i
end_hunk_0
