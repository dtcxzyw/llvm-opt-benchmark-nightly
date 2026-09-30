Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41207
inline.NumDeleted: 6299
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 230
begin_hunk_0_@_ZN6duckdb3Bit17SetEmptyBitStringERNS_8string_tES2_:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb3Bit17SetEmptyBitStringERNS_8string_tEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.b = icmp ult i32 %i.a, 13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = zext i32 %i.a to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 0, i64 %i.g, i1 false)
  %i.h = trunc i64 %1 to i8
  %i.i = sub i8 0, %i.h
  %i.j = and i8 %i.i, 7
  store i8 %i.j, ptr %i.f, align 1, !tbaa !273
  %i.k = load i32, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.l = icmp ult i32 %i.k, 13
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = select i1 %i.l, ptr %i.c, ptr %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !273   ; 4 uses
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.p, 1
  %i.q = icmp eq i8 %i.o, 1
  br i1 %i.q, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.p, 254
  br label %.lr.ph.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bi, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i8 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.r = load i32, ptr %0, align 8, !tbaa !273
  %i.s = icmp ult i32 %i.r, 13
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = select i1 %i.s, ptr %i.c, ptr %i.t
  %i.v = lshr i64 %.07.i.epil.init, 3
  %i.w = trunc i64 %.07.i.epil.init to i8
  %i.x = and i8 %i.w, 7
  %i.y = lshr exact i8 -128, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !273
  %i.ac = or i8 %i.ab, %i.y
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !273
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.pre.i = load i32, ptr %0, align 8, !tbaa !273
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %i.ad = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.k, %bb.a ] ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 13
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i
  %i.af = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af
  %i.ah = sub nuw nsw i64 12, %i.af
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.ah, i1 false)
  br label %_ZN6duckdb3Bit8FinalizeERNS_8string_tE.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.ai = load ptr, ptr %i.d, align 8
  %i.aj = load i32, ptr %i.ai, align 1
  store i32 %i.aj, ptr %i.c, align 4
  br label %_ZN6duckdb3Bit8FinalizeERNS_8string_tE.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.07.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bi, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ak = load i32, ptr %0, align 8, !tbaa !273
  %i.al = icmp ult i32 %i.ak, 13
  %i.am = load ptr, ptr %i.d, align 8
  %i.an = select i1 %i.al, ptr %i.c, ptr %i.am
  %i.ao = lshr i64 %.07.i, 3
  %i.ap = trunc i64 %.07.i to i8
  %i.aq = and i8 %i.ap, 6
  %i.ar = lshr exact i8 -128, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !273
  %i.av = or i8 %i.au, %i.ar
  store i8 %i.av, ptr %i.at, align 1, !tbaa !273
  %i.aw = load i32, ptr %0, align 8, !tbaa !273
  %i.ax = icmp ult i32 %i.aw, 13
  %i.ay = load ptr, ptr %i.d, align 8
  %i.az = select i1 %i.ax, ptr %i.c, ptr %i.ay
  %i.ba = lshr i64 %.07.i, 3
  %i.bb = trunc i64 %.07.i to i8
  %i.bc = and i8 %i.bb, 6
  %i.bd = lshr exact i8 64, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !273
  %i.bh = or i8 %i.bg, %i.bd
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !273
  %i.bi = add nuw nsw i64 %.07.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !4

_ZN6duckdb3Bit8FinalizeERNS_8string_tE.exit:      ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb3Bit8ToStringENS_8string_tEPc(i64 %0, ptr %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #16 align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  store i64 %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = trunc i64 %0 to i32                      ; 2 uses
  %i.c = icmp ult i32 %i.b, 13                    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = select i1 %i.c, ptr %i.d, ptr %1         ; 5 uses
  %i.f = and i64 %0, 4294967295                   ; 4 uses
  %i.g = load i8, ptr %i.e, align 1, !tbaa !273   ; 18 uses
  %i.h = icmp ult i8 %i.g, 8
  br i1 %i.h, label %.lr.ph, label %.preheader21

.lr.ph:                                           ; preds = %bb.a
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.sroa.gep20 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.sel = select i1 %i.c, ptr %.sroa.gep, ptr %.sroa.gep20 ; 8 uses
  %narrow53 = sub nuw nsw i8 8, %i.g
  %i.i = zext nneg i8 %narrow53 to i64            ; 8 uses
  %i.j = load i8, ptr %.sroa.sel, align 1, !tbaa !273
  %i.k = zext i8 %i.j to i32
  %i.l = zext nneg i8 %i.g to i32
  %i.m = lshr exact i32 128, %i.l
  %i.n = and i32 %i.m, %i.k
  %.not19 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not19, i8 48, i8 49
  store i8 %i.o, ptr %2, align 1, !tbaa !273
  %exitcond.not = icmp eq i8 %i.g, 7
  br i1 %exitcond.not, label %.preheader21, label %bb.b

.preheader21:                                     ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.a
  %.018.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %bb.h ], [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.e ], [ %i.i, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %bb.b ], [ %i.i, %.lr.ph ] ; 7 uses
  %i.p = icmp ugt i32 %i.b, 2
  br i1 %i.p, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader21
  %i.q = add nsw i64 %i.f, -2                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.q, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.r = getelementptr i8, ptr %2, i64 %.018.lcssa
  %i.s = zext i8 %i.g to i64                      ; 2 uses
  %i.t = tail call i64 @llvm.umax.i64(i64 %i.s, i64 8)
  %i.u = shl nuw nsw i64 %i.f, 3
  %i.v = add nuw nsw i64 %i.t, %i.u
  %i.w = add nsw i64 %i.v, -16
  %i.x = sub nsw i64 %i.w, %i.s
  %i.y = getelementptr i8, ptr %2, i64 %i.x
  %.sroa.gep45 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %.sroa.gep46 = getelementptr i8, ptr %1, i64 2
  %.sroa.sel47 = select i1 %i.c, ptr %.sroa.gep45, ptr %.sroa.gep46
  %i.z = getelementptr i8, ptr %i.e, i64 %i.f
  %bound0 = icmp ult ptr %i.r, %i.z
  %bound1 = icmp ult ptr %.sroa.sel47, %i.y
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %i.q, 16
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.q, 8
  %n.vec = and i64 %i.q, -16                      ; 5 uses
  %i.ab = or disjoint i64 %n.vec, 2
  %i.ac = shl nsw i64 %n.vec, 3
  %i.ad = or disjoint i64 %.018.lcssa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %.018.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = shl nuw i64 %index, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !tbaa !273, !alias.scope !1266 ; 6 uses
  %i.ai = icmp sgt <16 x i8> %wide.load, splat (i8 -1)
  %4 = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %5 = and <16 x i8> %wide.load, splat (i8 64)
  %6 = icmp eq <16 x i8> %5, zeroinitializer
  %i.aj = and <16 x i8> %wide.load, splat (i8 2)
  %7 = icmp eq <16 x i8> %i.aj, zeroinitializer
  %8 = select <16 x i1> %7, <16 x i8> splat (i8 48), <16 x i8> splat (i8 49)
  %9 = and <16 x i8> %wide.load, splat (i8 1)
  %10 = or disjoint <16 x i8> %9, splat (i8 48)
  %11 = shufflevector <16 x i1> %i.ai, <16 x i1> %6, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ak = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %12 = and <32 x i8> %i.ak, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %13 = icmp eq <32 x i8> %12, zeroinitializer
  %14 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %15 = and <32 x i8> %14, <i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>
  %16 = icmp eq <32 x i8> %15, zeroinitializer
  %17 = select <32 x i1> %16, <32 x i8> splat (i8 48), <32 x i8> splat (i8 49)
  %i.al = shufflevector <16 x i8> %8, <16 x i8> %10, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %18 = shufflevector <32 x i1> %11, <32 x i1> %13, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %19 = select <64 x i1> %18, <64 x i8> splat (i8 48), <64 x i8> splat (i8 49)
  %20 = shufflevector <32 x i8> %17, <32 x i8> %i.al, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec = shufflevector <64 x i8> %19, <64 x i8> %20, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i8> %interleaved.vec, ptr %4, align 1, !tbaa !273, !alias.scope !1267, !noalias !1266
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check.not.not, label %.preheader.preheader, label %vec.epilog.ph, !prof !276

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.q, -8                     ; 4 uses
  %i.an = or disjoint i64 %n.vec37, 2
  %i.ao = shl nsw i64 %n.vec37, 3
  %i.ap = or disjoint i64 %.018.lcssa, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.018.lcssa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.ar = shl nuw i64 %index38, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %index38
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %wide.load39 = load <8 x i8>, ptr %i.at, align 1, !tbaa !273, !alias.scope !1266 ; 8 uses
  %i.au = icmp sgt <8 x i8> %wide.load39, splat (i8 -1)
  %21 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %22 = and <8 x i8> %wide.load39, splat (i8 64)
  %23 = icmp eq <8 x i8> %22, zeroinitializer
  %24 = and <8 x i8> %wide.load39, splat (i8 32)
  %25 = icmp eq <8 x i8> %24, zeroinitializer
  %26 = and <8 x i8> %wide.load39, splat (i8 16)
  %27 = icmp eq <8 x i8> %26, zeroinitializer
  %i.av = and <8 x i8> %wide.load39, splat (i8 8)
  %28 = icmp eq <8 x i8> %i.av, zeroinitializer
  %29 = and <8 x i8> %wide.load39, splat (i8 4)
  %30 = icmp eq <8 x i8> %29, zeroinitializer
  %31 = and <8 x i8> %wide.load39, splat (i8 2)
  %32 = icmp eq <8 x i8> %31, zeroinitializer
  %33 = select <8 x i1> %32, <8 x i8> splat (i8 48), <8 x i8> splat (i8 49)
  %34 = and <8 x i8> %wide.load39, splat (i8 1)
  %35 = or disjoint <8 x i8> %34, splat (i8 48)
  %36 = shufflevector <8 x i1> %i.au, <8 x i1> %23, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %37 = shufflevector <8 x i1> %25, <8 x i1> %27, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %38 = shufflevector <8 x i1> %28, <8 x i1> %30, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %39 = select <16 x i1> %38, <16 x i8> splat (i8 48), <16 x i8> splat (i8 49)
  %40 = shufflevector <8 x i8> %33, <8 x i8> %35, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %41 = shufflevector <16 x i1> %36, <16 x i1> %37, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %42 = select <32 x i1> %41, <32 x i8> splat (i8 48), <32 x i8> splat (i8 49)
  %43 = shufflevector <16 x i8> %39, <16 x i8> %40, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec40 = shufflevector <32 x i8> %42, <32 x i8> %43, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i8> %interleaved.vec40, ptr %21, align 1, !tbaa !273, !alias.scope !1267, !noalias !1266
  %index.next41 = add nuw i64 %index38, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next41, %n.vec37
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1264

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.q, %n.vec37
  br i1 %cmp.n42, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01627.ph = phi i64 [ 2, %iter.check ], [ 2, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.126.ph = phi i64 [ %.018.lcssa, %iter.check ], [ %.018.lcssa, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.preheader

bb.b:                                             ; preds = %.lr.ph
  %i.ax = load i8, ptr %.sroa.sel, align 1, !tbaa !273
  %i.ay = zext i8 %i.ax to i32
  %narrow = add nuw nsw i8 %i.g, 1
  %i.az = zext nneg i8 %narrow to i32
  %i.ba = lshr exact i32 128, %i.az
  %i.bb = and i32 %i.ba, %i.ay
  %.not19.1 = icmp eq i32 %i.bb, 0
  %i.bc = select i1 %.not19.1, i8 48, i8 49
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !273
  %exitcond.not.1 = icmp eq i8 %i.g, 6
  br i1 %exitcond.not.1, label %.preheader21, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = load i8, ptr %.sroa.sel, align 1, !tbaa !273
  %i.bf = zext i8 %i.be to i32
  %narrow48 = add nuw nsw i8 %i.g, 2
  %i.bg = zext nneg i8 %narrow48 to i32
  %i.bh = lshr exact i32 128, %i.bg
  %i.bi = and i32 %i.bh, %i.bf
  %.not19.2 = icmp eq i32 %i.bi, 0
  %i.bj = select i1 %.not19.2, i8 48, i8 49
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !273
  %exitcond.not.2 = icmp eq i8 %i.g, 5
  br i1 %exitcond.not.2, label %.preheader21, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = load i8, ptr %.sroa.sel, align 1, !tbaa !273
  %i.bm = zext i8 %i.bl to i32
  %narrow49 = add nuw nsw i8 %i.g, 3
  %i.bn = zext nneg i8 %narrow49 to i32
  %i.bo = lshr exact i32 128, %i.bn
  %i.bp = and i32 %i.bo, %i.bm
  %.not19.3 = icmp eq i32 %i.bp, 0
  %i.bq = select i1 %.not19.3, i8 48, i8 49
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !273
  %exitcond.not.3 = icmp eq i8 %i.g, 4
  br i1 %exitcond.not.3, label %.preheader21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = load i8, ptr %.sroa.sel, align 1, !tbaa !273
  %i.bt = zext i8 %i.bs to i32
  %narrow50 = add nuw nsw i8 %i.g, 4
  %i.bu = zext nneg i8 %narrow50 to i32
  %i.bv = lshr exact i32 128, %i.bu
  %i.bw = and i32 %i.bv, %i.bt
  %.not19.4 = icmp eq i32 %i.bw, 0
  %i.bx = select i1 %.not19.4, i8 48, i8 49
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !273
  %exitcond.not.4 = icmp eq i8 %i.g, 3
  br i1 %exitcond.not.4, label %.preheader21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = load i8, ptr %.sroa.sel, align 1, !tbaa !273
  %i.ca = zext i8 %i.bz to i32
  %narrow51 = add nuw nsw i8 %i.g, 5
  %i.cb = zext nneg i8 %narrow51 to i32
  %i.cc = lshr exact i32 128, %i.cb
  %i.cd = and i32 %i.cc, %i.ca
  %.not19.5 = icmp eq i32 %i.cd, 0
  %i.ce = select i1 %.not19.5, i8 48, i8 49
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !273
  %exitcond.not.5 = icmp eq i8 %i.g, 2
  br i1 %exitcond.not.5, label %.preheader21, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cg = load i8, ptr %.sroa.sel, align 1, !tbaa !273
  %i.ch = zext i8 %i.cg to i32
  %narrow52 = add nuw nsw i8 %i.g, 6
  %i.ci = zext nneg i8 %narrow52 to i32
  %i.cj = lshr exact i32 128, %i.ci
  %i.ck = and i32 %i.cj, %i.ch
  %.not19.6 = icmp eq i32 %i.ck, 0
  %i.cl = select i1 %.not19.6, i8 48, i8 49
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !273
  %exitcond.not.6 = icmp eq i8 %i.g, 1
  br i1 %exitcond.not.6, label %.preheader21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cn = load i8, ptr %.sroa.sel, align 1, !tbaa !273
  %i.co = zext i8 %i.cn to i32
  %narrow54 = add nuw nsw i8 %i.g, 7
  %i.cp = zext nneg i8 %narrow54 to i32
  %i.cq = lshr exact i32 128, %i.cp
  %i.cr = and i32 %i.cq, %i.co
  %.not19.7 = icmp eq i32 %i.cr, 0
  %i.cs = select i1 %.not19.7, i8 48, i8 49
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !273
  br label %.preheader21

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.01627 = phi i64 [ %i.dw, %.preheader ], [ %.01627.ph, %.preheader.preheader ] ; 2 uses
  %.126 = phi i64 [ %i.dt, %.preheader ], [ %.126.ph, %.preheader.preheader ] ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01627 ; 8 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !273
  %.not = icmp sgt i8 %i.cv, -1
  %i.cw = select i1 %.not, i8 48, i8 49
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !273
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !273
  %44 = and i8 %i.cy, 64
  %.not.1 = icmp eq i8 %44, 0
  %45 = select i1 %.not.1, i8 48, i8 49
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store i8 %45, ptr %i.da, align 1, !tbaa !273
  %i.db = load i8, ptr %i.cu, align 1, !tbaa !273
  %46 = and i8 %i.db, 32
  %.not.2 = icmp eq i8 %46, 0
  %47 = select i1 %.not.2, i8 48, i8 49
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i8 %47, ptr %i.dd, align 1, !tbaa !273
  %i.de = load i8, ptr %i.cu, align 1, !tbaa !273
  %48 = and i8 %i.de, 16
  %.not.3 = icmp eq i8 %48, 0
  %49 = select i1 %.not.3, i8 48, i8 49
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 3
  store i8 %49, ptr %i.dg, align 1, !tbaa !273
  %i.dh = load i8, ptr %i.cu, align 1, !tbaa !273
  %50 = and i8 %i.dh, 8
  %.not.4 = icmp eq i8 %50, 0
  %51 = select i1 %.not.4, i8 48, i8 49
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i8 %51, ptr %i.dj, align 1, !tbaa !273
  %i.dk = load i8, ptr %i.cu, align 1, !tbaa !273
  %52 = and i8 %i.dk, 4
  %.not.5 = icmp eq i8 %52, 0
  %53 = select i1 %.not.5, i8 48, i8 49
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 5
  store i8 %53, ptr %i.dm, align 1, !tbaa !273
  %i.dn = load i8, ptr %i.cu, align 1, !tbaa !273
  %54 = and i8 %i.dn, 2
  %.not.6 = icmp eq i8 %54, 0
  %55 = select i1 %.not.6, i8 48, i8 49
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 6
  store i8 %55, ptr %i.dp, align 1, !tbaa !273
  %i.dq = load i8, ptr %i.cu, align 1, !tbaa !273
  %i.dr = and i8 %i.dq, 1
  %i.ds = or disjoint i8 %i.dr, 48
  %i.dt = add nuw nsw i64 %.126, 8
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 7
  store i8 %i.ds, ptr %i.dv, align 1, !tbaa !273
  %i.dw = add nuw nsw i64 %.01627, 1              ; 2 uses
  %exitcond30.not = icmp eq i64 %i.dw, %i.f
  br i1 %exitcond30.not, label %._crit_edge, label %.preheader, !llvm.loop !1265

._crit_edge:                                      ; preds = %.preheader, %middle.block, %vec.epilog.middle.block, %.preheader21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb3Bit8ToStringB5cxx11ENS_8string_tE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i32
  %.sroa.3.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8
  %i.b = icmp ult i32 %.sroa.0.0.extract.trunc.i, 13
  br i1 %i.b, label %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit, label %.else.i

.else.i:                                          ; preds = %bb.a
  %.else.val.i = load i8, ptr %2, align 1, !tbaa !273
  br label %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit

_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit:      ; preds = %bb.a, %.else.i
  %i.c = phi i8 [ %.sroa.3.0.extract.trunc.i, %bb.a ], [ %.else.val.i, %.else.i ]
  %i.d = shl i64 %1, 3
  %i.e = and i64 %i.d, 34359738360
  %i.f = add nsw i64 %i.e, -8
  %i.g = zext i8 %i.c to i64
  %i.h = sub nsw i64 %i.f, %i.g                   ; 5 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #48, !noalias !1270 ; 5 uses
  tail call void @_ZN6duckdb3Bit8ToStringENS_8string_tEPc(i64 %1, ptr %2, ptr noundef nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.h, ptr %i.a, align 8, !tbaa !245
  %i.k = icmp ugt i64 %i.h, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit12 ; 2 uses

.noexc9:                                          ; preds = %.noexc.i
  store ptr %i.l, ptr %0, align 8, !tbaa !235
  %i.m = load i64, ptr %i.a, align 8, !tbaa !245
  store i64 %i.m, ptr %i.j, align 8, !tbaa !273
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc9, %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit
  %i.n = phi ptr [ %i.l, %.noexc9 ], [ %i.j, %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.i, align 1, !tbaa !273
  store i8 %i.o, ptr %i.n, align 1, !tbaa !273
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.i, i64 %i.h, i1 false)
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !245  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !272
  %i.r = load ptr, ptr %0, align 8, !tbaa !235
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @_ZdaPv(ptr noundef nonnull %i.i) #47
  ret void

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit12: ; preds = %.noexc.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.i) #47
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -263, 34359738353) i64 @_ZN6duckdb3Bit9BitLengthENS_8string_tE(i64 %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i8
  %i.a = icmp ult i32 %.sroa.0.0.extract.trunc, 13
  br i1 %i.a, label %.cont, label %.else

.else:                                            ; preds = %bb.a
  %.else.val = load i8, ptr %1, align 1, !tbaa !273
  br label %.cont

.cont:                                            ; preds = %bb.a, %.else
  %i.b = phi i8 [ %.sroa.3.0.extract.trunc, %bb.a ], [ %.else.val, %.else ]
  %i.c = shl i64 %0, 3
  %i.d = and i64 %i.c, 34359738360
  %i.e = add nsw i64 %i.d, -8
  %i.f = zext i8 %i.b to i64
  %i.g = sub nsw i64 %i.e, %i.f
  ret i64 %i.g
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb3Bit19TryGetBitStringSizeENS_8string_tERmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 %0, ptr %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::vector.1077", align 8  ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store i64 %0, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = trunc i64 %0 to i32                      ; 2 uses
  %i.e = icmp ult i32 %i.d, 13
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.g = select i1 %i.e, ptr %i.f, ptr %1         ; 2 uses
  %i.h = and i64 %0, 4294967295                   ; 2 uses
  store i64 0, ptr %2, align 8, !tbaa !245
  %.not70.not = icmp eq i32 %i.d, 0
  br i1 %.not70.not, label %.noexc.i55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02571 = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.02571
  %i.j = load i8, ptr %i.i, align 1, !tbaa !273
  %i.k = and i8 %i.j, -2
  %switch = icmp eq i8 %i.k, 48
  br i1 %switch, label %bb.b, label %.noexc.i

bb.b:                                             ; preds = %.lr.ph
  %i.l = add nuw nsw i64 %.02571, 1               ; 3 uses
  store i64 %i.l, ptr %2, align 8, !tbaa !245
  %exitcond.not = icmp eq i64 %i.l, %i.h
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !1271

.noexc.i:                                         ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.m, ptr %7, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 63, ptr %i.b, align 8, !tbaa !245
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.02571
  store ptr %i.n, ptr %7, align 8, !tbaa !235
  %i.p = load i64, ptr %i.b, align 8, !tbaa !245  ; 3 uses
  store i64 %i.p, ptr %i.m, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.n, ptr noundef nonnull align 1 dereferenceable(63) @.str.7, i64 63, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !272
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.s, ptr %8, align 8, !tbaa !271
  %i.t = load i8, ptr %i.o, align 1, !tbaa !273
  store i8 %i.t, ptr %i.s, align 8, !tbaa !273
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.u, align 8, !tbaa !272
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.v, align 1, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46, !noalias !1276
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !1276
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.c unwind label %.body

bb.c:                                             ; preds = %.noexc
  %i.w = load ptr, ptr %4, align 8, !tbaa !250, !noalias !1276 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !251, !noalias !1276 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.w, %bb.c ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !235 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

end_hunk_0
