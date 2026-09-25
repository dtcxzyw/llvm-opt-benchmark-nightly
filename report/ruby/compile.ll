Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6690
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 112
begin_hunk_0_@pm_buffer_append_byte
declare void @pm_buffer_append_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_parse_errors_format(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, i32 noundef range(i32 0, 3) %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 664        ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !368
  %i.c = getelementptr i8, ptr %0, i64 600        ; 2 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !463
  %i.e = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.d, i64 noundef 24) #39 ; 9 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !368  ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !464
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1570 ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 8
  %.05874.i = load ptr, ptr %i.j, align 8, !tbaa !458 ; 2 uses
  %.not75.i = icmp eq ptr %.05874.i, %i.i
  br i1 %.not75.i, label %pm_parse_errors_format_sort.exit, label %.lr.ph77.i

.lr.ph77.i:                                       ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 624
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph77.i
  %.05876.i = phi ptr [ %.05874.i, %.lr.ph77.i ], [ %.058.i, %bb.i ] ; 4 uses
  %i.l = getelementptr i8, ptr %.05876.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1571
  %i.n = tail call i64 @pm_newline_list_line_column(ptr noundef %i.c, ptr noundef %i.m, i32 noundef %i.f) #37 ; 3 uses
  %.sroa.018.0.extract.trunc.i = trunc i64 %i.n to i32 ; 4 uses
  %.sroa.9.0.extract.shift.i = lshr i64 %i.n, 32
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32 ; 2 uses
  %i.o = getelementptr i8, ptr %.05876.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1572
  %i.q = tail call i64 @pm_newline_list_line_column(ptr noundef %i.c, ptr noundef %i.p, i32 noundef %i.f) #37 ; 2 uses
  %.sroa.016.0.extract.trunc.i = trunc i64 %i.q to i32
  %.sroa.417.0.extract.shift.i = lshr i64 %i.q, 32
  %i.r = load i64, ptr %1, align 8, !tbaa !463    ; 5 uses
  %.not78.i = icmp eq i64 %i.r, 0
  br i1 %.not78.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.critedge2.i
  %.05763.i = phi i64 [ %i.ab, %.critedge2.i ], [ 0, %bb.b ] ; 5 uses
  %i.s = getelementptr [24 x i8], ptr %i.e, i64 %.05763.i ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1574
  %.not62.i = icmp eq ptr %i.t, null
  br i1 %.not62.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1575 ; 2 uses
  %i.w = icmp slt i32 %i.v, %.sroa.018.0.extract.trunc.i
  br i1 %i.w, label %.critedge2.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %i.v, %.sroa.018.0.extract.trunc.i
  br i1 %i.x, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.s, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1576
  %i.aa = icmp ult i32 %i.z, %.sroa.9.0.extract.trunc.i
  br i1 %i.aa, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %bb.e, %bb.c
  %i.ab = add nuw i64 %.05763.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %i.r
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1564

.critedge.i:                                      ; preds = %.critedge2.i, %bb.e, %bb.d, %.lr.ph.i, %bb.b
  %.057.lcssa.i = phi i64 [ 0, %bb.b ], [ %.05763.i, %bb.e ], [ %.05763.i, %bb.d ], [ %i.r, %.critedge2.i ], [ %.05763.i, %.lr.ph.i ] ; 4 uses
  %i.ac = add i64 %.057.lcssa.i, 1                ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.r
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge.i
  %i.ae = getelementptr [24 x i8], ptr %i.e, i64 %i.ac
  %i.af = getelementptr [24 x i8], ptr %i.e, i64 %.057.lcssa.i
  %i.ag = xor i64 %.057.lcssa.i, -1
  %i.ah = add i64 %i.r, %i.ag
  %i.ai = mul i64 %i.ah, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ae, ptr noundef nonnull align 1 %i.af, i64 noundef %i.ai, i1 noundef false) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i
  %i.aj = icmp eq i32 %.sroa.018.0.extract.trunc.i, %.sroa.016.0.extract.trunc.i
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !452 ; 2 uses
  %i.al = sub i32 %.sroa.018.0.extract.trunc.i, %i.f ; 2 uses
  %i.am = add i32 %i.al, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !63
  %i.aq = sext i32 %i.al to i64
  %i.ar = getelementptr [8 x i8], ptr %i.ak, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !63
  %i.at = xor i64 %i.as, -1
  %i.au = add i64 %i.ap, %i.at
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.056.in.i = phi i64 [ %i.au, %bb.h ], [ %.sroa.417.0.extract.shift.i, %bb.g ]
  %.056.i = trunc i64 %.056.in.i to i32           ; 2 uses
  %i.av = icmp eq i32 %.sroa.9.0.extract.trunc.i, %.056.i
  %i.aw = zext i1 %i.av to i32
  %spec.select.i = add i32 %i.aw, %.056.i
  %i.ax = getelementptr [24 x i8], ptr %i.e, i64 %.057.lcssa.i ; 4 uses
  store ptr %.05876.i, ptr %i.ax, align 8, !tbaa !167
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 %spec.select.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !37
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.058.i = load ptr, ptr %.05876.i, align 8, !tbaa !458 ; 2 uses
  %.not.i = icmp eq ptr %.058.i, %i.i
  br i1 %.not.i, label %pm_parse_errors_format_sort.exit, label %bb.b, !llvm.loop !1565

pm_parse_errors_format_sort.exit:                 ; preds = %bb.i, %bb.a
  %i.ay = getelementptr i8, ptr %i.e, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1575 ; 3 uses
  %i.ba = load i64, ptr %1, align 8, !tbaa !463   ; 2 uses
  %i.bb = getelementptr [24 x i8], ptr %i.e, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1575 ; 3 uses
  %i.be = icmp slt i32 %i.az, 0
  %i.bf = mul i32 %i.az, -10
  %.0226 = select i1 %i.be, i32 %i.bf, i32 %i.az
  %i.bg = icmp slt i32 %i.bd, 0
  %i.bh = mul i32 %i.bd, -10
  %.0227 = select i1 %i.bg, i32 %i.bh, i32 %i.bd
  %i.bi = tail call i32 @llvm.smax.i32(i32 %.0226, i32 %.0227) ; 4 uses
  %i.bj = icmp slt i32 %i.bi, 10
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %pm_parse_errors_format_sort.exit
  %.not241 = icmp eq i32 %3, 0                    ; 3 uses
  %.str.311..str.308 = select i1 %.not241, ptr @.str.311, ptr @.str.308
  %.str.312..str.309 = select i1 %.not241, ptr @.str.312, ptr @.str.309
  %.str.313..str.310 = select i1 %.not241, ptr @.str.313, ptr @.str.310
  br label %bb.r

bb.k:                                             ; preds = %pm_parse_errors_format_sort.exit
  %i.bk = icmp samesign ult i32 %i.bi, 100
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not240 = icmp eq i32 %3, 0                    ; 3 uses
  %.str.317..str.314 = select i1 %.not240, ptr @.str.317, ptr @.str.314
  %.str.318..str.315 = select i1 %.not240, ptr @.str.318, ptr @.str.315
  %.str.319..str.316 = select i1 %.not240, ptr @.str.319, ptr @.str.316
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i32 %i.bi, 1000
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.not239 = icmp eq i32 %3, 0                    ; 3 uses
  %.str.323..str.320 = select i1 %.not239, ptr @.str.323, ptr @.str.320
  %.str.324..str.321 = select i1 %.not239, ptr @.str.324, ptr @.str.321
  %.str.325..str.322 = select i1 %.not239, ptr @.str.325, ptr @.str.322
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bm = icmp samesign ult i32 %i.bi, 10000
  %.not238 = icmp eq i32 %3, 0                    ; 5 uses
  %.str.331..str.328 = select i1 %.not238, ptr @.str.331, ptr @.str.328 ; 2 uses
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.str.329..str.326 = select i1 %.not238, ptr @.str.329, ptr @.str.326
  %.str.330..str.327 = select i1 %.not238, ptr @.str.330, ptr @.str.327
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %.str.334..str.332 = select i1 %.not238, ptr @.str.334, ptr @.str.332
  %.str.335..str.333 = select i1 %.not238, ptr @.str.335, ptr @.str.333
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.j
  %.sroa.0129.0 = phi ptr [ %.str.311..str.308, %bb.j ], [ %.str.329..str.326, %bb.p ], [ %.str.317..str.314, %bb.l ], [ %.str.334..str.332, %bb.q ], [ %.str.323..str.320, %bb.n ] ; 5 uses
  %.sroa.17.0 = phi ptr [ %.str.312..str.309, %bb.j ], [ %.str.330..str.327, %bb.p ], [ %.str.318..str.315, %bb.l ], [ %.str.335..str.333, %bb.q ], [ %.str.324..str.321, %bb.n ] ; 2 uses
  %.sroa.29.0 = phi ptr [ %.str.313..str.310, %bb.j ], [ %.str.331..str.328, %bb.p ], [ %.str.319..str.316, %bb.l ], [ %.str.331..str.328, %bb.q ], [ %.str.325..str.322, %bb.n ] ; 2 uses
  %i.bn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.17.0) #44
  %i.bo = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.29.0) #44
  %i.bp = getelementptr i8, ptr %0, i64 520
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !456 ; 3 uses
  %.not295 = icmp eq i64 %i.ba, 0
  br i1 %.not295, label %._crit_edge294, label %.lr.ph293

.lr.ph293:                                        ; preds = %bb.r
  %i.br = load i32, ptr %i.a, align 8, !tbaa !368
  %i.bs = add i32 %i.br, -1
  %i.bt = getelementptr i8, ptr %0, i64 608       ; 6 uses
  %i.bu = getelementptr i8, ptr %0, i64 624       ; 7 uses
  %i.bv = getelementptr i8, ptr %0, i64 304       ; 6 uses
  %i.bw = getelementptr i8, ptr %0, i64 312       ; 13 uses
  %i.bx = icmp samesign ugt i32 %3, 1             ; 2 uses
  %.not246.a = icmp eq i32 %3, 0                  ; 3 uses
  br label %bb.s

._crit_edge294:                                   ; preds = %pm_parse_errors_format_line.exit274, %bb.r
  tail call void @ruby_xfree(ptr noundef nonnull %i.e) #37
  ret void

bb.s:                                             ; preds = %.lr.ph293, %pm_parse_errors_format_line.exit274
  %.0220291 = phi i64 [ 0, %.lr.ph293 ], [ %i.ix, %pm_parse_errors_format_line.exit274 ] ; 6 uses
  %.0221290 = phi i32 [ 0, %.lr.ph293 ], [ %.1222, %pm_parse_errors_format_line.exit274 ]
  %.0223289 = phi i32 [ %i.bs, %.lr.ph293 ], [ %.2225, %pm_parse_errors_format_line.exit274 ] ; 3 uses
  %i.by = getelementptr [24 x i8], ptr %i.e, i64 %.0220291 ; 7 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8      ; 7 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !1575
  %i.cb = sub i32 %i.ca, %.0223289                ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %bb.t, label %pm_parse_errors_format_line.exit264

bb.t:                                             ; preds = %bb.s
  %.not242 = icmp eq i32 %i.cb, 2
  br i1 %.not242, label %pm_parse_errors_format_line.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not243 = icmp ne i64 %.0220291, 0
  %i.cd = icmp samesign ugt i32 %i.cb, 3
  %or.cond = and i1 %.not243, %i.cd
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull %.sroa.29.0, i64 noundef %i.bo) #37
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.336, i64 noundef 2) #37
  %i.ce = load i32, ptr %i.bz, align 8, !tbaa !1575
  %i.cf = add i32 %i.ce, -2                       ; 2 uses
  %.val256.a = load i64, ptr %i.bt, align 8, !tbaa !453
  %.val257.a = load ptr, ptr %i.bu, align 8, !tbaa !452
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !368
  %i.ch = sub i32 %i.cf, %i.cg
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = load ptr, ptr %i.bv, align 8, !tbaa !450 ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %.val257.a, i64 %i.ci ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !63
  %i.cm = getelementptr i8, ptr %i.cj, i64 %i.cl  ; 2 uses
  %i.cn = add i64 %.val256.a, -1
  %.not.i258 = icmp ugt i64 %i.cn, %i.ci
  br i1 %.not.i258, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = load ptr, ptr %i.bw, align 8, !tbaa !451
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cp = getelementptr i8, ptr %i.ck, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !63
  %i.cr = getelementptr i8, ptr %i.cj, i64 %i.cq
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.054.i = phi ptr [ %i.co, %bb.x ], [ %i.cr, %bb.y ] ; 3 uses
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef nonnull %2, ptr noundef nonnull %.sroa.0129.0, i32 noundef %i.cf) #37
  %i.cs = ptrtoint ptr %.054.i to i64
  %i.ct = ptrtoint ptr %i.cm to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef %i.cm, i64 noundef %i.cu) #37
  %i.cv = load ptr, ptr %i.bw, align 8, !tbaa !451
  %i.cw = icmp eq ptr %.054.i, %i.cv
  br i1 %i.cw, label %bb.aa, label %pm_parse_errors_format_line.exit

bb.aa:                                            ; preds = %bb.z
  %i.cx = getelementptr i8, ptr %.054.i, i64 -1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !47
  %.not63.i = icmp eq i8 %i.cy, 10
  br i1 %.not63.i, label %pm_parse_errors_format_line.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.346, i64 noundef 1) #37
  br label %pm_parse_errors_format_line.exit

pm_parse_errors_format_line.exit:                 ; preds = %bb.ab, %bb.aa, %bb.z, %bb.t
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.336, i64 noundef 2) #37
  %i.cz = load i32, ptr %i.bz, align 8, !tbaa !1575
  %i.da = add i32 %i.cz, -1                       ; 2 uses
  %.val254.a = load i64, ptr %i.bt, align 8, !tbaa !453
  %.val255.a = load ptr, ptr %i.bu, align 8, !tbaa !452
  %i.db = load i32, ptr %i.a, align 8, !tbaa !368
  %i.dc = sub i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = load ptr, ptr %i.bv, align 8, !tbaa !450 ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %.val255.a, i64 %i.dd ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !63
  %i.dh = getelementptr i8, ptr %i.de, i64 %i.dg  ; 2 uses
  %i.di = add i64 %.val254.a, -1
  %.not.i260 = icmp ugt i64 %i.di, %i.dd
  br i1 %.not.i260, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %pm_parse_errors_format_line.exit
  %i.dj = load ptr, ptr %i.bw, align 8, !tbaa !451
  br label %bb.ae

bb.ad:                                            ; preds = %pm_parse_errors_format_line.exit
  %i.dk = getelementptr i8, ptr %i.df, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !63
  %i.dm = getelementptr i8, ptr %i.de, i64 %i.dl
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.054.i261 = phi ptr [ %i.dj, %bb.ac ], [ %i.dm, %bb.ad ] ; 3 uses
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef nonnull %2, ptr noundef nonnull %.sroa.0129.0, i32 noundef %i.da) #37
  %i.dn = ptrtoint ptr %.054.i261 to i64
  %i.do = ptrtoint ptr %i.dh to i64
  %i.dp = sub i64 %i.dn, %i.do
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef %i.dh, i64 noundef %i.dp) #37
  %i.dq = load ptr, ptr %i.bw, align 8, !tbaa !451
  %i.dr = icmp eq ptr %.054.i261, %i.dq
  br i1 %i.dr, label %bb.af, label %pm_parse_errors_format_line.exit264

bb.af:                                            ; preds = %bb.ae
  %i.ds = getelementptr i8, ptr %.054.i261, i64 -1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !47
  %.not63.i263 = icmp eq i8 %i.dt, 10
  br i1 %.not63.i263, label %pm_parse_errors_format_line.exit264, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.346, i64 noundef 1) #37
  br label %pm_parse_errors_format_line.exit264

pm_parse_errors_format_line.exit264:              ; preds = %bb.ag, %bb.af, %bb.ae, %bb.s
  %i.du = icmp eq i64 %.0220291, 0
  br i1 %i.du, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %pm_parse_errors_format_line.exit264
  %i.dv = load i32, ptr %i.bz, align 8, !tbaa !1575
  %.not244 = icmp eq i32 %i.dv, %.0223289
  br i1 %.not244, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %pm_parse_errors_format_line.exit264
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.337, i64 noundef 12) #37
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  br i1 %.not246.a, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.338, i64 noundef 9) #37
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.339, i64 noundef 2) #37
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.aj
  %i.dw = getelementptr i8, ptr %i.by, i64 12
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !1576 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.by, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !1577 ; 2 uses
  %i.ea = load i64, ptr %1, align 8, !tbaa !463   ; 2 uses
  %.0217275 = add nuw i64 %.0220291, 1            ; 2 uses
  %i.eb = icmp ult i64 %.0217275, %i.ea
  %.pre = load i32, ptr %i.bz, align 8, !tbaa !1575 ; 2 uses
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.an, %bb.ao
  %.0217277 = phi i64 [ %.0217, %bb.ao ], [ %.0217275, %bb.an ] ; 2 uses
  %.0218276 = phi i32 [ %spec.select, %bb.ao ], [ %i.dz, %bb.an ] ; 2 uses
  %i.ec = getelementptr [24 x i8], ptr %i.e, i64 %.0217277 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !1575
  %.not245 = icmp eq i32 %i.ee, %.pre
  br i1 %.not245, label %bb.ao, label %._crit_edge

bb.ao:                                            ; preds = %.lr.ph
  %i.ef = getelementptr i8, ptr %i.ec, i64 16
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !1577
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.eg, i32 %.0218276) ; 2 uses
  %.0217 = add nuw i64 %.0217277, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %.0217, %i.ea
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1566

._crit_edge:                                      ; preds = %bb.ao, %.lr.ph, %bb.an
  %.0218.lcssa = phi i32 [ %i.dz, %bb.an ], [ %.0218276, %.lr.ph ], [ %spec.select, %bb.ao ]
  %.val252.a = load i64, ptr %i.bt, align 8, !tbaa !453
  %.val253.a = load ptr, ptr %i.bu, align 8, !tbaa !452
  tail call fastcc void @pm_parse_errors_format_line(ptr noundef %0, i64 %.val252.a, ptr %.val253.a, ptr noundef nonnull %.sroa.0129.0, i32 noundef %.pre, i32 noundef %i.dx, i32 noundef %.0218.lcssa, ptr noundef %2)
  %.pre296 = load i32, ptr %i.bz, align 8, !tbaa !1575
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge, %bb.ah
  %i.eh = phi i32 [ %.pre296, %._crit_edge ], [ %.0223289, %bb.ah ]
  %.1222 = phi i32 [ %i.dx, %._crit_edge ], [ %.0221290, %bb.ah ] ; 3 uses
  %i.ei = load ptr, ptr %i.bv, align 8, !tbaa !450
  %i.ej = load ptr, ptr %i.bu, align 8, !tbaa !452
  %i.ek = sub i32 %i.eh, %i.b
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr [8 x i8], ptr %i.ej, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !63
  %i.eo = getelementptr i8, ptr %i.ei, i64 %i.en  ; 4 uses
  %i.ep = load ptr, ptr %i.bw, align 8, !tbaa !451
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call void @pm_buffer_append_byte(ptr noundef nonnull %2, i8 noundef zeroext 10) #37
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.336, i64 noundef 2) #37
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull %.sroa.17.0, i64 noundef %i.bn) #37
  %i.er = icmp ugt i32 %.1222, 29
  br i1 %i.er, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.340, i64 noundef 4) #37
  %i.es = zext i32 %.1222 to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0216 = phi i64 [ %i.es, %bb.as ], [ 0, %bb.ar ] ; 3 uses
  %i.et = getelementptr i8, ptr %i.by, i64 12     ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !1576
  %i.ev = zext i32 %i.eu to i64
  %i.ew = icmp samesign ult i64 %.0216, %i.ev
  br i1 %i.ew, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %bb.at, %.lr.ph282
  %.1280 = phi i64 [ %i.ff, %.lr.ph282 ], [ %.0216, %bb.at ] ; 2 uses
  tail call void @pm_buffer_append_byte(ptr noundef nonnull %2, i8 noundef zeroext 32) #37
  %i.ex = load ptr, ptr %i.bq, align 8, !tbaa !657
  %i.ey = getelementptr i8, ptr %i.eo, i64 %.1280 ; 2 uses
  %i.ez = load ptr, ptr %i.bw, align 8, !tbaa !451
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = tail call i64 %i.ex(ptr noundef %i.ey, i64 noundef %i.fc) #37
  %i.fe = tail call i64 @llvm.umax.i64(i64 %i.fd, i64 1)
  %i.ff = add i64 %i.fe, %.1280                   ; 3 uses
  %i.fg = load i32, ptr %i.et, align 4, !tbaa !1576
  %i.fh = zext i32 %i.fg to i64
  %i.fi = icmp ult i64 %i.ff, %i.fh
  br i1 %i.fi, label %.lr.ph282, label %._crit_edge283, !llvm.loop !1567

._crit_edge283:                                   ; preds = %.lr.ph282, %bb.at
  %.1.lcssa = phi i64 [ %.0216, %bb.at ], [ %i.ff, %.lr.ph282 ] ; 2 uses
  br i1 %i.bx, label %bb.au, label %bb.av

bb.au:                                            ; preds = %._crit_edge283
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.341, i64 noundef 7) #37
  br label %bb.ax

bb.av:                                            ; preds = %._crit_edge283
  br i1 %.not246.a, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.342, i64 noundef 4) #37
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.au
  tail call void @pm_buffer_append_byte(ptr noundef nonnull %2, i8 noundef zeroext 94) #37
  %i.fj = load ptr, ptr %i.bq, align 8, !tbaa !657
  %i.fk = getelementptr i8, ptr %i.eo, i64 %.1.lcssa ; 2 uses
  %i.fl = load ptr, ptr %i.bw, align 8, !tbaa !451
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = tail call i64 %i.fj(ptr noundef %i.fk, i64 noundef %i.fo) #37
  %i.fq = tail call i64 @llvm.umax.i64(i64 %i.fp, i64 1)
  %i.fr = add i64 %i.fq, %.1.lcssa                ; 2 uses
  %i.fs = getelementptr i8, ptr %i.by, i64 16     ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !1577
  %i.fu = zext i32 %i.ft to i64
  %i.fv = icmp ult i64 %i.fr, %i.fu
  br i1 %i.fv, label %.lr.ph287, label %._crit_edge288

.lr.ph287:                                        ; preds = %bb.ax, %.lr.ph287
  %.2285 = phi i64 [ %i.ge, %.lr.ph287 ], [ %i.fr, %bb.ax ] ; 2 uses
  tail call void @pm_buffer_append_byte(ptr noundef nonnull %2, i8 noundef zeroext 126) #37
  %i.fw = load ptr, ptr %i.bq, align 8, !tbaa !657
  %i.fx = getelementptr i8, ptr %i.eo, i64 %.2285 ; 2 uses
  %i.fy = load ptr, ptr %i.bw, align 8, !tbaa !451
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fx to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = tail call i64 %i.fw(ptr noundef %i.fx, i64 noundef %i.gb) #37
  %i.gd = tail call i64 @llvm.umax.i64(i64 %i.gc, i64 1)
  %i.ge = add i64 %i.gd, %.2285                   ; 2 uses
  %i.gf = load i32, ptr %i.fs, align 8, !tbaa !1577
  %i.gg = zext i32 %i.gf to i64
  %i.gh = icmp ult i64 %i.ge, %i.gg
  br i1 %i.gh, label %.lr.ph287, label %._crit_edge288, !llvm.loop !1568

._crit_edge288:                                   ; preds = %.lr.ph287, %bb.ax
  br i1 %.not246.a, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge288
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.343, i64 noundef 3) #37
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge288
  br i1 %4, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void @pm_buffer_append_byte(ptr noundef nonnull %2, i8 noundef zeroext 32) #37
  %i.gi = load ptr, ptr %i.by, align 8, !tbaa !1574
  %i.gj = getelementptr i8, ptr %i.gi, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !461 ; 2 uses
  %i.gl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gk) #44
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull %i.gk, i64 noundef %i.gl) #37
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  tail call void @pm_buffer_append_byte(ptr noundef nonnull %2, i8 noundef zeroext 10) #37
  %i.gm = load i32, ptr %i.bz, align 8, !tbaa !1575 ; 3 uses
  %i.gn = load i64, ptr %1, align 8, !tbaa !463
  %i.go = add i64 %i.gn, -1
  %i.gp = icmp eq i64 %.0220291, %i.go
  br i1 %i.gp, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gq = load i64, ptr %i.bt, align 8, !tbaa !453 ; 2 uses
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = load i32, ptr %i.a, align 8, !tbaa !368
  %i.gt = add i32 %i.gs, %i.gr
  %i.gu = load ptr, ptr %i.bv, align 8, !tbaa !450
  %i.gv = load ptr, ptr %i.bu, align 8, !tbaa !452
  %i.gw = getelementptr [8 x i8], ptr %i.gv, i64 %i.gq
  %i.gx = getelementptr i8, ptr %i.gw, i64 -8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !63
  %i.gz = getelementptr i8, ptr %i.gu, i64 %i.gy
  %i.ha = load ptr, ptr %i.bw, align 8, !tbaa !451
  %i.hb = icmp eq ptr %i.gz, %i.ha
  %i.hc = sext i1 %i.hb to i32
  %spec.select248 = add i32 %i.gt, %i.hc
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.hd = getelementptr i8, ptr %i.by, i64 32
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !1575
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %.0 = phi i32 [ %i.he, %bb.bd ], [ %spec.select248, %bb.bc ] ; 2 uses
  %i.hf = sub i32 %.0, %i.gm
  %i.hg = icmp sgt i32 %i.hf, 1
  br i1 %i.hg, label %bb.bf, label %pm_parse_errors_format_line.exit269

bb.bf:                                            ; preds = %bb.be
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.336, i64 noundef 2) #37
  %i.hh = add i32 %i.gm, 1                        ; 5 uses
  %.val250 = load i64, ptr %i.bt, align 8, !tbaa !453
  %.val251.a = load ptr, ptr %i.bu, align 8, !tbaa !452
  %i.hi = load i32, ptr %i.a, align 8, !tbaa !368
  %i.hj = sub i32 %i.hh, %i.hi
  %i.hk = sext i32 %i.hj to i64                   ; 2 uses
  %i.hl = load ptr, ptr %i.bv, align 8, !tbaa !450 ; 2 uses
  %i.hm = getelementptr [8 x i8], ptr %.val251.a, i64 %i.hk ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !63
  %i.ho = getelementptr i8, ptr %i.hl, i64 %i.hn  ; 2 uses
  %i.hp = add i64 %.val250, -1
  %.not.i265 = icmp ugt i64 %i.hp, %i.hk
  br i1 %.not.i265, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hq = load ptr, ptr %i.bw, align 8, !tbaa !451
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.hr = getelementptr i8, ptr %i.hm, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !63
  %i.ht = getelementptr i8, ptr %i.hl, i64 %i.hs
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.054.i266 = phi ptr [ %i.hq, %bb.bg ], [ %i.ht, %bb.bh ] ; 3 uses
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef nonnull %2, ptr noundef nonnull %.sroa.0129.0, i32 noundef %i.hh) #37
  %i.hu = ptrtoint ptr %.054.i266 to i64
  %i.hv = ptrtoint ptr %i.ho to i64
  %i.hw = sub i64 %i.hu, %i.hv
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef %i.ho, i64 noundef %i.hw) #37
  %i.hx = load ptr, ptr %i.bw, align 8, !tbaa !451
  %i.hy = icmp eq ptr %.054.i266, %i.hx
  br i1 %i.hy, label %bb.bj, label %pm_parse_errors_format_line.exit269

bb.bj:                                            ; preds = %bb.bi
  %i.hz = getelementptr i8, ptr %.054.i266, i64 -1
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !47
  %.not63.i268 = icmp eq i8 %i.ia, 10
  br i1 %.not63.i268, label %pm_parse_errors_format_line.exit269, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.346, i64 noundef 1) #37
  br label %pm_parse_errors_format_line.exit269

pm_parse_errors_format_line.exit269:              ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.be
  %.1224 = phi i32 [ %i.gm, %bb.be ], [ %i.hh, %bb.bi ], [ %i.hh, %bb.bj ], [ %i.hh, %bb.bk ] ; 3 uses
  %i.ib = sub i32 %.0, %.1224
  %i.ic = icmp sgt i32 %i.ib, 1
  br i1 %i.ic, label %bb.bl, label %pm_parse_errors_format_line.exit274

bb.bl:                                            ; preds = %pm_parse_errors_format_line.exit269
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.336, i64 noundef 2) #37
  %i.id = add i32 %.1224, 1                       ; 5 uses
  %.val = load i64, ptr %i.bt, align 8, !tbaa !453
  %.val249 = load ptr, ptr %i.bu, align 8, !tbaa !452
  %i.ie = load i32, ptr %i.a, align 8, !tbaa !368
  %i.if = sub i32 %i.id, %i.ie
  %i.ig = sext i32 %i.if to i64                   ; 2 uses
  %i.ih = load ptr, ptr %i.bv, align 8, !tbaa !450 ; 2 uses
  %i.ii = getelementptr [8 x i8], ptr %.val249, i64 %i.ig ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !63
  %i.ik = getelementptr i8, ptr %i.ih, i64 %i.ij  ; 2 uses
  %i.il = add i64 %.val, -1
  %.not.i270 = icmp ugt i64 %i.il, %i.ig
  br i1 %.not.i270, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.im = load ptr, ptr %i.bw, align 8, !tbaa !451
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.in = getelementptr i8, ptr %i.ii, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !63
  %i.ip = getelementptr i8, ptr %i.ih, i64 %i.io
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.054.i271 = phi ptr [ %i.im, %bb.bm ], [ %i.ip, %bb.bn ] ; 3 uses
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef nonnull %2, ptr noundef nonnull %.sroa.0129.0, i32 noundef %i.id) #37
  %i.iq = ptrtoint ptr %.054.i271 to i64
  %i.ir = ptrtoint ptr %i.ik to i64
  %i.is = sub i64 %i.iq, %i.ir
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef %i.ik, i64 noundef %i.is) #37
  %i.it = load ptr, ptr %i.bw, align 8, !tbaa !451
  %i.iu = icmp eq ptr %.054.i271, %i.it
  br i1 %i.iu, label %bb.bp, label %pm_parse_errors_format_line.exit274

bb.bp:                                            ; preds = %bb.bo
  %i.iv = getelementptr i8, ptr %.054.i271, i64 -1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !47
  %.not63.i273 = icmp eq i8 %i.iw, 10
  br i1 %.not63.i273, label %pm_parse_errors_format_line.exit274, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.346, i64 noundef 1) #37
  br label %pm_parse_errors_format_line.exit274

pm_parse_errors_format_line.exit274:              ; preds = %bb.bq, %bb.bp, %bb.bo, %pm_parse_errors_format_line.exit269
  %.2225 = phi i32 [ %.1224, %pm_parse_errors_format_line.exit269 ], [ %i.id, %bb.bo ], [ %i.id, %bb.bp ], [ %i.id, %bb.bq ]
  %i.ix = add nuw i64 %.0220291, 1                ; 2 uses
  %i.iy = load i64, ptr %1, align 8, !tbaa !463
  %i.iz = icmp ult i64 %i.ix, %i.iy
  br i1 %i.iz, label %bb.s, label %._crit_edge294, !llvm.loop !1569
end_hunk_0
