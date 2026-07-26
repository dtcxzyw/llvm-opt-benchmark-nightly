loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@binate_split_select:bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !19
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %1, ptr noundef %i.g, ptr noundef %i.j) #10 ; 0 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !19
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.p = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %2, ptr noundef %i.l, ptr noundef %i.o) #10 ; 0 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !30
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.c
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 8 uses
  %.not48 = icmp sgt i32 %i.s, %i.e
  br i1 %.not48, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.t = add i32 %i.e, 1
  %i.u = sub i32 %i.t, %i.s                       ; 3 uses
  %xtraiter = and i32 %i.u, 1
  %i.v = icmp eq i32 %i.e, %i.s
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.u, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050 = phi i32 [ %i.s, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ] ; 4 uses
  %.03849 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.w = ashr i32 %.050, 5
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [4 x i8], ptr %i.f, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = and i32 %.050, 31
  %i.ac = xor i32 %i.aa, -1
  %i.ad = lshr i32 %i.ac, %i.ab
  %i.ae = and i32 %i.ad, 1
  %spec.select = add nuw nsw i32 %i.ae, %.03849
  %i.af = add i32 %.050, 1                        ; 2 uses
  %i.ag = ashr i32 %i.af, 5
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %i.f, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = and i32 %i.af, 31
  %i.am = xor i32 %i.ak, -1
  %i.an = lshr i32 %i.am, %i.al
  %i.ao = and i32 %i.an, 1
  %spec.select.1 = add nuw nsw i32 %i.ao, %spec.select ; 3 uses
  %i.ap = add i32 %.050, 2                        ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.050.epil.init = phi i32 [ %i.s, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.unr-lcssa ] ; 2 uses
  %.03849.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod67 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %i.aq = ashr i32 %.050.epil.init, 5
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.f, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = and i32 %.050.epil.init, 31
  %i.aw = xor i32 %i.au, -1
  %i.ax = lshr i32 %i.aw, %i.av
  %i.ay = and i32 %i.ax, 1
  %spec.select.epil = add nuw nsw i32 %i.ay, %.03849.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %spec.select.lcssa = phi i32 [ %spec.select.1, %._crit_edge.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ]
  %i.az = lshr i32 %spec.select.lcssa, 1          ; 2 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %.preheader, label %.lr.ph54

.preheader:                                       ; preds = %bb.c, %bb.a, %._crit_edge
  %.1.lcssa = phi i32 [ %i.s, %._crit_edge ], [ %i.s, %bb.a ], [ %i.bm, %bb.c ] ; 2 uses
  %.not4256 = icmp sgt i32 %.1.lcssa, %i.e
  br i1 %.not4256, label %._crit_edge59, label %.lr.ph58

.lr.ph54:                                         ; preds = %._crit_edge, %bb.c
  %.152 = phi i32 [ %i.bm, %bb.c ], [ %i.s, %._crit_edge ] ; 3 uses
  %.24051 = phi i32 [ %.3, %bb.c ], [ %i.az, %._crit_edge ] ; 2 uses
  %i.ba = ashr i32 %.152, 5
  %i.bb = add nsw i32 %i.ba, 1
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = and i32 %.152, 31
  %i.bg = shl nuw i32 1, %i.bf                    ; 2 uses
  %i.bh = and i32 %i.be, %i.bg
  %.not46 = icmp eq i32 %i.bh, 0
  br i1 %.not46, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph54
  %i.bi = add nsw i32 %.24051, -1
  %i.bj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bc ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = or i32 %i.bk, %i.bg
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %bb.b
  %.3 = phi i32 [ %.24051, %.lr.ph54 ], [ %i.bi, %bb.b ] ; 2 uses
  %i.bm = add nsw i32 %.152, 1                    ; 2 uses
  %i.bn = icmp sgt i32 %.3, 0
  br i1 %i.bn, label %.lr.ph54, label %.preheader

.lr.ph58:                                         ; preds = %.preheader, %bb.e
  %.257 = phi i32 [ %i.bz, %bb.e ], [ %.1.lcssa, %.preheader ] ; 4 uses
  %i.bo = ashr i32 %.257, 5
  %i.bp = add nsw i32 %i.bo, 1
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = and i32 %.257, 31
  %i.bu = shl nuw i32 1, %i.bt                    ; 2 uses
  %i.bv = and i32 %i.bs, %i.bu
  %.not45 = icmp eq i32 %i.bv, 0
  br i1 %.not45, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph58
  %i.bw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bq ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = or i32 %i.bx, %i.bu
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph58, %bb.d
  %i.bz = add i32 %.257, 1
  %exitcond60.not = icmp eq i32 %.257, %i.e
  br i1 %exitcond60.not, label %._crit_edge59, label %.lr.ph58

._crit_edge59:                                    ; preds = %bb.e, %.preheader
  %i.ca = load i32, ptr @debug, align 4, !tbaa !4
  %i.cb = and i32 %i.ca, %3
  %.not43 = icmp eq i32 %i.cb, 0
  br i1 %.not43, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge59
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.a) ; 0 uses
  %i.cd = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %.not44 = icmp eq i32 %i.cd, 0
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = tail call ptr (ptr, ...) @pc1(ptr noundef %1) #10
  %i.cf = tail call ptr (ptr, ...) @pc2(ptr noundef %2) #10
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %i.ce, ptr noundef %i.cf) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge59
  ret i32 %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @pc1(...) local_unnamed_addr #2

declare ptr @pc2(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cube1list(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = add nsw i32 %i.b, 3
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #9 ; 4 uses
  %i.g = load i32, ptr @cube, align 8, !tbaa !15  ; 2 uses
  %i.h = icmp slt i32 %i.g, 33
  %i.i = add nsw i32 %i.g, -1
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 536870908
  %i.l = add nuw nsw i32 %i.k, 8
  %narrow = select i1 %i.h, i32 8, i32 %i.l
  %i.m = zext nneg i32 %narrow to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #9
  %i.o = load i32, ptr @cube, align 8, !tbaa !15
  %i.p = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.n, i32 noundef %i.o) #10
  store ptr %i.p, ptr %i.f, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %i.t = load i32, ptr %i.a, align 4, !tbaa !31
  %i.u = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.t                   ; 2 uses
  %i.w = sext i32 %i.v to i64
  %.idx = shl nuw nsw i64 %i.w, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %i.y = icmp sgt i32 %i.v, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.z = sext i32 %i.u to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.020 = phi ptr [ %i.s, %.lr.ph ], [ %i.ab, %bb.b ] ; 2 uses
  %.01719 = phi ptr [ %i.q, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01719, i64 8 ; 2 uses
  store ptr %.020, ptr %.01719, align 8, !tbaa !14
  %i.ab = getelementptr inbounds [4 x i8], ptr %.020, i64 %i.z ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %i.x
  br i1 %i.ac, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.017.lcssa = phi ptr [ %i.q, %bb.a ], [ %i.aa, %bb.b ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.017.lcssa, i64 8
  store ptr null, ptr %.017.lcssa, align 8, !tbaa !14
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !14
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cube2list(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %i.e = add i32 %i.b, 3
  %i.f = add i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #9 ; 4 uses
  %i.j = load i32, ptr @cube, align 8, !tbaa !15  ; 2 uses
  %i.k = icmp slt i32 %i.j, 33
  %i.l = add nsw i32 %i.j, -1
  %i.m = lshr i32 %i.l, 3
  %i.n = and i32 %i.m, 536870908
  %i.o = add nuw nsw i32 %i.n, 8
  %narrow = select i1 %i.k, i32 8, i32 %i.o
  %i.p = zext nneg i32 %narrow to i64
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #9
  %i.r = load i32, ptr @cube, align 8, !tbaa !15
  %i.s = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.q, i32 noundef %i.r) #10
  store ptr %i.s, ptr %i.i, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34   ; 2 uses
  %i.w = load i32, ptr %i.a, align 4, !tbaa !31
  %i.x = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.y = mul nsw i32 %i.x, %i.w                   ; 2 uses
  %i.z = sext i32 %i.y to i64
  %.idx = shl nuw nsw i64 %i.z, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %i.ab = icmp sgt i32 %i.y, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ac = sext i32 %i.x to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.032 = phi ptr [ %i.t, %.lr.ph ], [ %i.ad, %bb.b ] ; 2 uses
  %.02831 = phi ptr [ %i.v, %.lr.ph ], [ %i.ae, %bb.b ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.032, i64 8 ; 2 uses
  store ptr %.02831, ptr %.032, align 8, !tbaa !14
  %i.ae = getelementptr inbounds [4 x i8], ptr %.02831, i64 %i.ac ; 2 uses
  %i.af = icmp ult ptr %i.ae, %i.aa
  br i1 %i.af, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %i.t, %bb.a ], [ %i.ad, %bb.b ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34 ; 2 uses
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !31
  %i.aj = load i32, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.ak = mul nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %.idx39 = shl nuw nsw i64 %i.al, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx39
  %i.an = icmp sgt i32 %i.ak, 0
  br i1 %i.an, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %._crit_edge
  %i.ao = sext i32 %i.aj to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph36, %bb.c
  %.134 = phi ptr [ %.0.lcssa, %.lr.ph36 ], [ %i.ap, %bb.c ] ; 2 uses
  %.12933 = phi ptr [ %i.ah, %.lr.ph36 ], [ %i.aq, %bb.c ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.134, i64 8 ; 2 uses
  store ptr %.12933, ptr %.134, align 8, !tbaa !14
  %i.aq = getelementptr inbounds [4 x i8], ptr %.12933, i64 %i.ao ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.am
  br i1 %i.ar, label %bb.c, label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.c, %._crit_edge
  %.1.lcssa = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.ap, %bb.c ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  store ptr null, ptr %.1.lcssa, align 8, !tbaa !14
  store ptr %i.at, ptr %i.as, align 8, !tbaa !14
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cube3list(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %i.g = add i32 %i.b, 3
  %i.h = add i32 %i.g, %i.d
  %i.i = add i32 %i.h, %i.f
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #9 ; 4 uses
  %i.m = load i32, ptr @cube, align 8, !tbaa !15  ; 2 uses
  %i.n = icmp slt i32 %i.m, 33
  %i.o = add nsw i32 %i.m, -1
  %i.p = lshr i32 %i.o, 3
  %i.q = and i32 %i.p, 536870908
  %i.r = add nuw nsw i32 %i.q, 8
  %narrow = select i1 %i.n, i32 8, i32 %i.r
  %i.s = zext nneg i32 %narrow to i64
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #9
  %i.u = load i32, ptr @cube, align 8, !tbaa !15
  %i.v = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.t, i32 noundef %i.u) #10
  store ptr %i.v, ptr %i.l, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34   ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !31
  %i.aa = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ab = mul nsw i32 %i.aa, %i.z                 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx
  %i.ae = icmp sgt i32 %i.ab, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.af = sext i32 %i.aa to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.045 = phi ptr [ %i.w, %.lr.ph ], [ %i.ag, %bb.b ] ; 2 uses
  %.04044 = phi ptr [ %i.y, %.lr.ph ], [ %i.ah, %bb.b ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.045, i64 8 ; 2 uses
  store ptr %.04044, ptr %.045, align 8, !tbaa !14
  %i.ah = getelementptr inbounds [4 x i8], ptr %.04044, i64 %i.af ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.ad
  br i1 %i.ai, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %i.w, %bb.a ], [ %i.ag, %bb.b ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !31
  %i.am = load i32, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.al                ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %.idx58 = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx58
  %i.aq = icmp sgt i32 %i.an, 0
  br i1 %i.aq, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %._crit_edge
  %i.ar = sext i32 %i.am to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph49, %bb.c
  %.147 = phi ptr [ %.0.lcssa, %.lr.ph49 ], [ %i.as, %bb.c ] ; 2 uses
  %.14146 = phi ptr [ %i.ak, %.lr.ph49 ], [ %i.at, %bb.c ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.147, i64 8 ; 2 uses
  store ptr %.14146, ptr %.147, align 8, !tbaa !14
  %i.at = getelementptr inbounds [4 x i8], ptr %.14146, i64 %i.ar ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.ap
  br i1 %i.au, label %bb.c, label %._crit_edge50

._crit_edge50:                                    ; preds = %bb.c, %._crit_edge
  %.1.lcssa = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.as, %bb.c ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34 ; 2 uses
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !31
  %i.ay = load i32, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.ax                ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %.idx59 = shl nuw nsw i64 %i.ba, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx59
  %i.bc = icmp sgt i32 %i.az, 0
  br i1 %i.bc, label %.lr.ph55, label %._crit_edge56

.lr.ph55:                                         ; preds = %._crit_edge50
  %i.bd = sext i32 %i.ay to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph55, %bb.d
  %.253 = phi ptr [ %.1.lcssa, %.lr.ph55 ], [ %i.be, %bb.d ] ; 2 uses
  %.24252 = phi ptr [ %i.aw, %.lr.ph55 ], [ %i.bf, %bb.d ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.253, i64 8 ; 2 uses
  store ptr %.24252, ptr %.253, align 8, !tbaa !14
  %i.bf = getelementptr inbounds [4 x i8], ptr %.24252, i64 %i.bd ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.bb
  br i1 %i.bg, label %bb.d, label %._crit_edge56

._crit_edge56:                                    ; preds = %bb.d, %._crit_edge50
  %.2.lcssa = phi ptr [ %.1.lcssa, %._crit_edge50 ], [ %i.be, %bb.d ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  store ptr null, ptr %.2.lcssa, align 8, !tbaa !14
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !14
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cubeunlist(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, -3
  %i.j = load i32, ptr @cube, align 8, !tbaa !15
  %i.k = tail call ptr (i64, i32, ...) @sf_new(i64 noundef %i.i, i32 noundef %i.j) #10 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %.not25 = icmp eq ptr %i.m, null
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv28 = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next29, %.loopexit ] ; 2 uses
  %i.q = phi ptr [ %i.m, %.lr.ph ], [ %i.bi, %.loopexit ] ; 4 uses
  %i.r = load i32, ptr %i.k, align 8, !tbaa !35
  %i.s = add nsw i64 %indvars.iv28, -2
  %i.t = sext i32 %i.r to i64                     ; 2 uses
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.u ; 4 uses
  %i.w = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %i.x = and i32 %i.w, 1023
  %i.y = load i32, ptr %i.v, align 4, !tbaa !4
  %i.z = and i32 %i.y, -1024
  %i.aa = or disjoint i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !4
  %i.ab = and i32 %i.w, 1023                      ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64              ; 5 uses
  %i.ad = icmp ne i32 %i.ab, 0
  %.neg = sext i1 %i.ad to i64
  %i.ae = add nsw i64 %.neg, %i.ac
  %i.af = add nsw i64 %i.ae, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.af, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.ag = shl i64 %indvar, 2
  %i.ah = ptrtoaddr ptr %i.q to i64
  %i.ai = mul i64 %i.ag, %i.t
  %i.aj = add i64 %i.ai, %i.p                     ; 2 uses
  %i.ak = sub i64 %i.aj, %i.ah
  %diff.check = icmp ugt i64 %i.ak, -32
  %i.al = sub i64 %i.aj, %i.b
  %diff.check32 = icmp ugt i64 %i.al, -32
  %conflict.rdx = or i1 %diff.check, %diff.check32
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, -8                      ; 3 uses
  %i.am = sub nsw i64 %i.ac, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = sub i64 %i.ac, %index                   ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -12
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !4
  %wide.load33 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -12
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -28
  %wide.load34 = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %wide.load35 = load <4 x i32>, ptr %i.at, align 4, !tbaa !4
  %i.au = or <4 x i32> %wide.load34, %wide.load
  %i.av = or <4 x i32> %wide.load35, %wide.load33
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.an ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  store <4 x i32> %i.au, ptr %i.ax, align 4, !tbaa !4
  store <4 x i32> %i.av, ptr %i.ay, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ac, %vector.memcheck ], [ %i.ac, %bb.b ], [ %i.am, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = or i32 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bg = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bg, label %scalar.ph, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next29
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %i.bi, null
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  %i.bm = lshr exact i64 %i.bl, 3
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = add i32 %i.bn, -3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !31
  ret ptr %i.k
}

declare ptr @sf_new(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @simplify_cubelist(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %0, align 8, !tbaa !14
  %i.d = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.b, ptr noundef %i.c) #10 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, -3                         ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = sext i32 %i.l to i64
  tail call void @qsort(ptr noundef nonnull %i.m, i64 noundef %i.n, i64 noundef 8, ptr noundef nonnull @d1_order) #10
  %i.o = icmp sgt i32 %i.l, 3
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.021 = phi ptr [ %i.m, %.lr.ph.preheader ], [ %.1, %bb.c ] ; 3 uses
  %i.p = getelementptr [8 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %i.r = tail call i32 (ptr, ptr, ...) @d1_order(ptr noundef %i.q, ptr noundef nonnull %i.p) #10
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %.021, i64 8
  store ptr %i.s, ptr %.021, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi ptr [ %i.t, %bb.b ], [ %.021, %.lr.ph ] ; 2 uses
end_hunk_0
