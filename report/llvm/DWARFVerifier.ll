Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFVerifier?download=true
inline.NumInlined: 9912
inline.NumDeleted: 5206
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator10insertNodeEjNS_15IntervalMapImpl7NodeRefEm:bb.a
  %i.io = add nsw i64 %.pre-phi, -1               ; 2 uses
  %.not16.wide.i77 = icmp eq i64 %i.io, 0
  br i1 %.not16.wide.i77, label %.preheader._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.ip = add nsw i64 %i.iq, -1                   ; 2 uses
  %.not16.wide.i = icmp eq i64 %i.ip, 0
  br i1 %.not16.wide.i, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !31

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %i.iq = phi i64 [ %i.ip, %.preheader ], [ %i.io, %.preheader.preheader ] ; 2 uses
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %i.iq ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !426
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !76 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 96
  %i.iw = zext i32 %i.iu to i64
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.iw
  store i64 %3, ptr %i.ix, align 8, !tbaa !47
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !425
  %i.ja = add i32 %i.iz, -1
  %i.jb = icmp eq i32 %i.iu, %i.ja
  br i1 %i.jb, label %.preheader, label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit, !llvm.loop !31

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.jc = load ptr, ptr %i.ig, align 8, !tbaa !426
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ig, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !76
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 88
  %i.jg = zext i32 %i.je to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.jg
  store i64 %3, ptr %i.jh, align 8, !tbaa !47
  br label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit

_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit: ; preds = %.lr.ph, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit, %.preheader._crit_edge, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.thread
  %i.ji = phi i32 [ %i.ij, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.thread ], [ %i.hu, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit ], [ %i.ij, %.preheader._crit_edge ], [ %i.ij, %.lr.ph ]
  %i.jj = phi ptr [ %i.ih, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.thread ], [ %i.hp, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit ], [ %i.ih, %.preheader._crit_edge ], [ %i.ih, %.lr.ph ]
  %i.jk = phi ptr [ %i.ig, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.thread ], [ %i.ho, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit ], [ %i.ig, %.preheader._crit_edge ], [ %i.ig, %.lr.ph ]
  %i.jl = add i32 %.1, 1
  %i.jm = load ptr, ptr %i.jj, align 8, !tbaa !426
  %i.jn = zext i32 %i.ji to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jn
  %.sroa.0.0.copyload.i61 = load i64, ptr %i.jo, align 8, !tbaa !78 ; 2 uses
  %i.jp = zext i32 %i.jl to i64
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.jk, i64 %i.jp ; 2 uses
  %i.jr = and i64 %.sroa.0.0.copyload.i61, -64
  %i.js = inttoptr i64 %i.jr to ptr
  %i.jt = trunc i64 %.sroa.0.0.copyload.i61 to i32
  %i.ju = and i32 %i.jt, 63
  %i.jv = add nuw nsw i32 %i.ju, 1
  store ptr %i.js, ptr %i.jq, align 8, !tbaa !124
  %.sroa.4.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store i32 %i.jv, ptr %.sroa.4.0..sroa_idx.i62, align 8, !tbaa !76
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit, %_ZN4llvm15IntervalMapImpl10BranchNodeImmLj11ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit
  %.0 = phi i1 [ false, %_ZN4llvm15IntervalMapImpl10BranchNodeImmLj11ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit ], [ %.150, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #27 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !296  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !297
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !196
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !296
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !296
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !296
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #27 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !296 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !297
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !60

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !196
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !296
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !296
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !694
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !693
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !296
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !196
  %i.g = load i32, ptr %i.a, align 8, !tbaa !296
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !296
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !296
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !296
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !196
  %i.g = load i32, ptr %i.a, align 8, !tbaa !296
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !296
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE9splitRootEj(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
.preheader25:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !413
  %.fr = freeze i32 %i.b                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not13.i = icmp eq i32 %.fr, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !414  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !432  ; 5 uses
  %.not.i.i.i.us = icmp eq ptr %i.h, null         ; 2 uses
  br i1 %.not13.i, label %.preheader25.split.us, label %.preheader25.split

.preheader25.split.us:                            ; preds = %.preheader25
  br i1 %.not.i.i.i.us, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader25.split.us
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !659
  store ptr %i.i, ptr %i.f, align 8, !tbaa !432
  br label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit.us

bb.b:                                             ; preds = %.preheader25.split.us
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !693
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, 63
  %i.m = and i64 %i.l, -64                        ; 2 uses
  %i.n = add i64 %i.m, 192                        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !694
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 192, i64 noundef 192, i8 6)
  br label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit.us

bb.d:                                             ; preds = %bb.b
  %i.s = inttoptr i64 %i.n to ptr
  store ptr %i.s, ptr %i.g, align 8, !tbaa !693
  %i.t = inttoptr i64 %i.m to ptr
  br label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit.us

_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit.us: ; preds = %bb.d, %bb.c, %bb.a
  %i.u = phi ptr [ %i.h, %bb.a ], [ %i.t, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.u, i8 0, i64 192, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit.us
  %.us-phi = phi ptr [ %i.u, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit.us ], [ %i.au, %middle.block ], [ %i.au, %scalar.ph ], [ %i.au, %scalar.ph.prol.loopexit ]
  %i.v = add i32 %.fr, -1
  %i.w = ptrtoint ptr %.us-phi to i64
  %i.x = zext i32 %i.v to i64                     ; 2 uses
  %i.y = and i64 %i.w, -64
  %i.z = or i64 %i.y, %i.x                        ; 2 uses
  %i.aa = and i64 %i.z, -64
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.x
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !47
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !47
  store i64 %i.z, ptr %i.d, align 8, !tbaa !78
  store i32 1, ptr %i.a, align 4, !tbaa !413
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !412
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !412
  %.sroa.2.0.insert.ext = zext i32 %1 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  ret i64 %.sroa.2.0.insert.shift

.preheader25.split:                               ; preds = %.preheader25
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader25.split
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !659
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !432
  br label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit

bb.f:                                             ; preds = %.preheader25.split
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !693
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = add i64 %i.ak, 63
  %i.am = and i64 %i.al, -64                      ; 2 uses
  %i.an = add i64 %i.am, 192                      ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !694
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.h, !prof !60

bb.g:                                             ; preds = %bb.f
  %i.ar = inttoptr i64 %i.an to ptr
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !693
  %i.as = inttoptr i64 %i.am to ptr
  br label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit

bb.h:                                             ; preds = %bb.f
  %i.at = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 192, i64 noundef 192, i8 6)
  br label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit

_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.au = phi ptr [ %i.h, %bb.e ], [ %i.as, %bb.g ], [ %i.at, %bb.h ] ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.au, i8 0, i64 192, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 96 ; 4 uses
  %i.aw = zext i32 %.fr to i64                    ; 6 uses
  %min.iters.check = icmp ult i32 %.fr, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 96               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.au, i64 %i.ay
  %scevgep37 = getelementptr i8, ptr %0, i64 %i.ay
  %bound0 = icmp ult ptr %i.au, %scevgep37
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 4294967294              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index
  %wide.load = load <2 x i64>, ptr %i.az, align 8, !tbaa !78, !alias.scope !1889
  store <2 x i64> %wide.load, ptr %i.ba, align 8, !tbaa !78, !alias.scope !1890, !noalias !1889
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %wide.load38 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !47, !alias.scope !1889
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index
  store <2 x i64> %wide.load38, ptr %i.bc, align 8, !tbaa !47, !alias.scope !1890, !noalias !1889
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1887

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %i.aw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.ph
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.ph
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !78
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !78
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.ph
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.ph
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !47
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %2 = add nsw i64 %i.aw, -1
  %i.bk = icmp eq i64 %indvars.iv.ph, %2
  br i1 %i.bk, label %.preheader, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !78
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !78
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !47
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !78
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !78
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !47
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !47
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, %i.aw
  br i1 %exitcond.1, label %.preheader, label %scalar.ph, !llvm.loop !1888
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEbj(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 9 uses
  %i.b = alloca [4 x ptr], align 16               ; 10 uses
  %i.c = alloca [4 x i32], align 16               ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !196
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !76   ; 2 uses
  %i.j = tail call i64 @_ZNK4llvm15IntervalMapImpl4Path14getLeftSiblingEj(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i32 noundef %1) #27 ; 3 uses
  %.not92 = icmp eq i64 %i.j, 0                   ; 2 uses
  br i1 %.not92, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 63
  %i.m = add nuw nsw i32 %i.l, 1                  ; 3 uses
  store i32 %i.m, ptr %i.a, align 16, !tbaa !76
  %i.n = add i32 %i.m, %i.i
  %i.o = and i64 %i.j, -64
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.b, align 16, !tbaa !698
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.072 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]      ; 3 uses
  %.070 = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %.069 = phi i32 [ %i.n, %bb.b ], [ %i.i, %bb.a ]
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.e ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !425  ; 2 uses
  %i.u = zext nneg i32 %.072 to i64               ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.u
  store i32 %i.t, ptr %i.v, align 4, !tbaa !76
  %i.w = add i32 %i.t, %.070                      ; 2 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !426
  %i.y = add nuw nsw i32 %.072, 1                 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u
  store ptr %i.x, ptr %i.z, align 8, !tbaa !698
  %i.aa = tail call i64 @_ZNK4llvm15IntervalMapImpl4Path15getRightSiblingEj(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i32 noundef %1) #27 ; 3 uses
  %.not93 = icmp eq i64 %i.aa, 0
  br i1 %.not93, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 63
  %i.ad = add nuw nsw i32 %i.ac, 1                ; 2 uses
  %i.ae = zext nneg i32 %i.y to i64               ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !76
  %i.ag = add i32 %i.ad, %i.w
  %i.ah = and i64 %i.aa, -64
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = or disjoint i32 %.072, 2
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ae
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !698
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.173 = phi i32 [ %i.aj, %bb.d ], [ %i.y, %bb.c ] ; 6 uses
  %.171 = phi i32 [ %i.ag, %bb.d ], [ %i.w, %bb.c ] ; 2 uses
  %i.al = add i32 %.171, 1
  %i.am = mul nuw nsw i32 %.173, 12
  %i.an = icmp ugt i32 %i.al, %i.am
  br i1 %i.an, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp eq i32 %.173, 1
  %i.ap = add nsw i32 %.173, -1
  %i.aq = select i1 %i.ao, i32 1, i32 %i.ap
  %i.ar = freeze i32 %i.aq                        ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !76
  %i.av = zext nneg i32 %.173 to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.av
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !76
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.as ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !698
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.av
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !698
  store i32 0, ptr %i.at, align 4, !tbaa !76
  %i.ba = load ptr, ptr %0, align 8, !tbaa !422
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 200
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !414 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !432 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !659
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !432
  br label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit

bb.h:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !693
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = add i64 %i.bh, 63
  %i.bj = and i64 %i.bi, -64                      ; 2 uses
  %i.bk = add i64 %i.bj, 192                      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !694
  %i.bn = icmp ult i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.i, label %bb.j, !prof !60

bb.i:                                             ; preds = %bb.h
  %i.bo = inttoptr i64 %i.bk to ptr
  store ptr %i.bo, ptr %i.bd, align 8, !tbaa !693
  %i.bp = inttoptr i64 %i.bj to ptr
  br label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit

bb.j:                                             ; preds = %bb.h
  %i.bq = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, i64 noundef 192, i64 noundef 192, i8 6)
  br label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit

_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit: ; preds = %bb.g, %bb.i, %bb.j
  %i.br = phi ptr [ %i.be, %bb.g ], [ %i.bp, %bb.i ], [ %i.bq, %bb.j ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.br, i8 0, i64 192, i1 false)
  store ptr %i.br, ptr %i.ax, align 8, !tbaa !698
  %i.bs = add nuw nsw i32 %.173, 1
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit, %bb.e
  %.274 = phi i32 [ %i.bs, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit ], [ %.173, %bb.e ] ; 4 uses
  %.068 = phi i32 [ %i.ar, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE7newNodeINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEPT_v.exit ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.bt = call i64 @_ZN4llvm15IntervalMapImpl10distributeEjjjPKjPjjb(i32 noundef %.274, i32 noundef %.171, i32 noundef 12, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %.069, i1 noundef zeroext true) #27 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.bt to i32 ; 2 uses
  call void @_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_10BranchNodeImmLj12ENS_15IntervalMapInfoImEEEEEEvPPT_jPjPKj(ptr noundef nonnull %i.b, i32 noundef %.274, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c)
  br i1 %.not92, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm15IntervalMapImpl4Path8moveLeftEj(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i32 noundef %1) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not.not = icmp eq i32 %.068, 0
  br i1 %.not.not, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.m
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %.not.i.us = icmp eq i32 %1, 0
  %i.bv = add i32 %1, -1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = add nsw i64 %i.bu, -1                   ; 2 uses
  %.not16.wide.i.us118 = icmp eq i64 %i.bx, 0
  br label %.split.us

.split.us:                                        ; preds = %bb.p, %.split.us.preheader
  %.065.us = phi i32 [ %i.dn, %bb.p ], [ 0, %.split.us.preheader ] ; 3 uses
  %i.by = zext i32 %.065.us to i64                ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !698
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.by
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !76 ; 2 uses
  %i.cd = add i32 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.cf = zext i32 %i.cd to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !47 ; 2 uses
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !196 ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.bu
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i32 %i.cc, ptr %i.ck, align 8, !tbaa !425
  br i1 %.not.i.us, label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit.us, label %bb.n

bb.n:                                             ; preds = %.split.us
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.bw ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !424
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !426
  %i.cp = zext i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %.0.copyload.i.i.i.i.i.us = load i64, ptr %i.cq, align 8
  %i.cr = and i64 %.0.copyload.i.i.i.i.i.us, -64
  %i.cs = or i64 %i.cr, %i.cf
  store i64 %i.cs, ptr %i.cq, align 8
  %i.ct = load ptr, ptr %i.d, align 8             ; 3 uses
  br i1 %.not16.wide.i.us118, label %._crit_edge121, label %.lr.ph120

bb.o:                                             ; preds = %.lr.ph120
  %i.cu = add nsw i64 %i.cv, -1                   ; 2 uses
  %.not16.wide.i.us = icmp eq i64 %i.cu, 0
  br i1 %.not16.wide.i.us, label %._crit_edge121, label %.lr.ph120, !llvm.loop !31

.lr.ph120:                                        ; preds = %bb.n, %bb.o
  %i.cv = phi i64 [ %i.cu, %bb.o ], [ %i.bx, %bb.n ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cv ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !426
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
end_hunk_0
