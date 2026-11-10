Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/unate?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@exact_minimum_cover:bb.a
  %i.cd = getelementptr i8, ptr %i.bz, i64 -24    ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !51 ; 2 uses
  %i.cf = icmp eq i32 %i.cb, %i.ce
  %i.cg = select i1 %i.cf, i1 true, i1 %i.bx
  br i1 %i.cg, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ch = getelementptr i8, ptr %i.bz, i64 -16
  %i.ci = load ptr, ptr %i.ch, align 16, !tbaa !50 ; 6 uses
  %i.cj = load ptr, ptr %i.cc, align 16, !tbaa !50 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !21
  %i.cm = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.cl) #11 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 12 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !15
  %i.cr = load i32, ptr %i.ci, align 8, !tbaa !22 ; 2 uses
  %i.cs = mul nsw i32 %i.cr, %i.cq                ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %.idx.i = shl nsw i64 %i.ct, 2
  %i.cu = getelementptr inbounds i8, ptr %i.co, i64 %.idx.i
  %i.cv = icmp sgt i32 %i.cs, 0
  br i1 %i.cv, label %.lr.ph104.i, label %._crit_edge105.thread.i

._crit_edge105.thread.i:                          ; preds = %bb.g
  %i.cw = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.cm) #11
  br label %unate_intersect.exit

.lr.ph104.i:                                      ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %.pre130.i = load i32, ptr %i.cj, align 8, !tbaa !22
  br label %.lr.ph104.split.i

.lr.ph104.split.i:                                ; preds = %._crit_edge.split.us.i, %.lr.ph104.i
  %i.db = phi i32 [ %i.ee, %._crit_edge.split.us.i ], [ %i.cr, %.lr.ph104.i ]
  %i.dc = phi i32 [ %i.ef, %._crit_edge.split.us.i ], [ %.pre130.i, %.lr.ph104.i ] ; 2 uses
  %.054101.i = phi ptr [ %.155.lcssa.i, %._crit_edge.split.us.i ], [ null, %.lr.ph104.i ] ; 2 uses
  %.057100.i = phi ptr [ %.158.lcssa.i, %._crit_edge.split.us.i ], [ %i.cm, %.lr.ph104.i ] ; 2 uses
  %.06099.i = phi ptr [ %.161.lcssa.i, %._crit_edge.split.us.i ], [ %i.cy, %.lr.ph104.i ] ; 2 uses
  %.06597.i = phi ptr [ %i.eh, %._crit_edge.split.us.i ], [ %i.co, %.lr.ph104.i ] ; 2 uses
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !16 ; 2 uses
  %i.de = load i32, ptr %i.da, align 4, !tbaa !15
  %i.df = mul nsw i32 %i.de, %i.dc                ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %.idx125.i = shl nsw i64 %i.dg, 2
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %.idx125.i
  %i.di = icmp sgt i32 %i.df, 0
  br i1 %i.di, label %.lr.ph.i, label %._crit_edge.split.us.i

.lr.ph.i:                                         ; preds = %.lr.ph104.split.i, %.thread80.us.i
  %.15589.us.i = phi ptr [ %.4.us.i, %.thread80.us.i ], [ %.054101.i, %.lr.ph104.split.i ] ; 4 uses
  %.15888.us.i = phi ptr [ %.259.us.i, %.thread80.us.i ], [ %.057100.i, %.lr.ph104.split.i ] ; 6 uses
  %.16187.us.i = phi ptr [ %.363.us.i, %.thread80.us.i ], [ %.06099.i, %.lr.ph104.split.i ] ; 3 uses
  %.06486.us.i = phi ptr [ %i.ec, %.thread80.us.i ], [ %i.dd, %.lr.ph104.split.i ] ; 2 uses
  %i.dj = tail call i32 (ptr, ptr, ptr, ...) @set_andp(ptr noundef %.16187.us.i, ptr noundef %.06597.i, ptr noundef %.06486.us.i) #11
  %.not69.us.i = icmp eq i32 %i.dj, 0
  br i1 %.not69.us.i, label %.thread80.us.i, label %.thread.us.i

.thread.us.i:                                     ; preds = %.lr.ph.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.15888.us.i, i64 12 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !15
  %i.dm = add nsw i32 %i.dl, 1                    ; 2 uses
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %.15888.us.i, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !25
  %.not70.us.i = icmp slt i32 %i.dm, %i.do
  br i1 %.not70.us.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.thread.us.i
  %i.dp = tail call ptr (ptr, ...) @sf_contain(ptr noundef nonnull %.15888.us.i) #11 ; 2 uses
  %i.dq = icmp eq ptr %.15589.us.i, null
  br i1 %i.dq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.15589.us.i, ptr noundef %i.dp) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ds = phi ptr [ %i.dr, %bb.i ], [ %i.dp, %bb.h ]
  %i.dt = load i32, ptr %i.ck, align 4, !tbaa !21
  %i.du = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.dt) #11 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !16
  br label %.thread80.us.i

bb.k:                                             ; preds = %.thread.us.i
  %i.dx = load i32, ptr %.15888.us.i, align 8, !tbaa !22
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %.16187.us.i, i64 %i.dy
  br label %.thread80.us.i

.thread80.us.i:                                   ; preds = %bb.k, %bb.j, %.lr.ph.i
  %.363.us.i = phi ptr [ %i.dw, %bb.j ], [ %i.dz, %bb.k ], [ %.16187.us.i, %.lr.ph.i ] ; 2 uses
  %.259.us.i = phi ptr [ %i.du, %bb.j ], [ %.15888.us.i, %bb.k ], [ %.15888.us.i, %.lr.ph.i ] ; 2 uses
  %.4.us.i = phi ptr [ %i.ds, %bb.j ], [ %.15589.us.i, %bb.k ], [ %.15589.us.i, %.lr.ph.i ] ; 2 uses
  %i.ea = load i32, ptr %i.cj, align 8, !tbaa !22 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %.06486.us.i, i64 %i.eb ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %i.dh
  br i1 %i.ed, label %.lr.ph.i, label %._crit_edge.split.us.loopexit.i

._crit_edge.split.us.loopexit.i:                  ; preds = %.thread80.us.i
  %.pre131.i = load i32, ptr %i.ci, align 8, !tbaa !22
  br label %._crit_edge.split.us.i

._crit_edge.split.us.i:                           ; preds = %._crit_edge.split.us.loopexit.i, %.lr.ph104.split.i
  %i.ee = phi i32 [ %i.db, %.lr.ph104.split.i ], [ %.pre131.i, %._crit_edge.split.us.loopexit.i ] ; 2 uses
  %i.ef = phi i32 [ %i.dc, %.lr.ph104.split.i ], [ %i.ea, %._crit_edge.split.us.loopexit.i ]
  %.161.lcssa.i = phi ptr [ %.06099.i, %.lr.ph104.split.i ], [ %.363.us.i, %._crit_edge.split.us.loopexit.i ]
  %.158.lcssa.i = phi ptr [ %.057100.i, %.lr.ph104.split.i ], [ %.259.us.i, %._crit_edge.split.us.loopexit.i ] ; 2 uses
  %.155.lcssa.i = phi ptr [ %.054101.i, %.lr.ph104.split.i ], [ %.4.us.i, %._crit_edge.split.us.loopexit.i ] ; 3 uses
  %i.eg = sext i32 %i.ee to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %.06597.i, i64 %i.eg ; 2 uses
  %i.ei = icmp ult ptr %i.eh, %i.cu
  br i1 %i.ei, label %.lr.ph104.split.i, label %._crit_edge105.i

._crit_edge105.i:                                 ; preds = %._crit_edge.split.us.i
  %i.ej = tail call ptr (ptr, ...) @sf_contain(ptr noundef %.158.lcssa.i) #11 ; 2 uses
  %i.ek = icmp eq ptr %.155.lcssa.i, null
  br i1 %i.ek, label %unate_intersect.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge105.i
  %i.el = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.155.lcssa.i, ptr noundef %i.ej) #11
  br label %unate_intersect.exit

unate_intersect.exit:                             ; preds = %._crit_edge105.thread.i, %._crit_edge105.i, %bb.l
  %i.em = phi ptr [ %i.el, %bb.l ], [ %i.ej, %._crit_edge105.i ], [ %i.cw, %._crit_edge105.thread.i ] ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.ce) ; 2 uses
  %i.en = add nsw i32 %., -1                      ; 2 uses
  %i.eo = load i32, ptr @debug, align 4, !tbaa !7
  %i.ep = and i32 %i.eo, 2048
  %i.eq = icmp ne i32 %i.ep, 0
  %i.er = icmp slt i32 %., 11
  %or.cond = and i1 %i.er, %i.eq
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %unate_intersect.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !15
  %i.eu = load i32, ptr %i.cp, align 4, !tbaa !15
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !15
  %i.ex = tail call i64 (...) @util_cpu_time() #11
  %i.ey = sub nsw i64 %i.ex, %i.a
  %i.ez = tail call ptr @util_print_time(i64 noundef %i.ey) #11
  %i.fa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.en, i32 noundef %i.et, i32 noundef %i.eu, i32 noundef %i.ew, ptr noundef %i.ez) ; 0 uses
  %i.fb = load ptr, ptr @stdout, align 8, !tbaa !53
  %i.fc = tail call i32 @fflush(ptr noundef %i.fb) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %unate_intersect.exit
  tail call void (ptr, ...) @sf_free(ptr noundef %i.cj) #11
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.ci) #11
  store ptr %i.em, ptr %i.cc, align 16, !tbaa !50
  store i32 %i.en, ptr %i.cd, align 8, !tbaa !51
  %i.fd = add nsw i32 %.2111, -1                  ; 2 uses
  %i.fe = icmp sgt i32 %.2111, 2
  br i1 %i.fe, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.f, %._crit_edge
  %.2.lcssa = phi i32 [ %i.bu, %._crit_edge ], [ %.2111, %bb.f ], [ %i.fd, %bb.n ]
  %i.ff = load i32, ptr %i.h, align 8, !tbaa !22
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %.096116, i64 %i.fg ; 2 uses
  %i.fi = icmp ult ptr %i.fh, %i.ai
  br i1 %i.fi, label %.lr.ph119, label %._crit_edge120.loopexit

._crit_edge120.loopexit:                          ; preds = %.critedge
  %.pre128 = load ptr, ptr %1, align 16, !tbaa !50
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %.preheader.preheader
  %i.fj = phi ptr [ %.pre128, %._crit_edge120.loopexit ], [ %i.k, %.preheader.preheader ] ; 6 uses
  %i.fk = load i32, ptr %i.i, align 4, !tbaa !21  ; 2 uses
  %i.fl = icmp slt i32 %i.fk, 33
  %i.fm = add nsw i32 %i.fk, -1
  %i.fn = lshr i32 %i.fm, 3
  %i.fo = and i32 %i.fn, 536870908
  %i.fp = add nuw nsw i32 %i.fo, 8
  %narrow = select i1 %i.fl, i32 8, i32 %i.fp
  %i.fq = zext nneg i32 %narrow to i64
  %i.fr = tail call noalias ptr @malloc(i64 noundef %i.fq) #12
  %i.fs = load i32, ptr %i.i, align 4, !tbaa !21
  %i.ft = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.fr, i32 noundef %i.fs) #11
  %i.fu = load i32, ptr %i.i, align 4, !tbaa !21
  %i.fv = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.ft, i32 noundef %i.fu) #11 ; 7 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !15
  %i.ga = load i32, ptr %i.fj, align 8, !tbaa !22
  %i.gb = mul nsw i32 %i.ga, %i.fz                ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %.idx125 = shl nsw i64 %i.gc, 2
  %i.gd = getelementptr inbounds i8, ptr %i.fx, i64 %.idx125
  %i.ge = icmp sgt i32 %i.gb, 0
  br i1 %i.ge, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %._crit_edge120, %.loopexit
  %.197121 = phi ptr [ %i.hr, %.loopexit ], [ %i.fx, %._crit_edge120 ] ; 7 uses
  %i.gf = load i32, ptr %i.fv, align 4, !tbaa !7  ; 2 uses
  %i.gg = and i32 %i.gf, 1023
  %i.gh = load i32, ptr %.197121, align 4, !tbaa !7
  %i.gi = and i32 %i.gh, -1024
  %i.gj = or disjoint i32 %i.gi, %i.gg
  store i32 %i.gj, ptr %.197121, align 4, !tbaa !7
  %i.gk = and i32 %i.gf, 1023                     ; 2 uses
  %i.gl = zext nneg i32 %i.gk to i64              ; 6 uses
  %i.gm = icmp ne i32 %i.gk, 0                    ; 2 uses
  %.neg = sext i1 %i.gm to i64
  %i.gn = add nuw nsw i64 %i.gl, 1
  %i.go = add nsw i64 %i.gn, %.neg                ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.go, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123
  %i.gp = select i1 %i.gm, i64 4, i64 0           ; 2 uses
  %i.gq = getelementptr i8, ptr %.197121, i64 %i.gp
  %i.gr = shl nuw nsw i64 %i.gl, 2
  %2 = add nuw nsw i64 %i.gr, 4                   ; 2 uses
  %i.gs = getelementptr i8, ptr %.197121, i64 %2
  %i.gt = getelementptr i8, ptr %i.fv, i64 %i.gp
  %i.gu = getelementptr i8, ptr %i.fv, i64 %2
  %bound0 = icmp ult ptr %i.gq, %i.gu
  %bound1 = icmp ult ptr %i.gt, %i.gs
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.go, -8                      ; 3 uses
  %i.gv = sub nsw i64 %i.gl, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gw = sub i64 %i.gl, %index                   ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -12
  %i.gz = getelementptr inbounds i8, ptr %i.gx, i64 -28
  %wide.load = load <4 x i32>, ptr %i.gy, align 4, !tbaa !7, !alias.scope !54
  %wide.load143 = load <4 x i32>, ptr %i.gz, align 4, !tbaa !7, !alias.scope !54
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.197121, i64 %i.gw ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -12 ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.ha, i64 -28 ; 2 uses
  %wide.load144 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !7, !alias.scope !55, !noalias !54
  %wide.load145 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !7, !alias.scope !55, !noalias !54
  %i.hd = xor <4 x i32> %wide.load144, splat (i32 -1)
  %i.he = xor <4 x i32> %wide.load145, splat (i32 -1)
  %i.hf = and <4 x i32> %wide.load, %i.hd
  %i.hg = and <4 x i32> %wide.load143, %i.he
  store <4 x i32> %i.hf, ptr %i.hb, align 4, !tbaa !7, !alias.scope !55, !noalias !54
  store <4 x i32> %i.hg, ptr %i.hc, align 4, !tbaa !7, !alias.scope !55, !noalias !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.go, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph123, %middle.block
  %indvars.iv.ph = phi i64 [ %i.gl, %vector.memcheck ], [ %i.gl, %.lr.ph123 ], [ %i.gv, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !7
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.197121, i64 %indvars.iv ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !7
  %i.hm = xor i32 %i.hl, -1
  %i.hn = and i32 %i.hj, %i.hm
  store i32 %i.hn, ptr %i.hk, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ho = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ho, label %scalar.ph, label %.loopexit, !llvm.loop !47

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.hp = load i32, ptr %i.fj, align 8, !tbaa !22
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %.197121, i64 %i.hq ; 2 uses
  %i.hs = icmp ult ptr %i.hr, %i.gd
  br i1 %i.hs, label %.lr.ph123, label %._crit_edge124.thread

._crit_edge124:                                   ; preds = %._crit_edge120
  %.not105 = icmp eq ptr %i.fv, null
  br i1 %.not105, label %bb.o, label %._crit_edge124.thread

._crit_edge124.thread:                            ; preds = %.loopexit, %._crit_edge124
  tail call void @free(ptr noundef nonnull %i.fv) #11
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge124.thread, %._crit_edge124
  %i.ht = load i32, ptr @debug, align 4, !tbaa !7
  %i.hu = and i32 %i.ht, 4096
  %.not106 = icmp eq i32 %i.hu, 0
  br i1 %.not106, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void (ptr, ...) @sf_print(ptr noundef nonnull %i.fj) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.h) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b
  %.098 = phi ptr [ %i.am, %bb.b ], [ %i.fj, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret ptr %.098
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
define dso_local ptr @unate_intersect(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 !guid !56 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21
  %i.c = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.b) #11 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15
  %i.h = load i32, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.i = mul nsw i32 %i.h, %i.g                   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.idx = shl nsw i64 %i.j, 2
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %.idx ; 2 uses
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph104, label %._crit_edge105.thread

._crit_edge105.thread:                            ; preds = %bb.a
  %i.m = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.c) #11
  br label %bb.p

.lr.ph104:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.not = icmp eq i32 %2, 0
  %.pre130 = load i32, ptr %1, align 8, !tbaa !22 ; 2 uses
  br i1 %.not, label %.lr.ph104.split, label %.lr.ph104.split.us

.lr.ph104.split.us:                               ; preds = %.lr.ph104, %._crit_edge.split.us119
  %i.r = phi i32 [ %i.bb, %._crit_edge.split.us119 ], [ %i.h, %.lr.ph104 ]
  %i.s = phi i32 [ %i.bc, %._crit_edge.split.us119 ], [ %.pre130, %.lr.ph104 ] ; 2 uses
  %.0102.us = phi i32 [ %.1.lcssa.us, %._crit_edge.split.us119 ], [ 0, %.lr.ph104 ] ; 2 uses
  %.054101.us = phi ptr [ %.155.lcssa.us, %._crit_edge.split.us119 ], [ null, %.lr.ph104 ] ; 2 uses
  %.057100.us = phi ptr [ %.158.lcssa.us, %._crit_edge.split.us119 ], [ %i.c, %.lr.ph104 ] ; 2 uses
  %.06099.us = phi ptr [ %.161.lcssa.us, %._crit_edge.split.us119 ], [ %i.o, %.lr.ph104 ] ; 2 uses
  %.06597.us = phi ptr [ %i.be, %._crit_edge.split.us119 ], [ %i.e, %.lr.ph104 ] ; 3 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.q, align 4, !tbaa !15
  %i.v = mul nsw i32 %i.s, %i.u                   ; 2 uses
  %i.w = sext i32 %i.v to i64
  %.idx126 = shl nsw i64 %i.w, 2
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %.idx126
  %i.y = icmp sgt i32 %i.v, 0
  br i1 %i.y, label %.lr.ph.us, label %._crit_edge.split.us119

.lr.ph.us:                                        ; preds = %.lr.ph104.split.us, %.thread80.us115
  %.190.us = phi i32 [ %.279.us, %.thread80.us115 ], [ %.0102.us, %.lr.ph104.split.us ] ; 5 uses
  %.15589.us109 = phi ptr [ %.4.us118, %.thread80.us115 ], [ %.054101.us, %.lr.ph104.split.us ] ; 5 uses
  %.15888.us110 = phi ptr [ %.259.us117, %.thread80.us115 ], [ %.057100.us, %.lr.ph104.split.us ] ; 9 uses
  %.16187.us111 = phi ptr [ %.363.us116, %.thread80.us115 ], [ %.06099.us, %.lr.ph104.split.us ] ; 5 uses
  %.06486.us112 = phi ptr [ %i.az, %.thread80.us115 ], [ %i.t, %.lr.ph104.split.us ] ; 3 uses
  %i.z = tail call i32 (ptr, ptr, ptr, ...) @set_andp(ptr noundef %.16187.us111, ptr noundef %.06597.us, ptr noundef %.06486.us112) #11
  %.not127 = icmp eq i32 %i.z, 0
  br i1 %.not127, label %.thread80.us115, label %bb.b

bb.b:                                             ; preds = %.lr.ph.us
  %i.aa = tail call i32 (ptr, ...) @set_ord(ptr noundef %.16187.us111) #11 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, %.190.us
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp slt i32 %i.aa, %.190.us
  br i1 %i.ac, label %.thread80.us115, label %.thread.us113

bb.d:                                             ; preds = %bb.b
  %.not.us = icmp eq ptr %.15589.us109, null
  br i1 %.not.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %.15589.us109) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.15888.us110, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.15888.us110, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !15
  %i.ag = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.ae, ptr noundef %.06597.us, ptr noundef %.06486.us112) #11 ; 0 uses
  br label %.thread.us113

.thread.us113:                                    ; preds = %bb.f, %bb.c
  %.278.us = phi i32 [ %i.aa, %bb.f ], [ %.190.us, %bb.c ] ; 2 uses
  %.377.us = phi ptr [ null, %bb.f ], [ %.15589.us109, %bb.c ] ; 3 uses
  %.26276.us = phi ptr [ %i.ae, %bb.f ], [ %.16187.us111, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.15888.us110, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !15
  %i.aj = add nsw i32 %i.ai, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %.15888.us110, i64 8
end_hunk_0
