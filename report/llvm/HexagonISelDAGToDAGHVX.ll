Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelDAGToDAGHVX?download=true
inline.NumInlined: 4949
inline.NumDeleted: 1897
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN8shuffles9vshuffvddEN4llvm8ArrayRefIiEES2_j:bb.a
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !34
  %i.av = load i32, ptr %gep.epil, align 4, !tbaa !34
  store i32 %i.av, ptr %i.at, align 4, !tbaa !34
  store i32 %i.au, ptr %gep.epil, align 4, !tbaa !34
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %..loopexit_crit_edge.loopexit.unr-lcssa, %bb.k, %.preheader.epil.preheader, %.lr.ph37.split
  %i.aw = shl nsw i32 %.01736, 1                  ; 2 uses
  %i.ax = icmp slt i32 %i.aw, %i.a
  br i1 %i.ax, label %.lr.ph37.split, label %._crit_edge, !llvm.loop !574
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8shuffles8vdealvddEN4llvm8ArrayRefIiEES2_j(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 4 uses
  %i.b = shl nsw i32 %i.a, 1                      ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 128, ptr %i.f, align 4, !tbaa !33
  %i.g = icmp eq i32 %i.a, 0
  br i1 %i.g, label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %i.b, 128
  br i1 %i.h, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull %i.d, i64 noundef %i.c, i64 noundef 4) #23
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !32
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.c, %.pre13.i.i.i
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !31 ; 2 uses
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, %bb.b
  %i.i = phi ptr [ %i.d, %bb.b ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.b ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %.pre-phi.i.i3.i
  %i.k = sub nsw i64 %i.c, %.pre-phi.i.i3.i
  %i.l = shl nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %i.l, i1 false), !tbaa !34
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %.pre = phi ptr [ %i.i, %.lr.ph.preheader.i.i.i ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  store i32 %i.b, ptr %i.e, align 8, !tbaa !32
  br label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit

_ZN4llvm11SmallVectorIiLj128EEC2Em.exit:          ; preds = %bb.a, %.sink.split.i.i.i
  %i.m = phi ptr [ %i.d, %bb.a ], [ %.pre, %.sink.split.i.i.i ] ; 4 uses
  %i.n = icmp ugt i64 %4, 1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !35

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit
  %.idx.i = shl nuw nsw i64 %4, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.m, ptr align 4 %3, i64 %.idx.i, i1 false)
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit
  %i.o = icmp eq i64 %4, 1
  br i1 %i.o, label %bb.e, label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %3, align 4, !tbaa !34
  store i32 %i.p, ptr %i.m, align 4, !tbaa !34
  br label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit

_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.q = phi ptr [ %.pre40, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %bb.e ]
  %sext = shl i64 %2, 32
  %i.r = ashr exact i64 %sext, 32                 ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = icmp ugt i64 %2, 1
  br i1 %i.t, label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit19, label %bb.f, !prof !35

bb.f:                                             ; preds = %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit
  %i.u = icmp eq i64 %2, 1
  br i1 %i.u, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %1, align 4, !tbaa !34
  store i32 %i.v, ptr %i.s, align 4, !tbaa !34
  br label %._crit_edge

_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit19: ; preds = %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit
  %.idx.i18 = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.s, ptr align 4 %1, i64 %.idx.i18, i1 false)
  %.pre41 = load ptr, ptr %0, align 8, !tbaa !31  ; 2 uses
  %i.w = load i32, ptr %i.e, align 8, !tbaa !32
  %i.x = zext i32 %i.w to i64
  %.sroa.0.0.copyload.pn.idx.i = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 %i.r)
  %.sroa.0.0.copyload.pn.i20 = getelementptr inbounds nuw [4 x i8], ptr %.pre41, i64 %.sroa.0.0.copyload.pn.idx.i ; 3 uses
  %i.y = icmp sgt i32 %i.a, 1
  br i1 %i.y, label %.lr.ph36.split.preheader, label %._crit_edge

.lr.ph36.split.preheader:                         ; preds = %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit19
  %i.z = lshr i32 %i.a, 1
  %i.aa = and i64 %2, 2147483647
  %xtraiter = and i64 %2, 1
  %i.ab = icmp eq i64 %i.aa, 1
  %unroll_iter = and i64 %2, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod49 = trunc i64 %2 to i1
  br label %.lr.ph36.split

._crit_edge:                                      ; preds = %..loopexit_crit_edge, %bb.g, %bb.f, %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit19
  ret void

.lr.ph36.split:                                   ; preds = %.lr.ph36.split.preheader, %..loopexit_crit_edge
  %.01735 = phi i32 [ %i.ax, %..loopexit_crit_edge ], [ %i.z, %.lr.ph36.split.preheader ] ; 6 uses
  %i.ac = and i32 %.01735, %5
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %..loopexit_crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph36.split
  %i.ae = zext nneg i32 %.01735 to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %.pre41, i64 %i.ae ; 3 uses
  br i1 %i.ab, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.j ], [ 0, %.preheader.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %bb.j ], [ 0, %.preheader.preheader ]
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = and i32 %.01735, %i.af
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %.preheader.1

bb.h:                                             ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.pn.i20, i64 %indvars.iv ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !34
  %i.ak = load i32, ptr %gep, align 4, !tbaa !34
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !34
  store i32 %i.aj, ptr %gep, align 4, !tbaa !34
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader, %bb.h
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.am = and i32 %.01735, %i.al
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader.1
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.pn.i20, i64 %indvars.iv.next ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !34
  %i.aq = load i32, ptr %gep.1, align 4, !tbaa !34
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !34
  store i32 %i.ap, ptr %gep.1, align 4, !tbaa !34
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.loopexit.unr-lcssa, label %.preheader, !llvm.loop !575

..loopexit_crit_edge.loopexit.unr-lcssa:          ; preds = %bb.j
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %..loopexit_crit_edge.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.1, %..loopexit_crit_edge.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.ar = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.as = and i32 %.01735, %i.ar
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.k, label %..loopexit_crit_edge

bb.k:                                             ; preds = %.preheader.epil.preheader
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.pn.i20, i64 %indvars.iv.epil.init ; 2 uses
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !34
  %i.aw = load i32, ptr %gep.epil, align 4, !tbaa !34
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !34
  store i32 %i.av, ptr %gep.epil, align 4, !tbaa !34
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %..loopexit_crit_edge.loopexit.unr-lcssa, %bb.k, %.preheader.epil.preheader, %.lr.ph36.split
  %i.ax = lshr i32 %.01735, 1                     ; 2 uses
  %.not37 = icmp eq i32 %i.ax, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph36.split, !llvm.loop !576
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4, i32 noundef %5, i1 noundef zeroext %6) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = trunc i64 %2 to i32                      ; 4 uses
  %sext = shl i64 %2, 32                          ; 2 uses
  %i.d = ashr exact i64 %sext, 32                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 128, ptr %i.g, align 4, !tbaa !33
  %i.h = icmp eq i64 %sext, 0
  br i1 %i.h, label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.d, 128
  br i1 %i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #23
  %.pre.i.i.i = load i32, ptr %i.f, align 8, !tbaa !32
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.d, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !31
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.b
  %i.j = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.e, %bb.b ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr [4 x i8], ptr %i.j, i64 %.pre-phi.i.i3.i
  %i.l = sub nsw i64 %i.d, %.pre-phi.i.i3.i
  %i.m = shl nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.m, i1 false), !tbaa !34
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  store i32 %i.c, ptr %i.f, align 8, !tbaa !32
  br label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit

_ZN4llvm11SmallVectorIiLj128EEC2Em.exit:          ; preds = %bb.a, %.sink.split.i.i.i
  %i.n = zext i1 %6 to i32
  %i.o = shl i32 %5, 1                            ; 2 uses
  %i.p = udiv i32 %i.c, %i.o
  %.not32 = icmp ugt i32 %i.o, %i.c
  br i1 %.not32, label %._crit_edge34.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit
  %.not2730 = icmp eq i32 %5, 0
  %i.q = load ptr, ptr %0, align 8                ; 9 uses
  %7 = ptrtoaddr ptr %i.q to i64                  ; 3 uses
  %i.r = sdiv i32 %i.c, 2                         ; 6 uses
  br i1 %.not2730, label %._crit_edge34.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.s = zext i32 %5 to i64                       ; 6 uses
  %i.t = add nsw i64 %i.s, -1                     ; 2 uses
  %min.iters.check = icmp ult i32 %5, 24
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = icmp ugt i64 %i.t, 4294967295
  %n.vec = and i64 %i.s, 4294967288               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.s
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.w = add nsw i64 %i.s, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.02533 = phi i32 [ %i.cc, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.x = shl nuw nsw i32 %.02533, 1
  %i.y = or disjoint i32 %i.x, %i.n
  %i.z = mul i32 %i.y, %5                         ; 6 uses
  %i.aa = mul i32 %.02533, %5                     ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ab = mul i32 %5, %.02533
  %i.ac = add i32 %i.r, %i.ab
  %i.ad = xor i32 %i.aa, -1
  %i.ae = icmp ult i32 %i.ad, %i.u
  %i.af = xor i32 %i.ac, -1
  %i.ag = icmp ult i32 %i.af, %i.u
  %i.ah = or i1 %i.ag, %i.v
  %i.ai = xor i32 %i.z, -1
  %i.aj = icmp ult i32 %i.ai, %i.u
  %i.ak = or i1 %i.ae, %i.ah
  %i.al = or i1 %i.aj, %i.ak
  br i1 %i.al, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.am = add i32 %i.r, %i.aa
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 2 uses
  %i.ap = zext i32 %i.aa to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2                ; 3 uses
  %i.ar = sub nsw i64 %i.aq, %i.ao
  %diff.check = icmp ugt i64 %i.ar, -32
  %i.as = zext i32 %i.z to i64
  %i.at = shl nuw nsw i64 %i.as, 2                ; 4 uses
  %8 = add i64 %i.aq, %7
  %i.au = add i64 %i.at, %i.a
  %9 = sub i64 %i.au, %8
  %diff.check46 = icmp ugt i64 %9, -32
  %conflict.rdx = or i1 %diff.check, %diff.check46
  %10 = add i64 %i.at, %i.b
  %i.av = add i64 %i.aq, %7
  %11 = sub i64 %i.av, %10
  %diff.check47 = icmp ugt i64 %11, -32
  %conflict.rdx48 = or i1 %conflict.rdx, %diff.check47
  %12 = add i64 %i.ao, %7                         ; 2 uses
  %i.aw = add i64 %i.at, %i.a
  %13 = sub i64 %i.aw, %12
  %diff.check49 = icmp ugt i64 %13, -32
  %conflict.rdx50 = or i1 %conflict.rdx48, %diff.check49
  %i.ax = add i64 %i.at, %i.b
  %14 = sub i64 %i.ax, %12
  %diff.check51 = icmp ugt i64 %14, -32
  %conflict.rdx52 = or i1 %conflict.rdx50, %diff.check51
  br i1 %conflict.rdx52, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.ay = trunc nuw nsw i64 %index to i32         ; 2 uses
  %i.az = add i32 %i.z, %i.ay
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <4 x i32>, ptr %i.bb, align 4, !tbaa !34
  %wide.load53 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !34
  %i.bd = add i32 %i.aa, %i.ay                    ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <4 x i32> %wide.load, ptr %i.bf, align 4, !tbaa !34
  store <4 x i32> %wide.load53, ptr %i.bg, align 4, !tbaa !34
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ba ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load54 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !34
  %wide.load55 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !34
  %i.bj = add i32 %i.bd, %i.r
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x i32> %wide.load54, ptr %i.bl, align 4, !tbaa !34
  store <4 x i32> %wide.load55, ptr %i.bm, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !577

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bo = trunc nuw nsw i64 %indvars.iv.ph to i32 ; 2 uses
  %i.bp = add i32 %i.z, %i.bo
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !34
  %i.bt = add i32 %i.aa, %i.bo                    ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bu
  store i32 %i.bs, ptr %i.bv, align 4, !tbaa !34
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !34
  %i.by = add i32 %i.bt, %i.r
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bz
  store i32 %i.bx, ptr %i.ca, align 4, !tbaa !34
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cb = icmp eq i64 %indvars.iv.ph, %i.w
  br i1 %i.cb, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cc = add nuw nsw i32 %.02533, 1              ; 2 uses
  %.not = icmp eq i32 %i.cc, %i.p
  br i1 %.not, label %._crit_edge34.split, label %.preheader, !llvm.loop !0

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cd = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ce = add i32 %i.z, %i.cd
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !34
  %i.ci = add i32 %i.aa, %i.cd                    ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cj
  store i32 %i.ch, ptr %i.ck, align 4, !tbaa !34
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cf
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !34
  %i.cn = add i32 %i.ci, %i.r
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.co
  store i32 %i.cm, ptr %i.cp, align 4, !tbaa !34
  %i.cq = trunc i64 %indvars.iv to i32
  %i.cr = add i32 %i.cq, 1                        ; 2 uses
  %i.cs = add i32 %i.z, %i.cr
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !34
  %i.cw = add i32 %i.aa, %i.cr                    ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cx
  store i32 %i.cv, ptr %i.cy, align 4, !tbaa !34
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !34
  %i.db = add i32 %i.cw, %i.r
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dc
  store i32 %i.da, ptr %i.dd, align 4, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not27.1 = icmp eq i64 %indvars.iv.next.1, %i.s
  br i1 %.not27.1, label %._crit_edge, label %scalar.ph, !llvm.loop !578

._crit_edge34.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8shuffles6vshuffEN4llvm8ArrayRefIiEES2_jb(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4, i32 noundef %5, i1 noundef zeroext %6) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = trunc i64 %2 to i32                      ; 3 uses
  %sext = shl i64 %2, 32                          ; 2 uses
  %i.d = ashr exact i64 %sext, 32                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 128, ptr %i.g, align 4, !tbaa !33
  %i.h = icmp eq i64 %sext, 0
  br i1 %i.h, label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.d, 128
  br i1 %i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #23
  %.pre.i.i.i = load i32, ptr %i.f, align 8, !tbaa !32
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.d, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !31
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.b
  %i.j = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.e, %bb.b ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr [4 x i8], ptr %i.j, i64 %.pre-phi.i.i3.i
  %i.l = sub nsw i64 %i.d, %.pre-phi.i.i3.i
  %i.m = shl nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.m, i1 false), !tbaa !34
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  store i32 %i.c, ptr %i.f, align 8, !tbaa !32
  br label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit

_ZN4llvm11SmallVectorIiLj128EEC2Em.exit:          ; preds = %bb.a, %.sink.split.i.i.i
  %i.n = zext i1 %6 to i32
  %i.o = shl i32 %5, 1                            ; 2 uses
  %i.p = udiv i32 %i.c, %i.o
  %.not31 = icmp ugt i32 %i.o, %i.c
  br i1 %.not31, label %._crit_edge33.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit
  %.not2629 = icmp eq i32 %5, 0
  %i.q = load ptr, ptr %0, align 8                ; 9 uses
  %7 = ptrtoaddr ptr %i.q to i64                  ; 3 uses
  br i1 %.not2629, label %._crit_edge33.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.r = zext i32 %5 to i64                       ; 6 uses
  %i.s = add nsw i64 %i.r, -1                     ; 2 uses
  %min.iters.check = icmp ult i32 %5, 24
  %i.t = trunc i64 %i.s to i32                    ; 3 uses
  %i.u = icmp ugt i64 %i.s, 4294967295
  %n.vec = and i64 %i.r, 4294967288               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.r
  %xtraiter = and i64 %i.r, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.v = add nsw i64 %i.r, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.02432 = phi i32 [ %i.ca, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.w = shl nuw nsw i32 %.02432, 1               ; 3 uses
  %i.x = or disjoint i32 %i.w, %i.n
  %i.y = mul i32 %i.x, %5                         ; 6 uses
  %i.z = mul i32 %i.w, %5                         ; 6 uses
  %i.aa = or disjoint i32 %i.w, 1
  %i.ab = mul i32 %i.aa, %5                       ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ac = xor i32 %i.z, -1
  %i.ad = icmp ult i32 %i.ac, %i.t
  %i.ae = xor i32 %i.ab, -1
  %i.af = icmp ult i32 %i.ae, %i.t
  %i.ag = or i1 %i.af, %i.u
  %i.ah = xor i32 %i.y, -1
  %i.ai = icmp ult i32 %i.ah, %i.t
  %i.aj = or i1 %i.ad, %i.ag
  %i.ak = or i1 %i.ai, %i.aj
  br i1 %i.ak, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.al = zext i32 %i.ab to i64
  %i.am = shl nuw nsw i64 %i.al, 2                ; 2 uses
  %i.an = zext i32 %i.z to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 3 uses
  %i.ap = sub nsw i64 %i.ao, %i.am
  %diff.check = icmp ugt i64 %i.ap, -32
  %i.aq = zext i32 %i.y to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2                ; 4 uses
  %8 = add i64 %i.ao, %7
  %i.as = add i64 %i.ar, %i.a
  %9 = sub i64 %i.as, %8
  %diff.check44 = icmp ugt i64 %9, -32
  %conflict.rdx = or i1 %diff.check, %diff.check44
  %10 = add i64 %i.ar, %i.b
  %i.at = add i64 %i.ao, %7
  %11 = sub i64 %i.at, %10
  %diff.check45 = icmp ugt i64 %11, -32
  %conflict.rdx46 = or i1 %conflict.rdx, %diff.check45
  %12 = add i64 %i.am, %7                         ; 2 uses
  %i.au = add i64 %i.ar, %i.a
  %13 = sub i64 %i.au, %12
  %diff.check47 = icmp ugt i64 %13, -32
  %conflict.rdx48 = or i1 %conflict.rdx46, %diff.check47
  %i.av = add i64 %i.ar, %i.b
  %14 = sub i64 %i.av, %12
  %diff.check49 = icmp ugt i64 %14, -32
  %conflict.rdx50 = or i1 %conflict.rdx48, %diff.check49
  br i1 %conflict.rdx50, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.aw = trunc nuw nsw i64 %index to i32         ; 3 uses
  %i.ax = add i32 %i.y, %i.aw
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x i32>, ptr %i.az, align 4, !tbaa !34
  %wide.load51 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !34
  %i.bb = add i32 %i.z, %i.aw
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x i32> %wide.load, ptr %i.bd, align 4, !tbaa !34
  store <4 x i32> %wide.load51, ptr %i.be, align 4, !tbaa !34
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ay ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load52 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !34
  %wide.load53 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !34
  %i.bh = add i32 %i.ab, %i.aw
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <4 x i32> %wide.load52, ptr %i.bj, align 4, !tbaa !34
  store <4 x i32> %wide.load53, ptr %i.bk, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !579

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bm = trunc nuw nsw i64 %indvars.iv.ph to i32 ; 3 uses
  %i.bn = add i32 %i.y, %i.bm
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !34
  %i.br = add i32 %i.z, %i.bm
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bs
  store i32 %i.bq, ptr %i.bt, align 4, !tbaa !34
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bo
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !34
  %i.bw = add i32 %i.ab, %i.bm
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bx
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !34
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bz = icmp eq i64 %indvars.iv.ph, %i.v
  br i1 %i.bz, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ca = add nuw nsw i32 %.02432, 1              ; 2 uses
  %.not = icmp eq i32 %i.ca, %i.p
  br i1 %.not, label %._crit_edge33.split, label %.preheader, !llvm.loop !580

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.cc = add i32 %i.y, %i.cb
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !34
  %i.cg = add i32 %i.z, %i.cb
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ch
  store i32 %i.cf, ptr %i.ci, align 4, !tbaa !34
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cd
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !34
  %i.cl = add i32 %i.ab, %i.cb
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cm
  store i32 %i.ck, ptr %i.cn, align 4, !tbaa !34
  %i.co = trunc i64 %indvars.iv to i32
  %i.cp = add i32 %i.co, 1                        ; 3 uses
  %i.cq = add i32 %i.y, %i.cp
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !34
  %i.cu = add i32 %i.z, %i.cp
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cv
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !34
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cr
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !34
  %i.cz = add i32 %i.ab, %i.cp
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.da
  store i32 %i.cy, ptr %i.db, align 4, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not26.1 = icmp eq i64 %indvars.iv.next.1, %i.r
  br i1 %.not26.1, label %._crit_edge, label %scalar.ph, !llvm.loop !581

._crit_edge33.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8shuffles5vdealEN4llvm8ArrayRefIiEES2_jb(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4, i32 noundef %5, i1 noundef zeroext %6) #1 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector", align 8 ; 7 uses
  %i.a = trunc i64 %2 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.b = shl i32 %5, 1                            ; 3 uses
  %i.c = sub i32 %i.a, %i.b
  call void @_ZN8shuffles8vdealvddEN4llvm8ArrayRefIiEES2_j(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector") align 8 %7, ptr %1, i64 %2, ptr %3, i64 %4, i32 noundef %i.c)
  %i.d = load ptr, ptr %7, align 8, !tbaa !31     ; 6 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 7 uses
  %.sroa.0.0.copyload.pn.idx.i.i = sub nuw nsw i64 %i.h, %i.i
  %.sroa.0.0.copyload.pn.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.0.0.copyload.pn.idx.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.j = trunc nuw nsw i64 %i.i to i32            ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !31, !alias.scope !586
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !32, !alias.scope !586
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 128, ptr %i.m, align 4, !tbaa !33, !alias.scope !586
  %i.n = icmp eq i64 %i.i, 0
  br i1 %i.n, label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ugt i32 %i.g, 257
  br i1 %i.o, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull %i.k, i64 noundef %i.i, i64 noundef 4) #23
  %.pre.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !32, !alias.scope !586
  %.pre13.i.i.i.i = zext i32 %.pre.i.i.i.i to i64 ; 2 uses
  %.not11.i.i.i.i = icmp samesign eq i64 %i.i, %.pre13.i.i.i.i
  br i1 %.not11.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !31, !alias.scope !586
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i, %bb.b
  %i.p = phi ptr [ %.pre.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ %i.k, %bb.b ]
  %.pre-phi.i.i3.i.i = phi i64 [ %.pre13.i.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %i.p, i64 %.pre-phi.i.i3.i.i
  %i.r = sub nsw i64 %i.i, %.pre-phi.i.i3.i.i
  %i.s = shl nsw i64 %i.r, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %i.s, i1 false), !tbaa !34
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i
  store i32 %i.j, ptr %i.l, align 8, !tbaa !32, !alias.scope !586
  br label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit.i

_ZN4llvm11SmallVectorIiLj128EEC2Em.exit.i:        ; preds = %.sink.split.i.i.i.i, %bb.a
  %i.t = zext i1 %6 to i32
  %i.u = udiv i32 %i.j, %i.b
  %.not32.i = icmp ugt i32 %i.b, %i.j
  br i1 %.not32.i, label %_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit.i
  %.not2730.i = icmp eq i32 %5, 0
  %i.v = load ptr, ptr %0, align 8, !alias.scope !586 ; 9 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 3 uses
  %i.x = lshr i32 %i.j, 1                         ; 6 uses
  br i1 %.not2730.i, label %_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.y = zext i32 %5 to i64                       ; 6 uses
  %i.z = add nsw i64 %i.y, -1                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.i, 2                 ; 2 uses
  %8 = shl nuw nsw i64 %i.h, 2
  %min.iters.check = icmp ult i32 %5, 24
  %i.ab = trunc i64 %i.z to i32                   ; 3 uses
  %i.ac = icmp ugt i64 %i.z, 4294967295
  %i.ad = add i64 %8, %i.e
  %i.ae = add i64 %i.aa, %i.w
  %n.vec = and i64 %i.y, 4294967288               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.y
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.af = add nsw i64 %i.y, -1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.02533.i = phi i32 [ %i.cl, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 4 uses
  %i.ag = shl nuw nsw i32 %.02533.i, 1
  %i.ah = or disjoint i32 %i.ag, %i.t
  %i.ai = mul i32 %i.ah, %5                       ; 6 uses
  %i.aj = mul i32 %.02533.i, %5                   ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i
  %i.ak = mul i32 %5, %.02533.i
  %i.al = add i32 %i.x, %i.ak
  %i.am = xor i32 %i.aj, -1
  %i.an = icmp ult i32 %i.am, %i.ab
  %i.ao = xor i32 %i.al, -1
  %i.ap = icmp ult i32 %i.ao, %i.ab
  %i.aq = or i1 %i.ap, %i.ac
  %i.ar = xor i32 %i.ai, -1
  %i.as = icmp ult i32 %i.ar, %i.ab
  %i.at = or i1 %i.an, %i.aq
  %i.au = or i1 %i.as, %i.at
  br i1 %i.au, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.av = add i32 %i.x, %i.aj
  %i.aw = zext i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  %i.ay = zext i32 %i.aj to i64
  %i.az = shl nuw nsw i64 %i.ay, 2                ; 3 uses
  %i.ba = sub nsw i64 %i.az, %i.ax
  %diff.check = icmp ugt i64 %i.ba, -32
  %i.bb = zext i32 %i.ai to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2                ; 3 uses
  %9 = add i64 %i.ad, %i.bc                       ; 2 uses
  %i.bd = add i64 %i.ae, %i.az
  %10 = sub i64 %i.bd, %9
  %diff.check30 = icmp ugt i64 %10, -32
  %conflict.rdx = or i1 %diff.check, %diff.check30
  %11 = add i64 %i.az, %i.w
  %i.be = add i64 %i.bc, %i.e
  %12 = sub i64 %i.be, %11
  %diff.check31 = icmp ugt i64 %12, -32
  %conflict.rdx32 = or i1 %conflict.rdx, %diff.check31
  %.neg = sub i64 %i.aa, %9
  %i.bf = add i64 %i.ax, %i.w                     ; 2 uses
  %i.bg = add i64 %.neg, %i.bf
  %13 = add i64 %i.bg, -1
  %diff.check33 = icmp ult i64 %13, 31
  %conflict.rdx34 = or i1 %conflict.rdx32, %diff.check33
  %14 = add i64 %i.bc, %i.e
  %15 = sub i64 %14, %i.bf
  %diff.check35 = icmp ugt i64 %15, -32
  %conflict.rdx36 = or i1 %conflict.rdx34, %diff.check35
  br i1 %conflict.rdx36, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.bh = trunc nuw nsw i64 %index to i32         ; 2 uses
  %i.bi = add i32 %i.ai, %i.bh
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <4 x i32>, ptr %i.bk, align 4, !tbaa !34, !noalias !586
  %wide.load37 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !34, !noalias !586
  %i.bm = add i32 %i.aj, %i.bh                    ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %wide.load, ptr %i.bo, align 4, !tbaa !34
  store <4 x i32> %wide.load37, ptr %i.bp, align 4, !tbaa !34
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.pn.i.i, i64 %i.bj ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load38 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !34, !noalias !586
  %wide.load39 = load <4 x i32>, ptr %i.br, align 4, !tbaa !34, !noalias !586
  %i.bs = add i32 %i.bm, %i.x
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x i32> %wide.load38, ptr %i.bu, align 4, !tbaa !34
  store <4 x i32> %wide.load39, ptr %i.bv, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !584

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.i ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bx = trunc nuw nsw i64 %indvars.iv.i.ph to i32 ; 2 uses
  %i.by = add i32 %i.ai, %i.bx
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !34, !noalias !586
  %i.cc = add i32 %i.aj, %i.bx                    ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cd
  store i32 %i.cb, ptr %i.ce, align 4, !tbaa !34
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.pn.i.i, i64 %i.bz
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !34, !noalias !586
  %i.ch = add i32 %i.cc, %i.x
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ci
  store i32 %i.cg, ptr %i.cj, align 4, !tbaa !34
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ck = icmp eq i64 %indvars.iv.i.ph, %i.af
  br i1 %i.ck, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cl = add nuw nsw i32 %.02533.i, 1            ; 2 uses
  %.not.i = icmp eq i32 %i.cl, %i.u
  br i1 %.not.i, label %_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit, label %.preheader.i, !llvm.loop !0

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.cn = add i32 %i.ai, %i.cm
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !34, !noalias !586
  %i.cr = add i32 %i.aj, %i.cm                    ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cs
  store i32 %i.cq, ptr %i.ct, align 4, !tbaa !34
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.pn.i.i, i64 %i.co
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !34, !noalias !586
  %i.cw = add i32 %i.cr, %i.x
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cx
  store i32 %i.cv, ptr %i.cy, align 4, !tbaa !34
  %i.cz = trunc i64 %indvars.iv.i to i32
  %i.da = add i32 %i.cz, 1                        ; 2 uses
  %i.db = add i32 %i.ai, %i.da
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !34, !noalias !586
  %i.df = add i32 %i.aj, %i.da                    ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.dg
  store i32 %i.de, ptr %i.dh, align 4, !tbaa !34
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.pn.i.i, i64 %i.dc
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !34, !noalias !586
  %i.dk = add i32 %i.df, %i.x
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.dl
  store i32 %i.dj, ptr %i.dm, align 4, !tbaa !34
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %.not27.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.y
  br i1 %.not27.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !585

_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit: ; preds = %._crit_edge.i, %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit.i, %.preheader.lr.ph.i
  %i.dn = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit
  call void @free(ptr noundef %i.dn) #23
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit:          ; preds = %_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8shuffles8vdealb4wEN4llvm8ArrayRefIiEES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4) #1 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 3 uses
  %sext = shl i64 %2, 32                          ; 2 uses
  %i.b = ashr exact i64 %sext, 32                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 128, ptr %i.e, align 4, !tbaa !33
  %i.f = icmp eq i64 %sext, 0
  br i1 %i.f, label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.b, 128
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull %i.c, i64 noundef %i.b, i64 noundef 4) #23
  %.pre.i.i.i = load i32, ptr %i.d, align 8, !tbaa !32
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.b, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !31
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.b
  %i.h = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.c, %bb.b ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi.i.i3.i
  %i.j = sub nsw i64 %i.b, %.pre-phi.i.i3.i
  %i.k = shl nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %i.k, i1 false), !tbaa !34
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  store i32 %i.a, ptr %i.d, align 8, !tbaa !32
  br label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit

_ZN4llvm11SmallVectorIiLj128EEC2Em.exit:          ; preds = %bb.a, %.sink.split.i.i.i
  %.off = add i32 %i.a, 3
  %.not22 = icmp ult i32 %.off, 7
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit
  %i.l = sdiv i32 %i.a, 4                         ; 4 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !31     ; 4 uses
  %i.n = shl nsw i32 %i.l, 1
  %i.o = mul nsw i32 %i.l, 3
  %i.p = sext i32 %i.l to i64
  %i.q = sext i32 %i.n to i64
  %i.r = sext i32 %i.o to i64
  %i.s = zext i32 %i.l to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.m, i64 %i.p
  %invariant.gep25 = getelementptr [4 x i8], ptr %i.m, i64 %i.q
  %invariant.gep27 = getelementptr [4 x i8], ptr %i.m, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %i.t = shl nuw nsw i64 %indvars.iv, 2           ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store i32 %i.v, ptr %i.w, align 4, !tbaa !34
  %i.x = or disjoint i64 %i.t, 2                  ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !34
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.z, ptr %gep, align 4, !tbaa !34
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.t
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !34
  %gep26 = getelementptr [4 x i8], ptr %invariant.gep25, i64 %indvars.iv
end_hunk_0
