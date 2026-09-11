Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/object?download=true
inline.NumInlined: 440
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@rb_opts_exception_p:bb.a
; Function Attrs: nounwind sspstrong uwtable
define dso_local double @rb_cstr_to_dbl(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc double @rb_cstr_to_dbl_raise(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, i32 noundef 1, ptr noundef null)
  ret double %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc double @rb_cstr_to_dbl_raise(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca [70 x i8], align 16               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not = icmp eq ptr %0, null
  %.0102.idx.ph.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %.0102.idx.ph.sroa.gep237 = getelementptr inbounds nuw i8, ptr %i.b, i64 69
  br i1 %.not, label %bb.av, label %.preheader187

.preheader187:                                    ; preds = %bb.a, %.preheader187
  %.0119 = phi ptr [ %i.h, %.preheader187 ], [ %0, %bb.a ] ; 9 uses
  %i.c = load i8, ptr %.0119, align 1, !tbaa !38  ; 3 uses
  %i.d = sext i8 %i.c to i32
  %i.e = icmp ne i8 %i.c, 32
  %i.f = add nsw i32 %i.d, -14
  %i.g = icmp ult i32 %i.f, -5
  %narrow.i.not = select i1 %i.e, i1 %i.g, i1 false
  %i.h = getelementptr i8, ptr %.0119, i64 1      ; 4 uses
  br i1 %narrow.i.not, label %bb.b, label %.preheader187, !llvm.loop !95

bb.b:                                             ; preds = %.preheader187
  %.not138 = icmp eq i32 %2, 0                    ; 7 uses
  %i.i = icmp eq i8 %i.c, 48
  %or.cond = and i1 %.not138, %i.i
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.h, align 1, !tbaa !38
  switch i8 %i.j, label %bb.d [
    i8 120, label %bb.av
    i8 88, label %bb.av
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = call double @ruby_strtod(ptr noundef nonnull %.0119, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.l = call ptr @rb_errno_ptr() #21
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = icmp eq i32 %i.m, 34
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %.0119 to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp sgt i64 %i.r, 20
  %.0114 = select i1 %i.s, ptr @.str.154, ptr @.str.73
  %.0111174 = call i64 @llvm.smin.i64(i64 %i.r, i64 20)
  %.0111 = trunc i64 %.0111174 to i32
  call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.155, i32 noundef %.0111, ptr noundef nonnull %.0119, ptr noundef nonnull %.0114) #21
  %i.t = call ptr @rb_errno_ptr() #21
  store i32 0, ptr %i.t, align 4, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %i.v = icmp eq ptr %.0119, %i.u
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %.not138, label %bb.av, label %bb.ar

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.u, align 1, !tbaa !38
  %.not139 = icmp eq i8 %i.w, 0
  br i1 %.not139, label %bb.ap, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.x = load i8, ptr %.0119, align 1, !tbaa !38  ; 4 uses
  switch i8 %i.x, label %bb.k [
    i8 43, label %bb.j
    i8 45, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.x, ptr %i.b, align 16, !tbaa !38
  %.pr = load i8, ptr %i.h, align 1, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi i8 [ %.pr, %bb.j ], [ %i.x, %bb.i ]
  %.1120 = phi ptr [ %i.h, %bb.j ], [ %.0119, %bb.i ] ; 3 uses
  %.0103 = phi ptr [ %i.y, %bb.j ], [ %i.b, %bb.i ] ; 4 uses
  %.099 = phi i8 [ %i.x, %bb.j ], [ 0, %bb.i ]
  %i.aa = icmp eq i8 %i.z, 48
  br i1 %i.aa, label %bb.l, label %.loopexit186

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr i8, ptr %.0103, i64 1     ; 3 uses
  store i8 48, ptr %.0103, align 1, !tbaa !38
  %i.ac = getelementptr i8, ptr %.1120, i64 1     ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38  ; 2 uses
  switch i8 %i.ad, label %.loopexit186 [
    i8 120, label %bb.m
    i8 88, label %bb.m
    i8 48, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.ae = getelementptr i8, ptr %.0103, i64 2     ; 2 uses
  store i8 120, ptr %i.ab, align 1, !tbaa !38
  %i.af = getelementptr i8, ptr %.1120, i64 2     ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38
  %.not140 = icmp eq i8 %i.ag, 48
  br i1 %.not140, label %bb.n, label %.loopexit186

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2121 = phi ptr [ %i.af, %bb.m ], [ %i.ac, %bb.l ]
  %.1104 = phi ptr [ %i.ae, %bb.m ], [ %i.ab, %bb.l ]
  %.1100 = phi i8 [ 120, %bb.m ], [ %i.ad, %bb.l ]
  %.095 = phi i32 [ 16, %bb.m ], [ 10, %bb.l ]
  %.093 = phi i32 [ 112, %bb.m ], [ 101, %bb.l ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.3122 = phi ptr [ %.2121, %bb.n ], [ %i.ah, %bb.o ]
  %i.ah = getelementptr i8, ptr %.3122, i64 1     ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !38
  %i.aj = icmp eq i8 %i.ai, 48
  br i1 %i.aj, label %bb.o, label %.loopexit186, !llvm.loop !96

.loopexit186:                                     ; preds = %bb.o, %bb.l, %bb.m, %bb.k
  %.4123 = phi ptr [ %i.ac, %bb.l ], [ %i.af, %bb.m ], [ %.1120, %bb.k ], [ %i.ah, %bb.o ] ; 3 uses
  %.2105 = phi ptr [ %i.ab, %bb.l ], [ %i.ae, %bb.m ], [ %.0103, %bb.k ], [ %.1104, %bb.o ] ; 3 uses
  %.2101 = phi i8 [ 48, %bb.l ], [ 120, %bb.m ], [ %.099, %bb.k ], [ %.1100, %bb.o ]
  %.196 = phi i32 [ 10, %bb.l ], [ 16, %bb.m ], [ 10, %bb.k ], [ %.095, %bb.o ]
  %.194 = phi i32 [ 101, %bb.l ], [ 112, %bb.m ], [ 101, %bb.k ], [ %.093, %bb.o ]
  %i.ak = icmp ult ptr %.4123, %i.u
  %i.al = icmp ult ptr %.2105, %.0102.idx.ph.sroa.gep
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph, label %.outer.preheader

.lr.ph:                                           ; preds = %.loopexit186, %.lr.ph
  %.3106209 = phi ptr [ %i.ap, %.lr.ph ], [ %.2105, %.loopexit186 ] ; 2 uses
  %.5124208 = phi ptr [ %i.an, %.lr.ph ], [ %.4123, %.loopexit186 ] ; 2 uses
  %i.an = getelementptr i8, ptr %.5124208, i64 1  ; 3 uses
  %i.ao = load i8, ptr %.5124208, align 1, !tbaa !38 ; 2 uses
  %i.ap = getelementptr i8, ptr %.3106209, i64 1  ; 3 uses
  store i8 %i.ao, ptr %.3106209, align 1, !tbaa !38
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.ar = icmp ult ptr %i.an, %i.aq
  %i.as = icmp ult ptr %i.ap, %.0102.idx.ph.sroa.gep
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %.lr.ph, label %.outer.preheader, !llvm.loop !97

.outer.preheader:                                 ; preds = %.lr.ph, %.loopexit186
  %.6125.ph.ph = phi ptr [ %.4123, %.loopexit186 ], [ %i.an, %.lr.ph ]
  %.4107.ph.ph = phi ptr [ %.2105, %.loopexit186 ], [ %i.ap, %.lr.ph ]
  %.4.ph.ph = phi i8 [ %.2101, %.loopexit186 ], [ %i.ao, %.lr.ph ]
  br label %.outer

bb.p:                                             ; preds = %.outer294, %bb.ag
  %.6125 = phi ptr [ %.13, %bb.ag ], [ %.6125.ph295, %.outer294 ] ; 3 uses
  %.4 = phi i8 [ %i.bh, %bb.ag ], [ %.4.ph297, %.outer294 ]
  %.097 = phi i32 [ %.198, %bb.ag ], [ %.097.ph298, %.outer294 ] ; 4 uses
  %i.au = load i8, ptr %.6125, align 1, !tbaa !38 ; 2 uses
  switch i8 %i.au, label %thread-pre-split [
    i8 0, label %bb.ai
    i8 95, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br i1 %i.by, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = zext i8 %.4 to i64
  %i.aw = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !38
  %i.ay = sext i8 %i.ax to i32
  %i.az = icmp ugt i32 %.2.ph, %i.ay
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr i8, ptr %.6125, i64 1     ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !38  ; 2 uses
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !38
  %i.bf = sext i8 %i.be to i32
  %i.bg = icmp ugt i32 %.2.ph, %i.bf
  br i1 %i.bg, label %thread-pre-split, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  br i1 %.not138, label %.critedge153, label %.critedge.thread163

thread-pre-split:                                 ; preds = %bb.s, %bb.p
  %i.bh = phi i8 [ %i.au, %bb.p ], [ %i.bb, %bb.s ] ; 9 uses
  %.8 = phi ptr [ %.6125, %bb.p ], [ %i.ba, %bb.s ] ; 2 uses
  %i.bi = getelementptr i8, ptr %.8, i64 1        ; 5 uses
  %i.bj = sext i8 %i.bh to i32                    ; 3 uses
  br i1 %i.bx, label %bb.u, label %._crit_edge

bb.u:                                             ; preds = %thread-pre-split
  %i.bk = add nsw i32 %i.bj, -65
  %i.bl = icmp ult i32 %i.bk, 26
  %5 = select i1 %i.bl, i32 32, i32 0
  %6 = or i32 %5, %i.bj
  %i.bm = icmp eq i32 %6, %.194
  br i1 %i.bm, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr i8, ptr %.4107.ph296, i64 1 ; 2 uses
  store i8 %i.bh, ptr %.4107.ph296, align 1, !tbaa !38
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !38  ; 4 uses
  switch i8 %i.bo, label %bb.x [
    i8 43, label %bb.w
    i8 45, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.bp = getelementptr i8, ptr %.8, i64 2        ; 2 uses
  %i.bq = getelementptr i8, ptr %.4107.ph296, i64 2
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !38
  %.pr161 = load i8, ptr %i.bp, align 1, !tbaa !38
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.br = phi i8 [ %.pr161, %bb.w ], [ %i.bo, %bb.v ]
  %.9 = phi ptr [ %i.bp, %bb.w ], [ %i.bi, %bb.v ] ; 2 uses
  %.5108 = phi ptr [ %i.bq, %bb.w ], [ %i.bn, %bb.v ] ; 3 uses
  %.5 = phi i8 [ %i.bo, %bb.w ], [ %i.bh, %bb.v ]
  %i.bs = icmp eq i8 %i.br, 48
  br i1 %i.bs, label %bb.y, label %.outer.backedge

bb.y:                                             ; preds = %bb.x
  store i8 48, ptr %.5108, align 1, !tbaa !38
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.10 = phi ptr [ %.9, %bb.y ], [ %i.bt, %bb.z ]
  %i.bt = getelementptr i8, ptr %.10, i64 1       ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !38
  %i.bv = icmp eq i8 %i.bu, 48
  br i1 %i.bv, label %bb.z, label %.loopexit.loopexit, !llvm.loop !98

.loopexit.loopexit:                               ; preds = %bb.z
  %i.bw = getelementptr i8, ptr %.5108, i64 1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.loopexit.loopexit, %bb.x
  %.6125.ph.be = phi ptr [ %.9, %bb.x ], [ %i.bt, %.loopexit.loopexit ]
  %.4107.ph.be = phi ptr [ %.5108, %bb.x ], [ %i.bw, %.loopexit.loopexit ]
  %.4.ph.be = phi i8 [ %.5, %bb.x ], [ 48, %.loopexit.loopexit ]
  br label %.outer, !llvm.loop !99

.outer:                                           ; preds = %.outer.backedge, %.outer.preheader
  %.6125.ph = phi ptr [ %.6125.ph.ph, %.outer.preheader ], [ %.6125.ph.be, %.outer.backedge ]
  %.4107.ph = phi ptr [ %.4107.ph.ph, %.outer.preheader ], [ %.4107.ph.be, %.outer.backedge ]
  %i.bx = phi i1 [ true, %.outer.preheader ], [ false, %.outer.backedge ]
  %.0102.idx.ph.sroa.phi = phi ptr [ %.0102.idx.ph.sroa.gep, %.outer.preheader ], [ %.0102.idx.ph.sroa.gep237, %.outer.backedge ]
  %.4.ph = phi i8 [ %.4.ph.ph, %.outer.preheader ], [ %.4.ph.be, %.outer.backedge ]
  %.097.ph = phi i32 [ 0, %.outer.preheader ], [ %.097, %.outer.backedge ]
  %.2.ph = phi i32 [ %.196, %.outer.preheader ], [ 10, %.outer.backedge ] ; 3 uses
  br label %.outer294

.outer294:                                        ; preds = %bb.ah, %.outer
  %.6125.ph295 = phi ptr [ %.13, %bb.ah ], [ %.6125.ph, %.outer ]
  %.4107.ph296 = phi ptr [ %i.cp, %bb.ah ], [ %.4107.ph, %.outer ] ; 9 uses
  %.4.ph297 = phi i8 [ %i.bh, %bb.ah ], [ %.4.ph, %.outer ]
  %.097.ph298 = phi i32 [ %.198, %bb.ah ], [ %.097.ph, %.outer ]
  %i.by = icmp eq ptr %.4107.ph296, %i.b
  %i.bz = icmp ult ptr %.4107.ph296, %.0102.idx.ph.sroa.phi
  br label %bb.p

._crit_edge:                                      ; preds = %thread-pre-split, %bb.u
  %i.ca = icmp ne i8 %i.bh, 32
  %i.cb = add nsw i32 %i.bj, -14
  %i.cc = icmp ult i32 %i.cb, -5
  %narrow.i158.not = select i1 %i.ca, i1 %i.cc, i1 false
  br i1 %narrow.i158.not, label %bb.ac, label %.preheader184

.preheader184:                                    ; preds = %._crit_edge, %.preheader184
  %.12 = phi ptr [ %i.ci, %.preheader184 ], [ %i.bi, %._crit_edge ] ; 3 uses
  %i.cd = load i8, ptr %.12, align 1, !tbaa !38   ; 3 uses
  %i.ce = sext i8 %i.cd to i32
  %i.cf = icmp ne i8 %i.cd, 32
  %i.cg = add nsw i32 %i.ce, -14
  %i.ch = icmp ult i32 %i.cg, -5
  %narrow.i159.not = select i1 %i.cf, i1 %i.ch, i1 false
  %i.ci = getelementptr i8, ptr %.12, i64 1
  br i1 %narrow.i159.not, label %bb.aa, label %.preheader184, !llvm.loop !100

bb.aa:                                            ; preds = %.preheader184
  %.not145 = icmp eq i8 %i.cd, 0
  br i1 %.not145, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not138, label %.critedge153, label %.critedge.thread163

bb.ac:                                            ; preds = %._crit_edge
  %i.cj = icmp eq i8 %i.bh, 46
  br i1 %i.cj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.not143 = icmp eq i32 %.097, 0
  br i1 %.not143, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ck = zext i8 %i.bh to i64
  %i.cl = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !38
  %i.cn = sext i8 %i.cm to i32
  %i.co = icmp ugt i32 %.2.ph, %i.cn
  br i1 %i.co, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %.not138, label %.critedge153, label %.critedge.thread163

bb.ag:                                            ; preds = %bb.aa, %bb.ae, %bb.ad
  %.13 = phi ptr [ %.12, %bb.aa ], [ %i.bi, %bb.ad ], [ %i.bi, %bb.ae ] ; 2 uses
  %.198 = phi i32 [ %.097, %bb.aa ], [ 1, %bb.ad ], [ %.097, %bb.ae ] ; 2 uses
  br i1 %i.bz, label %bb.ah, label %bb.p, !llvm.loop !99

bb.ah:                                            ; preds = %bb.ag
  %i.cp = getelementptr i8, ptr %.4107.ph296, i64 1
  store i8 %i.bh, ptr %.4107.ph296, align 1, !tbaa !38
  br label %.outer294, !llvm.loop !99

bb.ai:                                            ; preds = %bb.p
  store i8 0, ptr %.4107.ph296, align 1, !tbaa !38
  %i.cq = load i8, ptr %i.b, align 16
  %i.cr = icmp eq i8 %i.cq, 48
  %or.cond155 = select i1 %.not138, i1 %i.cr, i1 false
  br i1 %or.cond155, label %bb.aj, label %bb.ak

.critedge153:                                     ; preds = %bb.t, %bb.ab, %bb.af
  store i8 0, ptr %.4107.ph296, align 1, !tbaa !38
  %.old = load i8, ptr %i.b, align 16, !tbaa !38
  %.old154 = icmp eq i8 %.old, 48
  br i1 %.old154, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %.critedge153
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !38
  switch i8 %i.ct, label %bb.ak [
    i8 120, label %.critedge
    i8 88, label %.critedge
  ]

bb.ak:                                            ; preds = %bb.aj, %.critedge153, %bb.ai
  %i.cu = call double @ruby_strtod(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #21
  %i.cv = call ptr @rb_errno_ptr() #21
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !16
  %i.cx = icmp eq i32 %i.cw, 34
  br i1 %i.cx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.b to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 20
  %.1115 = select i1 %i.dc, ptr @.str.154, ptr @.str.73
  %.1112180 = call i64 @llvm.smin.i64(i64 %i.db, i64 20)
  %.1112 = trunc i64 %.1112180 to i32
  call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.155, i32 noundef %.1112, ptr noundef nonnull %i.b, ptr noundef nonnull %.1115) #21
  %i.dd = call ptr @rb_errno_ptr() #21
  store i32 0, ptr %i.dd, align 4, !tbaa !16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br i1 %.not138, label %.critedge.thread168, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !102 ; 4 uses
  %.not146 = icmp eq ptr %i.de, null
  %i.df = icmp eq ptr %i.b, %i.de
  %or.cond157 = or i1 %.not146, %i.df
  br i1 %or.cond157, label %.critedge.thread163, label %.preheader

.preheader:                                       ; preds = %bb.an
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !38  ; 2 uses
  %.not147212 = icmp eq i8 %i.dg, 0
  br i1 %.not147212, label %.critedge.thread168, label %.lr.ph213

.lr.ph213:                                        ; preds = %.preheader, %bb.ao
  %i.dh = phi i8 [ %i.do, %bb.ao ], [ %i.dg, %.preheader ] ; 2 uses
  %i.di = phi ptr [ %i.dn, %bb.ao ], [ %i.de, %.preheader ]
  %i.dj = sext i8 %i.dh to i32
  %i.dk = icmp ne i8 %i.dh, 32
  %i.dl = add nsw i32 %i.dj, -14
  %i.dm = icmp ult i32 %i.dl, -5
  %narrow.i160.not = select i1 %i.dk, i1 %i.dm, i1 false
  br i1 %narrow.i160.not, label %.critedge.thread163, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph213
  %i.dn = getelementptr i8, ptr %i.di, i64 1      ; 3 uses
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !102
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !38  ; 2 uses
  %.not147 = icmp eq i8 %i.do, 0
  br i1 %.not147, label %.critedge.thread168, label %.lr.ph213, !llvm.loop !101

.critedge.thread163:                              ; preds = %.lr.ph213, %bb.ab, %bb.an, %bb.af, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ar

.critedge.thread168:                              ; preds = %bb.ao, %.preheader, %bb.am
end_hunk_0
