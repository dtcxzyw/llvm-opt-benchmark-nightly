Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenMPClause?download=true
inline.NumInlined: 5877
inline.NumDeleted: 2473
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5clang17OMPAffinityClause6CreateERKNS_10ASTContextENS_14SourceLocationES4_S4_S4_PNS_4ExprEN4llvm8ArrayRefIS6_EE:bb.a
  %i.l = inttoptr i64 %i.h to ptr
  store ptr %i.l, ptr %i.d, align 8, !tbaa !128
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef %i.e, i64 noundef %i.e, i8 3)
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ] ; 8 uses
  %i.n = trunc i64 %i.b to i32
  store i32 %1, ptr %.0.i.i.i, align 4, !tbaa !131
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %4, ptr %i.o, align 4, !tbaa !131
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 4, ptr %i.p, align 4, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12
  store i32 %2, ptr %i.q, align 4, !tbaa !131
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 %i.n, ptr %i.r, align 4, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 3 uses
  %i.u = and i64 %i.b, 4294967295
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  store ptr %5, ptr %i.v, align 8, !tbaa !22
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !145 ; 2 uses
  %i.w = icmp ugt i64 %i.b, 1
  br i1 %i.w, label %bb.d, label %bb.e, !prof !130

bb.d:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %.sroa.0.0.copyload, i64 %i.c, i1 false)
  br label %_ZN5clang16OMPVarListClauseINS_17OMPAffinityClauseEE10setVarRefsEN4llvm8ArrayRefIPNS_4ExprEEE.exit

bb.e:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.x = icmp eq i64 %i.b, 1
  br i1 %i.x, label %bb.f, label %_ZN5clang16OMPVarListClauseINS_17OMPAffinityClauseEE10setVarRefsEN4llvm8ArrayRefIPNS_4ExprEEE.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !22
  store ptr %i.y, ptr %i.t, align 8, !tbaa !22
  br label %_ZN5clang16OMPVarListClauseINS_17OMPAffinityClauseEE10setVarRefsEN4llvm8ArrayRefIPNS_4ExprEEE.exit

_ZN5clang16OMPVarListClauseINS_17OMPAffinityClauseEE10setVarRefsEN4llvm8ArrayRefIPNS_4ExprEEE.exit: ; preds = %bb.d, %bb.e, %bb.f
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang17OMPAffinityClause11CreateEmptyERKNS_10ASTContextEj(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = add i32 %1, 1
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.e = add nuw nsw i64 %i.c, 24                 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !128  ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.e, %i.g                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.j = load i64, ptr %i.i, align 8, !tbaa !129
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !prof !130

bb.b:                                             ; preds = %bb.a
  %i.l = inttoptr i64 %i.h to ptr
  store ptr %i.l, ptr %i.d, align 8, !tbaa !128
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef %i.e, i64 noundef %i.e, i8 3)
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  store <4 x i32> <i32 0, i32 0, i32 4, i32 0>, ptr %.0.i.i.i, align 4, !tbaa !138
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 %1, ptr %i.n, align 4, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 0, ptr %i.o, align 4, !tbaa !153
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang13OMPInitClause6CreateERKNS_10ASTContextEPNS_4ExprERNS_14OMPInteropInfoENS_14SourceLocationES8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !184  ; 4 uses
  %i.d = zext i32 %i.c to i64                     ; 5 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not67 = icmp eq i32 %i.c, 0                   ; 2 uses
  br i1 %.not67, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.063.lcssa = phi i32 [ 0, %bb.a ], [ %i.ar, %.lr.ph ] ; 2 uses
  %i.g = add i32 %i.c, 1                          ; 4 uses
  %i.h = add i32 %.063.lcssa, %i.g
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = shl nuw nsw i64 %i.d, 2
  %i.l = add nuw nsw i64 %i.k, 32
  %i.m = add nuw nsw i64 %i.l, %i.j               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.o = add nuw nsw i64 %i.m, 4
  %i.p = and i64 %i.o, 137438953464               ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !128  ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.p, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.u = load i64, ptr %i.t, align 8, !tbaa !129
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %bb.c, !prof !130

bb.b:                                             ; preds = %._crit_edge
  %i.w = inttoptr i64 %i.s to ptr
  store ptr %i.w, ptr %i.n, align 8, !tbaa !128
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

bb.c:                                             ; preds = %._crit_edge
  %i.x = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 noundef %i.m, i64 noundef %i.p, i8 3)
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.q, %bb.b ], [ %i.x, %bb.c ] ; 13 uses
  %.0.i.i.i98 = ptrtoaddr ptr %.0.i.i.i to i64
  %i.y = load i8, ptr %2, align 8, !tbaa !1088, !range !168, !noundef !169
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !1089, !range !168, !noundef !169
  store i32 %3, ptr %.0.i.i.i, align 4, !tbaa !131
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %6, ptr %i.ab, align 4, !tbaa !131
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 61, ptr %i.ac, align 4, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12
  store i32 %4, ptr %i.ad, align 4, !tbaa !131
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 %i.g, ptr %i.ae, align 4, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 %5, ptr %i.af, align 4, !tbaa !131
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store i8 %i.y, ptr %i.ag, align 8, !tbaa !279
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 25
  store i8 %i.aa, ptr %i.ah, align 1, !tbaa !280
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 26
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 28
  store i32 %.063.lcssa, ptr %i.aj, align 4, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !1090, !range !168, !noundef !169
  store i8 %i.al, ptr %i.ai, align 2, !tbaa !281
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32 ; 9 uses
  store ptr %1, ptr %i.am, align 8, !tbaa !22
  br i1 %.not67, label %._crit_edge84, label %.lr.ph71

.lr.ph71:                                         ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !215 ; 5 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.ao = icmp ult i32 %i.c, 4
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph71.new

.lr.ph71.new:                                     ; preds = %.lr.ph71
  %unroll_iter = and i64 %i.d, 4294967292
  br label %bb.e

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06369 = phi i32 [ %i.ar, %.lr.ph ], [ 0, %bb.a ]
  %.06468 = phi ptr [ %i.as, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.06468, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !184
  %i.ar = add i32 %i.aq, %.06369                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.06468, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph83.unr-lcssa:                               ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph83, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph83.unr-lcssa, %.lr.ph71
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next.3, %.lr.ph83.unr-lcssa ]
  %lcmp.mod103 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod103)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1097
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.epil
  store ptr %i.au, ptr %i.av, align 8, !tbaa !22
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph83, label %bb.d, !llvm.loop !1077

.lr.ph83:                                         ; preds = %bb.d, %.lr.ph83.unr-lcssa
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.i
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !215
  %invariant.op = add i64 31, %.0.i.i.i98
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph71.new
  %indvars.iv = phi i64 [ 0, %.lr.ph71.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph71.new ], [ %niter.next.3, %bb.e ]
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1097
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1097
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.1
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %indvars.iv.next.1
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1097
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.2
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %indvars.iv.next.2
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1097
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.3
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !22
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph83.unr-lcssa, label %bb.e, !llvm.loop !1078

._crit_edge84:                                    ; preds = %._crit_edge78, %_ZNK5clang10ASTContext8AllocateEmj.exit
  ret ptr %.0.i.i.i

bb.f:                                             ; preds = %.lr.ph83, %._crit_edge78
  %indvars.iv90 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next91, %._crit_edge78 ] ; 3 uses
  %.06180 = phi i32 [ %i.g, %.lr.ph83 ], [ %.1.lcssa, %._crit_edge78 ] ; 8 uses
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %indvars.iv90 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !215 ; 7 uses
  %i.bn = ptrtoaddr ptr %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !184 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %.idx87 = shl nuw nsw i64 %i.bq, 3              ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx87
  %.not6673 = icmp eq i32 %i.bp, 0
  br i1 %.not6673, label %._crit_edge78, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %bb.f
  %i.bs = add nsw i64 %.idx87, -8                 ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 152
  br i1 %min.iters.check, label %.lr.ph77.preheader101, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph77.preheader
  %i.bv = add nsw i64 %.idx87, -8                 ; 2 uses
  %i.bw = lshr exact i64 %i.bv, 3
  %i.bx = trunc i64 %i.bw to i32
  %i.by = xor i32 %.06180, -1
  %i.bz = icmp ult i32 %i.by, %i.bx
  %i.ca = icmp ugt i64 %i.bv, 34359738360
  %i.cb = or i1 %i.bz, %i.ca
  br i1 %i.cb, label %.lr.ph77.preheader101, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cc = zext i32 %.06180 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %7 = sub i64 %i.cd, %i.bn
  %op.rdx101.reass = add i64 %7, %invariant.op
  %diff.check = icmp ult i64 %op.rdx101.reass, 31
  br i1 %diff.check, label %.lr.ph77.preheader101, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bu, 4611686018427387900     ; 4 uses
  %i.ce = shl i64 %n.vec, 3
  %i.cf = getelementptr i8, ptr %i.bm, i64 %i.ce
  %i.cg = trunc i64 %n.vec to i32
  %i.ch = add i32 %.06180, %i.cg                  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ci = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  %i.cj = trunc i64 %index to i32
  %i.ck = add i32 %.06180, %i.cj
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !22
  %wide.load99 = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !22
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <2 x ptr> %wide.load, ptr %i.cn, align 8, !tbaa !22
  store <2 x ptr> %wide.load99, ptr %i.co, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !1079

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %._crit_edge78, label %.lr.ph77.preheader101

.lr.ph77.preheader101:                            ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph77.preheader, %middle.block
  %.075.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %vector.scevcheck ], [ %i.bm, %.lr.ph77.preheader ], [ %i.cf, %middle.block ]
  %.174.ph = phi i32 [ %.06180, %vector.memcheck ], [ %.06180, %vector.scevcheck ], [ %.06180, %.lr.ph77.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph77

._crit_edge78:                                    ; preds = %.lr.ph77, %middle.block, %bb.f
  %.1.lcssa = phi i32 [ %.06180, %bb.f ], [ %i.ch, %middle.block ], [ %i.ct, %.lr.ph77 ] ; 2 uses
  %i.cq = sub i32 %.1.lcssa, %i.g
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv90
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !131
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %i.d
  br i1 %exitcond94.not, label %._crit_edge84, label %bb.f, !llvm.loop !1080

.lr.ph77:                                         ; preds = %.lr.ph77.preheader101, %.lr.ph77
  %.075 = phi ptr [ %i.cw, %.lr.ph77 ], [ %.075.ph, %.lr.ph77.preheader101 ] ; 2 uses
  %.174 = phi i32 [ %i.ct, %.lr.ph77 ], [ %.174.ph, %.lr.ph77.preheader101 ] ; 2 uses
  %i.cs = load ptr, ptr %.075, align 8, !tbaa !22
  %i.ct = add i32 %.174, 1                        ; 2 uses
  %i.cu = zext i32 %.174 to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.cu
  store ptr %i.cs, ptr %i.cv, align 8, !tbaa !22
  %i.cw = getelementptr inbounds nuw i8, ptr %.075, i64 8 ; 2 uses
  %.not66 = icmp eq ptr %i.cw, %i.br
  br i1 %.not66, label %._crit_edge78, label %.lr.ph77, !llvm.loop !1081
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang13OMPInitClause11CreateEmptyERKNS_10ASTContextEjj(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = add i32 %1, 1                            ; 2 uses
  %i.b = add i32 %i.a, %2
  %i.c = zext i32 %i.b to i64
  %i.d = zext i32 %1 to i64
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = shl nuw nsw i64 %i.d, 2
  %i.g = add nuw nsw i64 %i.f, 32
  %i.h = add nuw nsw i64 %i.g, %i.e               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.j = add nuw nsw i64 %i.h, 4
  %i.k = and i64 %i.j, 137438953464               ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !128  ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.k, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.p = load i64, ptr %i.o, align 8, !tbaa !129
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %bb.c, !prof !130

bb.b:                                             ; preds = %bb.a
  %i.r = inttoptr i64 %i.n to ptr
  store ptr %i.r, ptr %i.i, align 8, !tbaa !128
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 noundef %i.h, i64 noundef %i.k, i8 3)
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.l, %bb.b ], [ %i.s, %bb.c ] ; 5 uses
  store <4 x i32> <i32 0, i32 0, i32 61, i32 0>, ptr %.0.i.i.i, align 4, !tbaa !138
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 %i.a, ptr %i.t, align 4, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.u, i8 0, i64 7, i1 false)
  store i32 %2, ptr %i.v, align 4, !tbaa !62
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang13OMPInitClause8setAttrsEN4llvm8ArrayRefIjEENS2_IPNS_4ExprEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !62
  %i.f = add i32 %i.e, %i.c
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g ; 5 uses
  %i.i = and i64 %2, 4294967295
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %2, 4294967295
  %i.j = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.k = icmp ult i64 %i.j, 3
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, 4294967292
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0811.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.0811.epil = phi i32 [ %.0811.epil.init, %.lr.ph.epil.preheader ], [ %i.n, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.m = load i32, ptr %i.l, align 4, !tbaa !131
  %i.n = add i32 %i.m, %.0811.epil                ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  store i32 %i.n, ptr %i.o, align 4, !tbaa !131
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1098

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.p = zext i32 %i.c to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.p ; 2 uses
  %i.r = icmp ugt i64 %4, 1
  br i1 %i.r, label %bb.b, label %bb.c, !prof !130

bb.b:                                             ; preds = %._crit_edge
  %.idx.i = shl nuw nsw i64 %4, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %3, i64 %.idx.i, i1 false)
  br label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.s = icmp eq i64 %4, 1
  br i1 %i.s, label %bb.d, label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %3, align 8, !tbaa !22
  store ptr %i.t, ptr %i.q, align 8, !tbaa !22
  br label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit

_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.0811 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !131
  %i.w = add i32 %i.v, %.0811                     ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 8, !tbaa !131
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.z = load i32, ptr %i.y, align 4, !tbaa !131
  %i.aa = add i32 %i.z, %i.w                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !131
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !131
  %i.ae = add i32 %i.ad, %i.aa                    ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !131
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !131
end_hunk_0
