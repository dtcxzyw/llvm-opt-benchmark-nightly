Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/refine?download=true
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@refine:bb.a
bb.r:                                             ; preds = %bb.q, %bb.o
  tail call void (...) @add_blocks() #7
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r, %bb.m
  %i.en = tail call double @timer() #7
  %i.eo = fsub double %i.en, %i.ce                ; 2 uses
  %i.ep = load double, ptr @timer_target_all, align 8, !tbaa !37
  %i.eq = fadd double %i.ep, %i.eo
  store double %i.eq, ptr @timer_target_all, align 8, !tbaa !37
  %i.er = fadd double %.0.lcssa, %i.eo
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s
  %.2 = phi double [ %i.er, %bb.s ], [ %.0.lcssa, %._crit_edge ]
  %i.es = tail call double @timer() #7
  %i.et = load i32, ptr @num_active, align 4, !tbaa !7 ; 3 uses
  %i.eu = load i32, ptr @local_max_b, align 4, !tbaa !7 ; 2 uses
  %i.ev = icmp sgt i32 %i.et, %i.eu
  br i1 %i.ev, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.et, ptr @local_max_b, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ew = phi i32 [ %i.et, %bb.u ], [ %i.eu, %bb.t ] ; 2 uses
  %i.ex = load i32, ptr @global_max_b, align 4, !tbaa !7
  %i.ey = icmp sgt i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.ew, ptr @global_max_b, align 4, !tbaa !7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ez = load i32, ptr @num_refine, align 4, !tbaa !7 ; 3 uses
  %.not82109 = icmp slt i32 %i.ez, 0
  br i1 %.not82109, label %._crit_edge113, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = load ptr, ptr @num_blocks, align 8, !tbaa !10 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7
  store i32 %i.fb, ptr @global_active, align 4, !tbaa !7
  %i.fc = load i32, ptr @my_pe, align 4, !tbaa !7
  %.not87.peel = icmp eq i32 %i.fc, 0
  br i1 %.not87.peel, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.fd = load i32, ptr @report_perf, align 4, !tbaa !7
  %i.fe = and i32 %i.fd, 8
  %.not88.peel = icmp eq i32 %i.fe, 0
  br i1 %.not88.peel, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ff = load i32, ptr %i.fa, align 4, !tbaa !7
  %i.fg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 0, i32 noundef %0, i32 noundef %i.ff) ; 0 uses
  %.pre = load i32, ptr @num_refine, align 4, !tbaa !7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.fh = phi i32 [ %.pre, %bb.aa ], [ %i.ez, %bb.z ], [ %i.ez, %bb.y ] ; 2 uses
  %.not82.not.peel = icmp sgt i32 %i.fh, 0
  br i1 %.not82.not.peel, label %.lr.ph112.peel.next, label %._crit_edge113

.lr.ph112.peel.next:                              ; preds = %bb.ab, %bb.ae
  %i.fi = phi i32 [ %i.fv, %bb.ae ], [ %i.fh, %bb.ab ] ; 2 uses
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %bb.ae ], [ 1, %bb.ab ] ; 5 uses
  %i.fj = load ptr, ptr @num_blocks, align 8, !tbaa !10 ; 2 uses
  %i.fk = load i32, ptr @global_active, align 4, !tbaa !7
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv123
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !7
  %i.fn = add nsw i32 %i.fk, %i.fm
  store i32 %i.fn, ptr @global_active, align 4, !tbaa !7
  %i.fo = load i32, ptr @my_pe, align 4, !tbaa !7
  %.not87 = icmp eq i32 %i.fo, 0
  br i1 %.not87, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph112.peel.next
  %i.fp = load i32, ptr @report_perf, align 4, !tbaa !7
  %i.fq = and i32 %i.fp, 8
  %.not88 = icmp eq i32 %i.fq, 0
  br i1 %.not88, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv123
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !7
  %i.ft = trunc nuw nsw i64 %indvars.iv123 to i32
  %i.fu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ft, i32 noundef %0, i32 noundef %i.fs) ; 0 uses
  %.pre127 = load i32, ptr @num_refine, align 4, !tbaa !7
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph112.peel.next, %bb.ac, %bb.ad
  %i.fv = phi i32 [ %i.fi, %.lr.ph112.peel.next ], [ %i.fi, %bb.ac ], [ %.pre127, %bb.ad ] ; 2 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %i.fw = sext i32 %i.fv to i64
  %.not82.not = icmp slt i64 %indvars.iv123, %i.fw
  br i1 %.not82.not, label %.lr.ph112.peel.next, label %._crit_edge113, !llvm.loop !35

._crit_edge113:                                   ; preds = %bb.ae, %bb.ab, %bb.x
  %i.fx = load i32, ptr @my_pe, align 4, !tbaa !7
  %.not83 = icmp eq i32 %i.fx, 0
  br i1 %.not83, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %._crit_edge113
  %i.fy = load i32, ptr @report_perf, align 4, !tbaa !7
  %i.fz = and i32 %i.fy, 8
  %.not84 = icmp eq i32 %i.fz, 0
  br i1 %.not84, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %putchar85 = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge113
  %i.ga = tail call double @timer() #7
  %i.gb = fsub double %i.ga, %i.es
  %i.gc = fadd double %.2, %i.gb
  %i.gd = tail call double @timer() #7
  %i.ge = fsub double %i.gd, %i.a
  %i.gf = fsub double %i.ge, %i.gc
  %i.gg = load double, ptr @timer_refine_cc, align 8, !tbaa !37
  %i.gh = fadd double %i.gg, %i.gf
  store double %i.gh, ptr @timer_refine_cc, align 8, !tbaa !37
  ret void
}

declare double @timer() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @reset_all() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @sorted_index, align 8, !tbaa !10 ; 2 uses
  %i.b = load i32, ptr @num_refine, align 4, !tbaa !7 ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [4 x i8], ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.preheader25

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr @sorted_list, align 8, !tbaa !12
  %i.i = load ptr, ptr @blocks, align 8, !tbaa !12
  br label %bb.b

.preheader25:                                     ; preds = %bb.d, %bb.a
  %i.j = load i32, ptr @max_active_parent, align 4, !tbaa !7
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph30, label %._crit_edge

.lr.ph30:                                         ; preds = %.preheader25
  %i.l = load ptr, ptr @parents, align 8, !tbaa !12
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.m = phi i32 [ %i.b, %.lr.ph ], [ %i.v, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [192 x i8], ptr %i.i, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !20
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 -1, ptr %i.u, align 8, !tbaa !22
  %.pre = load i32, ptr @num_refine, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.v = phi i32 [ %i.m, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [4 x i8], ptr %i.a, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.b, label %.preheader25, !llvm.loop !44

bb.e:                                             ; preds = %.lr.ph30, %.loopexit
  %indvars.iv38 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next39, %.loopexit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [100 x i8], ptr %i.l, i64 %indvars.iv38 ; 10 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !46
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 6 uses
  store i32 -1, ptr %i.af, align 4, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7  ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, -1                  ; 2 uses
  %spec.store.select = sext i1 %i.ai to i32       ; 2 uses
  store i32 %spec.store.select, ptr %i.af, align 4, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 28 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7  ; 3 uses
  %0 = icmp sgt i32 %i.ak, -1                     ; 2 uses
  %spec.store.select49 = select i1 %0, i32 %spec.store.select, i32 0 ; 2 uses
  store i32 %spec.store.select49, ptr %i.af, align 4, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %1 = icmp sgt i32 %i.am, -1                     ; 2 uses
  %spec.store.select51 = select i1 %1, i32 %spec.store.select49, i32 0 ; 2 uses
  store i32 %spec.store.select51, ptr %i.af, align 4, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 36 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ar = load <4 x i32>, ptr %i.an, align 4, !tbaa !7
  %.fr = freeze <4 x i32> %i.ar
  %i.as = icmp sgt <4 x i32> %.fr, splat (i32 -1) ; 5 uses
  %i.at = extractelement <4 x i1> %i.as, i64 0
  %i.au = extractelement <4 x i1> %i.as, i64 1
  %i.av = extractelement <4 x i1> %i.as, i64 2
  %i.aw = extractelement <4 x i1> %i.as, i64 3
  %i.ax = and i1 %i.aw, %i.av
  %i.ay = and i1 %i.ax, %i.au
  %i.az = and i1 %i.ay, %i.at
  %spec.store.select59 = select i1 %i.az, i32 %spec.store.select51, i32 0
  store i32 %spec.store.select59, ptr %i.af, align 4, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 52 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  store i32 0, ptr %i.af, align 4, !tbaa !24
  br label %.preheader

bb.g:                                             ; preds = %bb.f
  %i.bd = bitcast <4 x i1> %i.as to i4
  %i.be = icmp eq i4 %i.bd, -1
  %op.rdx = select i1 %i.be, i1 %1, i1 false
  %2 = select i1 %op.rdx, i1 %0, i1 false
  %op.rdx65 = select i1 %2, i1 %i.ai, i1 false
  br i1 %op.rdx65, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.thread, %bb.g
  %i.bf = load ptr, ptr @blocks, align 8          ; 8 uses
  %i.bg = icmp sgt i32 %i.ah, -1
  br i1 %i.bg, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.preheader
  %i.bh = zext nneg i32 %i.ah to i64
  %i.bi = getelementptr inbounds nuw [192 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !22
  %i.bl = icmp eq i32 %i.bk, -1
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bj, align 8, !tbaa !22
  %.pre41 = load i32, ptr %i.aj, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.i, %bb.h
  %i.bm = phi i32 [ %i.ak, %.preheader ], [ %.pre41, %bb.i ], [ %i.ak, %bb.h ] ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [192 x i8], ptr %i.bf, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !22
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bq, align 8, !tbaa !22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.bt = load i32, ptr %i.al, align 4, !tbaa !7  ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [192 x i8], ptr %i.bf, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !22
  %i.bz = icmp eq i32 %i.by, -1
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bx, align 8, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ca = load i32, ptr %i.an, align 4, !tbaa !7  ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, -1
  br i1 %i.cb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [192 x i8], ptr %i.bf, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !22
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ce, align 8, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.ch = load i32, ptr %i.ao, align 4, !tbaa !7  ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, -1
  br i1 %i.ci, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [192 x i8], ptr %i.bf, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !22
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.cl, align 8, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.co = load i32, ptr %i.ap, align 4, !tbaa !7  ; 2 uses
  %i.cp = icmp sgt i32 %i.co, -1
  br i1 %i.cp, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cq = zext nneg i32 %i.co to i64
  %i.cr = getelementptr inbounds nuw [192 x i8], ptr %i.bf, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !22
  %i.cu = icmp eq i32 %i.ct, -1
  br i1 %i.cu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cs, align 8, !tbaa !22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.cv = load i32, ptr %i.aq, align 4, !tbaa !7  ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, -1
  br i1 %i.cw, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cx = zext nneg i32 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [192 x i8], ptr %i.bf, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !22
  %i.db = icmp eq i32 %i.da, -1
  br i1 %i.db, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cz, align 8, !tbaa !22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.dc = load i32, ptr %i.ba, align 4, !tbaa !7  ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, -1
  br i1 %i.dd, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.de = zext nneg i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw [192 x i8], ptr %i.bf, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !22
  %i.di = icmp eq i32 %i.dh, -1
  br i1 %i.di, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.dg, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.e, %bb.g
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.dj = load i32, ptr @max_active_parent, align 4, !tbaa !7
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next39, %i.dk
  br i1 %i.dl, label %bb.e, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %.loopexit, %.preheader25
  ret void
}

declare void @check_objects() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @refine_level() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @cur_max_level, align 4, !tbaa !7 ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  %.pre313 = load ptr, ptr @sorted_index, align 8, !tbaa !10 ; 3 uses
  br i1 %i.b, label %.preheader194.lr.ph, label %.preheader

.preheader194.lr.ph:                              ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  br label %.preheader194

.preheader194:                                    ; preds = %.preheader194.lr.ph, %.split.us
  %indvars.iv271 = phi i64 [ %i.c, %.preheader194.lr.ph ], [ %indvars.iv.next272, %.split.us ] ; 8 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.pre313, i64 %indvars.iv271 ; 4 uses
  %i.e = add nuw nsw i64 %indvars.iv271, 1        ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.pre313, i64 %i.e ; 3 uses
  %i.g = load ptr, ptr @sorted_list, align 8
  %i.h = load ptr, ptr @blocks, align 8           ; 27 uses
  %indvars.iv.next272 = add nsw i64 %indvars.iv271, -1 ; 3 uses
  %i.i = load i32, ptr %i.d, align 4, !tbaa !7
  %i.j = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %.preheader194.split.preheader, label %.split.us

.preheader194.split.preheader:                    ; preds = %.preheader194
  %i.l = trunc nsw i64 %indvars.iv.next272 to i32
  br label %.preheader194.split

.preheader.loopexit:                              ; preds = %.split.us
  %.pre312 = load ptr, ptr @sorted_index, align 8, !tbaa !10
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.m = phi ptr [ %.pre312, %.preheader.loopexit ], [ %.pre313, %bb.a ]
  %i.n = load i32, ptr @num_refine, align 4, !tbaa !7
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %i.m, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7    ; 4 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph232, label %._crit_edge233

.lr.ph232:                                        ; preds = %.preheader
  %i.t = load ptr, ptr @blocks, align 8, !tbaa !12 ; 3 uses
  %i.u = load ptr, ptr @sorted_list, align 8, !tbaa !12 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.v = icmp eq i32 %i.r, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph232.new

.lr.ph232.new:                                    ; preds = %.lr.ph232
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.fo

.preheader194.split:                              ; preds = %.preheader194.split.preheader, %._crit_edge
  %i.w = phi i32 [ %i.j, %.preheader194.split.preheader ], [ %i.ot, %._crit_edge ] ; 2 uses
  %i.x = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.w
  br i1 %i.y, label %.lr.ph, label %.preheader193

.lr.ph:                                           ; preds = %.preheader194.split
  %i.z = load ptr, ptr @parents, align 8
  %i.aa = sext i32 %i.x to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit189
  %indvars.iv251 = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next252, %.loopexit189 ] ; 2 uses
  %.0146207 = phi i32 [ 0, %.lr.ph ], [ %.10, %.loopexit189 ] ; 10 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv251
end_hunk_0
