inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@exact_minimum_cover:bb.a
  %i.fu = load i32, ptr %i.l, align 4, !tbaa !22
  %i.fv = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.ft, i32 noundef %i.fu) #10 ; 7 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !13
  %i.ga = load i32, ptr %i.fj, align 8, !tbaa !23
  %i.gb = mul nsw i32 %i.ga, %i.fz                ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %.idx125 = shl nsw i64 %i.gc, 2
  %i.gd = getelementptr inbounds i8, ptr %i.fx, i64 %.idx125
  %i.ge = icmp sgt i32 %i.gb, 0
  br i1 %i.ge, label %.lr.ph123.preheader, label %._crit_edge124

.lr.ph123.preheader:                              ; preds = %._crit_edge120
  %scevgep143 = getelementptr i8, ptr %i.fv, i64 4
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %.loopexit
  %.1121 = phi ptr [ %i.hn, %.loopexit ], [ %i.fx, %.lr.ph123.preheader ] ; 7 uses
  %i.gf = load i32, ptr %i.fv, align 4, !tbaa !4  ; 2 uses
  %i.gg = and i32 %i.gf, 1023
  %i.gh = load i32, ptr %.1121, align 4, !tbaa !4
  %i.gi = and i32 %i.gh, -1024
  %i.gj = or disjoint i32 %i.gi, %i.gg
  store i32 %i.gj, ptr %.1121, align 4, !tbaa !4
  %i.gk = and i32 %i.gf, 1023                     ; 3 uses
  %i.gl = zext nneg i32 %i.gk to i64              ; 6 uses
  %i.gm = icmp ne i32 %i.gk, 0
  %.neg = sext i1 %i.gm to i64
  %i.gn = add nsw i64 %.neg, %i.gl
  %i.go = add nsw i64 %i.gn, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.go, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123
  %.not148 = icmp eq i32 %i.gk, 0
  %i.gp = select i1 %.not148, i64 0, i64 4        ; 2 uses
  %scevgep = getelementptr i8, ptr %.1121, i64 %i.gp
  %scevgep140 = getelementptr i8, ptr %.1121, i64 4
  %i.gq = shl nuw nsw i64 %i.gl, 2                ; 2 uses
  %scevgep141 = getelementptr i8, ptr %scevgep140, i64 %i.gq
  %scevgep142 = getelementptr i8, ptr %i.fv, i64 %i.gp
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.gq
  %bound0 = icmp ult ptr %scevgep, %scevgep144
  %bound1 = icmp ult ptr %scevgep142, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.go, -8                      ; 3 uses
  %i.gr = sub nsw i64 %i.gl, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gs = sub i64 %i.gl, %index                   ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.gs ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -12
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 -28
  %wide.load = load <4 x i32>, ptr %i.gu, align 4, !tbaa !4, !alias.scope !42
  %wide.load145 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !4, !alias.scope !42
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.1121, i64 %i.gs ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -12 ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gw, i64 -28 ; 2 uses
  %wide.load146 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !4, !alias.scope !45, !noalias !42
  %wide.load147 = load <4 x i32>, ptr %i.gy, align 4, !tbaa !4, !alias.scope !45, !noalias !42
  %i.gz = xor <4 x i32> %wide.load146, splat (i32 -1)
  %i.ha = xor <4 x i32> %wide.load147, splat (i32 -1)
  %i.hb = and <4 x i32> %wide.load, %i.gz
  %i.hc = and <4 x i32> %wide.load145, %i.ha
  store <4 x i32> %i.hb, ptr %i.gx, align 4, !tbaa !4, !alias.scope !45, !noalias !42
  store <4 x i32> %i.hc, ptr %i.gy, align 4, !tbaa !4, !alias.scope !45, !noalias !42
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hd = icmp eq i64 %index.next, %n.vec
  br i1 %i.hd, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.go, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph123, %middle.block
  %indvars.iv.ph = phi i64 [ %i.gl, %vector.memcheck ], [ %i.gl, %.lr.ph123 ], [ %i.gr, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !4
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.1121, i64 %indvars.iv ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !4
  %i.hi = xor i32 %i.hh, -1
  %i.hj = and i32 %i.hf, %i.hi
  store i32 %i.hj, ptr %i.hg, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.hk = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.hk, label %scalar.ph, label %.loopexit, !llvm.loop !48

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.hl = load i32, ptr %i.fj, align 8, !tbaa !23
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %.1121, i64 %i.hm ; 2 uses
  %i.ho = icmp ult ptr %i.hn, %i.gd
  br i1 %i.ho, label %.lr.ph123, label %._crit_edge124.thread

._crit_edge124:                                   ; preds = %._crit_edge120
  %.not105 = icmp eq ptr %i.fv, null
  br i1 %.not105, label %bb.p, label %._crit_edge124.thread

._crit_edge124.thread:                            ; preds = %.loopexit, %._crit_edge124
  tail call void @free(ptr noundef nonnull %i.fv) #10
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge124.thread, %._crit_edge124
  %i.hp = load i32, ptr @debug, align 4, !tbaa !4
  %i.hq = and i32 %i.hp, 4096
  %.not106 = icmp eq i32 %i.hq, 0
  br i1 %.not106, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void (ptr, ...) @sf_print(ptr noundef nonnull %i.fj) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.k) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.b
  %.093 = phi ptr [ %i.g, %bb.b ], [ %i.fj, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret ptr %.093
}

declare i64 @util_cpu_time(...) local_unnamed_addr #2

declare ptr @lex_sort(...) local_unnamed_addr #2

declare ptr @sf_save(...) local_unnamed_addr #2

declare ptr @set_fill(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @util_print_time(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

declare void @sf_print(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @unate_intersect(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22
  %i.c = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.b) #10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = load i32, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.i = mul nsw i32 %i.h, %i.g                   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.idx = shl nsw i64 %i.j, 2
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %.idx ; 2 uses
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph104, label %._crit_edge105.thread

._crit_edge105.thread:                            ; preds = %bb.a
  %i.m = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.c) #10
  br label %bb.p

.lr.ph104:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.not = icmp eq i32 %2, 0
  %.pre130 = load i32, ptr %1, align 8, !tbaa !23 ; 2 uses
  br i1 %.not, label %.lr.ph104.split, label %.lr.ph104.split.us

.lr.ph104.split.us:                               ; preds = %.lr.ph104, %._crit_edge.split.us118
  %i.r = phi i32 [ %3, %._crit_edge.split.us118 ], [ %i.h, %.lr.ph104 ]
  %i.s = phi i32 [ %4, %._crit_edge.split.us118 ], [ %.pre130, %.lr.ph104 ] ; 2 uses
  %.0101.us = phi ptr [ %6, %._crit_edge.split.us118 ], [ %i.e, %.lr.ph104 ] ; 3 uses
  %.053100.us = phi i32 [ %.1.lcssa.us, %._crit_edge.split.us118 ], [ 0, %.lr.ph104 ] ; 2 uses
  %.05599.us = phi ptr [ %.156.lcssa.us, %._crit_edge.split.us118 ], [ null, %.lr.ph104 ] ; 2 uses
  %.05898.us = phi ptr [ %.159.lcssa.us, %._crit_edge.split.us118 ], [ %i.c, %.lr.ph104 ] ; 2 uses
  %.06197.us = phi ptr [ %.162.lcssa.us, %._crit_edge.split.us118 ], [ %i.o, %.lr.ph104 ] ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.q, align 4, !tbaa !13
  %i.v = mul nsw i32 %i.s, %i.u                   ; 2 uses
  %i.w = sext i32 %i.v to i64
  %.idx126 = shl nsw i64 %i.w, 2
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %.idx126
  %i.y = icmp sgt i32 %i.v, 0
  br i1 %i.y, label %.lr.ph.us, label %._crit_edge.split.us118

.lr.ph.us:                                        ; preds = %.lr.ph104.split.us, %.thread80.us114
  %.190.us = phi i32 [ %.279.us, %.thread80.us114 ], [ %.053100.us, %.lr.ph104.split.us ] ; 5 uses
  %.15689.us108 = phi ptr [ %.4.us117, %.thread80.us114 ], [ %.05599.us, %.lr.ph104.split.us ] ; 5 uses
  %.15988.us109 = phi ptr [ %.260.us116, %.thread80.us114 ], [ %.05898.us, %.lr.ph104.split.us ] ; 9 uses
  %.16287.us110 = phi ptr [ %.364.us115, %.thread80.us114 ], [ %.06197.us, %.lr.ph104.split.us ] ; 5 uses
  %.06586.us111 = phi ptr [ %i.az, %.thread80.us114 ], [ %i.t, %.lr.ph104.split.us ] ; 3 uses
  %i.z = tail call i32 (ptr, ptr, ptr, ...) @set_andp(ptr noundef %.16287.us110, ptr noundef %.0101.us, ptr noundef %.06586.us111) #10
  %.not127 = icmp eq i32 %i.z, 0
  br i1 %.not127, label %.thread80.us114, label %bb.b

bb.b:                                             ; preds = %.lr.ph.us
  %i.aa = tail call i32 (ptr, ...) @set_ord(ptr noundef %.16287.us110) #10 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, %.190.us
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp slt i32 %i.aa, %.190.us
  br i1 %i.ac, label %.thread80.us114, label %.thread.us112

bb.d:                                             ; preds = %bb.b
  %.not.us = icmp eq ptr %.15689.us108, null
  br i1 %.not.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %.15689.us108) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.15988.us109, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.15988.us109, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !13
  %i.ag = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.ae, ptr noundef %.0101.us, ptr noundef %.06586.us111) #10 ; 0 uses
  br label %.thread.us112

.thread.us112:                                    ; preds = %bb.f, %bb.c
  %.278.us = phi i32 [ %i.aa, %bb.f ], [ %.190.us, %bb.c ] ; 2 uses
  %.377.us = phi ptr [ null, %bb.f ], [ %.15689.us108, %bb.c ] ; 3 uses
  %.26376.us = phi ptr [ %i.ae, %bb.f ], [ %.16287.us110, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.15988.us109, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !13
  %i.aj = add nsw i32 %i.ai, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.15988.us109, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !39
  %.not70.us113 = icmp slt i32 %i.aj, %i.al
  br i1 %.not70.us113, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.thread.us112
  %i.am = tail call ptr (ptr, ...) @sf_contain(ptr noundef nonnull %.15988.us109) #10 ; 2 uses
  %i.an = icmp eq ptr %.377.us, null
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.377.us, ptr noundef %i.am) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = phi ptr [ %i.ao, %bb.h ], [ %i.am, %bb.g ]
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !22
  %i.ar = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.aq) #10 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16
  br label %.thread80.us114

bb.j:                                             ; preds = %.thread.us112
  %i.au = load i32, ptr %.15988.us109, align 8, !tbaa !23
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %.26376.us, i64 %i.av
  br label %.thread80.us114

.thread80.us114:                                  ; preds = %.lr.ph.us, %bb.j, %bb.i, %bb.c
  %.279.us = phi i32 [ %.278.us, %bb.i ], [ %.278.us, %bb.j ], [ %.190.us, %bb.c ], [ %.190.us, %.lr.ph.us ] ; 2 uses
  %.364.us115 = phi ptr [ %i.at, %bb.i ], [ %i.aw, %bb.j ], [ %.16287.us110, %bb.c ], [ %.16287.us110, %.lr.ph.us ] ; 2 uses
  %.260.us116 = phi ptr [ %i.ar, %bb.i ], [ %.15988.us109, %bb.j ], [ %.15988.us109, %bb.c ], [ %.15988.us109, %.lr.ph.us ] ; 2 uses
  %.4.us117 = phi ptr [ %i.ap, %bb.i ], [ %.377.us, %bb.j ], [ %.15689.us108, %bb.c ], [ %.15689.us108, %.lr.ph.us ] ; 2 uses
  %i.ax = load i32, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %.06586.us111, i64 %i.ay ; 2 uses
  %i.ba = icmp ult ptr %i.az, %i.x
  br i1 %i.ba, label %.lr.ph.us, label %._crit_edge.split.us118.loopexit

._crit_edge.split.us118.loopexit:                 ; preds = %.thread80.us114
  %.pre129 = load i32, ptr %0, align 8, !tbaa !23
  br label %._crit_edge.split.us118

._crit_edge.split.us118:                          ; preds = %._crit_edge.split.us118.loopexit, %.lr.ph104.split.us
  %3 = phi i32 [ %i.r, %.lr.ph104.split.us ], [ %.pre129, %._crit_edge.split.us118.loopexit ] ; 2 uses
  %4 = phi i32 [ %i.s, %.lr.ph104.split.us ], [ %i.ax, %._crit_edge.split.us118.loopexit ]
  %.162.lcssa.us = phi ptr [ %.06197.us, %.lr.ph104.split.us ], [ %.364.us115, %._crit_edge.split.us118.loopexit ]
  %.159.lcssa.us = phi ptr [ %.05898.us, %.lr.ph104.split.us ], [ %.260.us116, %._crit_edge.split.us118.loopexit ] ; 2 uses
  %.156.lcssa.us = phi ptr [ %.05599.us, %.lr.ph104.split.us ], [ %.4.us117, %._crit_edge.split.us118.loopexit ] ; 2 uses
  %.1.lcssa.us = phi i32 [ %.053100.us, %.lr.ph104.split.us ], [ %.279.us, %._crit_edge.split.us118.loopexit ]
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [4 x i8], ptr %.0101.us, i64 %5 ; 2 uses
  %7 = icmp ult ptr %6, %i.k
  br i1 %7, label %.lr.ph104.split.us, label %._crit_edge105

.lr.ph104.split:                                  ; preds = %.lr.ph104, %._crit_edge.split.us
  %i.bb = phi i32 [ %i.ce, %._crit_edge.split.us ], [ %i.h, %.lr.ph104 ]
  %i.bc = phi i32 [ %i.cf, %._crit_edge.split.us ], [ %.pre130, %.lr.ph104 ] ; 2 uses
  %.0101 = phi ptr [ %i.ch, %._crit_edge.split.us ], [ %i.e, %.lr.ph104 ] ; 2 uses
  %.05599 = phi ptr [ %.156.lcssa, %._crit_edge.split.us ], [ null, %.lr.ph104 ] ; 2 uses
  %.05898 = phi ptr [ %.159.lcssa, %._crit_edge.split.us ], [ %i.c, %.lr.ph104 ] ; 2 uses
  %.06197 = phi ptr [ %.162.lcssa, %._crit_edge.split.us ], [ %i.o, %.lr.ph104 ] ; 2 uses
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %i.be = load i32, ptr %i.q, align 4, !tbaa !13
  %i.bf = mul nsw i32 %i.bc, %i.be                ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %.idx125 = shl nsw i64 %i.bg, 2
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %.idx125
  %i.bi = icmp sgt i32 %i.bf, 0
  br i1 %i.bi, label %.lr.ph, label %._crit_edge.split.us

.lr.ph:                                           ; preds = %.lr.ph104.split, %.thread80.us
  %.15689.us = phi ptr [ %.4.us, %.thread80.us ], [ %.05599, %.lr.ph104.split ] ; 4 uses
  %.15988.us = phi ptr [ %.260.us, %.thread80.us ], [ %.05898, %.lr.ph104.split ] ; 6 uses
  %.16287.us = phi ptr [ %.364.us, %.thread80.us ], [ %.06197, %.lr.ph104.split ] ; 3 uses
  %.06586.us = phi ptr [ %i.cc, %.thread80.us ], [ %i.bd, %.lr.ph104.split ] ; 2 uses
  %i.bj = tail call i32 (ptr, ptr, ptr, ...) @set_andp(ptr noundef %.16287.us, ptr noundef %.0101, ptr noundef %.06586.us) #10
  %.not69.us = icmp eq i32 %i.bj, 0
  br i1 %.not69.us, label %.thread80.us, label %.thread.us

.thread.us:                                       ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %.15988.us, i64 12 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !13
  %i.bm = add nsw i32 %i.bl, 1                    ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.15988.us, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !39
  %.not70.us = icmp slt i32 %i.bm, %i.bo
  br i1 %.not70.us, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.thread.us
  %i.bp = tail call ptr (ptr, ...) @sf_contain(ptr noundef nonnull %.15988.us) #10 ; 2 uses
  %i.bq = icmp eq ptr %.15689.us, null
  br i1 %i.bq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.15689.us, ptr noundef %i.bp) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bs = phi ptr [ %i.br, %bb.l ], [ %i.bp, %bb.k ]
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !22
  %i.bu = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.bt) #10 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !16
  br label %.thread80.us

bb.n:                                             ; preds = %.thread.us
  %i.bx = load i32, ptr %.15988.us, align 8, !tbaa !23
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %.16287.us, i64 %i.by
  br label %.thread80.us

.thread80.us:                                     ; preds = %bb.n, %bb.m, %.lr.ph
  %.364.us = phi ptr [ %i.bw, %bb.m ], [ %i.bz, %bb.n ], [ %.16287.us, %.lr.ph ] ; 2 uses
  %.260.us = phi ptr [ %i.bu, %bb.m ], [ %.15988.us, %bb.n ], [ %.15988.us, %.lr.ph ] ; 2 uses
  %.4.us = phi ptr [ %i.bs, %bb.m ], [ %.15689.us, %bb.n ], [ %.15689.us, %.lr.ph ] ; 2 uses
  %i.ca = load i32, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %.06586.us, i64 %i.cb ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.bh
  br i1 %i.cd, label %.lr.ph, label %._crit_edge.split.us.loopexit

._crit_edge.split.us.loopexit:                    ; preds = %.thread80.us
  %.pre131 = load i32, ptr %0, align 8, !tbaa !23
  br label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %._crit_edge.split.us.loopexit, %.lr.ph104.split
  %i.ce = phi i32 [ %i.bb, %.lr.ph104.split ], [ %.pre131, %._crit_edge.split.us.loopexit ] ; 2 uses
  %i.cf = phi i32 [ %i.bc, %.lr.ph104.split ], [ %i.ca, %._crit_edge.split.us.loopexit ]
  %.162.lcssa = phi ptr [ %.06197, %.lr.ph104.split ], [ %.364.us, %._crit_edge.split.us.loopexit ]
  %.159.lcssa = phi ptr [ %.05898, %.lr.ph104.split ], [ %.260.us, %._crit_edge.split.us.loopexit ] ; 2 uses
  %.156.lcssa = phi ptr [ %.05599, %.lr.ph104.split ], [ %.4.us, %._crit_edge.split.us.loopexit ] ; 2 uses
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %.0101, i64 %i.cg ; 2 uses
  %i.ci = icmp ult ptr %i.ch, %i.k
  br i1 %i.ci, label %.lr.ph104.split, label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge.split.us118, %._crit_edge.split.us
  %.058.lcssa = phi ptr [ %.159.lcssa, %._crit_edge.split.us ], [ %.159.lcssa.us, %._crit_edge.split.us118 ]
  %.055.lcssa = phi ptr [ %.156.lcssa, %._crit_edge.split.us ], [ %.156.lcssa.us, %._crit_edge.split.us118 ] ; 2 uses
  %i.cj = tail call ptr (ptr, ...) @sf_contain(ptr noundef %.058.lcssa) #10 ; 2 uses
  %i.ck = icmp eq ptr %.055.lcssa, null
  br i1 %i.ck, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge105
  %i.cl = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.055.lcssa, ptr noundef %i.cj) #10
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge105.thread, %._crit_edge105, %bb.o
  %i.cm = phi ptr [ %i.cl, %bb.o ], [ %i.cj, %._crit_edge105 ], [ %i.m, %._crit_edge105.thread ]
  ret ptr %i.cm
}

declare i32 @set_andp(...) local_unnamed_addr #2

declare ptr @set_and(...) local_unnamed_addr #2

declare ptr @sf_contain(...) local_unnamed_addr #2

declare ptr @sf_union(...) local_unnamed_addr #2

declare i32 @setp_disjoint(...) local_unnamed_addr #2

declare ptr @sf_count_restricted(...) local_unnamed_addr #2

declare void @fatal(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 int", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !5, i64 36}
!12 = !{!"cdata_struct", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !5, i64 32, !5, i64 36, !5, i64 40}
!13 = !{!14, !5, i64 12}
!14 = !{!"set_family", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !15, i64 32}
!15 = !{!"p1 _ZTS10set_family", !10, i64 0}
!16 = !{!14, !9, i64 24}
!17 = !{!18, !5, i64 0}
!18 = !{!"cube_struct", !5, i64 0, !5, i64 4, !5, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !19, i64 72, !19, i64 80, !9, i64 88, !9, i64 96, !5, i64 104, !5, i64 108, !9, i64 112, !5, i64 120, !5, i64 124}
!19 = !{!"p2 int", !20, i64 0}
!20 = !{!"any p2 pointer", !10, i64 0}
!21 = !{!12, !9, i64 0}
!22 = !{!14, !5, i64 4}
!23 = !{!14, !5, i64 0}
!24 = !{!18, !5, i64 4}
!25 = !{!12, !9, i64 24}
!26 = distinct !{!26, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !27}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !27, !28}
!34 = distinct !{!34, !30}
!35 = distinct !{!35, !27}
!36 = !{!37, !15, i64 0}
!37 = !{!"", !15, i64 0, !5, i64 8}
!38 = !{!37, !5, i64 8}
!39 = !{!14, !5, i64 8}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!42 = !{!43}
!43 = distinct !{!43, !44}
!44 = distinct !{!44, !"LVerDomain"}
!45 = !{!46}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !27, !28}
!48 = distinct !{!48, !27}
end_hunk_0
