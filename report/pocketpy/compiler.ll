Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/compiler?download=true
inline.NumInlined: 296
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@CallExpr__dtor:bb.a
  %i.f = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  tail call void @free(ptr noundef %i.f) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !174  ; 3 uses
  %.not4048 = icmp eq ptr %i.h, null
  br i1 %.not4048, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !174
  %i.k = load i32, ptr %i.i, align 8, !tbaa !175
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.l
  %.not4164 = icmp eq ptr %i.h, %i.m
  br i1 %.not4164, label %.critedge, label %.lr.ph66

.critedge:                                        ; preds = %bb.i, %.lr.ph, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !176  ; 3 uses
  %.not4251 = icmp eq ptr %i.o, null
  br i1 %.not4251, label %.critedge2, label %.lr.ph53

.lr.ph53:                                         ; preds = %.critedge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !176
  %i.r = load i32, ptr %i.p, align 8, !tbaa !177
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.s
  %.not4367 = icmp eq ptr %i.o, %i.t
  br i1 %.not4367, label %.critedge2, label %.lr.ph69

.lr.ph66:                                         ; preds = %.lr.ph, %bb.i
  %.0324965 = phi ptr [ %i.z, %bb.i ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.u = load ptr, ptr %.0324965, align 8, !tbaa !107 ; 4 uses
  %.not46 = icmp eq ptr %i.u, null
  br i1 %.not46, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph66
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52   ; 2 uses
  %.not47 = icmp eq ptr %i.x, null
  br i1 %.not47, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.x(ptr noundef nonnull %i.u) #12
  %.pre55 = load ptr, ptr %.0324965, align 8, !tbaa !107
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi ptr [ %.pre55, %bb.g ], [ %i.u, %bb.f ]
  tail call void @free(ptr noundef %i.y) #12
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph66, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.0324965, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !174
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !175
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ac
  %.not41 = icmp eq ptr %i.z, %i.ad
  br i1 %.not41, label %.critedge, label %.lr.ph66

.critedge2:                                       ; preds = %bb.m, %.lr.ph53, %.critedge
  tail call void @c11_vector__dtor(ptr noundef nonnull %i.g) #12
  tail call void @c11_vector__dtor(ptr noundef nonnull %i.n) #12
  ret void

.lr.ph69:                                         ; preds = %.lr.ph53, %bb.m
  %.05268 = phi ptr [ %i.ak, %bb.m ], [ %i.o, %.lr.ph53 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05268, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179 ; 4 uses
  %.not44 = icmp eq ptr %i.af, null
  br i1 %.not44, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph69
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52 ; 2 uses
  %.not45 = icmp eq ptr %i.ai, null
  br i1 %.not45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void %i.ai(ptr noundef nonnull %i.af) #12
  %.pre56 = load ptr, ptr %i.ae, align 8, !tbaa !179
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = phi ptr [ %.pre56, %bb.k ], [ %i.af, %bb.j ]
  tail call void @free(ptr noundef %i.aj) #12
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph69, %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.05268, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !176
  %i.am = load i32, ptr %i.p, align 8, !tbaa !177
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.an
  %.not43 = icmp eq ptr %i.ak, %i.ao
  br i1 %.not43, label %.critedge2, label %.lr.ph69
}

declare void @c11_vector__dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @CallExpr__emit_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174  ; 3 uses
  %.not82 = icmp eq ptr %i.b, null
  br i1 %.not82, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !175  ; 2 uses
  %.not74106 = icmp eq i32 %i.d, 0
  br i1 %.not74106, label %.critedge, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %.lr.ph
  %i.e = sext i32 %i.d to i64
  %i.f = add nsw i64 %i.e, 2305843009213693951
  %i.g = and i64 %i.f, 2305843009213693951        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 3
  br i1 %i.i, label %.lr.ph109.epil.preheader, label %.lr.ph109.preheader.new

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader
  %unroll_iter = and i64 %i.h, 4611686018427387900
  br label %.lr.ph109

.critedge.loopexit.unr-lcssa:                     ; preds = %.lr.ph109
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph109.preheader
  %.07283108.epil.init = phi ptr [ %i.b, %.lr.ph109.preheader ], [ %i.as, %.critedge.loopexit.unr-lcssa ]
  %.084107.epil.init = phi i1 [ false, %.lr.ph109.preheader ], [ %spec.select.3, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph109.epil

.lr.ph109.epil:                                   ; preds = %.lr.ph109.epil, %.lr.ph109.epil.preheader
  %.07283108.epil = phi ptr [ %i.o, %.lr.ph109.epil ], [ %.07283108.epil.init, %.lr.ph109.epil.preheader ] ; 2 uses
  %.084107.epil = phi i1 [ %spec.select.epil, %.lr.ph109.epil ], [ %.084107.epil.init, %.lr.ph109.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph109.epil ], [ 0, %.lr.ph109.epil.preheader ]
  %i.j = load ptr, ptr %.07283108.epil, align 8, !tbaa !107
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 45
  %i.m = load i8, ptr %i.l, align 1, !tbaa !109, !range !31, !noundef !32
  %i.n = trunc nuw i8 %i.m to i1
  %spec.select.epil = select i1 %i.n, i1 true, i1 %.084107.epil ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.07283108.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %.lr.ph109.epil, !llvm.loop !244

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph109.epil, %.lr.ph, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ false, %.lr.ph ], [ %spec.select.3, %.critedge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph109.epil ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !176  ; 3 uses
  %.not7587 = icmp eq ptr %i.q, null
  br i1 %.not7587, label %.critedge2, label %.lr.ph90

.lr.ph90:                                         ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !177  ; 2 uses
  %.not76110 = icmp eq i32 %i.s, 0
  br i1 %.not76110, label %.critedge2, label %.lr.ph113.preheader

.lr.ph113.preheader:                              ; preds = %.lr.ph90
  %i.t = sext i32 %i.s to i64
  %i.u = add nsw i64 %i.t, 1152921504606846975
  %i.v = and i64 %i.u, 1152921504606846975        ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %xtraiter124 = and i64 %i.w, 3                  ; 3 uses
  %i.x = icmp samesign ult i64 %i.v, 3
  br i1 %i.x, label %.lr.ph113.epil.preheader, label %.lr.ph113.preheader.new

.lr.ph113.preheader.new:                          ; preds = %.lr.ph113.preheader
  %unroll_iter129 = and i64 %i.w, 2305843009213693948
  br label %.lr.ph113

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %.07283108 = phi ptr [ %i.b, %.lr.ph109.preheader.new ], [ %i.as, %.lr.ph109 ] ; 5 uses
  %.084107 = phi i1 [ false, %.lr.ph109.preheader.new ], [ %spec.select.3, %.lr.ph109 ]
  %niter = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter.next.3, %.lr.ph109 ]
  %i.y = load ptr, ptr %.07283108, align 8, !tbaa !107
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 45
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !109, !range !31, !noundef !32
  %i.ac = getelementptr inbounds nuw i8, ptr %.07283108, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !107
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 45
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !109, !range !31, !noundef !32
  %i.ah = or i8 %i.ag, %i.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %.07283108, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !107
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 45
  %i.am = load i8, ptr %i.al, align 1, !tbaa !109, !range !31, !noundef !32
  %2 = or i8 %i.ah, %i.am
  %i.an = getelementptr inbounds nuw i8, ptr %.07283108, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !107
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 45
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !109, !range !31, !noundef !32
  %3 = or i8 %2, %i.ar
  %4 = icmp ne i8 %3, 0
  %spec.select.3 = select i1 %4, i1 true, i1 %.084107 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.07283108, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %.lr.ph109

.critedge2.loopexit.unr-lcssa:                    ; preds = %.lr.ph113
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %.critedge2, label %.lr.ph113.epil.preheader

.lr.ph113.epil.preheader:                         ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph113.preheader
  %.07188112.epil.init = phi ptr [ %i.q, %.lr.ph113.preheader ], [ %i.cb, %.critedge2.loopexit.unr-lcssa ]
  %.06989111.epil.init = phi i1 [ false, %.lr.ph113.preheader ], [ %spec.select81.3, %.critedge2.loopexit.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter124, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph113.epil

.lr.ph113.epil:                                   ; preds = %.lr.ph113.epil, %.lr.ph113.epil.preheader
  %.07188112.epil = phi ptr [ %i.az, %.lr.ph113.epil ], [ %.07188112.epil.init, %.lr.ph113.epil.preheader ] ; 2 uses
  %.06989111.epil = phi i1 [ %spec.select81.epil, %.lr.ph113.epil ], [ %.06989111.epil.init, %.lr.ph113.epil.preheader ]
  %epil.iter125 = phi i64 [ %epil.iter125.next, %.lr.ph113.epil ], [ 0, %.lr.ph113.epil.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %.07188112.epil, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !179
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 45
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !109, !range !31, !noundef !32
  %i.ay = trunc nuw i8 %i.ax to i1
  %spec.select81.epil = select i1 %i.ay, i1 true, i1 %.06989111.epil ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.07188112.epil, i64 16
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %.critedge2, label %.lr.ph113.epil, !llvm.loop !245

.critedge2:                                       ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph113.epil, %.lr.ph90, %.critedge
  %.069.lcssa = phi i1 [ false, %.critedge ], [ false, %.lr.ph90 ], [ %spec.select81.3, %.critedge2.loopexit.unr-lcssa ], [ %spec.select81.epil, %.lr.ph113.epil ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !173 ; 5 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 43
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !180, !range !31, !noundef !32
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.b, label %bb.c

.lr.ph113:                                        ; preds = %.lr.ph113, %.lr.ph113.preheader.new
  %.07188112 = phi ptr [ %i.q, %.lr.ph113.preheader.new ], [ %i.cb, %.lr.ph113 ] ; 5 uses
  %.06989111 = phi i1 [ false, %.lr.ph113.preheader.new ], [ %spec.select81.3, %.lr.ph113 ]
  %niter130 = phi i64 [ 0, %.lr.ph113.preheader.new ], [ %niter130.next.3, %.lr.ph113 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.07188112, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !179
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !46
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 45
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !109, !range !31, !noundef !32
  %i.bl = getelementptr inbounds nuw i8, ptr %.07188112, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !179
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 45
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !109, !range !31, !noundef !32
  %i.bq = or i8 %i.bp, %i.bk
  %i.br = getelementptr inbounds nuw i8, ptr %.07188112, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !179
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !46
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 45
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !109, !range !31, !noundef !32
  %5 = or i8 %i.bq, %i.bv
  %i.bw = getelementptr inbounds nuw i8, ptr %.07188112, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !179
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 45
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !109, !range !31, !noundef !32
  %6 = or i8 %5, %i.ca
  %7 = icmp ne i8 %6, 0
  %spec.select81.3 = select i1 %7, i1 true, i1 %.06989111 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.07188112, i64 64 ; 2 uses
  %niter130.next.3 = add i64 %niter130, 4         ; 2 uses
  %niter130.ncmp.3 = icmp eq i64 %niter130.next.3, %unroll_iter129
  br i1 %niter130.ncmp.3, label %.critedge2.loopexit.unr-lcssa, label %.lr.ph113

bb.b:                                             ; preds = %.critedge2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !166 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !46
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !48
  tail call void %i.cf(ptr noundef nonnull %i.cd, ptr noundef %1) #12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !169
  %.val = load ptr, ptr %1, align 8, !tbaa !18
  %i.ci = tail call i32 @CodeObject__add_name(ptr noundef %.val, ptr noundef %i.ch) #12
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !170
  %i.cm = tail call fastcc i32 @Ctx__emit_(ptr noundef nonnull %1, i32 noundef 23, i16 noundef zeroext %i.cj, i32 noundef %i.cl) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.critedge2
  %i.cn = load ptr, ptr %i.bc, align 8, !tbaa !48
  tail call void %i.cn(ptr noundef nonnull %i.bb, ptr noundef %1) #12
  %i.co = tail call fastcc i32 @Ctx__emit_(ptr noundef %1, i32 noundef 15, i16 noundef zeroext 0, i32 noundef -1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !174 ; 3 uses
  %.not7794 = icmp eq ptr %i.cp, null
  br i1 %.not7794, label %.critedge5, label %.lr.ph96

.lr.ph96:                                         ; preds = %bb.d
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !174
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !175
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ct
  %.not78115 = icmp eq ptr %i.cp, %i.cu
  br i1 %.not78115, label %.critedge5, label %.lr.ph117

.critedge5:                                       ; preds = %.lr.ph117, %.lr.ph96, %bb.d
  %i.cv = load ptr, ptr %i.p, align 8, !tbaa !176 ; 3 uses
  %.not7998 = icmp eq ptr %i.cv, null
  br i1 %.not7998, label %.critedge7, label %.lr.ph100

.lr.ph100:                                        ; preds = %.critedge5
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load ptr, ptr %i.p, align 8, !tbaa !176
  %i.cz = load i32, ptr %i.cw, align 8, !tbaa !177
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [16 x i8], ptr %i.cy, i64 %i.da
  %.not80118 = icmp eq ptr %i.cv, %i.db
  br i1 %.not80118, label %.critedge7, label %.lr.ph120

.lr.ph117:                                        ; preds = %.lr.ph96, %.lr.ph117
  %.06895116 = phi ptr [ %i.df, %.lr.ph117 ], [ %i.cp, %.lr.ph96 ] ; 2 uses
  %i.dc = load ptr, ptr %.06895116, align 8, !tbaa !107 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !46
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !48
  tail call void %i.de(ptr noundef nonnull %i.dc, ptr noundef %1) #12
  %i.df = getelementptr inbounds nuw i8, ptr %.06895116, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !174
  %i.dh = load i32, ptr %i.cq, align 8, !tbaa !175
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.di
  %.not78 = icmp eq ptr %i.df, %i.dj
  br i1 %.not78, label %.critedge5, label %.lr.ph117

.critedge7:                                       ; preds = %bb.g, %.lr.ph100, %.critedge5
  %or.cond = select i1 %.0.lcssa, i1 true, i1 %.069.lcssa
  %spec.store.select = select i1 %or.cond, i32 75, i32 74
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !177
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !175
  %i.do = shl i32 %i.dl, 8
  %i.dp = or i32 %i.do, %i.dn
  %i.dq = trunc i32 %i.dp to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !181
  %i.dt = tail call fastcc i32 @Ctx__emit_(ptr noundef %1, i32 noundef %spec.store.select, i16 noundef zeroext %i.dq, i32 noundef %i.ds) ; 0 uses
  ret void

.lr.ph120:                                        ; preds = %.lr.ph100, %bb.g
  %.06799119 = phi ptr [ %i.ef, %bb.g ], [ %i.cv, %.lr.ph100 ] ; 3 uses
  %i.du = load ptr, ptr %.06799119, align 8, !tbaa !247 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  %i.dw = load i32, ptr %i.cx, align 8, !tbaa !181 ; 2 uses
  br i1 %i.dv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph120
  %i.dx = tail call fastcc i32 @Ctx__emit_(ptr noundef readonly %1, i32 noundef 11, i16 noundef zeroext 0, i32 noundef %i.dw) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph120
  %.val.i = load ptr, ptr %1, align 8, !tbaa !18
  %i.dy = tail call i32 @CodeObject__add_name(ptr noundef %.val.i, ptr noundef nonnull %i.du) #12
  %i.dz = trunc i32 %i.dy to i16
  %i.ea = tail call fastcc range(i32 -2147483648, 2147483647) i32 @Ctx__emit_(ptr noundef nonnull readonly %1, i32 noundef 12, i16 noundef zeroext %i.dz, i32 noundef %i.dw) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eb = getelementptr inbounds nuw i8, ptr %.06799119, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !179 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !46
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !48
  tail call void %i.ee(ptr noundef nonnull %i.ec, ptr noundef %1) #12
  %i.ef = getelementptr inbounds nuw i8, ptr %.06799119, i64 16 ; 2 uses
  %i.eg = load ptr, ptr %i.p, align 8, !tbaa !176
  %i.eh = load i32, ptr %i.cw, align 8, !tbaa !177
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [16 x i8], ptr %i.eg, i64 %i.ei
  %.not80 = icmp eq ptr %i.ef, %i.ej
  br i1 %.not80, label %.critedge7, label %.lr.ph120
}

; Function Attrs: nounwind uwtable
define noundef ptr @CallExpr__new(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #13 ; 6 uses
  store ptr @CallExpr__new.Vt, ptr %i.a, align 8, !tbaa !182
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %0, ptr %i.b, align 8, !tbaa !181
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !173
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @c11_vector__ctor(ptr noundef nonnull %i.d, i32 noundef 8) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @c11_vector__ctor(ptr noundef nonnull %i.e, i32 noundef 16) #12
  ret ptr %i.a
}

declare void @c11_vector__ctor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define noalias noundef ptr @SyntaxError(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #6 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = tail call noalias dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #13 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !185    ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !249
  %i.c = load i32, ptr %i.b, align 8, !tbaa !250
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !250
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !186  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !187
  %i.i = icmp eq i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !188
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr [48 x i8], ptr %i.k, i64 %i.l
  %i.n = select i1 %i.i, i64 -28, i64 20
  %i.o = getelementptr i8, ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !190
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.s = call i32 @vsnprintf(ptr noundef nonnull %i.r, i64 noundef 512, ptr noundef %1, ptr noundef nonnull %2) #12 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nounwind uwtable
define ptr @try_compile_assignment(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186  ; 4 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !191  ; 2 uses
  switch i32 %i.g, label %bb.ag [
    i32 18, label %bb.b
    i32 20, label %bb.b
    i32 22, label %bb.b
    i32 24, label %bb.b
    i32 26, label %bb.b
    i32 28, label %bb.b
    i32 36, label %bb.b
    i32 38, label %bb.b
    i32 30, label %bb.b
    i32 32, label %bb.b
    i32 34, label %bb.b
end_hunk_0
