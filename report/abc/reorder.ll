Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/reorder?download=true
inline.NumInlined: 43
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@compute_weights:bb.a
  tail call void @kissat_dealloc(ptr noundef %0, ptr noundef %i.f, i64 noundef 101, i64 noundef 8) #6
  %i.cm = load i32, ptr %i.a, align 8, !tbaa !69  ; 3 uses
  %i.cn = shl i32 %i.cm, 1                        ; 2 uses
  %.not137178 = icmp eq i32 %i.cn, 0
  br i1 %.not137178, label %.preheader, label %.lr.ph181

.lr.ph181:                                        ; preds = %.critedge
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !76 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.cr = getelementptr i8, ptr %0, i64 840
  %i.cs = zext i32 %i.cn to i64
  br label %bb.g

.preheader:                                       ; preds = %.critedge7, %.critedge
  %.not138182 = icmp eq i32 %i.cm, 0
  br i1 %.not138182, label %._crit_edge, label %.lr.ph184

.lr.ph184:                                        ; preds = %.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !76
  %i.cv = zext i32 %i.cm to i64
  br label %bb.n

bb.g:                                             ; preds = %.lr.ph181, %.critedge7
  %indvars.iv188 = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next189, %.critedge7 ] ; 5 uses
  %i.cw = lshr i64 %indvars.iv188, 1
  %i.cx = and i64 %i.cw, 2147483647
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 4
  %i.da = trunc i16 %i.cz to i1
  br i1 %i.da, label %bb.h, label %.critedge7

bb.h:                                             ; preds = %bb.g
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !110
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv188 ; 2 uses
  %.val = load ptr, ptr %i.cr, align 8, !tbaa !111
  %.val143 = load i32, ptr %i.dc, align 4, !tbaa !113
  %i.dd = zext i32 %.val143 to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.dd ; 2 uses
  %i.df = getelementptr i8, ptr %i.dc, i64 4
  %.val146 = load i32, ptr %i.df, align 4, !tbaa !114 ; 2 uses
  %i.dg = zext i32 %.val146 to i64
  %.idx185 = shl nuw nsw i64 %i.dg, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx185
  %.not139175 = icmp eq i32 %.val146, 0
  br i1 %.not139175, label %.critedge7, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.h
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv188 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph177, %bb.m
  %.0118176 = phi ptr [ %i.de, %.lr.ph177 ], [ %i.dy, %bb.m ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.0118176, align 4, !tbaa !73 ; 2 uses
  %i.dj = icmp sgt i32 %.sroa.0.0.copyload, -1
  br i1 %i.dj, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = and i32 %.sroa.0.0.copyload, 2147483647 ; 2 uses
  %i.dl = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.dm = icmp samesign ugt i64 %indvars.iv188, %i.dl
  br i1 %i.dm, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = lshr i32 %i.dk, 1
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 4
  %i.dr = trunc i16 %i.dq to i1
  br i1 %i.dr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ds = load double, ptr %i.di, align 8, !tbaa !67
  %i.dt = fadd double %i.cl, %i.ds
  store double %i.dt, ptr %i.di, align 8, !tbaa !67
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.dl ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !67
  %i.dw = fadd double %i.cl, %i.dv
  store double %i.dw, ptr %i.du, align 8, !tbaa !67
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.i
  %i.dx = phi i64 [ 2, %bb.i ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.0118176, i64 %i.dx ; 2 uses
  %.not139 = icmp eq ptr %i.dy, %i.dh
  br i1 %.not139, label %.critedge7, label %bb.i, !llvm.loop !102

.critedge7:                                       ; preds = %bb.m, %bb.h, %bb.g
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %.not137 = icmp eq i64 %indvars.iv.next189, %i.cs
  br i1 %.not137, label %.preheader, label %bb.g, !llvm.loop !103

._crit_edge:                                      ; preds = %bb.p, %.preheader
  ret ptr %i.e

bb.n:                                             ; preds = %.lr.ph184, %bb.p
  %indvars.iv191 = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next192, %bb.p ] ; 4 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv191
  %i.ea = load i16, ptr %i.dz, align 4
  %i.eb = trunc i16 %i.ea to i1
  br i1 %i.eb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ec = trunc nuw i64 %indvars.iv191 to i32
  %i.ed = shl i32 %i.ec, 1                        ; 2 uses
  %i.ee = or disjoint i32 %i.ed, 1
  %i.ef = zext i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !67 ; 4 uses
  %i.ei = zext i32 %i.ee to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !67 ; 4 uses
  %i.el = fcmp olt double %i.eh, %i.ek
  %i.em = select i1 %i.el, double %i.ek, double %i.eh
  %i.en = fcmp ogt double %i.eh, %i.ek
  %i.eo = select i1 %i.en, double %i.ek, double %i.eh
  %i.ep = fmul double %i.eo, 2.000000e+00
  %i.eq = fadd double %i.em, %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv191
  store double %i.eq, ptr %i.er, align 8, !tbaa !67
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %.not138 = icmp eq i64 %indvars.iv.next192, %i.cv
  br i1 %.not138, label %._crit_edge, label %bb.n, !llvm.loop !104
}

declare void @kissat_rescale_scores(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @sort_active_variables_by_weight(ptr noundef %0, ptr noundef nonnull initializes((0, 24)) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.d = load i32, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %.not539 = icmp eq i32 %i.d, 0
  br i1 %.not539, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = zext i32 %i.d to i64
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.g = ptrtoint ptr %i.v to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.h = phi i64 [ %i.g, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !59, !range !60, !noundef !61
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.g, label %bb.ba

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.v, %bb.f ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 4
  %i.p = trunc i16 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.r = icmp eq ptr %i.l, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef 4) #6
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !63
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %.pre, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store ptr %i.t, ptr %i.b, align 8, !tbaa !63
  %i.u = trunc nuw i64 %indvars.iv to i32
  store i32 %i.u, ptr %i.s, align 4, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.v = phi ptr [ %i.l, %bb.b ], [ %i.t, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !115

bb.g:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr %1, align 8, !tbaa !62     ; 11 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.h, %i.x                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 2                   ; 4 uses
  %i.aa = icmp ult i64 %i.z, 2
  br i1 %i.aa, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i64 %i.z, -1                    ; 3 uses
  %i.ac = icmp ult i64 %i.z, 12
  br i1 %i.ac, label %.thread, label %.preheader518

.preheader518:                                    ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.backedge690, %.preheader518
  %.0396 = phi i64 [ %i.ab, %.preheader518 ], [ %.0396.be, %.backedge690 ] ; 6 uses
  %.0392 = phi i64 [ 0, %.preheader518 ], [ %.0392.be, %.backedge690 ] ; 7 uses
  %i.ai = sub i64 %.0396, %.0392
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = getelementptr [4 x i8], ptr %i.w, i64 %.0392 ; 5 uses
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !64 ; 7 uses
  %i.an = add i64 %.0396, -1                      ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.an ; 7 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !64
  store i32 %i.ap, ptr %i.al, align 4, !tbaa !64
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !64
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !64 ; 7 uses
  %i.ar = zext i32 %i.am to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !67 ; 2 uses
  %i.au = zext i32 %i.aq to i64                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !67 ; 4 uses
  %i.ax = fcmp olt double %i.at, %i.aw
  br i1 %i.ax, label %less_stable_order.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = fcmp ogt double %i.at, %i.aw
  br i1 %i.ay, label %less_stable_order.exit.thread472, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.ae, align 4, !tbaa !65 ; 2 uses
  %i.ba = icmp ult i32 %i.am, %i.az
  br i1 %i.ba, label %bb.l, label %kissat_get_heap_score.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ar
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit.i

kissat_get_heap_score.exit.i:                     ; preds = %bb.l, %bb.k
  %i.be = phi double [ %i.bd, %bb.l ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %i.bf = icmp ult i32 %i.aq, %i.az
  br i1 %i.bf, label %bb.m, label %kissat_get_heap_score.exit22.i

bb.m:                                             ; preds = %kissat_get_heap_score.exit.i
  %i.bg = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.au
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit22.i

kissat_get_heap_score.exit22.i:                   ; preds = %bb.m, %kissat_get_heap_score.exit.i
  %i.bj = phi double [ %i.bi, %bb.m ], [ 0.000000e+00, %kissat_get_heap_score.exit.i ] ; 2 uses
  %i.bk = fcmp olt double %i.be, %i.bj
  br i1 %i.bk, label %less_stable_order.exit.thread, label %less_stable_order.exit

less_stable_order.exit:                           ; preds = %kissat_get_heap_score.exit22.i
  %i.bl = fcmp ule double %i.be, %i.bj
  %i.bm = icmp ult i32 %i.aq, %i.am
  %spec.select.i = and i1 %i.bm, %i.bl
  br i1 %spec.select.i, label %less_stable_order.exit.thread, label %less_stable_order.exit.thread472

less_stable_order.exit.thread:                    ; preds = %kissat_get_heap_score.exit22.i, %bb.i, %less_stable_order.exit
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !64
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !64
  %.pre582 = load i32, ptr %i.ak, align 4, !tbaa !64 ; 2 uses
  %.phi.trans.insert583 = zext i32 %.pre582 to i64 ; 2 uses
  %.phi.trans.insert584 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.phi.trans.insert583
  %.pre585 = load double, ptr %.phi.trans.insert584, align 8, !tbaa !67
  br label %less_stable_order.exit.thread472

less_stable_order.exit.thread472:                 ; preds = %bb.j, %less_stable_order.exit, %less_stable_order.exit.thread
  %.pre-phi595 = phi i64 [ %i.au, %bb.j ], [ %i.au, %less_stable_order.exit ], [ %.phi.trans.insert583, %less_stable_order.exit.thread ] ; 2 uses
  %i.bn = phi i32 [ %i.am, %bb.j ], [ %i.am, %less_stable_order.exit ], [ %i.aq, %less_stable_order.exit.thread ] ; 2 uses
  %.pre588 = phi double [ %i.aw, %bb.j ], [ %i.aw, %less_stable_order.exit ], [ %.pre585, %less_stable_order.exit.thread ] ; 3 uses
  %i.bo = phi i32 [ %i.aq, %bb.j ], [ %i.aq, %less_stable_order.exit ], [ %.pre582, %less_stable_order.exit.thread ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.0396 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !64 ; 6 uses
  %i.br = zext i32 %i.bq to i64                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !67 ; 4 uses
  %i.bu = fcmp olt double %i.bt, %.pre588
  br i1 %i.bu, label %less_stable_order.exit433.thread, label %bb.n

bb.n:                                             ; preds = %less_stable_order.exit.thread472
  %i.bv = fcmp ogt double %i.bt, %.pre588
  br i1 %i.bv, label %less_stable_order.exit433.thread475, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = load i32, ptr %i.ae, align 4, !tbaa !65 ; 2 uses
  %i.bx = icmp ult i32 %i.bq, %i.bw
  br i1 %i.bx, label %bb.p, label %kissat_get_heap_score.exit.i429

bb.p:                                             ; preds = %bb.o
  %i.by = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.br
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit.i429

kissat_get_heap_score.exit.i429:                  ; preds = %bb.p, %bb.o
  %i.cb = phi double [ %i.ca, %bb.p ], [ 0.000000e+00, %bb.o ] ; 2 uses
  %i.cc = icmp ult i32 %i.bo, %i.bw
  br i1 %i.cc, label %bb.q, label %kissat_get_heap_score.exit22.i430

bb.q:                                             ; preds = %kissat_get_heap_score.exit.i429
  %i.cd = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.pre-phi595
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit22.i430

kissat_get_heap_score.exit22.i430:                ; preds = %bb.q, %kissat_get_heap_score.exit.i429
  %i.cg = phi double [ %i.cf, %bb.q ], [ 0.000000e+00, %kissat_get_heap_score.exit.i429 ] ; 2 uses
  %i.ch = fcmp olt double %i.cb, %i.cg
  br i1 %i.ch, label %less_stable_order.exit433.thread, label %less_stable_order.exit433

less_stable_order.exit433:                        ; preds = %kissat_get_heap_score.exit22.i430
  %i.ci = fcmp ule double %i.cb, %i.cg
  %i.cj = icmp ult i32 %i.bo, %i.bq
  %spec.select.i431 = and i1 %i.cj, %i.ci
  br i1 %spec.select.i431, label %less_stable_order.exit433.thread, label %less_stable_order.exit433.thread475

less_stable_order.exit433.thread:                 ; preds = %kissat_get_heap_score.exit22.i430, %less_stable_order.exit.thread472, %less_stable_order.exit433
  store i32 %i.bq, ptr %i.ak, align 4, !tbaa !64
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !64
  %.pre586 = load i32, ptr %i.ao, align 4, !tbaa !64
  br label %less_stable_order.exit433.thread475

less_stable_order.exit433.thread475:              ; preds = %bb.n, %less_stable_order.exit433, %less_stable_order.exit433.thread
  %i.ck = phi double [ %i.bt, %bb.n ], [ %i.bt, %less_stable_order.exit433 ], [ %.pre588, %less_stable_order.exit433.thread ] ; 2 uses
  %.pre-phi587 = phi i64 [ %i.br, %bb.n ], [ %i.br, %less_stable_order.exit433 ], [ %.pre-phi595, %less_stable_order.exit433.thread ] ; 3 uses
  %i.cl = phi i32 [ %i.bn, %bb.n ], [ %i.bn, %less_stable_order.exit433 ], [ %.pre586, %less_stable_order.exit433.thread ] ; 6 uses
  %i.cm = phi i32 [ %i.bq, %bb.n ], [ %i.bq, %less_stable_order.exit433 ], [ %i.bo, %less_stable_order.exit433.thread ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.pre-phi587
  %i.co = zext i32 %i.cl to i64                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !67 ; 4 uses
  %i.cr = fcmp olt double %i.ck, %i.cq
  br i1 %i.cr, label %less_stable_order.exit438.thread, label %bb.r

bb.r:                                             ; preds = %less_stable_order.exit433.thread475
  %i.cs = fcmp ogt double %i.ck, %i.cq
  br i1 %i.cs, label %less_stable_order.exit438.thread478, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = load i32, ptr %i.ae, align 4, !tbaa !65 ; 2 uses
  %i.cu = icmp ult i32 %i.cm, %i.ct
  br i1 %i.cu, label %bb.t, label %kissat_get_heap_score.exit.i434

bb.t:                                             ; preds = %bb.s
  %i.cv = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.pre-phi587
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit.i434

kissat_get_heap_score.exit.i434:                  ; preds = %bb.t, %bb.s
  %i.cy = phi double [ %i.cx, %bb.t ], [ 0.000000e+00, %bb.s ] ; 2 uses
  %i.cz = icmp ult i32 %i.cl, %i.ct
  br i1 %i.cz, label %bb.u, label %kissat_get_heap_score.exit22.i435

bb.u:                                             ; preds = %kissat_get_heap_score.exit.i434
  %i.da = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.co
  %i.dc = load double, ptr %i.db, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit22.i435

kissat_get_heap_score.exit22.i435:                ; preds = %bb.u, %kissat_get_heap_score.exit.i434
  %i.dd = phi double [ %i.dc, %bb.u ], [ 0.000000e+00, %kissat_get_heap_score.exit.i434 ] ; 2 uses
  %i.de = fcmp olt double %i.cy, %i.dd
  br i1 %i.de, label %less_stable_order.exit438.thread, label %less_stable_order.exit438

less_stable_order.exit438:                        ; preds = %kissat_get_heap_score.exit22.i435
  %i.df = fcmp ule double %i.cy, %i.dd
  %i.dg = icmp ult i32 %i.cl, %i.cm
  %spec.select.i436 = and i1 %i.dg, %i.df
  br i1 %spec.select.i436, label %less_stable_order.exit438.thread, label %less_stable_order.exit438.thread478

less_stable_order.exit438.thread:                 ; preds = %kissat_get_heap_score.exit22.i435, %less_stable_order.exit433.thread475, %less_stable_order.exit438
  store i32 %i.cm, ptr %i.ao, align 4, !tbaa !64
  store i32 %i.cl, ptr %i.bp, align 4, !tbaa !64
  %.pre590 = load double, ptr %i.cn, align 8, !tbaa !67
  br label %less_stable_order.exit438.thread478

less_stable_order.exit438.thread478:              ; preds = %bb.r, %less_stable_order.exit438.thread, %less_stable_order.exit438
  %i.dh = phi double [ %i.cq, %bb.r ], [ %.pre590, %less_stable_order.exit438.thread ], [ %i.cq, %less_stable_order.exit438 ] ; 4 uses
  %.pre-phi589 = phi i64 [ %i.co, %bb.r ], [ %.pre-phi587, %less_stable_order.exit438.thread ], [ %i.co, %less_stable_order.exit438 ] ; 2 uses
  %i.di = phi i32 [ %i.cl, %bb.r ], [ %i.cm, %less_stable_order.exit438.thread ], [ %i.cl, %less_stable_order.exit438 ] ; 4 uses
  %i.dj = add i64 %.0392, 2
  br label %bb.v

bb.v:                                             ; preds = %bb.af, %less_stable_order.exit438.thread478
  %.0402 = phi i64 [ %.0392, %less_stable_order.exit438.thread478 ], [ %i.dk, %bb.af ]
  %.0400 = phi i64 [ %i.an, %less_stable_order.exit438.thread478 ], [ %i.eh, %bb.af ]
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.v
  %.1403 = phi i64 [ %.0402, %bb.v ], [ %i.dk, %.backedge.backedge ] ; 4 uses
  %i.dk = add i64 %.1403, 1                       ; 7 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !64 ; 5 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !67 ; 2 uses
  %i.dq = fcmp olt double %i.dp, %i.dh
  br i1 %i.dq, label %.backedge.backedge, label %bb.w

bb.w:                                             ; preds = %.backedge
  %i.dr = fcmp ogt double %i.dp, %i.dh
  br i1 %i.dr, label %.critedge.preheader, label %bb.x

.critedge.preheader:                              ; preds = %.split, %bb.w
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.dk ; 2 uses
  br label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.dt = load i32, ptr %i.ae, align 4, !tbaa !65 ; 2 uses
  %i.du = icmp ult i32 %i.dm, %i.dt
  br i1 %i.du, label %bb.y, label %kissat_get_heap_score.exit.i439

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dn
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit.i439

kissat_get_heap_score.exit.i439:                  ; preds = %bb.y, %bb.x
  %i.dy = phi double [ %i.dx, %bb.y ], [ 0.000000e+00, %bb.x ] ; 2 uses
  %i.dz = icmp ult i32 %i.di, %i.dt
  br i1 %i.dz, label %bb.z, label %kissat_get_heap_score.exit22.i440

bb.z:                                             ; preds = %kissat_get_heap_score.exit.i439
  %i.ea = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.pre-phi589
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit22.i440

kissat_get_heap_score.exit22.i440:                ; preds = %bb.z, %kissat_get_heap_score.exit.i439
  %i.ed = phi double [ %i.ec, %bb.z ], [ 0.000000e+00, %kissat_get_heap_score.exit.i439 ] ; 2 uses
  %i.ee = fcmp olt double %i.dy, %i.ed
  br i1 %i.ee, label %.backedge.backedge, label %.split

.backedge.backedge:                               ; preds = %kissat_get_heap_score.exit22.i440, %.backedge, %.split
  br label %.backedge, !llvm.loop !116

.split:                                           ; preds = %kissat_get_heap_score.exit22.i440
  %i.ef = fcmp ule double %i.dy, %i.ed
  %i.eg = icmp ult i32 %i.di, %i.dm
  %spec.select.i441 = and i1 %i.eg, %i.ef
  br i1 %spec.select.i441, label %.backedge.backedge, label %.critedge.preheader

.critedge:                                        ; preds = %.critedge.preheader, %less_stable_order.exit448
  %.1401 = phi i64 [ %i.eh, %less_stable_order.exit448 ], [ %.0400, %.critedge.preheader ] ; 2 uses
  %i.eh = add i64 %.1401, -1                      ; 5 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !64 ; 4 uses
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !67 ; 2 uses
  %i.en = fcmp olt double %i.dh, %i.em
  br i1 %i.en, label %less_stable_order.exit448, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  %i.eo = fcmp ogt double %i.dh, %i.em
  br i1 %i.eo, label %less_stable_order.exit448.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ep = load i32, ptr %i.ae, align 4, !tbaa !65 ; 2 uses
  %i.eq = icmp ult i32 %i.di, %i.ep
  br i1 %i.eq, label %bb.ac, label %kissat_get_heap_score.exit.i444

bb.ac:                                            ; preds = %bb.ab
  %i.er = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.pre-phi589
  %i.et = load double, ptr %i.es, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit.i444

kissat_get_heap_score.exit.i444:                  ; preds = %bb.ac, %bb.ab
  %i.eu = phi double [ %i.et, %bb.ac ], [ 0.000000e+00, %bb.ab ] ; 2 uses
  %i.ev = icmp ult i32 %i.ej, %i.ep
  br i1 %i.ev, label %bb.ad, label %kissat_get_heap_score.exit22.i445

bb.ad:                                            ; preds = %kissat_get_heap_score.exit.i444
  %i.ew = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ek
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit22.i445

kissat_get_heap_score.exit22.i445:                ; preds = %bb.ad, %kissat_get_heap_score.exit.i444
  %i.ez = phi double [ %i.ey, %bb.ad ], [ 0.000000e+00, %kissat_get_heap_score.exit.i444 ] ; 2 uses
  %i.fa = fcmp olt double %i.eu, %i.ez
  br i1 %i.fa, label %less_stable_order.exit448, label %bb.ae

bb.ae:                                            ; preds = %kissat_get_heap_score.exit22.i445
  %i.fb = fcmp ogt double %i.eu, %i.ez
  %i.fc = icmp uge i32 %i.ej, %i.di
  %spec.select.i446.not = or i1 %i.fc, %i.fb
  br label %less_stable_order.exit448

less_stable_order.exit448:                        ; preds = %.critedge, %kissat_get_heap_score.exit22.i445, %bb.ae
  %.1.i447 = phi i1 [ false, %kissat_get_heap_score.exit22.i445 ], [ false, %.critedge ], [ %spec.select.i446.not, %bb.ae ]
  %i.fd = icmp eq i64 %.1401, %i.dj
  %or.cond = or i1 %i.fd, %.1.i447
  br i1 %or.cond, label %less_stable_order.exit448.thread, label %.critedge, !llvm.loop !117

less_stable_order.exit448.thread:                 ; preds = %bb.aa, %less_stable_order.exit448
  %.not421 = icmp ult i64 %i.dk, %i.eh
  br i1 %.not421, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %less_stable_order.exit448.thread
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.eh
  store i32 %i.ej, ptr %i.ds, align 4, !tbaa !64
  store i32 %i.dm, ptr %i.fe, align 4, !tbaa !64
  br label %bb.v

bb.ag:                                            ; preds = %less_stable_order.exit448.thread
  %i.ff = load i32, ptr %i.ao, align 4, !tbaa !64
  store i32 %i.ff, ptr %i.ds, align 4, !tbaa !64
  store i32 %i.dm, ptr %i.ao, align 4, !tbaa !64
  %i.fg = sub i64 %i.dk, %.0392
  %i.fh = sub i64 %.0396, %i.dk
  %i.fi = icmp ult i64 %i.fg, %i.fh               ; 4 uses
  %i.fj = add i64 %.1403, 2                       ; 2 uses
  %.1403..0396 = select i1 %i.fi, i64 %.1403, i64 %.0396 ; 2 uses
  %.0392. = select i1 %i.fi, i64 %.0392, i64 %i.fj ; 2 uses
  %..0392 = select i1 %i.fi, i64 %i.fj, i64 %.0392 ; 3 uses
  %.0396..1403 = select i1 %i.fi, i64 %.0396, i64 %.1403 ; 3 uses
  %i.fk = sub i64 %.1403..0396, %.0392.
  %i.fl = icmp ugt i64 %i.fk, 10
  br i1 %i.fl, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.fm = load ptr, ptr %i.ag, align 8, !tbaa !126 ; 2 uses
  %i.fn = load ptr, ptr %i.ah, align 8, !tbaa !127 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i64 noundef 8) #6
  %.pre591 = load ptr, ptr %i.ag, align 8, !tbaa !126
  %.pre592 = load ptr, ptr %i.ah, align 8, !tbaa !127
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fp = phi ptr [ %.pre592, %bb.ai ], [ %i.fn, %bb.ah ]
  %i.fq = phi ptr [ %.pre591, %bb.ai ], [ %i.fm, %bb.ah ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 3 uses
  store ptr %i.fr, ptr %i.ag, align 8, !tbaa !126
  store i64 %..0392, ptr %i.fq, align 8, !tbaa !128
  %i.fs = icmp eq ptr %i.fr, %i.fp
  br i1 %i.fs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i64 noundef 8) #6
  %.pre593 = load ptr, ptr %i.ag, align 8, !tbaa !126
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ft = phi ptr [ %.pre593, %bb.ak ], [ %i.fr, %bb.aj ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fu, ptr %i.ag, align 8, !tbaa !126
  store i64 %.0396..1403, ptr %i.ft, align 8, !tbaa !128
  br label %.backedge690

.backedge690:                                     ; preds = %bb.al, %bb.ao, %bb.am
  %.0396.be = phi i64 [ %.0396..1403, %bb.am ], [ %.1403..0396, %bb.al ], [ %i.gb, %bb.ao ]
  %.0392.be = phi i64 [ %..0392, %bb.am ], [ %.0392., %bb.al ], [ %i.gd, %bb.ao ]
  br label %bb.i

bb.am:                                            ; preds = %bb.ag
  %i.fv = sub i64 %.0396..1403, %..0392
  %i.fw = icmp ugt i64 %i.fv, 10
  br i1 %i.fw, label %.backedge690, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fx = load ptr, ptr %i.ad, align 8, !tbaa !129
  %i.fy = load ptr, ptr %i.ag, align 8, !tbaa !126 ; 3 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ga = getelementptr inbounds i8, ptr %i.fy, i64 -8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !128
  %i.gc = getelementptr inbounds i8, ptr %i.fy, i64 -16 ; 2 uses
  store ptr %i.gc, ptr %i.ag, align 8, !tbaa !126
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !128
  br label %.backedge690

.thread:                                          ; preds = %bb.an, %bb.h
  %.not422551 = icmp eq i64 %i.ab, 0
  br i1 %.not422551, label %.preheader, label %.lr.ph553

.lr.ph553:                                        ; preds = %.thread
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  br label %bb.ap

.preheader:                                       ; preds = %less_stable_order.exit453.thread487, %.thread
  %.not423554 = icmp eq i64 %i.y, 8
  br i1 %.not423554, label %.loopexit, label %.lr.ph556

.lr.ph556:                                        ; preds = %.preheader
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %umax570 = tail call i64 @llvm.umax.i64(i64 %i.z, i64 3)
  br label %bb.au

bb.ap:                                            ; preds = %.lr.ph553, %less_stable_order.exit453.thread487
  %.0389552 = phi i64 [ %i.ab, %.lr.ph553 ], [ %i.hi, %less_stable_order.exit453.thread487 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.0389552 ; 3 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !64 ; 4 uses
  %i.gk = getelementptr i8, ptr %i.gi, i64 -4     ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !64 ; 4 uses
  %i.gm = zext i32 %i.gj to i64                   ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gm
  %i.go = load double, ptr %i.gn, align 8, !tbaa !67 ; 2 uses
  %i.gp = zext i32 %i.gl to i64                   ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gp
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !67 ; 2 uses
  %i.gs = fcmp olt double %i.go, %i.gr
  br i1 %i.gs, label %less_stable_order.exit453.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gt = fcmp ogt double %i.go, %i.gr
  br i1 %i.gt, label %less_stable_order.exit453.thread487, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gu = load i32, ptr %i.ge, align 4, !tbaa !65 ; 2 uses
  %i.gv = icmp ult i32 %i.gj, %i.gu
  br i1 %i.gv, label %bb.as, label %kissat_get_heap_score.exit.i449

bb.as:                                            ; preds = %bb.ar
  %i.gw = load ptr, ptr %i.gf, align 8, !tbaa !66
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gm
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit.i449

kissat_get_heap_score.exit.i449:                  ; preds = %bb.as, %bb.ar
  %i.gz = phi double [ %i.gy, %bb.as ], [ 0.000000e+00, %bb.ar ] ; 2 uses
  %i.ha = icmp ult i32 %i.gl, %i.gu
  br i1 %i.ha, label %bb.at, label %kissat_get_heap_score.exit22.i450

bb.at:                                            ; preds = %kissat_get_heap_score.exit.i449
  %i.hb = load ptr, ptr %i.gf, align 8, !tbaa !66
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.gp
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit22.i450

kissat_get_heap_score.exit22.i450:                ; preds = %bb.at, %kissat_get_heap_score.exit.i449
  %i.he = phi double [ %i.hd, %bb.at ], [ 0.000000e+00, %kissat_get_heap_score.exit.i449 ] ; 2 uses
  %i.hf = fcmp olt double %i.gz, %i.he
  br i1 %i.hf, label %less_stable_order.exit453.thread, label %less_stable_order.exit453

less_stable_order.exit453:                        ; preds = %kissat_get_heap_score.exit22.i450
  %i.hg = fcmp ule double %i.gz, %i.he
  %i.hh = icmp ult i32 %i.gl, %i.gj
  %spec.select.i451 = and i1 %i.hh, %i.hg
  br i1 %spec.select.i451, label %less_stable_order.exit453.thread, label %less_stable_order.exit453.thread487

less_stable_order.exit453.thread:                 ; preds = %kissat_get_heap_score.exit22.i450, %bb.ap, %less_stable_order.exit453
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !64
  store i32 %i.gl, ptr %i.gi, align 4, !tbaa !64
  br label %less_stable_order.exit453.thread487

less_stable_order.exit453.thread487:              ; preds = %bb.aq, %less_stable_order.exit453, %less_stable_order.exit453.thread
  %i.hi = add i64 %.0389552, -1                   ; 2 uses
  %.not422 = icmp eq i64 %i.hi, 0
  br i1 %.not422, label %.preheader, label %bb.ap, !llvm.loop !118

bb.au:                                            ; preds = %.lr.ph556, %less_stable_order.exit458.thread490
  %.0388555 = phi i64 [ 2, %.lr.ph556 ], [ %i.il, %less_stable_order.exit458.thread490 ] ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.0388555
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !64 ; 4 uses
  %i.hl = zext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !67 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %less_stable_order.exit458.thread, %bb.au
  %.0387 = phi i64 [ %.0388555, %bb.au ], [ %i.ik, %less_stable_order.exit458.thread ] ; 2 uses
  %i.ho = getelementptr [4 x i8], ptr %i.w, i64 %.0387 ; 3 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 -4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !64 ; 4 uses
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hr
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !67 ; 2 uses
  %i.hu = fcmp olt double %i.hn, %i.ht
  br i1 %i.hu, label %less_stable_order.exit458.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hv = fcmp ogt double %i.hn, %i.ht
  br i1 %i.hv, label %less_stable_order.exit458.thread490, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hw = load i32, ptr %i.gg, align 4, !tbaa !65 ; 2 uses
  %i.hx = icmp ult i32 %i.hk, %i.hw
  br i1 %i.hx, label %bb.ay, label %kissat_get_heap_score.exit.i454

bb.ay:                                            ; preds = %bb.ax
  %i.hy = load ptr, ptr %i.gh, align 8, !tbaa !66
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hl
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit.i454

kissat_get_heap_score.exit.i454:                  ; preds = %bb.ay, %bb.ax
  %i.ib = phi double [ %i.ia, %bb.ay ], [ 0.000000e+00, %bb.ax ] ; 2 uses
  %i.ic = icmp ult i32 %i.hq, %i.hw
  br i1 %i.ic, label %bb.az, label %kissat_get_heap_score.exit22.i455

bb.az:                                            ; preds = %kissat_get_heap_score.exit.i454
  %i.id = load ptr, ptr %i.gh, align 8, !tbaa !66
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.hr
  %i.if = load double, ptr %i.ie, align 8, !tbaa !67
  br label %kissat_get_heap_score.exit22.i455

kissat_get_heap_score.exit22.i455:                ; preds = %bb.az, %kissat_get_heap_score.exit.i454
  %i.ig = phi double [ %i.if, %bb.az ], [ 0.000000e+00, %kissat_get_heap_score.exit.i454 ] ; 2 uses
  %i.ih = fcmp olt double %i.ib, %i.ig
  br i1 %i.ih, label %less_stable_order.exit458.thread, label %less_stable_order.exit458

less_stable_order.exit458:                        ; preds = %kissat_get_heap_score.exit22.i455
  %i.ii = fcmp ule double %i.ib, %i.ig
  %i.ij = icmp ult i32 %i.hq, %i.hk
  %spec.select.i456 = and i1 %i.ij, %i.ii
  br i1 %spec.select.i456, label %less_stable_order.exit458.thread, label %less_stable_order.exit458.thread490

less_stable_order.exit458.thread:                 ; preds = %kissat_get_heap_score.exit22.i455, %bb.av, %less_stable_order.exit458
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !64
  %i.ik = add i64 %.0387, -1
  br label %bb.av, !llvm.loop !119

less_stable_order.exit458.thread490:              ; preds = %bb.aw, %less_stable_order.exit458
  store i32 %i.hk, ptr %i.ho, align 4, !tbaa !64
  %i.il = add nuw i64 %.0388555, 1                ; 2 uses
  %exitcond571 = icmp eq i64 %i.il, %umax570
  br i1 %exitcond571, label %.loopexit, label %bb.au, !llvm.loop !120

bb.ba:                                            ; preds = %._crit_edge
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !71 ; 13 uses
  %i.io = load ptr, ptr %1, align 8, !tbaa !62    ; 11 uses
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = sub i64 %i.h, %i.ip                     ; 2 uses
  %i.ir = ashr exact i64 %i.iq, 2                 ; 4 uses
  %i.is = icmp ult i64 %i.ir, 2
  br i1 %i.is, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.it = add nsw i64 %i.ir, -1                   ; 3 uses
  %i.iu = icmp ult i64 %i.ir, 12
  br i1 %i.iu, label %.thread505, label %.preheader521

.preheader521:                                    ; preds = %bb.bb
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 7 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %.backedge698, %.preheader521
  %.0383 = phi i64 [ 0, %.preheader521 ], [ %.0383.be, %.backedge698 ] ; 7 uses
  %.0381 = phi i64 [ %i.it, %.preheader521 ], [ %.0381.be, %.backedge698 ] ; 6 uses
  %i.iy = sub i64 %.0381, %.0383
  %i.iz = lshr i64 %i.iy, 1
  %i.ja = getelementptr [4 x i8], ptr %i.io, i64 %.0383 ; 5 uses
  %i.jb = getelementptr [4 x i8], ptr %i.ja, i64 %i.iz ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !64 ; 5 uses
  %i.jd = add i64 %.0381, -1                      ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.jd ; 7 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !64
  store i32 %i.jf, ptr %i.jb, align 4, !tbaa !64
  store i32 %i.jc, ptr %i.je, align 4, !tbaa !64
  %i.jg = load i32, ptr %i.ja, align 4, !tbaa !64 ; 5 uses
  %i.jh = zext i32 %i.jc to i64                   ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.jh
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !67 ; 2 uses
  %i.jk = zext i32 %i.jg to i64                   ; 4 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.jk
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !67 ; 4 uses
  %i.jn = fcmp olt double %i.jj, %i.jm
  br i1 %i.jn, label %less_focused_order.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jo = fcmp ogt double %i.jj, %i.jm
  br i1 %i.jo, label %less_focused_order.exit.thread493, label %less_focused_order.exit

less_focused_order.exit:                          ; preds = %bb.bd
  %i.jp = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %i.jh
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !75
  %i.js = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %i.jk
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !75
  %i.jv = icmp ult i32 %i.jr, %i.ju
  br i1 %i.jv, label %less_focused_order.exit.thread, label %less_focused_order.exit.thread493

less_focused_order.exit.thread:                   ; preds = %bb.bc, %less_focused_order.exit
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !64
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !64
  %.pre572 = load i32, ptr %i.ja, align 4, !tbaa !64 ; 2 uses
  %.phi.trans.insert = zext i32 %.pre572 to i64   ; 2 uses
  %.phi.trans.insert573 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.phi.trans.insert
  %.pre574 = load double, ptr %.phi.trans.insert573, align 8, !tbaa !67
  br label %less_focused_order.exit.thread493

less_focused_order.exit.thread493:                ; preds = %bb.bd, %less_focused_order.exit, %less_focused_order.exit.thread
  %.pre-phi594 = phi i64 [ %i.jk, %bb.bd ], [ %i.jk, %less_focused_order.exit ], [ %.phi.trans.insert, %less_focused_order.exit.thread ] ; 2 uses
  %i.jw = phi i32 [ %i.jc, %bb.bd ], [ %i.jc, %less_focused_order.exit ], [ %i.jg, %less_focused_order.exit.thread ] ; 2 uses
  %.pre576 = phi double [ %i.jm, %bb.bd ], [ %i.jm, %less_focused_order.exit ], [ %.pre574, %less_focused_order.exit.thread ] ; 3 uses
  %i.jx = phi i32 [ %i.jg, %bb.bd ], [ %i.jg, %less_focused_order.exit ], [ %.pre572, %less_focused_order.exit.thread ] ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.0381 ; 3 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !64 ; 4 uses
  %i.ka = zext i32 %i.jz to i64                   ; 4 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ka
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !67 ; 4 uses
  %i.kd = fcmp olt double %i.kc, %.pre576
  br i1 %i.kd, label %less_focused_order.exit460.thread, label %bb.be

bb.be:                                            ; preds = %less_focused_order.exit.thread493
  %i.ke = fcmp ogt double %i.kc, %.pre576
  br i1 %i.ke, label %less_focused_order.exit460.thread496, label %less_focused_order.exit460

less_focused_order.exit460:                       ; preds = %bb.be
  %i.kf = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %i.ka
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !75
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %.pre-phi594
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !75
  %i.kl = icmp ult i32 %i.kh, %i.kk
  br i1 %i.kl, label %less_focused_order.exit460.thread, label %less_focused_order.exit460.thread496

less_focused_order.exit460.thread:                ; preds = %less_focused_order.exit.thread493, %less_focused_order.exit460
  store i32 %i.jz, ptr %i.ja, align 4, !tbaa !64
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !64
  %.pre575 = load i32, ptr %i.je, align 4, !tbaa !64
  br label %less_focused_order.exit460.thread496

less_focused_order.exit460.thread496:             ; preds = %bb.be, %less_focused_order.exit460, %less_focused_order.exit460.thread
  %i.km = phi double [ %i.kc, %bb.be ], [ %i.kc, %less_focused_order.exit460 ], [ %.pre576, %less_focused_order.exit460.thread ] ; 2 uses
  %.pre-phi = phi i64 [ %i.ka, %bb.be ], [ %i.ka, %less_focused_order.exit460 ], [ %.pre-phi594, %less_focused_order.exit460.thread ] ; 3 uses
  %i.kn = phi i32 [ %i.jw, %bb.be ], [ %i.jw, %less_focused_order.exit460 ], [ %.pre575, %less_focused_order.exit460.thread ] ; 2 uses
  %i.ko = phi i32 [ %i.jz, %bb.be ], [ %i.jz, %less_focused_order.exit460 ], [ %i.jx, %less_focused_order.exit460.thread ]
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.pre-phi
  %i.kq = zext i32 %i.kn to i64                   ; 4 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.kq
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !67 ; 4 uses
  %i.kt = fcmp olt double %i.km, %i.ks
  br i1 %i.kt, label %less_focused_order.exit462.thread, label %bb.bf

bb.bf:                                            ; preds = %less_focused_order.exit460.thread496
  %i.ku = fcmp ogt double %i.km, %i.ks
  br i1 %i.ku, label %less_focused_order.exit462.thread499, label %less_focused_order.exit462

less_focused_order.exit462:                       ; preds = %bb.bf
  %i.kv = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %.pre-phi
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !75
  %i.ky = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %i.kq
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !75
  %i.lb = icmp ult i32 %i.kx, %i.la
  br i1 %i.lb, label %less_focused_order.exit462.thread, label %less_focused_order.exit462.thread499

less_focused_order.exit462.thread:                ; preds = %less_focused_order.exit460.thread496, %less_focused_order.exit462
  store i32 %i.ko, ptr %i.je, align 4, !tbaa !64
  store i32 %i.kn, ptr %i.jy, align 4, !tbaa !64
  %.pre578 = load double, ptr %i.kp, align 8, !tbaa !67
  br label %less_focused_order.exit462.thread499

less_focused_order.exit462.thread499:             ; preds = %bb.bf, %less_focused_order.exit462.thread, %less_focused_order.exit462
  %i.lc = phi double [ %i.ks, %bb.bf ], [ %.pre578, %less_focused_order.exit462.thread ], [ %i.ks, %less_focused_order.exit462 ] ; 4 uses
  %.pre-phi577 = phi i64 [ %i.kq, %bb.bf ], [ %.pre-phi, %less_focused_order.exit462.thread ], [ %i.kq, %less_focused_order.exit462 ]
  %i.ld = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %.pre-phi577
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %i.lf = add i64 %.0383, 2
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bk, %less_focused_order.exit462.thread499
  %.0377 = phi i64 [ %.0383, %less_focused_order.exit462.thread499 ], [ %i.lg, %bb.bk ]
  %.0376 = phi i64 [ %i.jd, %less_focused_order.exit462.thread499 ], [ %i.lu, %bb.bk ]
  br label %less_focused_order.exit464

less_focused_order.exit464:                       ; preds = %less_focused_order.exit464.backedge, %bb.bg
  %.1378 = phi i64 [ %.0377, %bb.bg ], [ %i.lg, %less_focused_order.exit464.backedge ] ; 4 uses
  %i.lg = add i64 %.1378, 1                       ; 7 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !64 ; 3 uses
  %i.lj = zext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.lj
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !67 ; 2 uses
  %i.lm = fcmp olt double %i.ll, %i.lc
  br i1 %i.lm, label %less_focused_order.exit464.backedge, label %bb.bh

bb.bh:                                            ; preds = %less_focused_order.exit464
  %i.ln = fcmp ogt double %i.ll, %i.lc
  br i1 %i.ln, label %.critedge515.preheader, label %.split501

.split501:                                        ; preds = %bb.bh
  %i.lo = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %i.lj
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !75
  %i.lr = load i32, ptr %i.le, align 4, !tbaa !75
  %i.ls = icmp ult i32 %i.lq, %i.lr
  br i1 %i.ls, label %less_focused_order.exit464.backedge, label %.critedge515.preheader

less_focused_order.exit464.backedge:              ; preds = %.split501, %less_focused_order.exit464
  br label %less_focused_order.exit464, !llvm.loop !121

.critedge515.preheader:                           ; preds = %.split501, %bb.bh
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.lg ; 2 uses
  br label %.critedge515

.critedge515:                                     ; preds = %.critedge515.preheader, %less_focused_order.exit466
  %.1 = phi i64 [ %i.lu, %less_focused_order.exit466 ], [ %.0376, %.critedge515.preheader ] ; 2 uses
  %i.lu = add i64 %.1, -1                         ; 5 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !64 ; 2 uses
  %i.lx = zext i32 %i.lw to i64                   ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.lx
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !67 ; 2 uses
  %i.ma = fcmp olt double %i.lc, %i.lz
  br i1 %i.ma, label %less_focused_order.exit466, label %bb.bi

bb.bi:                                            ; preds = %.critedge515
  %i.mb = fcmp ogt double %i.lc, %i.lz
  br i1 %i.mb, label %less_focused_order.exit466.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mc = load i32, ptr %i.le, align 4, !tbaa !75
  %i.md = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %i.lx
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !75
  %i.mg = icmp uge i32 %i.mc, %i.mf
  br label %less_focused_order.exit466

less_focused_order.exit466:                       ; preds = %.critedge515, %bb.bj
  %.0.i465 = phi i1 [ %i.mg, %bb.bj ], [ false, %.critedge515 ]
  %i.mh = icmp eq i64 %.1, %i.lf
  %or.cond428 = or i1 %i.mh, %.0.i465
  br i1 %or.cond428, label %less_focused_order.exit466.thread, label %.critedge515, !llvm.loop !122

less_focused_order.exit466.thread:                ; preds = %bb.bi, %less_focused_order.exit466
  %.not418 = icmp ult i64 %i.lg, %i.lu
  br i1 %.not418, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %less_focused_order.exit466.thread
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.lu
  store i32 %i.lw, ptr %i.lt, align 4, !tbaa !64
  store i32 %i.li, ptr %i.mi, align 4, !tbaa !64
  br label %bb.bg

bb.bl:                                            ; preds = %less_focused_order.exit466.thread
  %i.mj = load i32, ptr %i.je, align 4, !tbaa !64
  store i32 %i.mj, ptr %i.lt, align 4, !tbaa !64
  store i32 %i.li, ptr %i.je, align 4, !tbaa !64
  %i.mk = sub i64 %i.lg, %.0383
  %i.ml = sub i64 %.0381, %i.lg
  %i.mm = icmp ult i64 %i.mk, %i.ml               ; 4 uses
  %i.mn = add i64 %.1378, 2                       ; 2 uses
  %.0383. = select i1 %i.mm, i64 %.0383, i64 %i.mn ; 2 uses
  %.1378..0381 = select i1 %i.mm, i64 %.1378, i64 %.0381 ; 2 uses
  %..0383 = select i1 %i.mm, i64 %i.mn, i64 %.0383 ; 3 uses
  %.0381..1378 = select i1 %i.mm, i64 %.0381, i64 %.1378 ; 3 uses
  %i.mo = sub i64 %.1378..0381, %.0383.
  %i.mp = icmp ugt i64 %i.mo, 10
  br i1 %i.mp, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %bb.bl
  %i.mq = load ptr, ptr %i.iw, align 8, !tbaa !126 ; 2 uses
  %i.mr = load ptr, ptr %i.ix, align 8, !tbaa !127 ; 2 uses
  %i.ms = icmp eq ptr %i.mq, %i.mr
  br i1 %i.ms, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.iv, i64 noundef 8) #6
  %.pre579 = load ptr, ptr %i.iw, align 8, !tbaa !126
  %.pre580 = load ptr, ptr %i.ix, align 8, !tbaa !127
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.mt = phi ptr [ %.pre580, %bb.bn ], [ %i.mr, %bb.bm ]
  %i.mu = phi ptr [ %.pre579, %bb.bn ], [ %i.mq, %bb.bm ] ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 3 uses
  store ptr %i.mv, ptr %i.iw, align 8, !tbaa !126
  store i64 %..0383, ptr %i.mu, align 8, !tbaa !128
  %i.mw = icmp eq ptr %i.mv, %i.mt
  br i1 %i.mw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.iv, i64 noundef 8) #6
  %.pre581 = load ptr, ptr %i.iw, align 8, !tbaa !126
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.mx = phi ptr [ %.pre581, %bb.bp ], [ %i.mv, %bb.bo ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  store ptr %i.my, ptr %i.iw, align 8, !tbaa !126
  store i64 %.0381..1378, ptr %i.mx, align 8, !tbaa !128
  br label %.backedge698

.backedge698:                                     ; preds = %bb.bq, %bb.bt, %bb.br
  %.0383.be = phi i64 [ %..0383, %bb.br ], [ %.0383., %bb.bq ], [ %i.nh, %bb.bt ]
  %.0381.be = phi i64 [ %.0381..1378, %bb.br ], [ %.1378..0381, %bb.bq ], [ %i.nf, %bb.bt ]
  br label %bb.bc

bb.br:                                            ; preds = %bb.bl
  %i.mz = sub i64 %.0381..1378, %..0383
  %i.na = icmp ugt i64 %i.mz, 10
  br i1 %i.na, label %.backedge698, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.nb = load ptr, ptr %i.iv, align 8, !tbaa !129
  %i.nc = load ptr, ptr %i.iw, align 8, !tbaa !126 ; 3 uses
  %i.nd = icmp eq ptr %i.nb, %i.nc
  br i1 %i.nd, label %.thread505, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ne = getelementptr inbounds i8, ptr %i.nc, i64 -8
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !128
  %i.ng = getelementptr inbounds i8, ptr %i.nc, i64 -16 ; 2 uses
  store ptr %i.ng, ptr %i.iw, align 8, !tbaa !126
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !128
  br label %.backedge698

.thread505:                                       ; preds = %bb.bs, %bb.bb
  %.not419543 = icmp eq i64 %i.it, 0
  br i1 %.not419543, label %.preheader519, label %.lr.ph545

.preheader519:                                    ; preds = %less_focused_order.exit468.thread510, %.thread505
  %.not420546 = icmp eq i64 %i.iq, 8
  br i1 %.not420546, label %.loopexit, label %.lr.ph548.preheader

.lr.ph548.preheader:                              ; preds = %.preheader519
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ir, i64 3)
  br label %.lr.ph548

.lr.ph545:                                        ; preds = %.thread505, %less_focused_order.exit468.thread510
  %.0373544 = phi i64 [ %i.ob, %less_focused_order.exit468.thread510 ], [ %i.it, %.thread505 ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.0373544 ; 3 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !64 ; 2 uses
  %i.nk = getelementptr i8, ptr %i.ni, i64 -4     ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !64 ; 2 uses
  %i.nm = zext i32 %i.nj to i64                   ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nm
  %i.no = load double, ptr %i.nn, align 8, !tbaa !67 ; 2 uses
  %i.np = zext i32 %i.nl to i64                   ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.np
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !67 ; 2 uses
  %i.ns = fcmp olt double %i.no, %i.nr
  br i1 %i.ns, label %less_focused_order.exit468.thread, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph545
  %i.nt = fcmp ogt double %i.no, %i.nr
  br i1 %i.nt, label %less_focused_order.exit468.thread510, label %less_focused_order.exit468

less_focused_order.exit468:                       ; preds = %bb.bu
  %i.nu = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %i.nm
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !75
  %i.nx = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %i.np
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !75
  %i.oa = icmp ult i32 %i.nw, %i.nz
  br i1 %i.oa, label %less_focused_order.exit468.thread, label %less_focused_order.exit468.thread510

less_focused_order.exit468.thread:                ; preds = %.lr.ph545, %less_focused_order.exit468
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !64
  store i32 %i.nl, ptr %i.ni, align 4, !tbaa !64
  br label %less_focused_order.exit468.thread510

less_focused_order.exit468.thread510:             ; preds = %bb.bu, %less_focused_order.exit468, %less_focused_order.exit468.thread
  %i.ob = add i64 %.0373544, -1                   ; 2 uses
  %.not419 = icmp eq i64 %i.ob, 0
  br i1 %.not419, label %.preheader519, label %.lr.ph545, !llvm.loop !123

.lr.ph548:                                        ; preds = %.lr.ph548.preheader, %less_focused_order.exit470.thread513
  %.0371547 = phi i64 [ %i.ox, %less_focused_order.exit470.thread513 ], [ 2, %.lr.ph548.preheader ] ; 3 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.0371547
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !64 ; 2 uses
  %i.oe = zext i32 %i.od to i64                   ; 2 uses
  %i.of = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.oe
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !67 ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %less_focused_order.exit470.thread, %.lr.ph548
  %.0 = phi i64 [ %.0371547, %.lr.ph548 ], [ %i.ow, %less_focused_order.exit470.thread ] ; 2 uses
  %i.oj = getelementptr [4 x i8], ptr %i.io, i64 %.0 ; 3 uses
  %i.ok = getelementptr i8, ptr %i.oj, i64 -4
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !64 ; 2 uses
  %i.om = zext i32 %i.ol to i64                   ; 2 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.om
  %i.oo = load double, ptr %i.on, align 8, !tbaa !67 ; 2 uses
  %i.op = fcmp olt double %i.oi, %i.oo
  br i1 %i.op, label %less_focused_order.exit470.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.oq = fcmp ogt double %i.oi, %i.oo
  br i1 %i.oq, label %less_focused_order.exit470.thread513, label %less_focused_order.exit470

less_focused_order.exit470:                       ; preds = %bb.bw
  %i.or = load i32, ptr %i.og, align 4, !tbaa !75
  %i.os = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %i.om
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !75
  %i.ov = icmp ult i32 %i.or, %i.ou
  br i1 %i.ov, label %less_focused_order.exit470.thread, label %less_focused_order.exit470.thread513

less_focused_order.exit470.thread:                ; preds = %bb.bv, %less_focused_order.exit470
  store i32 %i.ol, ptr %i.oj, align 4, !tbaa !64
  %i.ow = add i64 %.0, -1
  br label %bb.bv, !llvm.loop !124

less_focused_order.exit470.thread513:             ; preds = %bb.bw, %less_focused_order.exit470
  store i32 %i.od, ptr %i.oj, align 4, !tbaa !64
  %i.ox = add nuw i64 %.0371547, 1                ; 2 uses
  %exitcond = icmp eq i64 %i.ox, %umax
  br i1 %exitcond, label %.loopexit, label %.lr.ph548, !llvm.loop !125

.loopexit:                                        ; preds = %less_focused_order.exit470.thread513, %less_stable_order.exit458.thread490, %.preheader519, %.preheader, %bb.ba, %bb.g
  ret void
}

declare void @kissat_dealloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @kissat_calloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @kissat_nalloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @kissat_stack_enlarge(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @kissat_enlarge_heap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @kissat_reassign_queue_stamps(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"termination", !8, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!"p1 int", !9, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!"p1 _ZTS6import", !9, i64 0}
!14 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!"p1 _ZTS9extension", !9, i64 0}
!16 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"p1 _ZTS8assigned", !9, i64 0}
!18 = !{!"p1 _ZTS5flags", !9, i64 0}
!19 = !{!"p1 omnipotent char", !9, i64 0}
!20 = !{!"phases", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16}
!22 = !{!"p1 _ZTS5links", !9, i64 0}
!23 = !{!"", !5, i64 0, !5, i64 4}
!24 = !{!"queue", !5, i64 0, !5, i64 4, !5, i64 8, !23, i64 12}
!25 = !{!"p1 double", !9, i64 0}
!26 = !{!"heap", !8, i64 0, !5, i64 4, !5, i64 8, !12, i64 16, !25, i64 40, !11, i64 48}
!27 = !{!"double", !4, i64 0}
!28 = !{!"p1 _ZTS5frame", !9, i64 0}
!29 = !{!"", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!"", !11, i64 0, !11, i64 8}
!31 = !{!"p1 _ZTS8datarank", !9, i64 0}
!32 = !{!"", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"clause", !5, i64 0, !8, i64 2, !8, i64 2, !8, i64 2, !8, i64 2, !8, i64 2, !8, i64 3, !8, i64 3, !8, i64 3, !5, i64 3, !5, i64 4, !5, i64 8, !4, i64 12}
!34 = !{!"p1 long", !9, i64 0}
!35 = !{!"", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!"long", !4, i64 0}
!37 = !{!"vectors", !12, i64 0, !36, i64 24}
!38 = !{!"p1 _ZTS6vector", !9, i64 0}
!39 = !{!"reluctant", !8, i64 0, !8, i64 1, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!40 = !{!"", !36, i64 0, !5, i64 8}
!41 = !{!"bounds", !40, i64 0}
!42 = !{!"classification", !8, i64 0, !8, i64 1}
!43 = !{!"delay", !5, i64 0, !5, i64 4}
!44 = !{!"delays", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!45 = !{!"enabled", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3}
!46 = !{!"limited", !8, i64 0, !8, i64 1}
!47 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!48 = !{!"", !36, i64 0, !36, i64 8}
!49 = !{!"", !48, i64 0, !36, i64 16}
!50 = !{!"", !36, i64 0}
!51 = !{!"limits", !36, i64 0, !36, i64 8, !36, i64 16, !47, i64 24, !49, i64 48, !50, i64 72, !50, i64 80, !50, i64 88, !50, i64 96, !50, i64 104, !50, i64 112, !50, i64 120, !48, i64 128}
!52 = !{!"remember", !48, i64 0, !50, i64 16}
!53 = !{!"mode", !36, i64 0}
!54 = !{!"kormat", !5, i64 0, !4, i64 4}
!55 = !{!"p1 _ZTS6kitten", !9, i64 0}
!56 = !{!"statistics", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !36, i64 488, !36, i64 496, !36, i64 504, !36, i64 512, !36, i64 520, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !4, i64 640}
!57 = !{!"kissat", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8, !10, i64 16, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !12, i64 56, !12, i64 80, !14, i64 104, !16, i64 128, !12, i64 152, !17, i64 176, !18, i64 184, !19, i64 192, !19, i64 200, !20, i64 208, !21, i64 232, !12, i64 256, !22, i64 280, !24, i64 288, !26, i64 312, !27, i64 368, !26, i64 376, !27, i64 432, !5, i64 440, !29, i64 448, !30, i64 472, !11, i64 488, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !12, i64 512, !5, i64 536, !5, i64 540, !32, i64 544, !12, i64 568, !12, i64 592, !12, i64 616, !12, i64 640, !12, i64 664, !12, i64 688, !12, i64 712, !33, i64 736, !8, i64 760, !8, i64 761, !8, i64 762, !12, i64 768, !12, i64 792, !35, i64 816, !37, i64 840, !5, i64 872, !5, i64 876, !38, i64 880, !4, i64 888, !35, i64 904, !36, i64 928, !4, i64 936, !4, i64 1208, !4, i64 1216, !39, i64 1224, !41, i64 1272, !42, i64 1288, !44, i64 1292, !45, i64 1324, !46, i64 1328, !51, i64 1336, !52, i64 1480, !5, i64 1504, !53, i64 1512, !36, i64 1520, !54, i64 1528, !19, i64 3584, !4, i64 3592, !4, i64 3640, !4, i64 3688, !12, i64 3736, !8, i64 3760, !55, i64 3768, !8, i64 3776, !8, i64 3777, !12, i64 3784, !56, i64 3808}
!58 = !{!57, !36, i64 3912}
!59 = !{!57, !8, i64 5}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!12, !11, i64 0}
!63 = !{!12, !11, i64 8}
!64 = !{!5, !5, i64 0}
!65 = !{!26, !5, i64 4}
!66 = !{!26, !25, i64 40}
!67 = !{!27, !27, i64 0}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!57, !5, i64 40}
!70 = !{!12, !11, i64 16}
!71 = !{!57, !22, i64 280}
!72 = !{!57, !19, i64 200}
!73 = !{!4, !4, i64 0}
!74 = !{!"links", !5, i64 0, !5, i64 4, !5, i64 8}
!75 = !{!74, !5, i64 8}
!76 = !{!57, !18, i64 184}
!77 = !{!57, !5, i64 440}
!78 = !{!57, !36, i64 1440}
!79 = distinct !{!79, !68}
!80 = distinct !{!80, !68}
!81 = !{!56, !36, i64 360}
!82 = !{!26, !8, i64 0}
!83 = !{!26, !11, i64 48}
end_hunk_0
