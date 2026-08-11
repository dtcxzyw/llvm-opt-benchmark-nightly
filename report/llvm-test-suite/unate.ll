inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@exact_minimum_cover:bb.a
  %i.cs = mul nsw i32 %i.cr, %i.cq                ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %.idx.i = shl nsw i64 %i.ct, 2
  %i.cu = getelementptr inbounds i8, ptr %i.co, i64 %.idx.i
  %i.cv = icmp sgt i32 %i.cs, 0
  br i1 %i.cv, label %.lr.ph104.i, label %._crit_edge105.thread.i

._crit_edge105.thread.i:                          ; preds = %bb.h
  %i.cw = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.cm) #10
  br label %unate_intersect.exit

.lr.ph104.i:                                      ; preds = %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %.pre130.i = load i32, ptr %i.cj, align 8, !tbaa !23
  br label %.lr.ph104.split.i

.lr.ph104.split.i:                                ; preds = %._crit_edge.split.us.i, %.lr.ph104.i
  %i.db = phi i32 [ %i.ee, %._crit_edge.split.us.i ], [ %i.cr, %.lr.ph104.i ]
  %i.dc = phi i32 [ %i.ef, %._crit_edge.split.us.i ], [ %.pre130.i, %.lr.ph104.i ] ; 2 uses
  %.0101.i = phi ptr [ %i.eh, %._crit_edge.split.us.i ], [ %i.co, %.lr.ph104.i ] ; 2 uses
  %.05599.i = phi ptr [ %.156.lcssa.i, %._crit_edge.split.us.i ], [ null, %.lr.ph104.i ] ; 2 uses
  %.05898.i = phi ptr [ %.159.lcssa.i, %._crit_edge.split.us.i ], [ %i.cm, %.lr.ph104.i ] ; 2 uses
  %.06197.i = phi ptr [ %.162.lcssa.i, %._crit_edge.split.us.i ], [ %i.cy, %.lr.ph104.i ] ; 2 uses
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !16 ; 2 uses
  %i.de = load i32, ptr %i.da, align 4, !tbaa !13
  %i.df = mul nsw i32 %i.de, %i.dc                ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %.idx125.i = shl nsw i64 %i.dg, 2
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %.idx125.i
  %i.di = icmp sgt i32 %i.df, 0
  br i1 %i.di, label %.lr.ph.i, label %._crit_edge.split.us.i

.lr.ph.i:                                         ; preds = %.lr.ph104.split.i, %.thread80.us.i
  %.15689.us.i = phi ptr [ %.4.us.i, %.thread80.us.i ], [ %.05599.i, %.lr.ph104.split.i ] ; 4 uses
  %.15988.us.i = phi ptr [ %.260.us.i, %.thread80.us.i ], [ %.05898.i, %.lr.ph104.split.i ] ; 6 uses
  %.16287.us.i = phi ptr [ %.364.us.i, %.thread80.us.i ], [ %.06197.i, %.lr.ph104.split.i ] ; 3 uses
  %.06586.us.i = phi ptr [ %i.ec, %.thread80.us.i ], [ %i.dd, %.lr.ph104.split.i ] ; 2 uses
  %i.dj = tail call i32 (ptr, ptr, ptr, ...) @set_andp(ptr noundef %.16287.us.i, ptr noundef %.0101.i, ptr noundef %.06586.us.i) #10
  %.not69.us.i = icmp eq i32 %i.dj, 0
  br i1 %.not69.us.i, label %.thread80.us.i, label %.thread.us.i

.thread.us.i:                                     ; preds = %.lr.ph.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.15988.us.i, i64 12 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13
  %i.dm = add nsw i32 %i.dl, 1                    ; 2 uses
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %.15988.us.i, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !39
  %.not70.us.i = icmp slt i32 %i.dm, %i.do
  br i1 %.not70.us.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.thread.us.i
  %i.dp = tail call ptr (ptr, ...) @sf_contain(ptr noundef nonnull %.15988.us.i) #10 ; 2 uses
  %i.dq = icmp eq ptr %.15689.us.i, null
  br i1 %i.dq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dr = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.15689.us.i, ptr noundef %i.dp) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ds = phi ptr [ %i.dr, %bb.j ], [ %i.dp, %bb.i ]
  %i.dt = load i32, ptr %i.ck, align 4, !tbaa !22
  %i.du = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.dt) #10 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !16
  br label %.thread80.us.i

bb.l:                                             ; preds = %.thread.us.i
  %i.dx = load i32, ptr %.15988.us.i, align 8, !tbaa !23
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %.16287.us.i, i64 %i.dy
  br label %.thread80.us.i

.thread80.us.i:                                   ; preds = %bb.l, %bb.k, %.lr.ph.i
  %.364.us.i = phi ptr [ %i.dw, %bb.k ], [ %i.dz, %bb.l ], [ %.16287.us.i, %.lr.ph.i ] ; 2 uses
  %.260.us.i = phi ptr [ %i.du, %bb.k ], [ %.15988.us.i, %bb.l ], [ %.15988.us.i, %.lr.ph.i ] ; 2 uses
  %.4.us.i = phi ptr [ %i.ds, %bb.k ], [ %.15689.us.i, %bb.l ], [ %.15689.us.i, %.lr.ph.i ] ; 2 uses
  %i.ea = load i32, ptr %i.cj, align 8, !tbaa !23 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %.06586.us.i, i64 %i.eb ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %i.dh
  br i1 %i.ed, label %.lr.ph.i, label %._crit_edge.split.us.loopexit.i

._crit_edge.split.us.loopexit.i:                  ; preds = %.thread80.us.i
  %.pre131.i = load i32, ptr %i.ci, align 8, !tbaa !23
  br label %._crit_edge.split.us.i

._crit_edge.split.us.i:                           ; preds = %._crit_edge.split.us.loopexit.i, %.lr.ph104.split.i
  %i.ee = phi i32 [ %i.db, %.lr.ph104.split.i ], [ %.pre131.i, %._crit_edge.split.us.loopexit.i ] ; 2 uses
  %i.ef = phi i32 [ %i.dc, %.lr.ph104.split.i ], [ %i.ea, %._crit_edge.split.us.loopexit.i ]
  %.162.lcssa.i = phi ptr [ %.06197.i, %.lr.ph104.split.i ], [ %.364.us.i, %._crit_edge.split.us.loopexit.i ]
  %.159.lcssa.i = phi ptr [ %.05898.i, %.lr.ph104.split.i ], [ %.260.us.i, %._crit_edge.split.us.loopexit.i ] ; 2 uses
  %.156.lcssa.i = phi ptr [ %.05599.i, %.lr.ph104.split.i ], [ %.4.us.i, %._crit_edge.split.us.loopexit.i ] ; 3 uses
  %i.eg = sext i32 %i.ee to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0101.i, i64 %i.eg ; 2 uses
  %i.ei = icmp ult ptr %i.eh, %i.cu
  br i1 %i.ei, label %.lr.ph104.split.i, label %._crit_edge105.i

._crit_edge105.i:                                 ; preds = %._crit_edge.split.us.i
  %i.ej = tail call ptr (ptr, ...) @sf_contain(ptr noundef %.159.lcssa.i) #10 ; 2 uses
  %i.ek = icmp eq ptr %.156.lcssa.i, null
  br i1 %i.ek, label %unate_intersect.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge105.i
  %i.el = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.156.lcssa.i, ptr noundef %i.ej) #10
  br label %unate_intersect.exit

unate_intersect.exit:                             ; preds = %._crit_edge105.thread.i, %._crit_edge105.i, %bb.m
  %i.em = phi ptr [ %i.el, %bb.m ], [ %i.ej, %._crit_edge105.i ], [ %i.cw, %._crit_edge105.thread.i ] ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.ce) ; 2 uses
  %i.en = add nsw i32 %., -1                      ; 2 uses
  %i.eo = load i32, ptr @debug, align 4, !tbaa !4
  %i.ep = and i32 %i.eo, 2048
  %i.eq = icmp ne i32 %i.ep, 0
  %i.er = icmp slt i32 %., 11
  %or.cond = and i1 %i.er, %i.eq
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %unate_intersect.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !13
  %i.eu = load i32, ptr %i.cp, align 4, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !13
  %i.ex = tail call i64 (...) @util_cpu_time() #10
  %i.ey = sub nsw i64 %i.ex, %i.a
  %i.ez = tail call ptr @util_print_time(i64 noundef %i.ey) #10
  %i.fa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.en, i32 noundef %i.et, i32 noundef %i.eu, i32 noundef %i.ew, ptr noundef %i.ez) ; 0 uses
  %i.fb = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.fc = tail call i32 @fflush(ptr noundef %i.fb) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %unate_intersect.exit
  tail call void (ptr, ...) @sf_free(ptr noundef %i.cj) #10
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.ci) #10
  store ptr %i.em, ptr %i.cc, align 16, !tbaa !36
  store i32 %i.en, ptr %i.cd, align 8, !tbaa !38
  %i.fd = add nsw i32 %.2111, -1                  ; 2 uses
  %i.fe = icmp sgt i32 %.2111, 2
  br i1 %i.fe, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.g, %._crit_edge
  %.2.lcssa = phi i32 [ %i.bu, %._crit_edge ], [ %.2111, %bb.g ], [ %i.fd, %bb.o ]
  %i.ff = load i32, ptr %i.k, align 8, !tbaa !23
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %.094117, i64 %i.fg ; 2 uses
  %i.fi = icmp ult ptr %i.fh, %i.al
  br i1 %i.fi, label %.lr.ph119, label %._crit_edge120.loopexit

._crit_edge120.loopexit:                          ; preds = %.critedge
  %.pre128 = load ptr, ptr %1, align 16, !tbaa !36
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %bb.c
  %i.fj = phi ptr [ %.pre128, %._crit_edge120.loopexit ], [ %i.n, %bb.c ] ; 6 uses
  %i.fk = load i32, ptr %i.l, align 4, !tbaa !22  ; 2 uses
  %i.fl = icmp slt i32 %i.fk, 33
  %i.fm = add nsw i32 %i.fk, -1
  %i.fn = lshr i32 %i.fm, 3
  %i.fo = and i32 %i.fn, 536870908
  %i.fp = add nuw nsw i32 %i.fo, 8
  %narrow = select i1 %i.fl, i32 8, i32 %i.fp
  %i.fq = zext nneg i32 %narrow to i64
  %i.fr = tail call noalias ptr @malloc(i64 noundef %i.fq) #11
  %i.fs = load i32, ptr %i.l, align 4, !tbaa !22
  %i.ft = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.fr, i32 noundef %i.fs) #10
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
  %i.gn = add nuw nsw i64 %i.gl, 1
  %i.go = add nsw i64 %i.gn, %.neg                ; 3 uses
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
  %i.r = phi i32 [ %i.bb, %._crit_edge.split.us118 ], [ %i.h, %.lr.ph104 ]
  %i.s = phi i32 [ %i.bc, %._crit_edge.split.us118 ], [ %.pre130, %.lr.ph104 ] ; 2 uses
  %.0101.us = phi ptr [ %i.be, %._crit_edge.split.us118 ], [ %i.e, %.lr.ph104 ] ; 3 uses
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
end_hunk_0
