Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/createplan?download=true
inline.NumInlined: 326
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@create_indexscan_plan:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.u, %bb.m
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %bb.u ], [ 0, %bb.m ] ; 5 uses
  %.095 = phi ptr [ %i.ed, %bb.u ], [ null, %bb.m ] ; 3 uses
  br i1 %.not109, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = load i32, ptr %i.cy, align 4
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv160, %i.dc
  br i1 %i.dd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.de = load ptr, ptr %i.cz, align 8
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv160
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.dg = phi ptr [ %i.df, %bb.p ], [ null, %bb.o ], [ null, %bb.n ] ; 2 uses
  %i.dh = load i32, ptr %i.cx, align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv160, %i.di
  br i1 %i.dj, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.dk = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dl = icmp ne ptr %i.dg, null
  %i.dm = icmp ne ptr %i.dk, null
  %i.dn = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %i.dn, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv160
  %i.dp = load ptr, ptr %i.dg, align 8            ; 4 uses
  %i.dq = load ptr, ptr %i.do, align 8
  %i.dr = tail call i32 @exprType(ptr noundef %i.dq) #10 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = tail call i32 @get_opfamily_member_for_cmptype(i32 noundef %i.dt, i32 noundef %i.dr, i32 noundef %i.dr, i32 noundef %i.dv) #10 ; 2 uses
  %.not112 = icmp eq i32 %i.dw, 0
  br i1 %.not112, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.dz = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ea = load i32, ptr %i.dy, align 4
  %i.eb = load i32, ptr %i.dx, align 8
  %i.ec = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i32 noundef %i.ea, i32 noundef %i.dr, i32 noundef %i.dr, i32 noundef %i.eb) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2983, ptr noundef nonnull @__func__.create_indexscan_plan) #10
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ed = tail call ptr @lappend_oid(ptr noundef %.095, i32 noundef %i.dw) #10
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  br label %bb.n, !llvm.loop !42

.thread:                                          ; preds = %bb.q, %bb.r, %bb.l
  %.196 = phi ptr [ null, %bb.l ], [ %.095, %bb.r ], [ %.095, %bb.q ]
  br i1 %4, label %bb.v, label %.critedge116

bb.v:                                             ; preds = %.thread
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8            ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %.not110 = icmp eq ptr %i.ef, null
  br i1 %.not110, label %.critedge114, label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.v
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.ej = load i32, ptr %i.eg, align 4
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph154, label %.critedge114

.lr.ph154:                                        ; preds = %.lr.ph150, %.lr.ph154
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %.lr.ph154 ], [ 0, %.lr.ph150 ] ; 3 uses
  %i.el = load ptr, ptr %i.eh, align 8
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv163
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = load ptr, ptr %i.ei, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %indvars.iv163
  %i.eq = load i8, ptr %i.ep, align 1, !range !4, !noundef !5
  %i.er = xor i8 %i.eq, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 42
  store i8 %i.er, ptr %i.es, align 2
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.et = load i32, ptr %i.eg, align 4
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next164, %i.eu
  br i1 %i.ev, label %.lr.ph154, label %.critedge114.loopexit

.critedge114.loopexit:                            ; preds = %.lr.ph154
  %.pre170 = load ptr, ptr %i.ee, align 8
  br label %.critedge114

.critedge114:                                     ; preds = %.critedge114.loopexit, %.lr.ph150, %bb.v
  %i.ew = phi ptr [ %.pre170, %.critedge114.loopexit ], [ %i.ef, %.lr.ph150 ], [ null, %bb.v ]
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = tail call noundef ptr @palloc0(i64 noundef 160) #10 ; 12 uses
  store i32 360, ptr %i.ez, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  store ptr %2, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  store ptr %.2, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i8 0, i64 16, i1 false)
  store i32 %i.h, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  store i32 %i.l, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 120
  store ptr %.032.lcssa.i, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 128
  store ptr %.0126, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 136
  store ptr %.us-phi.i, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 144
  store ptr %i.ew, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 152
  store i32 %i.ey, ptr %i.fj, align 8
  br label %bb.w

.critedge116:                                     ; preds = %.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fl = load i32, ptr %i.fk, align 8
  %i.fm = tail call noundef ptr @palloc0(i64 noundef 168) #10 ; 13 uses
  store i32 359, ptr %i.fm, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store ptr %2, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  store ptr %.2, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false)
  store i32 %i.h, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 112
  store i32 %i.l, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 120
  store ptr %.032.lcssa.i, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 128
  store ptr %.0126, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 136
  store ptr %.us-phi.i, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fm, i64 144
  store ptr %.099, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 152
  store ptr %.196, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 160
  store i32 %i.fl, ptr %i.fx, align 8
  br label %bb.w

bb.w:                                             ; preds = %.critedge116, %.critedge114
  %.0 = phi ptr [ %i.ez, %.critedge114 ], [ %i.fm, %.critedge116 ] ; 8 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fz = load i32, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.fz, ptr %i.ga, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gc = load double, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store double %i.gc, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gf = load double, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store double %i.gf, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gi = load double, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store double %i.gi, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gn = load i32, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store i32 %i.gn, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gq = load i8, ptr %i.gp, align 8, !range !4, !noundef !5
  %i.gr = getelementptr inbounds nuw i8, ptr %.0, i64 36
  store i8 %i.gq, ptr %i.gr, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.gt = load i8, ptr %i.gs, align 1, !range !4, !noundef !5
  %i.gu = getelementptr inbounds nuw i8, ptr %.0, i64 37
  store i8 %i.gt, ptr %i.gu, align 1
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @order_qual_clauses(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.QualCost, align 8           ; 4 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %list_length.exit.thread, label %list_length.exit

list_length.exit:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %list_length.exit.thread, label %bb.b

bb.b:                                             ; preds = %list_length.exit
  %i.d = zext nneg i32 %i.b to i64
  %i.e = mul nuw nsw i64 %i.d, 24
  %i.f = tail call ptr @palloc(i64 noundef %i.e) #10 ; 5 uses
  %i.g = load i32, ptr %i.a, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.lr.ph79.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

.lr.ph79.preheader:                               ; preds = %bb.g, %bb.b
  %smax = call i32 @llvm.smax.i32(i32 %i.b, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph79

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @cost_qual_eval_node(ptr noundef nonnull %2, ptr noundef %i.m, ptr noundef %0) #10
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load double, ptr %i.j, align 8           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store double %i.o, ptr %i.p, align 8
  %i.q = load i32, ptr %i.m, align 4
  %i.r = icmp eq i32 %i.q, 334
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 21
  %i.t = load i8, ptr %i.s, align 1, !range !4, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load double, ptr @cpu_operator_cost, align 8
  %i.w = fmul double %i.v, 1.000000e+01
  %i.x = fcmp olt double %i.o, %i.w
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.z = load i32, ptr %i.y, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f
  %.sink = phi i32 [ 0, %bb.e ], [ %i.z, %bb.f ], [ 0, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 %.sink, ptr %i.aa, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %bb.c, label %.lr.ph79.preheader, !llvm.loop !43

.lr.ph82.preheader:                               ; preds = %.thread
  %wide.trip.count93 = zext nneg i32 %i.b to i64
  br label %.lr.ph82

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.thread
  %indvars.iv86 = phi i64 [ 1, %.lr.ph79.preheader ], [ %indvars.iv.next87, %.thread ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv86 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.af = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv86 to i32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph79, %bb.k
  %.077 = phi i32 [ %i.ag, %.lr.ph79 ], [ %i.ar, %bb.k ] ; 5 uses
  %i.ah = zext nneg i32 %.077 to i64
  %i.ai = getelementptr [24 x i8], ptr %i.f, i64 %i.ah ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = getelementptr i8, ptr %i.ai, i64 -8
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp ugt i32 %.sroa.5.0.copyload, %i.al
  br i1 %i.am, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = icmp eq i32 %.sroa.5.0.copyload, %i.al
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %i.ai, i64 -16
  %i.ap = load double, ptr %i.ao, align 8
  %i.aq = fcmp ult double %.sroa.4.0.copyload, %i.ap
  br i1 %i.aq, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.ar = add nsw i32 %.077, -1
  %i.as = icmp sgt i32 %.077, 1
  br i1 %i.as, label %bb.h, label %.thread, !llvm.loop !44

.thread:                                          ; preds = %bb.h, %bb.j, %bb.k
  %.0.lcssa = phi i32 [ %.077, %bb.h ], [ %.077, %bb.j ], [ 0, %bb.k ]
  %i.at = sext i32 %.0.lcssa to i64
  %i.au = getelementptr inbounds [24 x i8], ptr %i.f, i64 %i.at ; 3 uses
  store ptr %.sroa.0.0.copyload, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store double %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx9, align 8
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x i32> %i.af, ptr %.sroa.5.0..sroa_idx11, align 8
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph82.preheader, label %.lr.ph79, !llvm.loop !45

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %.lr.ph82
  %indvars.iv89 = phi i64 [ 0, %.lr.ph82.preheader ], [ %indvars.iv.next90, %.lr.ph82 ] ; 2 uses
  %.06681 = phi ptr [ null, %.lr.ph82.preheader ], [ %i.ax, %.lr.ph82 ]
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv89
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call ptr @lappend(ptr noundef %.06681, ptr noundef %i.aw) #10 ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count93
  br i1 %exitcond94.not, label %list_length.exit.thread, label %.lr.ph82, !llvm.loop !46

list_length.exit.thread:                          ; preds = %.lr.ph82, %bb.a, %list_length.exit
  %.069 = phi ptr [ %1, %list_length.exit ], [ null, %bb.a ], [ %i.ax, %.lr.ph82 ]
  ret ptr %.069
}

declare ptr @extract_actual_clauses(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @cost_qual_eval_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bms_nonempty_difference(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bms_is_subset(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bms_is_member(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bms_add_member(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @makeTargetEntry(ptr noundef, i16 noundef signext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @replace_nestloop_params_mutator(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %common.ret29, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4
  switch i32 %i.b, label %bb.i [
    i32 6, label %bb.c
    i32 335, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %common.ret29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i1 @bms_is_member(i32 noundef %i.d, ptr noundef %i.g) #10
  br i1 %i.h, label %bb.e, label %common.ret29

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @replace_nestloop_param_var(ptr noundef nonnull %1, ptr noundef nonnull %0) #10
  br label %common.ret29

bb.f:                                             ; preds = %bb.b
  %i.j = tail call ptr @find_placeholder_info(ptr noundef %1, ptr noundef nonnull %0) #10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call zeroext i1 @bms_is_subset(ptr noundef %i.l, ptr noundef %i.n) #10
  br i1 %i.o, label %bb.h, label %bb.g

common.ret29:                                     ; preds = %bb.h, %bb.e, %bb.d, %bb.c, %bb.a, %bb.i, %bb.g
  %common.ret29.op = phi ptr [ %i.p, %bb.g ], [ %i.u, %bb.h ], [ %i.v, %bb.i ], [ null, %bb.a ], [ %0, %bb.c ], [ %i.i, %bb.e ], [ %0, %bb.d ]
  ret ptr %common.ret29.op

bb.g:                                             ; preds = %bb.f
  %i.p = tail call noundef ptr @palloc0(i64 noundef 40) #10 ; 4 uses
  store i32 335, ptr %i.p, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call ptr @replace_nestloop_params_mutator(ptr noundef %i.r, ptr noundef nonnull %1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.s, ptr %i.t, align 8
  br label %common.ret29

bb.h:                                             ; preds = %bb.f
  %i.u = tail call ptr @replace_nestloop_param_placeholdervar(ptr noundef nonnull %1, ptr noundef nonnull %0) #10
  br label %common.ret29

bb.i:                                             ; preds = %bb.b
  %i.v = tail call ptr @expression_tree_mutator_impl(ptr noundef nonnull %0, ptr noundef nonnull @replace_nestloop_params_mutator, ptr noundef %1) #10
  br label %common.ret29
}

declare ptr @replace_nestloop_param_var(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @find_placeholder_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @replace_nestloop_param_placeholdervar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @expression_tree_mutator_impl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @is_redundant_with_indexclauses(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @contain_mutable_functions(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @predicate_implied_by(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #2

declare i32 @exprType(ptr noundef) local_unnamed_addr #2

declare i32 @get_opfamily_member_for_cmptype(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lappend_oid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @fix_indexqual_clause(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @replace_nestloop_params_mutator(ptr noundef %3, ptr noundef %0) ; 7 uses
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %bb.j [
    i32 17, label %bb.b
    i32 37, label %bb.c
    i32 20, label %bb.h
    i32 52, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val46 = load ptr, ptr %i.e, align 8
  %i.f = load ptr, ptr %.val46, align 8
  %i.g = tail call fastcc ptr @fix_indexqual_operand(ptr noundef %i.f, ptr noundef %1, i32 noundef %2)
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %.val45 = load ptr, ptr %i.i, align 8
  store ptr %i.g, ptr %.val45, align 8
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.not = icmp eq ptr %i.k, null
  %.not43 = icmp eq ptr %4, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %brmerge = select i1 %.not43, i1 true, i1 %.not
  br i1 %brmerge, label %.thread, label %.split.split

.split.split:                                     ; preds = %bb.c, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.c ] ; 5 uses
  %i.p = load i32, ptr %i.m, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split.split
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  br label %bb.e

bb.e:                                             ; preds = %.split.split, %bb.d
  %i.u = phi ptr [ %i.t, %bb.d ], [ null, %.split.split ] ; 3 uses
  %i.v = load i32, ptr %i.l, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv, %i.w
  br i1 %i.x, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.z = icmp ne ptr %i.u, null
  %i.aa = icmp ne ptr %i.y, null
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.u, align 8
  %i.ae = load i32, ptr %i.ac, align 8
  %i.af = tail call fastcc ptr @fix_indexqual_operand(ptr noundef %i.ad, ptr noundef %1, i32 noundef %i.ae)
  store ptr %i.af, ptr %i.u, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %.split.split, !llvm.loop !47

bb.h:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.val44 = load ptr, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %.val44, align 8
  %i.ak = tail call fastcc ptr @fix_indexqual_operand(ptr noundef %i.aj, ptr noundef %1, i32 noundef %2)
  %i.al = load ptr, ptr %i.ag, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %.val = load ptr, ptr %i.am, align 8
  store ptr %i.ak, ptr %.val, align 8
  br label %.thread

bb.i:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call fastcc ptr @fix_indexqual_operand(ptr noundef %i.ao, ptr noundef %1, i32 noundef %2)
  store ptr %i.ap, ptr %i.an, align 8
end_hunk_0
begin_hunk_1_@prepare_sort_from_pathkeys:bb.a
  %i.da = tail call ptr @makeTargetEntry(ptr noundef %i.cu, i16 noundef signext %i.cz, ptr noundef null, i1 noundef zeroext true) #10 ; 2 uses
  %i.db = tail call ptr @lappend(ptr noundef %.199, ptr noundef %i.da) #10 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.1102, i64 48
  store ptr %i.db, ptr %i.dc, align 8
  br label %.critedge126.thread134

.critedge126.thread134:                           ; preds = %.split, %bb.h, %list_length.exit129, %.critedge126
  %.1105 = phi i1 [ %.0104157214, %.critedge126 ], [ true, %list_length.exit129 ], [ %.0104157214, %bb.h ], [ %.0104157214, %.split ]
  %.2103 = phi ptr [ %.0101158213, %.critedge126 ], [ %.1102, %list_length.exit129 ], [ %.0101158213, %bb.h ], [ %.0101158213, %.split ] ; 2 uses
  %.2100 = phi ptr [ %.098159212, %.critedge126 ], [ %i.db, %list_length.exit129 ], [ %.098159212, %bb.h ], [ %.098159212, %.split ]
  %.3 = phi ptr [ %i.bb, %.critedge126 ], [ %i.da, %list_length.exit129 ], [ %i.ak, %bb.h ], [ %i.av, %.split ]
  %.2 = phi i32 [ %i.bh, %.critedge126 ], [ %i.bm, %list_length.exit129 ], [ %i.ap, %bb.h ], [ %i.ba, %.split ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = tail call i32 @get_opfamily_member_for_cmptype(i32 noundef %i.de, i32 noundef %.2, i32 noundef %.2, i32 noundef %i.dg) #10 ; 2 uses
  %.not124 = icmp eq i32 %i.dh, 0
  br i1 %.not124, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge126.thread134
  %i.di = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.dk = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.dl = load i32, ptr %i.dj, align 4
  %i.dm = load i32, ptr %i.di, align 8
  %i.dn = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i32 noundef %i.dl, i32 noundef %.2, i32 noundef %.2, i32 noundef %i.dm) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 6299, ptr noundef nonnull @__func__.prepare_sort_from_pathkeys) #10
  unreachable

bb.o:                                             ; preds = %.critedge126.thread134
  %i.do = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.dp = load i16, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv175211
  store i16 %i.dp, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv175211
  store i32 %i.dh, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv175211
  store i32 %i.dt, ptr %i.du, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.dw = load i8, ptr %i.dv, align 8, !range !4, !noundef !5
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv175211
  store i8 %i.dw, ptr %i.dx, align 1
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175211, 1 ; 3 uses
  %i.dy = load i32, ptr %i.m, align 4
  %i.dz = sext i32 %i.dy to i64
  %i.ea = icmp slt i64 %indvars.iv.next176, %i.dz
  br i1 %i.ea, label %.lr.ph215, label %..critedge.loopexit_crit_edge
}

declare ptr @get_sortgroupref_tle(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_tle_by_resno(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @find_ec_member_matching_expr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @find_computable_ec_member(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @cost_incremental_sort(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, double noundef, double noundef, double noundef, i32 noundef, double noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare void @cost_sort(ptr noundef, ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, i32 noundef, double noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare ptr @reparameterize_path_by_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bms_union(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @identify_current_nestloop_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @tlist_member(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @is_parallel_safe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @makeBoolConst(i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @pathkeys_count_contained_in(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @mark_async_capable_plan(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.i, %bb.a
  %.tr24 = phi ptr [ %1, %bb.a ], [ %i.v, %bb.i ] ; 5 uses
  %i.a = load i32, ptr %.tr24, align 4
  switch i32 %i.a, label %.thread [
    i32 304, label %bb.b
    i32 305, label %bb.e
    i32 317, label %bb.h
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = load i32, ptr %0, align 4
  %i.c = icmp eq i32 %i.b, 349
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @trivial_subqueryscan(ptr noundef nonnull %0) #10
  br i1 %i.d, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.tr24, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call fastcc zeroext i1 @mark_async_capable_plan(ptr noundef %i.f, ptr noundef %i.h)
  br i1 %i.i, label %bb.j, label %.thread

bb.e:                                             ; preds = %tailrecurse
  %i.j = load i32, ptr %0, align 4
  %i.k = icmp eq i32 %i.j, 349
  br i1 %i.k, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.tr24, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 344
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call zeroext i1 %i.q(ptr noundef nonnull %.tr24) #10
  br i1 %i.r, label %bb.j, label %.thread

bb.h:                                             ; preds = %tailrecurse
  %i.s = load i32, ptr %0, align 4
  %i.t = icmp eq i32 %i.s, 349
  br i1 %i.t, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.tr24, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  br label %tailrecurse

bb.j:                                             ; preds = %bb.g, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 1, ptr %i.w, align 2
  br label %.thread

.thread:                                          ; preds = %tailrecurse, %bb.h, %bb.f, %bb.g, %bb.e, %bb.c, %bb.d, %bb.b, %bb.j
  %.2 = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ true, %bb.j ], [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.h ], [ false, %tailrecurse ]
  ret i1 %.2
}

declare i32 @make_partition_pruneinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_copy_head(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @trivial_subqueryscan(ptr noundef) local_unnamed_addr #2

declare void @SS_make_initplan_from_plan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @pull_paramids(ptr noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @assign_special_exec_param(ptr noundef) local_unnamed_addr #2

declare ptr @extract_grouping_cols(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @extract_grouping_ops(ptr noundef) local_unnamed_addr #2

declare ptr @extract_grouping_collations(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

declare ptr @palloc0_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @extract_update_targetlist_colnos(ptr noundef) local_unnamed_addr #2

declare ptr @infer_arbiter_indexes(ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @GetFdwRoutineByRelId(i32 noundef) local_unnamed_addr #2

declare ptr @get_rel_name(i32 noundef) local_unnamed_addr #2

declare i32 @errdetail_relkind_not_supported(i8 noundef signext) local_unnamed_addr #2

declare zeroext i1 @has_row_triggers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @has_stored_generated_columns(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @contain_vars_returning_old_or_new(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @has_transition_tables(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{null, null}
!8 = distinct !{null, null}
!9 = distinct !{null, null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{null}
!15 = distinct !{!15, !6}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{null}
!26 = distinct !{null, null}
!27 = distinct !{null}
!28 = distinct !{null}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{null}
!35 = distinct !{null}
!36 = distinct !{!36, !38}
!37 = distinct !{!37, !6}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
end_hunk_1
