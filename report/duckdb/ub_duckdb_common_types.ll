inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 157
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 231
begin_hunk_0_@_ZN6duckdb3Bit17SetEmptyBitStringERNS_8string_tES2_:bb.a

_ZN6duckdb3Bit8FinalizeERNS_8string_tE.exit:      ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb3Bit17SetEmptyBitStringERNS_8string_tEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !153    ; 2 uses
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
  store i8 %i.j, ptr %i.f, align 1, !tbaa !153
  %i.k = load i32, ptr %0, align 8, !tbaa !153    ; 2 uses
  %i.l = icmp ult i32 %i.k, 13
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = select i1 %i.l, ptr %i.c, ptr %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !153   ; 4 uses
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
  %i.r = load i32, ptr %0, align 8, !tbaa !153
  %i.s = icmp ult i32 %i.r, 13
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = select i1 %i.s, ptr %i.c, ptr %i.t
  %i.v = lshr i64 %.07.i.epil.init, 3
  %i.w = trunc i64 %.07.i.epil.init to i8
  %i.x = and i8 %i.w, 7
  %i.y = lshr exact i8 -128, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !153
  %i.ac = or i8 %i.ab, %i.y
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !153
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.pre.i = load i32, ptr %0, align 8, !tbaa !153
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
  %i.ak = load i32, ptr %0, align 8, !tbaa !153
  %i.al = icmp ult i32 %i.ak, 13
  %i.am = load ptr, ptr %i.d, align 8
  %i.an = select i1 %i.al, ptr %i.c, ptr %i.am
  %i.ao = lshr i64 %.07.i, 3
  %i.ap = trunc i64 %.07.i to i8
  %i.aq = and i8 %i.ap, 6
  %i.ar = lshr exact i8 -128, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !153
  %i.av = or i8 %i.au, %i.ar
  store i8 %i.av, ptr %i.at, align 1, !tbaa !153
  %i.aw = load i32, ptr %0, align 8, !tbaa !153
  %i.ax = icmp ult i32 %i.aw, 13
  %i.ay = load ptr, ptr %i.d, align 8
  %i.az = select i1 %i.ax, ptr %i.c, ptr %i.ay
  %i.ba = lshr i64 %.07.i, 3
  %i.bb = trunc i64 %.07.i to i8
  %i.bc = and i8 %i.bb, 6
  %i.bd = lshr exact i8 64, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !153
  %i.bh = or i8 %i.bg, %i.bd
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !153
  %i.bi = add nuw nsw i64 %.07.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !168

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
  %i.g = load i8, ptr %i.e, align 1, !tbaa !153   ; 18 uses
  %i.h = icmp ult i8 %i.g, 8
  br i1 %i.h, label %.lr.ph, label %.preheader21

.lr.ph:                                           ; preds = %bb.a
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.sroa.gep20 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.sel = select i1 %i.c, ptr %.sroa.gep, ptr %.sroa.gep20 ; 8 uses
  %narrow68 = sub nuw nsw i8 8, %i.g
  %i.i = zext nneg i8 %narrow68 to i64            ; 8 uses
  %i.j = load i8, ptr %.sroa.sel, align 1, !tbaa !153
  %i.k = zext i8 %i.j to i32
  %i.l = zext nneg i8 %i.g to i32
  %i.m = lshr exact i32 128, %i.l
  %i.n = and i32 %i.m, %i.k
  %.not19 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not19, i8 48, i8 49
  store i8 %i.o, ptr %2, align 1, !tbaa !153
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
  %scevgep = getelementptr i8, ptr %2, i64 %.018.lcssa
  %i.r = zext i8 %i.g to i64                      ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.r, i64 8)
  %i.s = shl nuw nsw i64 %i.f, 3
  %i.t = add nuw nsw i64 %umax, %i.s
  %i.u = add nsw i64 %i.t, -16
  %i.v = sub nsw i64 %i.u, %i.r
  %scevgep32 = getelementptr i8, ptr %2, i64 %i.v
  %.sroa.gep60 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %.sroa.gep61 = getelementptr i8, ptr %1, i64 2
  %.sroa.sel62 = select i1 %i.c, ptr %.sroa.gep60, ptr %.sroa.gep61
  %scevgep34 = getelementptr i8, ptr %i.e, i64 %i.f
  %bound0 = icmp ult ptr %scevgep, %scevgep34
  %bound1 = icmp ult ptr %.sroa.sel62, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %i.q, 16
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.q, 8
  %n.vec = and i64 %i.q, -16                      ; 5 uses
  %i.w = or disjoint i64 %n.vec, 2
  %i.x = shl nsw i64 %n.vec, 3
  %i.y = or disjoint i64 %.018.lcssa, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %.018.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = shl i64 %index, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %wide.load = load <16 x i8>, ptr %i.ac, align 1, !tbaa !153, !alias.scope !169 ; 6 uses
  %i.ad = icmp sgt <16 x i8> %wide.load, splat (i8 -1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.af = and <16 x i8> %wide.load, splat (i8 64)
  %i.ag = icmp eq <16 x i8> %i.af, zeroinitializer
  %i.ah = and <16 x i8> %wide.load, splat (i8 2)
  %i.ai = icmp eq <16 x i8> %i.ah, zeroinitializer
  %i.aj = select <16 x i1> %i.ai, <16 x i8> splat (i8 48), <16 x i8> splat (i8 49)
  %i.ak = and <16 x i8> %wide.load, splat (i8 1)
  %i.al = or disjoint <16 x i8> %i.ak, splat (i8 48)
  %i.am = shufflevector <16 x i1> %i.ad, <16 x i1> %i.ag, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.an = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ao = and <32 x i8> %i.an, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %i.ap = icmp eq <32 x i8> %i.ao, zeroinitializer
  %i.aq = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ar = and <32 x i8> %i.aq, <i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>
  %i.as = icmp eq <32 x i8> %i.ar, zeroinitializer
  %i.at = select <32 x i1> %i.as, <32 x i8> splat (i8 48), <32 x i8> splat (i8 49)
  %i.au = shufflevector <16 x i8> %i.aj, <16 x i8> %i.al, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.av = shufflevector <32 x i1> %i.am, <32 x i1> %i.ap, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aw = select <64 x i1> %i.av, <64 x i8> splat (i8 48), <64 x i8> splat (i8 49)
  %i.ax = shufflevector <32 x i8> %i.at, <32 x i8> %i.au, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec = shufflevector <64 x i8> %i.aw, <64 x i8> %i.ax, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i8> %interleaved.vec, ptr %i.ae, align 1, !tbaa !153, !alias.scope !172, !noalias !169
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check.not.not, label %.preheader.preheader, label %vec.epilog.ph, !prof !177

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.q, -8                     ; 4 uses
  %i.az = or disjoint i64 %n.vec45, 2
  %i.ba = shl nsw i64 %n.vec45, 3
  %i.bb = or disjoint i64 %.018.lcssa, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %.018.lcssa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 3 uses
  %i.bd = shl i64 %index46, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 %index46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2 ; 2 uses
  %wide.load47 = load <8 x i8>, ptr %i.bf, align 1, !tbaa !153, !alias.scope !169 ; 4 uses
  %i.bg = icmp sgt <8 x i8> %wide.load47, splat (i8 -1)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bi = and <8 x i8> %wide.load47, splat (i8 64)
  %i.bj = icmp eq <8 x i8> %i.bi, zeroinitializer
  %i.bk = and <8 x i8> %wide.load47, splat (i8 32)
  %i.bl = icmp eq <8 x i8> %i.bk, zeroinitializer
  %i.bm = and <8 x i8> %wide.load47, splat (i8 16)
  %i.bn = icmp eq <8 x i8> %i.bm, zeroinitializer
  %wide.load51 = load <8 x i8>, ptr %i.bf, align 1, !tbaa !153, !alias.scope !169 ; 4 uses
  %i.bo = and <8 x i8> %wide.load51, splat (i8 8)
  %i.bp = icmp eq <8 x i8> %i.bo, zeroinitializer
  %i.bq = and <8 x i8> %wide.load51, splat (i8 4)
  %i.br = icmp eq <8 x i8> %i.bq, zeroinitializer
  %i.bs = and <8 x i8> %wide.load51, splat (i8 2)
  %i.bt = icmp eq <8 x i8> %i.bs, zeroinitializer
  %i.bu = select <8 x i1> %i.bt, <8 x i8> splat (i8 48), <8 x i8> splat (i8 49)
  %i.bv = and <8 x i8> %wide.load51, splat (i8 1)
  %i.bw = or disjoint <8 x i8> %i.bv, splat (i8 48)
  %i.bx = shufflevector <8 x i1> %i.bg, <8 x i1> %i.bj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.by = shufflevector <8 x i1> %i.bl, <8 x i1> %i.bn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bz = shufflevector <8 x i1> %i.bp, <8 x i1> %i.br, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ca = select <16 x i1> %i.bz, <16 x i8> splat (i8 48), <16 x i8> splat (i8 49)
  %i.cb = shufflevector <8 x i8> %i.bu, <8 x i8> %i.bw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cc = shufflevector <16 x i1> %i.bx, <16 x i1> %i.by, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cd = select <32 x i1> %i.cc, <32 x i8> splat (i8 48), <32 x i8> splat (i8 49)
  %i.ce = shufflevector <16 x i8> %i.ca, <16 x i8> %i.cb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec55 = shufflevector <32 x i8> %i.cd, <32 x i8> %i.ce, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i8> %interleaved.vec55, ptr %i.bh, align 1, !tbaa !153, !alias.scope !172, !noalias !169
  %index.next56 = add nuw i64 %index46, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next56, %n.vec45
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n57 = icmp eq i64 %i.q, %n.vec45
  br i1 %cmp.n57, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01627.ph = phi i64 [ 2, %iter.check ], [ 2, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  %.126.ph = phi i64 [ %.018.lcssa, %iter.check ], [ %.018.lcssa, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.preheader

bb.b:                                             ; preds = %.lr.ph
  %i.cg = load i8, ptr %.sroa.sel, align 1, !tbaa !153
  %i.ch = zext i8 %i.cg to i32
  %narrow = add nuw nsw i8 %i.g, 1
  %i.ci = zext nneg i8 %narrow to i32
  %i.cj = lshr exact i32 128, %i.ci
  %i.ck = and i32 %i.cj, %i.ch
  %.not19.1 = icmp eq i32 %i.ck, 0
  %i.cl = select i1 %.not19.1, i8 48, i8 49
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !153
  %exitcond.not.1 = icmp eq i8 %i.g, 6
  br i1 %exitcond.not.1, label %.preheader21, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cn = load i8, ptr %.sroa.sel, align 1, !tbaa !153
  %i.co = zext i8 %i.cn to i32
  %narrow63 = add nuw nsw i8 %i.g, 2
  %i.cp = zext nneg i8 %narrow63 to i32
  %i.cq = lshr exact i32 128, %i.cp
  %i.cr = and i32 %i.cq, %i.co
  %.not19.2 = icmp eq i32 %i.cr, 0
  %i.cs = select i1 %.not19.2, i8 48, i8 49
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !153
  %exitcond.not.2 = icmp eq i8 %i.g, 5
  br i1 %exitcond.not.2, label %.preheader21, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cu = load i8, ptr %.sroa.sel, align 1, !tbaa !153
  %i.cv = zext i8 %i.cu to i32
  %narrow64 = add nuw nsw i8 %i.g, 3
  %i.cw = zext nneg i8 %narrow64 to i32
  %i.cx = lshr exact i32 128, %i.cw
  %i.cy = and i32 %i.cx, %i.cv
  %.not19.3 = icmp eq i32 %i.cy, 0
  %i.cz = select i1 %.not19.3, i8 48, i8 49
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !153
  %exitcond.not.3 = icmp eq i8 %i.g, 4
  br i1 %exitcond.not.3, label %.preheader21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.db = load i8, ptr %.sroa.sel, align 1, !tbaa !153
  %i.dc = zext i8 %i.db to i32
  %narrow65 = add nuw nsw i8 %i.g, 4
  %i.dd = zext nneg i8 %narrow65 to i32
  %i.de = lshr exact i32 128, %i.dd
  %i.df = and i32 %i.de, %i.dc
  %.not19.4 = icmp eq i32 %i.df, 0
  %i.dg = select i1 %.not19.4, i8 48, i8 49
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !153
  %exitcond.not.4 = icmp eq i8 %i.g, 3
  br i1 %exitcond.not.4, label %.preheader21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.di = load i8, ptr %.sroa.sel, align 1, !tbaa !153
  %i.dj = zext i8 %i.di to i32
  %narrow66 = add nuw nsw i8 %i.g, 5
  %i.dk = zext nneg i8 %narrow66 to i32
  %i.dl = lshr exact i32 128, %i.dk
  %i.dm = and i32 %i.dl, %i.dj
  %.not19.5 = icmp eq i32 %i.dm, 0
  %i.dn = select i1 %.not19.5, i8 48, i8 49
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !153
  %exitcond.not.5 = icmp eq i8 %i.g, 2
  br i1 %exitcond.not.5, label %.preheader21, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dp = load i8, ptr %.sroa.sel, align 1, !tbaa !153
  %i.dq = zext i8 %i.dp to i32
  %narrow67 = add nuw nsw i8 %i.g, 6
  %i.dr = zext nneg i8 %narrow67 to i32
  %i.ds = lshr exact i32 128, %i.dr
  %i.dt = and i32 %i.ds, %i.dq
  %.not19.6 = icmp eq i32 %i.dt, 0
  %i.du = select i1 %.not19.6, i8 48, i8 49
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !153
  %exitcond.not.6 = icmp eq i8 %i.g, 1
  br i1 %exitcond.not.6, label %.preheader21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dw = load i8, ptr %.sroa.sel, align 1, !tbaa !153
  %i.dx = zext i8 %i.dw to i32
  %narrow69 = add nuw nsw i8 %i.g, 7
  %i.dy = zext nneg i8 %narrow69 to i32
  %i.dz = lshr exact i32 128, %i.dy
  %i.ea = and i32 %i.dz, %i.dx
  %.not19.7 = icmp eq i32 %i.ea, 0
  %i.eb = select i1 %.not19.7, i8 48, i8 49
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !153
  br label %.preheader21

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.01627 = phi i64 [ %i.fr, %.preheader ], [ %.01627.ph, %.preheader.preheader ] ; 2 uses
  %.126 = phi i64 [ %i.fo, %.preheader ], [ %.126.ph, %.preheader.preheader ] ; 9 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01627 ; 8 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !153
  %.not = icmp sgt i8 %i.ee, -1
  %i.ef = select i1 %.not, i8 48, i8 49
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !153
  %i.eh = load i8, ptr %i.ed, align 1, !tbaa !153
  %i.ei = and i8 %i.eh, 64
  %.not.1 = icmp eq i8 %i.ei, 0
  %i.ej = select i1 %.not.1, i8 48, i8 49
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !153
  %i.em = load i8, ptr %i.ed, align 1, !tbaa !153
  %i.en = and i8 %i.em, 32
  %.not.2 = icmp eq i8 %i.en, 0
  %i.eo = select i1 %.not.2, i8 48, i8 49
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store i8 %i.eo, ptr %i.eq, align 1, !tbaa !153
  %i.er = load i8, ptr %i.ed, align 1, !tbaa !153
  %i.es = and i8 %i.er, 16
  %.not.3 = icmp eq i8 %i.es, 0
  %i.et = select i1 %.not.3, i8 48, i8 49
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 3
  store i8 %i.et, ptr %i.ev, align 1, !tbaa !153
  %i.ew = load i8, ptr %i.ed, align 1, !tbaa !153
  %i.ex = and i8 %i.ew, 8
  %.not.4 = icmp eq i8 %i.ex, 0
  %i.ey = select i1 %.not.4, i8 48, i8 49
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store i8 %i.ey, ptr %i.fa, align 1, !tbaa !153
  %i.fb = load i8, ptr %i.ed, align 1, !tbaa !153
  %i.fc = and i8 %i.fb, 4
  %.not.5 = icmp eq i8 %i.fc, 0
  %i.fd = select i1 %.not.5, i8 48, i8 49
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 5
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !153
  %i.fg = load i8, ptr %i.ed, align 1, !tbaa !153
  %i.fh = and i8 %i.fg, 2
  %.not.6 = icmp eq i8 %i.fh, 0
  %i.fi = select i1 %.not.6, i8 48, i8 49
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 6
  store i8 %i.fi, ptr %i.fk, align 1, !tbaa !153
  %i.fl = load i8, ptr %i.ed, align 1, !tbaa !153
  %i.fm = and i8 %i.fl, 1
  %i.fn = or disjoint i8 %i.fm, 48
  %i.fo = add nuw nsw i64 %.126, 8
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 %.126
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 7
  store i8 %i.fn, ptr %i.fq, align 1, !tbaa !153
  %i.fr = add nuw nsw i64 %.01627, 1              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_S7_DpT_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #47
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !119

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !115, !noalias !189
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #47
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46, !noalias !189
  resume { ptr, i32 } %i.j

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46, !noalias !189
  ret void
}

declare void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_NS_12optional_ptrIKNS_10ExpressionELb1EEENS_12optional_idxE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb3Bit5ToBitENS_8string_tERS1_(i64 %0, ptr %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #13 align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  store i64 %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = trunc i64 %0 to i32                      ; 2 uses
  %i.c = icmp ult i32 %i.b, 13                    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = select i1 %i.c, ptr %i.d, ptr %1         ; 28 uses
  %i.f = and i64 %0, 4294967295                   ; 3 uses
  %i.g = load i32, ptr %2, align 8, !tbaa !153
  %i.h = icmp ult i32 %i.g, 13
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = and i64 %0, 7                            ; 18 uses
  %.not42 = icmp eq i64 %i.m, 0
  br i1 %.not42, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = load i8, ptr %i.e, align 1, !tbaa !153
  %i.o = icmp eq i8 %i.n, 49                      ; 2 uses
  %i.p = zext i1 %i.o to i8
  %exitcond.not = icmp eq i64 %i.m, 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.q = select i1 %i.o, i8 2, i8 0
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.sroa.gep62 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.sel = select i1 %i.c, ptr %.sroa.gep, ptr %.sroa.gep62
  %i.r = load i8, ptr %.sroa.sel, align 1, !tbaa !153
  %i.s = icmp eq i8 %i.r, 49
  %i.t = zext i1 %i.s to i8
  %spec.select.1 = or disjoint i8 %i.q, %i.t      ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.m, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.u = shl nuw nsw i8 %spec.select.1, 1
  %.sroa.gep63 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %.sroa.gep64 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.sel65 = select i1 %i.c, ptr %.sroa.gep63, ptr %.sroa.gep64
  %i.v = load i8, ptr %.sroa.sel65, align 1, !tbaa !153
  %i.w = icmp eq i8 %i.v, 49
  %i.x = zext i1 %i.w to i8
  %spec.select.2 = or disjoint i8 %i.u, %i.x      ; 2 uses
  %exitcond.not.2 = icmp eq i64 %i.m, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.y = shl nuw nsw i8 %spec.select.2, 1
  %.sroa.gep66 = getelementptr inbounds nuw i8, ptr %3, i64 7
  %.sroa.gep67 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.sroa.sel68 = select i1 %i.c, ptr %.sroa.gep66, ptr %.sroa.gep67
  %i.z = load i8, ptr %.sroa.sel68, align 1, !tbaa !153
  %i.aa = icmp eq i8 %i.z, 49
  %i.ab = zext i1 %i.aa to i8
  %spec.select.3 = or disjoint i8 %i.y, %i.ab     ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.m, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.ac = shl nuw nsw i8 %spec.select.3, 1
  %.sroa.gep69 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.gep70 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.sel71 = select i1 %i.c, ptr %.sroa.gep69, ptr %.sroa.gep70
  %i.ad = load i8, ptr %.sroa.sel71, align 1, !tbaa !153
  %i.ae = icmp eq i8 %i.ad, 49
  %i.af = zext i1 %i.ae to i8
  %spec.select.4 = or disjoint i8 %i.ac, %i.af    ; 2 uses
  %exitcond.not.4 = icmp eq i64 %i.m, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.ag = shl nuw i8 %spec.select.4, 1
  %.sroa.gep72 = getelementptr inbounds nuw i8, ptr %3, i64 9
  %.sroa.gep73 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.sroa.sel74 = select i1 %i.c, ptr %.sroa.gep72, ptr %.sroa.gep73
  %i.ah = load i8, ptr %.sroa.sel74, align 1, !tbaa !153
  %i.ai = icmp eq i8 %i.ah, 49
  %i.aj = zext i1 %i.ai to i8
  %spec.select.5 = or disjoint i8 %i.ag, %i.aj    ; 2 uses
  %exitcond.not.5 = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.ak = shl i8 %spec.select.5, 1
  %.sroa.gep75 = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sroa.gep76 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.sel77 = select i1 %i.c, ptr %.sroa.gep75, ptr %.sroa.gep76
  %i.al = load i8, ptr %.sroa.sel77, align 1, !tbaa !153
  %i.am = icmp eq i8 %i.al, 49
  %i.an = zext i1 %i.am to i8
  %spec.select.6 = or disjoint i8 %i.ak, %i.an
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %spec.select.lcssa = phi i8 [ %i.p, %.lr.ph ], [ %spec.select.1, %.lr.ph.1 ], [ %spec.select.2, %.lr.ph.2 ], [ %spec.select.3, %.lr.ph.3 ], [ %spec.select.4, %.lr.ph.4 ], [ %spec.select.5, %.lr.ph.5 ], [ %spec.select.6, %.lr.ph.6 ]
  %i.ao = trunc nuw nsw i64 %i.m to i8
  %i.ap = sub nuw nsw i8 8, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.ap, ptr %i.l, align 1, !tbaa !153
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.030.lcssa47 = phi i8 [ %spec.select.lcssa, %._crit_edge ], [ 0, %bb.a ]
  %.029 = phi ptr [ %i.aq, %._crit_edge ], [ %i.l, %bb.a ] ; 9 uses
  store i8 %.030.lcssa47, ptr %.029, align 1, !tbaa !153
  %.not43 = icmp ult i32 %i.b, 8
  br i1 %.not43, label %._crit_edge41, label %iter.check

iter.check:                                       ; preds = %._crit_edge.thread
  %i.ar = xor i64 %i.m, -1
  %i.as = add nsw i64 %i.f, %i.ar                 ; 3 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.as, 56
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.029, i64 1
  %i.av = xor i64 %i.m, -1
  %i.aw = add nsw i64 %i.f, %i.av                 ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = getelementptr i8, ptr %.029, i64 %i.ax
  %scevgep48 = getelementptr i8, ptr %i.ay, i64 2
  %scevgep49 = getelementptr i8, ptr %i.e, i64 %i.m
  %i.az = and i64 %i.aw, -8
  %i.ba = getelementptr i8, ptr %i.e, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.m
  %scevgep50 = getelementptr i8, ptr %i.bb, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep50
  %bound1 = icmp ult ptr %scevgep49, %scevgep48
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check51 = icmp ult i64 %i.as, 120
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.au, 8
  %n.vec = and i64 %i.au, 4611686018427387888     ; 5 uses
  %i.bc = getelementptr i8, ptr %.029, i64 %n.vec
  %i.bd = shl i64 %n.vec, 3
  %i.be = or disjoint i64 %i.m, %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.029, i64 %index
  %i.bf = shl i64 %index, 3
  %i.bg = or disjoint i64 %i.m, %i.bf             ; 16 uses
  %i.bh = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.bi = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %i.bm = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 24
  %i.bo = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 32
  %i.bq = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 40
  %i.bs = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 48
  %i.bu = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 56
  %i.bw = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 64
  %i.by = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 72
  %i.ca = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 80
  %i.cc = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 88
  %i.ce = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 96
  %i.cg = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 104
  %i.ci = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 112
  %i.ck = getelementptr i8, ptr %i.e, i64 %i.bg   ; 8 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 120
  %i.cm = load i8, ptr %i.bh, align 1, !tbaa !153, !alias.scope !192
  %i.cn = load i8, ptr %i.bj, align 1, !tbaa !153, !alias.scope !192
  %i.co = load i8, ptr %i.bl, align 1, !tbaa !153, !alias.scope !192
  %i.cp = load i8, ptr %i.bn, align 1, !tbaa !153, !alias.scope !192
  %i.cq = load i8, ptr %i.bp, align 1, !tbaa !153, !alias.scope !192
  %i.cr = load i8, ptr %i.br, align 1, !tbaa !153, !alias.scope !192
  %i.cs = load i8, ptr %i.bt, align 1, !tbaa !153, !alias.scope !192
  %i.ct = load i8, ptr %i.bv, align 1, !tbaa !153, !alias.scope !192
  %i.cu = load i8, ptr %i.bx, align 1, !tbaa !153, !alias.scope !192
  %i.cv = load i8, ptr %i.bz, align 1, !tbaa !153, !alias.scope !192
  %i.cw = load i8, ptr %i.cb, align 1, !tbaa !153, !alias.scope !192
  %i.cx = load i8, ptr %i.cd, align 1, !tbaa !153, !alias.scope !192
  %i.cy = load i8, ptr %i.cf, align 1, !tbaa !153, !alias.scope !192
  %i.cz = load i8, ptr %i.ch, align 1, !tbaa !153, !alias.scope !192
  %i.da = load i8, ptr %i.cj, align 1, !tbaa !153, !alias.scope !192
  %i.db = load i8, ptr %i.cl, align 1, !tbaa !153, !alias.scope !192
  %i.dc = insertelement <16 x i8> poison, i8 %i.cm, i64 0
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 1
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 2
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 3
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 4
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 5
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 6
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 7
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 8
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 9
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 10
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 11
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 12
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 13
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 14
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 15
  %i.ds = icmp eq <16 x i8> %i.dr, splat (i8 49)
  %i.dt = select <16 x i1> %i.ds, <16 x i8> splat (i8 2), <16 x i8> zeroinitializer
  %i.du = getelementptr i8, ptr %i.bh, i64 1
  %i.dv = getelementptr i8, ptr %i.bi, i64 9
  %i.dw = getelementptr i8, ptr %i.bk, i64 17
  %i.dx = getelementptr i8, ptr %i.bm, i64 25
  %i.dy = getelementptr i8, ptr %i.bo, i64 33
  %i.dz = getelementptr i8, ptr %i.bq, i64 41
  %i.ea = getelementptr i8, ptr %i.bs, i64 49
  %i.eb = getelementptr i8, ptr %i.bu, i64 57
  %i.ec = getelementptr i8, ptr %i.bw, i64 65
  %i.ed = getelementptr i8, ptr %i.by, i64 73
  %i.ee = getelementptr i8, ptr %i.ca, i64 81
  %i.ef = getelementptr i8, ptr %i.cc, i64 89
  %i.eg = getelementptr i8, ptr %i.ce, i64 97
  %i.eh = getelementptr i8, ptr %i.cg, i64 105
  %i.ei = getelementptr i8, ptr %i.ci, i64 113
  %i.ej = getelementptr i8, ptr %i.ck, i64 121
  %i.ek = load i8, ptr %i.du, align 1, !tbaa !153, !alias.scope !192
  %i.el = load i8, ptr %i.dv, align 1, !tbaa !153, !alias.scope !192
  %i.em = load i8, ptr %i.dw, align 1, !tbaa !153, !alias.scope !192
  %i.en = load i8, ptr %i.dx, align 1, !tbaa !153, !alias.scope !192
  %i.eo = load i8, ptr %i.dy, align 1, !tbaa !153, !alias.scope !192
  %i.ep = load i8, ptr %i.dz, align 1, !tbaa !153, !alias.scope !192
  %i.eq = load i8, ptr %i.ea, align 1, !tbaa !153, !alias.scope !192
  %i.er = load i8, ptr %i.eb, align 1, !tbaa !153, !alias.scope !192
  %i.es = load i8, ptr %i.ec, align 1, !tbaa !153, !alias.scope !192
  %i.et = load i8, ptr %i.ed, align 1, !tbaa !153, !alias.scope !192
  %i.eu = load i8, ptr %i.ee, align 1, !tbaa !153, !alias.scope !192
  %i.ev = load i8, ptr %i.ef, align 1, !tbaa !153, !alias.scope !192
  %i.ew = load i8, ptr %i.eg, align 1, !tbaa !153, !alias.scope !192
  %i.ex = load i8, ptr %i.eh, align 1, !tbaa !153, !alias.scope !192
  %i.ey = load i8, ptr %i.ei, align 1, !tbaa !153, !alias.scope !192
  %i.ez = load i8, ptr %i.ej, align 1, !tbaa !153, !alias.scope !192
  %i.fa = insertelement <16 x i8> poison, i8 %i.ek, i64 0
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 1
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 2
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 3
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 4
  %i.ff = insertelement <16 x i8> %i.fe, i8 %i.ep, i64 5
  %i.fg = insertelement <16 x i8> %i.ff, i8 %i.eq, i64 6
  %i.fh = insertelement <16 x i8> %i.fg, i8 %i.er, i64 7
  %i.fi = insertelement <16 x i8> %i.fh, i8 %i.es, i64 8
  %i.fj = insertelement <16 x i8> %i.fi, i8 %i.et, i64 9
  %i.fk = insertelement <16 x i8> %i.fj, i8 %i.eu, i64 10
  %i.fl = insertelement <16 x i8> %i.fk, i8 %i.ev, i64 11
  %i.fm = insertelement <16 x i8> %i.fl, i8 %i.ew, i64 12
  %i.fn = insertelement <16 x i8> %i.fm, i8 %i.ex, i64 13
  %i.fo = insertelement <16 x i8> %i.fn, i8 %i.ey, i64 14
  %i.fp = insertelement <16 x i8> %i.fo, i8 %i.ez, i64 15
  %i.fq = icmp eq <16 x i8> %i.fp, splat (i8 49)
  %i.fr = zext <16 x i1> %i.fq to <16 x i8>
  %i.fs = or disjoint <16 x i8> %i.dt, %i.fr
  %i.ft = getelementptr i8, ptr %i.bh, i64 2
  %i.fu = getelementptr i8, ptr %i.bi, i64 10
  %i.fv = getelementptr i8, ptr %i.bk, i64 18
  %i.fw = getelementptr i8, ptr %i.bm, i64 26
  %i.fx = getelementptr i8, ptr %i.bo, i64 34
  %i.fy = getelementptr i8, ptr %i.bq, i64 42
  %i.fz = getelementptr i8, ptr %i.bs, i64 50
  %i.ga = getelementptr i8, ptr %i.bu, i64 58
  %i.gb = getelementptr i8, ptr %i.bw, i64 66
  %i.gc = getelementptr i8, ptr %i.by, i64 74
  %i.gd = getelementptr i8, ptr %i.ca, i64 82
  %i.ge = getelementptr i8, ptr %i.cc, i64 90
  %i.gf = getelementptr i8, ptr %i.ce, i64 98
  %i.gg = getelementptr i8, ptr %i.cg, i64 106
  %i.gh = getelementptr i8, ptr %i.ci, i64 114
  %i.gi = getelementptr i8, ptr %i.ck, i64 122
  %i.gj = load i8, ptr %i.ft, align 1, !tbaa !153, !alias.scope !192
  %i.gk = load i8, ptr %i.fu, align 1, !tbaa !153, !alias.scope !192
  %i.gl = load i8, ptr %i.fv, align 1, !tbaa !153, !alias.scope !192
  %i.gm = load i8, ptr %i.fw, align 1, !tbaa !153, !alias.scope !192
  %i.gn = load i8, ptr %i.fx, align 1, !tbaa !153, !alias.scope !192
  %i.go = load i8, ptr %i.fy, align 1, !tbaa !153, !alias.scope !192
  %i.gp = load i8, ptr %i.fz, align 1, !tbaa !153, !alias.scope !192
  %i.gq = load i8, ptr %i.ga, align 1, !tbaa !153, !alias.scope !192
  %i.gr = load i8, ptr %i.gb, align 1, !tbaa !153, !alias.scope !192
  %i.gs = load i8, ptr %i.gc, align 1, !tbaa !153, !alias.scope !192
  %i.gt = load i8, ptr %i.gd, align 1, !tbaa !153, !alias.scope !192
  %i.gu = load i8, ptr %i.ge, align 1, !tbaa !153, !alias.scope !192
  %i.gv = load i8, ptr %i.gf, align 1, !tbaa !153, !alias.scope !192
  %i.gw = load i8, ptr %i.gg, align 1, !tbaa !153, !alias.scope !192
  %i.gx = load i8, ptr %i.gh, align 1, !tbaa !153, !alias.scope !192
  %i.gy = load i8, ptr %i.gi, align 1, !tbaa !153, !alias.scope !192
  %i.gz = insertelement <16 x i8> poison, i8 %i.gj, i64 0
  %i.ha = insertelement <16 x i8> %i.gz, i8 %i.gk, i64 1
  %i.hb = insertelement <16 x i8> %i.ha, i8 %i.gl, i64 2
  %i.hc = insertelement <16 x i8> %i.hb, i8 %i.gm, i64 3
  %i.hd = insertelement <16 x i8> %i.hc, i8 %i.gn, i64 4
  %i.he = insertelement <16 x i8> %i.hd, i8 %i.go, i64 5
  %i.hf = insertelement <16 x i8> %i.he, i8 %i.gp, i64 6
  %i.hg = insertelement <16 x i8> %i.hf, i8 %i.gq, i64 7
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 8
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 9
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 10
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 11
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 12
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 13
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 14
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 15
  %i.hp = icmp eq <16 x i8> %i.ho, splat (i8 49)
  %i.hq = shl nuw nsw <16 x i8> %i.fs, splat (i8 2)
  %i.hr = select <16 x i1> %i.hp, <16 x i8> splat (i8 2), <16 x i8> zeroinitializer
  %i.hs = or disjoint <16 x i8> %i.hq, %i.hr
  %i.ht = getelementptr i8, ptr %i.bh, i64 3
  %i.hu = getelementptr i8, ptr %i.bi, i64 11
  %i.hv = getelementptr i8, ptr %i.bk, i64 19
  %i.hw = getelementptr i8, ptr %i.bm, i64 27
  %i.hx = getelementptr i8, ptr %i.bo, i64 35
  %i.hy = getelementptr i8, ptr %i.bq, i64 43
  %i.hz = getelementptr i8, ptr %i.bs, i64 51
  %i.ia = getelementptr i8, ptr %i.bu, i64 59
  %i.ib = getelementptr i8, ptr %i.bw, i64 67
  %i.ic = getelementptr i8, ptr %i.by, i64 75
  %i.id = getelementptr i8, ptr %i.ca, i64 83
  %i.ie = getelementptr i8, ptr %i.cc, i64 91
  %i.if = getelementptr i8, ptr %i.ce, i64 99
  %i.ig = getelementptr i8, ptr %i.cg, i64 107
  %i.ih = getelementptr i8, ptr %i.ci, i64 115
  %i.ii = getelementptr i8, ptr %i.ck, i64 123
  %i.ij = load i8, ptr %i.ht, align 1, !tbaa !153, !alias.scope !192
  %i.ik = load i8, ptr %i.hu, align 1, !tbaa !153, !alias.scope !192
  %i.il = load i8, ptr %i.hv, align 1, !tbaa !153, !alias.scope !192
  %i.im = load i8, ptr %i.hw, align 1, !tbaa !153, !alias.scope !192
  %i.in = load i8, ptr %i.hx, align 1, !tbaa !153, !alias.scope !192
  %i.io = load i8, ptr %i.hy, align 1, !tbaa !153, !alias.scope !192
  %i.ip = load i8, ptr %i.hz, align 1, !tbaa !153, !alias.scope !192
  %i.iq = load i8, ptr %i.ia, align 1, !tbaa !153, !alias.scope !192
  %i.ir = load i8, ptr %i.ib, align 1, !tbaa !153, !alias.scope !192
  %i.is = load i8, ptr %i.ic, align 1, !tbaa !153, !alias.scope !192
  %i.it = load i8, ptr %i.id, align 1, !tbaa !153, !alias.scope !192
  %i.iu = load i8, ptr %i.ie, align 1, !tbaa !153, !alias.scope !192
  %i.iv = load i8, ptr %i.if, align 1, !tbaa !153, !alias.scope !192
  %i.iw = load i8, ptr %i.ig, align 1, !tbaa !153, !alias.scope !192
  %i.ix = load i8, ptr %i.ih, align 1, !tbaa !153, !alias.scope !192
end_hunk_1
begin_hunk_2_@_ZN6duckdb3Bit5ToBitENS_8string_tERS1_:bb.a
  %i.kx = load i8, ptr %i.kh, align 1, !tbaa !153, !alias.scope !192
  %i.ky = insertelement <16 x i8> poison, i8 %i.ki, i64 0
  %i.kz = insertelement <16 x i8> %i.ky, i8 %i.kj, i64 1
  %i.la = insertelement <16 x i8> %i.kz, i8 %i.kk, i64 2
  %i.lb = insertelement <16 x i8> %i.la, i8 %i.kl, i64 3
  %i.lc = insertelement <16 x i8> %i.lb, i8 %i.km, i64 4
  %i.ld = insertelement <16 x i8> %i.lc, i8 %i.kn, i64 5
  %i.le = insertelement <16 x i8> %i.ld, i8 %i.ko, i64 6
  %i.lf = insertelement <16 x i8> %i.le, i8 %i.kp, i64 7
  %i.lg = insertelement <16 x i8> %i.lf, i8 %i.kq, i64 8
  %i.lh = insertelement <16 x i8> %i.lg, i8 %i.kr, i64 9
  %i.li = insertelement <16 x i8> %i.lh, i8 %i.ks, i64 10
  %i.lj = insertelement <16 x i8> %i.li, i8 %i.kt, i64 11
  %i.lk = insertelement <16 x i8> %i.lj, i8 %i.ku, i64 12
  %i.ll = insertelement <16 x i8> %i.lk, i8 %i.kv, i64 13
  %i.lm = insertelement <16 x i8> %i.ll, i8 %i.kw, i64 14
  %i.ln = insertelement <16 x i8> %i.lm, i8 %i.kx, i64 15
  %i.lo = icmp eq <16 x i8> %i.ln, splat (i8 49)
  %i.lp = shl nuw nsw <16 x i8> %i.jr, splat (i8 2)
  %i.lq = select <16 x i1> %i.lo, <16 x i8> splat (i8 2), <16 x i8> zeroinitializer
  %i.lr = or disjoint <16 x i8> %i.lp, %i.lq
  %i.ls = getelementptr i8, ptr %i.bh, i64 5
  %i.lt = getelementptr i8, ptr %i.bi, i64 13
  %i.lu = getelementptr i8, ptr %i.bk, i64 21
  %i.lv = getelementptr i8, ptr %i.bm, i64 29
  %i.lw = getelementptr i8, ptr %i.bo, i64 37
  %i.lx = getelementptr i8, ptr %i.bq, i64 45
  %i.ly = getelementptr i8, ptr %i.bs, i64 53
  %i.lz = getelementptr i8, ptr %i.bu, i64 61
  %i.ma = getelementptr i8, ptr %i.bw, i64 69
  %i.mb = getelementptr i8, ptr %i.by, i64 77
  %i.mc = getelementptr i8, ptr %i.ca, i64 85
  %i.md = getelementptr i8, ptr %i.cc, i64 93
  %i.me = getelementptr i8, ptr %i.ce, i64 101
  %i.mf = getelementptr i8, ptr %i.cg, i64 109
  %i.mg = getelementptr i8, ptr %i.ci, i64 117
  %i.mh = getelementptr i8, ptr %i.ck, i64 125
  %i.mi = load i8, ptr %i.ls, align 1, !tbaa !153, !alias.scope !192
  %i.mj = load i8, ptr %i.lt, align 1, !tbaa !153, !alias.scope !192
  %i.mk = load i8, ptr %i.lu, align 1, !tbaa !153, !alias.scope !192
  %i.ml = load i8, ptr %i.lv, align 1, !tbaa !153, !alias.scope !192
  %i.mm = load i8, ptr %i.lw, align 1, !tbaa !153, !alias.scope !192
  %i.mn = load i8, ptr %i.lx, align 1, !tbaa !153, !alias.scope !192
  %i.mo = load i8, ptr %i.ly, align 1, !tbaa !153, !alias.scope !192
  %i.mp = load i8, ptr %i.lz, align 1, !tbaa !153, !alias.scope !192
  %i.mq = load i8, ptr %i.ma, align 1, !tbaa !153, !alias.scope !192
  %i.mr = load i8, ptr %i.mb, align 1, !tbaa !153, !alias.scope !192
  %i.ms = load i8, ptr %i.mc, align 1, !tbaa !153, !alias.scope !192
  %i.mt = load i8, ptr %i.md, align 1, !tbaa !153, !alias.scope !192
  %i.mu = load i8, ptr %i.me, align 1, !tbaa !153, !alias.scope !192
  %i.mv = load i8, ptr %i.mf, align 1, !tbaa !153, !alias.scope !192
  %i.mw = load i8, ptr %i.mg, align 1, !tbaa !153, !alias.scope !192
  %i.mx = load i8, ptr %i.mh, align 1, !tbaa !153, !alias.scope !192
  %i.my = insertelement <16 x i8> poison, i8 %i.mi, i64 0
  %i.mz = insertelement <16 x i8> %i.my, i8 %i.mj, i64 1
  %i.na = insertelement <16 x i8> %i.mz, i8 %i.mk, i64 2
  %i.nb = insertelement <16 x i8> %i.na, i8 %i.ml, i64 3
  %i.nc = insertelement <16 x i8> %i.nb, i8 %i.mm, i64 4
  %i.nd = insertelement <16 x i8> %i.nc, i8 %i.mn, i64 5
  %i.ne = insertelement <16 x i8> %i.nd, i8 %i.mo, i64 6
  %i.nf = insertelement <16 x i8> %i.ne, i8 %i.mp, i64 7
  %i.ng = insertelement <16 x i8> %i.nf, i8 %i.mq, i64 8
  %i.nh = insertelement <16 x i8> %i.ng, i8 %i.mr, i64 9
  %i.ni = insertelement <16 x i8> %i.nh, i8 %i.ms, i64 10
  %i.nj = insertelement <16 x i8> %i.ni, i8 %i.mt, i64 11
  %i.nk = insertelement <16 x i8> %i.nj, i8 %i.mu, i64 12
  %i.nl = insertelement <16 x i8> %i.nk, i8 %i.mv, i64 13
  %i.nm = insertelement <16 x i8> %i.nl, i8 %i.mw, i64 14
  %i.nn = insertelement <16 x i8> %i.nm, i8 %i.mx, i64 15
  %i.no = icmp eq <16 x i8> %i.nn, splat (i8 49)
  %i.np = zext <16 x i1> %i.no to <16 x i8>
  %i.nq = or disjoint <16 x i8> %i.lr, %i.np
  %i.nr = getelementptr i8, ptr %i.bh, i64 6
  %i.ns = getelementptr i8, ptr %i.bi, i64 14
  %i.nt = getelementptr i8, ptr %i.bk, i64 22
  %i.nu = getelementptr i8, ptr %i.bm, i64 30
  %i.nv = getelementptr i8, ptr %i.bo, i64 38
  %i.nw = getelementptr i8, ptr %i.bq, i64 46
  %i.nx = getelementptr i8, ptr %i.bs, i64 54
  %i.ny = getelementptr i8, ptr %i.bu, i64 62
  %i.nz = getelementptr i8, ptr %i.bw, i64 70
  %i.oa = getelementptr i8, ptr %i.by, i64 78
  %i.ob = getelementptr i8, ptr %i.ca, i64 86
  %i.oc = getelementptr i8, ptr %i.cc, i64 94
  %i.od = getelementptr i8, ptr %i.ce, i64 102
  %i.oe = getelementptr i8, ptr %i.cg, i64 110
  %i.of = getelementptr i8, ptr %i.ci, i64 118
  %i.og = getelementptr i8, ptr %i.ck, i64 126
  %i.oh = load i8, ptr %i.nr, align 1, !tbaa !153, !alias.scope !192
  %i.oi = load i8, ptr %i.ns, align 1, !tbaa !153, !alias.scope !192
  %i.oj = load i8, ptr %i.nt, align 1, !tbaa !153, !alias.scope !192
  %i.ok = load i8, ptr %i.nu, align 1, !tbaa !153, !alias.scope !192
  %i.ol = load i8, ptr %i.nv, align 1, !tbaa !153, !alias.scope !192
  %i.om = load i8, ptr %i.nw, align 1, !tbaa !153, !alias.scope !192
  %i.on = load i8, ptr %i.nx, align 1, !tbaa !153, !alias.scope !192
  %i.oo = load i8, ptr %i.ny, align 1, !tbaa !153, !alias.scope !192
  %i.op = load i8, ptr %i.nz, align 1, !tbaa !153, !alias.scope !192
  %i.oq = load i8, ptr %i.oa, align 1, !tbaa !153, !alias.scope !192
  %i.or = load i8, ptr %i.ob, align 1, !tbaa !153, !alias.scope !192
  %i.os = load i8, ptr %i.oc, align 1, !tbaa !153, !alias.scope !192
  %i.ot = load i8, ptr %i.od, align 1, !tbaa !153, !alias.scope !192
  %i.ou = load i8, ptr %i.oe, align 1, !tbaa !153, !alias.scope !192
  %i.ov = load i8, ptr %i.of, align 1, !tbaa !153, !alias.scope !192
  %i.ow = load i8, ptr %i.og, align 1, !tbaa !153, !alias.scope !192
  %i.ox = insertelement <16 x i8> poison, i8 %i.oh, i64 0
  %i.oy = insertelement <16 x i8> %i.ox, i8 %i.oi, i64 1
  %i.oz = insertelement <16 x i8> %i.oy, i8 %i.oj, i64 2
  %i.pa = insertelement <16 x i8> %i.oz, i8 %i.ok, i64 3
  %i.pb = insertelement <16 x i8> %i.pa, i8 %i.ol, i64 4
  %i.pc = insertelement <16 x i8> %i.pb, i8 %i.om, i64 5
  %i.pd = insertelement <16 x i8> %i.pc, i8 %i.on, i64 6
  %i.pe = insertelement <16 x i8> %i.pd, i8 %i.oo, i64 7
  %i.pf = insertelement <16 x i8> %i.pe, i8 %i.op, i64 8
  %i.pg = insertelement <16 x i8> %i.pf, i8 %i.oq, i64 9
  %i.ph = insertelement <16 x i8> %i.pg, i8 %i.or, i64 10
  %i.pi = insertelement <16 x i8> %i.ph, i8 %i.os, i64 11
  %i.pj = insertelement <16 x i8> %i.pi, i8 %i.ot, i64 12
  %i.pk = insertelement <16 x i8> %i.pj, i8 %i.ou, i64 13
  %i.pl = insertelement <16 x i8> %i.pk, i8 %i.ov, i64 14
  %i.pm = insertelement <16 x i8> %i.pl, i8 %i.ow, i64 15
  %i.pn = icmp eq <16 x i8> %i.pm, splat (i8 49)
  %i.po = shl nuw <16 x i8> %i.nq, splat (i8 2)
  %i.pp = select <16 x i1> %i.pn, <16 x i8> splat (i8 2), <16 x i8> zeroinitializer
  %i.pq = or disjoint <16 x i8> %i.po, %i.pp
  %i.pr = getelementptr i8, ptr %i.bh, i64 7
  %i.ps = getelementptr i8, ptr %i.bi, i64 15
  %i.pt = getelementptr i8, ptr %i.bk, i64 23
  %i.pu = getelementptr i8, ptr %i.bm, i64 31
  %i.pv = getelementptr i8, ptr %i.bo, i64 39
  %i.pw = getelementptr i8, ptr %i.bq, i64 47
  %i.px = getelementptr i8, ptr %i.bs, i64 55
  %i.py = getelementptr i8, ptr %i.bu, i64 63
  %i.pz = getelementptr i8, ptr %i.bw, i64 71
  %i.qa = getelementptr i8, ptr %i.by, i64 79
  %i.qb = getelementptr i8, ptr %i.ca, i64 87
  %i.qc = getelementptr i8, ptr %i.cc, i64 95
  %i.qd = getelementptr i8, ptr %i.ce, i64 103
  %i.qe = getelementptr i8, ptr %i.cg, i64 111
  %i.qf = getelementptr i8, ptr %i.ci, i64 119
  %i.qg = getelementptr i8, ptr %i.ck, i64 127
  %i.qh = load i8, ptr %i.pr, align 1, !tbaa !153, !alias.scope !192
  %i.qi = load i8, ptr %i.ps, align 1, !tbaa !153, !alias.scope !192
  %i.qj = load i8, ptr %i.pt, align 1, !tbaa !153, !alias.scope !192
  %i.qk = load i8, ptr %i.pu, align 1, !tbaa !153, !alias.scope !192
  %i.ql = load i8, ptr %i.pv, align 1, !tbaa !153, !alias.scope !192
  %i.qm = load i8, ptr %i.pw, align 1, !tbaa !153, !alias.scope !192
  %i.qn = load i8, ptr %i.px, align 1, !tbaa !153, !alias.scope !192
  %i.qo = load i8, ptr %i.py, align 1, !tbaa !153, !alias.scope !192
  %i.qp = load i8, ptr %i.pz, align 1, !tbaa !153, !alias.scope !192
  %i.qq = load i8, ptr %i.qa, align 1, !tbaa !153, !alias.scope !192
  %i.qr = load i8, ptr %i.qb, align 1, !tbaa !153, !alias.scope !192
  %i.qs = load i8, ptr %i.qc, align 1, !tbaa !153, !alias.scope !192
  %i.qt = load i8, ptr %i.qd, align 1, !tbaa !153, !alias.scope !192
  %i.qu = load i8, ptr %i.qe, align 1, !tbaa !153, !alias.scope !192
  %i.qv = load i8, ptr %i.qf, align 1, !tbaa !153, !alias.scope !192
  %i.qw = load i8, ptr %i.qg, align 1, !tbaa !153, !alias.scope !192
  %i.qx = insertelement <16 x i8> poison, i8 %i.qh, i64 0
  %i.qy = insertelement <16 x i8> %i.qx, i8 %i.qi, i64 1
  %i.qz = insertelement <16 x i8> %i.qy, i8 %i.qj, i64 2
  %i.ra = insertelement <16 x i8> %i.qz, i8 %i.qk, i64 3
  %i.rb = insertelement <16 x i8> %i.ra, i8 %i.ql, i64 4
  %i.rc = insertelement <16 x i8> %i.rb, i8 %i.qm, i64 5
  %i.rd = insertelement <16 x i8> %i.rc, i8 %i.qn, i64 6
  %i.re = insertelement <16 x i8> %i.rd, i8 %i.qo, i64 7
  %i.rf = insertelement <16 x i8> %i.re, i8 %i.qp, i64 8
  %i.rg = insertelement <16 x i8> %i.rf, i8 %i.qq, i64 9
  %i.rh = insertelement <16 x i8> %i.rg, i8 %i.qr, i64 10
  %i.ri = insertelement <16 x i8> %i.rh, i8 %i.qs, i64 11
  %i.rj = insertelement <16 x i8> %i.ri, i8 %i.qt, i64 12
  %i.rk = insertelement <16 x i8> %i.rj, i8 %i.qu, i64 13
  %i.rl = insertelement <16 x i8> %i.rk, i8 %i.qv, i64 14
  %i.rm = insertelement <16 x i8> %i.rl, i8 %i.qw, i64 15
  %i.rn = icmp eq <16 x i8> %i.rm, splat (i8 49)
  %i.ro = zext <16 x i1> %i.rn to <16 x i8>
  %i.rp = or disjoint <16 x i8> %i.pq, %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  store <16 x i8> %i.rp, ptr %i.rq, align 1, !tbaa !153, !alias.scope !195, !noalias !192
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rr = icmp eq i64 %index.next, %n.vec
  br i1 %i.rr, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %._crit_edge41, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check.not.not, label %.preheader.preheader, label %vec.epilog.ph, !prof !177

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.au, 4611686018427387896   ; 4 uses
  %i.rs = getelementptr i8, ptr %.029, i64 %n.vec54
  %i.rt = shl i64 %n.vec54, 3
  %i.ru = or disjoint i64 %i.m, %i.rt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %next.gep56 = getelementptr i8, ptr %.029, i64 %index55
  %i.rv = shl i64 %index55, 3
  %i.rw = or disjoint i64 %i.m, %i.rv             ; 8 uses
  %i.rx = getelementptr i8, ptr %i.e, i64 %i.rw   ; 8 uses
  %i.ry = getelementptr i8, ptr %i.e, i64 %i.rw   ; 8 uses
  %i.rz = getelementptr i8, ptr %i.ry, i64 8
  %i.sa = getelementptr i8, ptr %i.e, i64 %i.rw   ; 8 uses
  %i.sb = getelementptr i8, ptr %i.sa, i64 16
  %i.sc = getelementptr i8, ptr %i.e, i64 %i.rw   ; 8 uses
  %i.sd = getelementptr i8, ptr %i.sc, i64 24
  %i.se = getelementptr i8, ptr %i.e, i64 %i.rw   ; 8 uses
  %i.sf = getelementptr i8, ptr %i.se, i64 32
  %i.sg = getelementptr i8, ptr %i.e, i64 %i.rw   ; 8 uses
  %i.sh = getelementptr i8, ptr %i.sg, i64 40
  %i.si = getelementptr i8, ptr %i.e, i64 %i.rw   ; 8 uses
  %i.sj = getelementptr i8, ptr %i.si, i64 48
  %i.sk = getelementptr i8, ptr %i.e, i64 %i.rw   ; 8 uses
  %i.sl = getelementptr i8, ptr %i.sk, i64 56
  %i.sm = load i8, ptr %i.rx, align 1, !tbaa !153, !alias.scope !192
  %i.sn = load i8, ptr %i.rz, align 1, !tbaa !153, !alias.scope !192
  %i.so = load i8, ptr %i.sb, align 1, !tbaa !153, !alias.scope !192
  %i.sp = load i8, ptr %i.sd, align 1, !tbaa !153, !alias.scope !192
  %i.sq = load i8, ptr %i.sf, align 1, !tbaa !153, !alias.scope !192
  %i.sr = load i8, ptr %i.sh, align 1, !tbaa !153, !alias.scope !192
  %i.ss = load i8, ptr %i.sj, align 1, !tbaa !153, !alias.scope !192
  %i.st = load i8, ptr %i.sl, align 1, !tbaa !153, !alias.scope !192
  %i.su = insertelement <8 x i8> poison, i8 %i.sm, i64 0
  %i.sv = insertelement <8 x i8> %i.su, i8 %i.sn, i64 1
  %i.sw = insertelement <8 x i8> %i.sv, i8 %i.so, i64 2
  %i.sx = insertelement <8 x i8> %i.sw, i8 %i.sp, i64 3
  %i.sy = insertelement <8 x i8> %i.sx, i8 %i.sq, i64 4
  %i.sz = insertelement <8 x i8> %i.sy, i8 %i.sr, i64 5
  %i.ta = insertelement <8 x i8> %i.sz, i8 %i.ss, i64 6
  %i.tb = insertelement <8 x i8> %i.ta, i8 %i.st, i64 7
  %i.tc = icmp eq <8 x i8> %i.tb, splat (i8 49)
  %i.td = select <8 x i1> %i.tc, <8 x i8> splat (i8 2), <8 x i8> zeroinitializer
  %i.te = getelementptr i8, ptr %i.rx, i64 1
  %i.tf = getelementptr i8, ptr %i.ry, i64 9
  %i.tg = getelementptr i8, ptr %i.sa, i64 17
  %i.th = getelementptr i8, ptr %i.sc, i64 25
  %i.ti = getelementptr i8, ptr %i.se, i64 33
  %i.tj = getelementptr i8, ptr %i.sg, i64 41
  %i.tk = getelementptr i8, ptr %i.si, i64 49
  %i.tl = getelementptr i8, ptr %i.sk, i64 57
  %i.tm = load i8, ptr %i.te, align 1, !tbaa !153, !alias.scope !192
  %i.tn = load i8, ptr %i.tf, align 1, !tbaa !153, !alias.scope !192
  %i.to = load i8, ptr %i.tg, align 1, !tbaa !153, !alias.scope !192
  %i.tp = load i8, ptr %i.th, align 1, !tbaa !153, !alias.scope !192
  %i.tq = load i8, ptr %i.ti, align 1, !tbaa !153, !alias.scope !192
  %i.tr = load i8, ptr %i.tj, align 1, !tbaa !153, !alias.scope !192
  %i.ts = load i8, ptr %i.tk, align 1, !tbaa !153, !alias.scope !192
  %i.tt = load i8, ptr %i.tl, align 1, !tbaa !153, !alias.scope !192
  %i.tu = insertelement <8 x i8> poison, i8 %i.tm, i64 0
  %i.tv = insertelement <8 x i8> %i.tu, i8 %i.tn, i64 1
  %i.tw = insertelement <8 x i8> %i.tv, i8 %i.to, i64 2
  %i.tx = insertelement <8 x i8> %i.tw, i8 %i.tp, i64 3
  %i.ty = insertelement <8 x i8> %i.tx, i8 %i.tq, i64 4
  %i.tz = insertelement <8 x i8> %i.ty, i8 %i.tr, i64 5
  %i.ua = insertelement <8 x i8> %i.tz, i8 %i.ts, i64 6
  %i.ub = insertelement <8 x i8> %i.ua, i8 %i.tt, i64 7
  %i.uc = icmp eq <8 x i8> %i.ub, splat (i8 49)
  %i.ud = zext <8 x i1> %i.uc to <8 x i8>
  %i.ue = or disjoint <8 x i8> %i.td, %i.ud
  %i.uf = getelementptr i8, ptr %i.rx, i64 2
  %i.ug = getelementptr i8, ptr %i.ry, i64 10
  %i.uh = getelementptr i8, ptr %i.sa, i64 18
  %i.ui = getelementptr i8, ptr %i.sc, i64 26
  %i.uj = getelementptr i8, ptr %i.se, i64 34
  %i.uk = getelementptr i8, ptr %i.sg, i64 42
  %i.ul = getelementptr i8, ptr %i.si, i64 50
  %i.um = getelementptr i8, ptr %i.sk, i64 58
  %i.un = load i8, ptr %i.uf, align 1, !tbaa !153, !alias.scope !192
  %i.uo = load i8, ptr %i.ug, align 1, !tbaa !153, !alias.scope !192
  %i.up = load i8, ptr %i.uh, align 1, !tbaa !153, !alias.scope !192
  %i.uq = load i8, ptr %i.ui, align 1, !tbaa !153, !alias.scope !192
  %i.ur = load i8, ptr %i.uj, align 1, !tbaa !153, !alias.scope !192
  %i.us = load i8, ptr %i.uk, align 1, !tbaa !153, !alias.scope !192
  %i.ut = load i8, ptr %i.ul, align 1, !tbaa !153, !alias.scope !192
  %i.uu = load i8, ptr %i.um, align 1, !tbaa !153, !alias.scope !192
  %i.uv = insertelement <8 x i8> poison, i8 %i.un, i64 0
  %i.uw = insertelement <8 x i8> %i.uv, i8 %i.uo, i64 1
  %i.ux = insertelement <8 x i8> %i.uw, i8 %i.up, i64 2
  %i.uy = insertelement <8 x i8> %i.ux, i8 %i.uq, i64 3
  %i.uz = insertelement <8 x i8> %i.uy, i8 %i.ur, i64 4
  %i.va = insertelement <8 x i8> %i.uz, i8 %i.us, i64 5
  %i.vb = insertelement <8 x i8> %i.va, i8 %i.ut, i64 6
  %i.vc = insertelement <8 x i8> %i.vb, i8 %i.uu, i64 7
  %i.vd = icmp eq <8 x i8> %i.vc, splat (i8 49)
  %i.ve = shl nuw nsw <8 x i8> %i.ue, splat (i8 2)
  %i.vf = select <8 x i1> %i.vd, <8 x i8> splat (i8 2), <8 x i8> zeroinitializer
  %i.vg = or disjoint <8 x i8> %i.ve, %i.vf
  %i.vh = getelementptr i8, ptr %i.rx, i64 3
  %i.vi = getelementptr i8, ptr %i.ry, i64 11
  %i.vj = getelementptr i8, ptr %i.sa, i64 19
  %i.vk = getelementptr i8, ptr %i.sc, i64 27
  %i.vl = getelementptr i8, ptr %i.se, i64 35
  %i.vm = getelementptr i8, ptr %i.sg, i64 43
  %i.vn = getelementptr i8, ptr %i.si, i64 51
  %i.vo = getelementptr i8, ptr %i.sk, i64 59
  %i.vp = load i8, ptr %i.vh, align 1, !tbaa !153, !alias.scope !192
  %i.vq = load i8, ptr %i.vi, align 1, !tbaa !153, !alias.scope !192
  %i.vr = load i8, ptr %i.vj, align 1, !tbaa !153, !alias.scope !192
  %i.vs = load i8, ptr %i.vk, align 1, !tbaa !153, !alias.scope !192
  %i.vt = load i8, ptr %i.vl, align 1, !tbaa !153, !alias.scope !192
  %i.vu = load i8, ptr %i.vm, align 1, !tbaa !153, !alias.scope !192
  %i.vv = load i8, ptr %i.vn, align 1, !tbaa !153, !alias.scope !192
  %i.vw = load i8, ptr %i.vo, align 1, !tbaa !153, !alias.scope !192
  %i.vx = insertelement <8 x i8> poison, i8 %i.vp, i64 0
  %i.vy = insertelement <8 x i8> %i.vx, i8 %i.vq, i64 1
  %i.vz = insertelement <8 x i8> %i.vy, i8 %i.vr, i64 2
  %i.wa = insertelement <8 x i8> %i.vz, i8 %i.vs, i64 3
  %i.wb = insertelement <8 x i8> %i.wa, i8 %i.vt, i64 4
  %i.wc = insertelement <8 x i8> %i.wb, i8 %i.vu, i64 5
  %i.wd = insertelement <8 x i8> %i.wc, i8 %i.vv, i64 6
  %i.we = insertelement <8 x i8> %i.wd, i8 %i.vw, i64 7
  %i.wf = icmp eq <8 x i8> %i.we, splat (i8 49)
  %i.wg = zext <8 x i1> %i.wf to <8 x i8>
  %i.wh = or disjoint <8 x i8> %i.vg, %i.wg
  %i.wi = getelementptr i8, ptr %i.rx, i64 4
  %i.wj = getelementptr i8, ptr %i.ry, i64 12
  %i.wk = getelementptr i8, ptr %i.sa, i64 20
  %i.wl = getelementptr i8, ptr %i.sc, i64 28
  %i.wm = getelementptr i8, ptr %i.se, i64 36
  %i.wn = getelementptr i8, ptr %i.sg, i64 44
  %i.wo = getelementptr i8, ptr %i.si, i64 52
  %i.wp = getelementptr i8, ptr %i.sk, i64 60
  %i.wq = load i8, ptr %i.wi, align 1, !tbaa !153, !alias.scope !192
  %i.wr = load i8, ptr %i.wj, align 1, !tbaa !153, !alias.scope !192
  %i.ws = load i8, ptr %i.wk, align 1, !tbaa !153, !alias.scope !192
  %i.wt = load i8, ptr %i.wl, align 1, !tbaa !153, !alias.scope !192
  %i.wu = load i8, ptr %i.wm, align 1, !tbaa !153, !alias.scope !192
  %i.wv = load i8, ptr %i.wn, align 1, !tbaa !153, !alias.scope !192
  %i.ww = load i8, ptr %i.wo, align 1, !tbaa !153, !alias.scope !192
  %i.wx = load i8, ptr %i.wp, align 1, !tbaa !153, !alias.scope !192
  %i.wy = insertelement <8 x i8> poison, i8 %i.wq, i64 0
  %i.wz = insertelement <8 x i8> %i.wy, i8 %i.wr, i64 1
  %i.xa = insertelement <8 x i8> %i.wz, i8 %i.ws, i64 2
  %i.xb = insertelement <8 x i8> %i.xa, i8 %i.wt, i64 3
  %i.xc = insertelement <8 x i8> %i.xb, i8 %i.wu, i64 4
  %i.xd = insertelement <8 x i8> %i.xc, i8 %i.wv, i64 5
  %i.xe = insertelement <8 x i8> %i.xd, i8 %i.ww, i64 6
  %i.xf = insertelement <8 x i8> %i.xe, i8 %i.wx, i64 7
  %i.xg = icmp eq <8 x i8> %i.xf, splat (i8 49)
  %i.xh = shl nuw nsw <8 x i8> %i.wh, splat (i8 2)
  %i.xi = select <8 x i1> %i.xg, <8 x i8> splat (i8 2), <8 x i8> zeroinitializer
  %i.xj = or disjoint <8 x i8> %i.xh, %i.xi
  %i.xk = getelementptr i8, ptr %i.rx, i64 5
  %i.xl = getelementptr i8, ptr %i.ry, i64 13
  %i.xm = getelementptr i8, ptr %i.sa, i64 21
  %i.xn = getelementptr i8, ptr %i.sc, i64 29
  %i.xo = getelementptr i8, ptr %i.se, i64 37
  %i.xp = getelementptr i8, ptr %i.sg, i64 45
  %i.xq = getelementptr i8, ptr %i.si, i64 53
  %i.xr = getelementptr i8, ptr %i.sk, i64 61
  %i.xs = load i8, ptr %i.xk, align 1, !tbaa !153, !alias.scope !192
  %i.xt = load i8, ptr %i.xl, align 1, !tbaa !153, !alias.scope !192
  %i.xu = load i8, ptr %i.xm, align 1, !tbaa !153, !alias.scope !192
  %i.xv = load i8, ptr %i.xn, align 1, !tbaa !153, !alias.scope !192
  %i.xw = load i8, ptr %i.xo, align 1, !tbaa !153, !alias.scope !192
  %i.xx = load i8, ptr %i.xp, align 1, !tbaa !153, !alias.scope !192
  %i.xy = load i8, ptr %i.xq, align 1, !tbaa !153, !alias.scope !192
  %i.xz = load i8, ptr %i.xr, align 1, !tbaa !153, !alias.scope !192
  %i.ya = insertelement <8 x i8> poison, i8 %i.xs, i64 0
  %i.yb = insertelement <8 x i8> %i.ya, i8 %i.xt, i64 1
  %i.yc = insertelement <8 x i8> %i.yb, i8 %i.xu, i64 2
  %i.yd = insertelement <8 x i8> %i.yc, i8 %i.xv, i64 3
  %i.ye = insertelement <8 x i8> %i.yd, i8 %i.xw, i64 4
  %i.yf = insertelement <8 x i8> %i.ye, i8 %i.xx, i64 5
  %i.yg = insertelement <8 x i8> %i.yf, i8 %i.xy, i64 6
  %i.yh = insertelement <8 x i8> %i.yg, i8 %i.xz, i64 7
  %i.yi = icmp eq <8 x i8> %i.yh, splat (i8 49)
  %i.yj = zext <8 x i1> %i.yi to <8 x i8>
  %i.yk = or disjoint <8 x i8> %i.xj, %i.yj
  %i.yl = getelementptr i8, ptr %i.rx, i64 6
  %i.ym = getelementptr i8, ptr %i.ry, i64 14
  %i.yn = getelementptr i8, ptr %i.sa, i64 22
  %i.yo = getelementptr i8, ptr %i.sc, i64 30
  %i.yp = getelementptr i8, ptr %i.se, i64 38
  %i.yq = getelementptr i8, ptr %i.sg, i64 46
  %i.yr = getelementptr i8, ptr %i.si, i64 54
  %i.ys = getelementptr i8, ptr %i.sk, i64 62
  %i.yt = load i8, ptr %i.yl, align 1, !tbaa !153, !alias.scope !192
  %i.yu = load i8, ptr %i.ym, align 1, !tbaa !153, !alias.scope !192
  %i.yv = load i8, ptr %i.yn, align 1, !tbaa !153, !alias.scope !192
  %i.yw = load i8, ptr %i.yo, align 1, !tbaa !153, !alias.scope !192
  %i.yx = load i8, ptr %i.yp, align 1, !tbaa !153, !alias.scope !192
  %i.yy = load i8, ptr %i.yq, align 1, !tbaa !153, !alias.scope !192
  %i.yz = load i8, ptr %i.yr, align 1, !tbaa !153, !alias.scope !192
  %i.za = load i8, ptr %i.ys, align 1, !tbaa !153, !alias.scope !192
  %i.zb = insertelement <8 x i8> poison, i8 %i.yt, i64 0
  %i.zc = insertelement <8 x i8> %i.zb, i8 %i.yu, i64 1
  %i.zd = insertelement <8 x i8> %i.zc, i8 %i.yv, i64 2
  %i.ze = insertelement <8 x i8> %i.zd, i8 %i.yw, i64 3
  %i.zf = insertelement <8 x i8> %i.ze, i8 %i.yx, i64 4
  %i.zg = insertelement <8 x i8> %i.zf, i8 %i.yy, i64 5
  %i.zh = insertelement <8 x i8> %i.zg, i8 %i.yz, i64 6
  %i.zi = insertelement <8 x i8> %i.zh, i8 %i.za, i64 7
  %i.zj = icmp eq <8 x i8> %i.zi, splat (i8 49)
  %i.zk = shl nuw <8 x i8> %i.yk, splat (i8 2)
  %i.zl = select <8 x i1> %i.zj, <8 x i8> splat (i8 2), <8 x i8> zeroinitializer
  %i.zm = or disjoint <8 x i8> %i.zk, %i.zl
  %i.zn = getelementptr i8, ptr %i.rx, i64 7
end_hunk_2
begin_hunk_3_@duckdb_fsst_decompress:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bf
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !153
  %i.bl = zext i8 %i.bk to i64
  %i.bm = add i64 %.0165191, %i.bl
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !153
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bn = phi i8 [ %.pre, %bb.d ], [ %i.bb, %bb.c ]
  %.1167 = phi i64 [ %i.be, %bb.d ], [ %.0166190, %bb.c ]
  %.1 = phi i64 [ %i.bm, %bb.d ], [ %.0165191, %bb.c ] ; 2 uses
  %i.bo = add i64 %.1167, 1                       ; 2 uses
  %i.bp = zext i8 %i.bn to i64                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 %.1
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bp
  %i.bs = load i64, ptr %i.br, align 8
  store i64 %i.bs, ptr %i.bq, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bp
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !153
  %i.bv = zext i8 %i.bu to i64
  %i.bw = add i64 %.1, %i.bv
  %.phi.trans.insert204 = getelementptr inbounds nuw i8, ptr %2, i64 %i.bo
  %.pre205 = load i8, ptr %.phi.trans.insert204, align 1, !tbaa !153
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.bx = phi i8 [ %.pre205, %bb.e ], [ %i.bb, %bb.c ]
  %.2168 = phi i64 [ %i.bo, %bb.e ], [ %.0166190, %bb.c ]
  %.2 = phi i64 [ %i.bw, %bb.e ], [ %.0165191, %bb.c ] ; 2 uses
  %i.by = add i64 %.2168, 1
  %i.bz = zext i8 %i.bx to i64                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %.2
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bz
  %i.cc = load i64, ptr %i.cb, align 8
  store i64 %i.cc, ptr %i.ca, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bz
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !153
  %i.cf = zext i8 %i.ce to i64
  %i.cg = add i64 %.2, %i.cf
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.3169 = phi i64 [ %i.by, %bb.f ], [ %.0166190, %bb.c ] ; 2 uses
  %.3 = phi i64 [ %i.cg, %bb.f ], [ %.0165191, %bb.c ] ; 2 uses
  %i.ch = getelementptr i8, ptr %2, i64 %.3169
  %i.ci = getelementptr i8, ptr %i.ch, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !153
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 %.3
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !153
  %i.cl = add i64 %.3, 1
  %i.cm = add i64 %.3169, 2
  br label %bb.h

default.unreachable215:                           ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.b
  %.5171 = phi i64 [ %i.h, %bb.b ], [ %i.cm, %bb.g ] ; 3 uses
  %.5 = phi i64 [ %i.ba, %bb.b ], [ %i.cl, %bb.g ] ; 3 uses
  %i.cn = add i64 %.5, 32
  %i.co = icmp ule i64 %i.cn, %3                  ; 2 uses
  %i.cp = add i64 %.5171, 4                       ; 2 uses
  %i.cq = icmp ule i64 %i.cp, %1
  %i.cr = and i1 %i.cq, %i.co
  br i1 %i.cr, label %.lr.ph, label %._crit_edge, !llvm.loop !3410

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.0166.lcssa = phi i64 [ 0, %bb.a ], [ %.5171, %bb.h ] ; 5 uses
  %.0165.lcssa = phi i64 [ 0, %bb.a ], [ %.5, %bb.h ] ; 5 uses
  %.lcssa = phi i1 [ %i.e, %bb.a ], [ %i.co, %bb.h ]
  br i1 %.lcssa, label %bb.i, label %bb.q

bb.i:                                             ; preds = %._crit_edge
  %i.cs = add i64 %.0166.lcssa, 2                 ; 3 uses
  %.not = icmp ugt i64 %i.cs, %1
  br i1 %.not, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = getelementptr i8, ptr %2, i64 %.0166.lcssa ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 1      ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !153
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 %.0165.lcssa ; 2 uses
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !153
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !153 ; 2 uses
  %.not182 = icmp eq i8 %i.cx, -1
  br i1 %.not182, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cy = zext i8 %i.cx to i64                    ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8
  store i64 %i.da, ptr %i.cw, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cy
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !153
  %i.dd = zext i8 %i.dc to i64
  %i.de = add i64 %.0165.lcssa, %i.dd             ; 4 uses
  %i.df = load i8, ptr %i.cu, align 1, !tbaa !153 ; 2 uses
  %.not183 = icmp eq i8 %i.df, -1
  br i1 %.not183, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = zext i8 %i.df to i64                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 %i.de
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dg
  %i.dj = load i64, ptr %i.di, align 8
  store i64 %i.dj, ptr %i.dh, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dg
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !153
  %i.dm = zext i8 %i.dl to i64
  %i.dn = add i64 %i.de, %i.dm
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.do = add i64 %.0166.lcssa, 3
  %i.dp = getelementptr i8, ptr %i.ct, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !153
  %i.dr = add i64 %i.de, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 %i.de
  store i8 %i.dq, ptr %i.ds, align 1, !tbaa !153
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.dt = add i64 %.0165.lcssa, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  %.6172 = phi i64 [ %i.cs, %bb.l ], [ %i.do, %bb.m ], [ %i.cs, %bb.n ], [ %.0166.lcssa, %bb.i ] ; 4 uses
  %.6 = phi i64 [ %i.dn, %bb.l ], [ %i.dr, %bb.m ], [ %i.dt, %bb.n ], [ %.0165.lcssa, %bb.i ] ; 3 uses
  %i.du = icmp ult i64 %.6172, %1
  br i1 %i.du, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dv = add nuw i64 %.6172, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 %.6172
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !153
  %i.dy = zext i8 %i.dx to i64                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 %.6
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dy
  %i.eb = load i64, ptr %i.ea, align 8
  store i64 %i.eb, ptr %i.dz, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dy
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !153
  %i.ee = zext i8 %i.ed to i64
  %i.ef = add i64 %.6, %i.ee
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %._crit_edge
  %.7173 = phi i64 [ %i.dv, %bb.p ], [ %.6172, %bb.o ], [ %.0166.lcssa, %._crit_edge ] ; 2 uses
  %.7 = phi i64 [ %i.ef, %bb.p ], [ %.6, %bb.o ], [ %.0165.lcssa, %._crit_edge ] ; 2 uses
  %i.eg = icmp ult i64 %.7173, %1
  br i1 %i.eg, label %.lr.ph200.preheader, label %._crit_edge201

.lr.ph200.preheader:                              ; preds = %bb.q
  %i.eh = add i64 %i.b, -264
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %.loopexit
  %.8198 = phi i64 [ %.9, %.loopexit ], [ %.7, %.lr.ph200.preheader ] ; 14 uses
  %.8174197 = phi i64 [ %.9175, %.loopexit ], [ %.7173, %.lr.ph200.preheader ] ; 3 uses
  %i.ei = add nuw i64 %.8174197, 1                ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 %.8174197
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !153 ; 2 uses
  %.not186 = icmp eq i8 %i.ek, -1
  br i1 %.not186, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph200
  %i.el = zext i8 %i.ek to i64                    ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !153
  %i.eo = zext i8 %i.en to i64
  %i.ep = add i64 %.8198, %i.eo                   ; 6 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.el ; 3 uses
  %i.er = sub i64 0, %.8198
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 %i.er ; 5 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ep, i64 %3) ; 5 uses
  %i.et = icmp ult i64 %.8198, %spec.select
  br i1 %i.et, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.r
  %i.eu = sub nuw i64 %spec.select, %.8198        ; 7 uses
  %min.iters.check = icmp ult i64 %i.eu, 8
  br i1 %min.iters.check, label %.lr.ph196.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ev = shl nuw nsw i64 %i.el, 3
  %i.ew = add i64 %i.eh, %.8198
  %i.ex = add i64 %i.ev, %i.a
  %i.ey = sub i64 %i.ex, %i.ew
  %diff.check = icmp ugt i64 %i.ey, -32
  br i1 %diff.check, label %.lr.ph196.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check219 = icmp ult i64 %i.eu, 32
  br i1 %min.iters.check219, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.eu, 24
  %n.vec = and i64 %i.eu, -32                     ; 4 uses
  %i.ez = add i64 %.8198, %n.vec
  %i.fa = getelementptr i8, ptr %4, i64 %.8198
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fb = getelementptr inbounds i8, ptr %i.eq, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load = load <16 x i8>, ptr %i.fb, align 1, !tbaa !153
  %wide.load220 = load <16 x i8>, ptr %i.fc, align 1, !tbaa !153
  %i.fd = getelementptr i8, ptr %i.fa, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <16 x i8> %wide.load, ptr %i.fd, align 1, !tbaa !153
  store <16 x i8> %wide.load220, ptr %i.fe, align 1, !tbaa !153
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !3411

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph196.preheader, label %vec.epilog.ph, !prof !3412

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec222 = and i64 %i.eu, -8                   ; 3 uses
  %i.fg = add i64 %.8198, %n.vec222
  %i.fh = getelementptr i8, ptr %4, i64 %.8198
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index223 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next225, %vec.epilog.vector.body ] ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %i.eq, i64 %index223
  %wide.load224 = load <8 x i8>, ptr %i.fi, align 1, !tbaa !153
  %i.fj = getelementptr i8, ptr %i.fh, i64 %index223
  store <8 x i8> %wide.load224, ptr %i.fj, align 1, !tbaa !153
  %index.next225 = add nuw i64 %index223, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next225, %n.vec222
  br i1 %i.fk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3413

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n226 = icmp eq i64 %i.eu, %n.vec222
  br i1 %cmp.n226, label %.loopexit, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0164194.ph = phi i64 [ %.8198, %iter.check ], [ %.8198, %vector.memcheck ], [ %i.ez, %vec.epilog.iter.check ], [ %i.fg, %vec.epilog.middle.block ] ; 4 uses
  %i.fl = sub i64 %spec.select, %.0164194.ph
  %xtraiter = and i64 %i.fl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol

.lr.ph196.prol:                                   ; preds = %.lr.ph196.preheader, %.lr.ph196.prol
  %.0164194.prol = phi i64 [ %i.fp, %.lr.ph196.prol ], [ %.0164194.ph, %.lr.ph196.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph196.prol ], [ 0, %.lr.ph196.preheader ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 %.0164194.prol
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !153
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 %.0164194.prol
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !153
  %i.fp = add nuw i64 %.0164194.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol, !llvm.loop !3414

.lr.ph196.prol.loopexit:                          ; preds = %.lr.ph196.prol, %.lr.ph196.preheader
  %.0164194.unr = phi i64 [ %.0164194.ph, %.lr.ph196.preheader ], [ %i.fp, %.lr.ph196.prol ]
  %i.fq = sub i64 %.0164194.ph, %spec.select
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %.loopexit, label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.prol.loopexit, %.lr.ph196
  %.0164194 = phi i64 [ %i.gh, %.lr.ph196 ], [ %.0164194.unr, %.lr.ph196.prol.loopexit ] ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.es, i64 %.0164194
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !153
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 %.0164194
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !153
  %i.fv = add nuw i64 %.0164194, 1                ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !153
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 %i.fv
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !153
  %i.fz = add nuw i64 %.0164194, 2                ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !153
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 %i.fz
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !153
  %i.gd = add nuw i64 %.0164194, 3                ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !153
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 %i.gd
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !153
  %i.gh = add nuw i64 %.0164194, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.gh, %spec.select
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph196, !llvm.loop !3415

bb.s:                                             ; preds = %.lr.ph200
  %i.gi = icmp ult i64 %.8198, %3
  br i1 %i.gi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ei
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !153
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 %.8198
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !153
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.gm = add i64 %.8174197, 2
  %i.gn = add i64 %.8198, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph196.prol.loopexit, %.lr.ph196, %middle.block, %vec.epilog.middle.block, %bb.r, %bb.u
  %.9175 = phi i64 [ %i.gm, %bb.u ], [ %i.ei, %bb.r ], [ %i.ei, %middle.block ], [ %i.ei, %vec.epilog.middle.block ], [ %i.ei, %.lr.ph196 ], [ %i.ei, %.lr.ph196.prol.loopexit ] ; 2 uses
  %.9 = phi i64 [ %i.gn, %bb.u ], [ %i.ep, %bb.r ], [ %i.ep, %middle.block ], [ %i.ep, %vec.epilog.middle.block ], [ %i.ep, %.lr.ph196 ], [ %i.ep, %.lr.ph196.prol.loopexit ] ; 2 uses
  %i.go = icmp ult i64 %.9175, %1
  br i1 %i.go, label %.lr.ph200, label %._crit_edge201, !llvm.loop !3416

._crit_edge201:                                   ; preds = %.loopexit, %bb.q
  %.8.lcssa = phi i64 [ %.7, %bb.q ], [ %.9, %.loopexit ] ; 2 uses
  %.not184 = icmp ult i64 %.8.lcssa, %3
  br i1 %.not184, label %bb.x, label %bb.v

bb.v:                                             ; preds = %._crit_edge201
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !3417
  %i.gr = and i8 %i.gq, 1
  %.not185 = icmp eq i8 %i.gr, 0
  br i1 %.not185, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gs = getelementptr i8, ptr %4, i64 %3
  %i.gt = getelementptr i8, ptr %i.gs, i64 -1
  store i8 0, ptr %i.gt, align 1, !tbaa !153
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge201
  ret i64 %.8.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #36

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 115292150460684697
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EE17_S_check_init_lenEmRKS2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #49
  unreachable

_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EE17_S_check_init_lenEmRKS2_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_.exit.thread, label %_ZNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_.exit

_ZNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_.exit.thread: ; preds = %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_.exit: ; preds = %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.c = mul nuw nsw i64 %1, 80
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #48 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !2702
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !2703
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !3419
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_.exit, %_ZSt10_ConstructIN6duckdb19UnifiedVectorFormatEJEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.i, %_ZSt10_ConstructIN6duckdb19UnifiedVectorFormatEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_.exit ] ; 3 uses
  %.01013.i.i.i.i = phi i64 [ %i.h, %_ZSt10_ConstructIN6duckdb19UnifiedVectorFormatEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_.exit ]
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %.014.i.i.i.i)
          to label %_ZSt10_ConstructIN6duckdb19UnifiedVectorFormatEJEEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN6duckdb19UnifiedVectorFormatEJEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = add nsw i64 %.01013.i.i.i.i, -1          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !3420

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #46 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb19UnifiedVectorFormatEEEvT_S5_(ptr noundef nonnull %i.d, ptr noundef nonnull %.014.i.i.i.i)
          to label %_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatEEvT_S3_.exit.i.i.i.i unwind label %bb.d

_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatEEvT_S3_.exit.i.i.i.i: ; preds = %bb.c
  invoke void @__cxa_rethrow() #49
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatEEvT_S3_.exit.i.i.i.i, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #50
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatEEvT_S3_.exit.i.i.i.i
  unreachable

.loopexit:                                        ; preds = %_ZSt10_ConstructIN6duckdb19UnifiedVectorFormatEJEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_.exit.thread
  %i.p = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.e, %_ZSt10_ConstructIN6duckdb19UnifiedVectorFormatEJEEvPT_DpOT0_.exit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.i, %_ZSt10_ConstructIN6duckdb19UnifiedVectorFormatEJEEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.p, align 8, !tbaa !2703
  ret void

.body:                                            ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !2702   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #47
  br label %_ZNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb19UnifiedVectorFormatEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
end_hunk_3
