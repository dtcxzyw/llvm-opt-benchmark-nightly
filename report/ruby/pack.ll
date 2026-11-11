Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/pack?download=true
inline.NumInlined: 148
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@pack_unpack_internal:bb.a
  %i.aj = call i64 @rb_ary_new() #12
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %RSTRING_PTR.exit1104, %bb.h
  %i.ak = phi ptr [ %.pre, %bb.h ], [ %i.ae, %RSTRING_PTR.exit1104 ] ; 2 uses
  %i.al = phi i64 [ %i.aj, %bb.h ], [ 4, %RSTRING_PTR.exit1104 ] ; 31 uses
  %i.am = icmp ult ptr %i.ak, %i.ah
  br i1 %i.am, label %.lr.ph1676, label %.loopexit1350

.lr.ph1676:                                       ; preds = %bb.i
  %i.an = ptrtoint ptr %i.w to i64                ; 25 uses
  %i.ao = icmp eq i32 %2, 1                       ; 21 uses
  %i.ap = inttoptr i64 %i.al to ptr               ; 8 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 16     ; 7 uses
  %i.ar = ptrtoint ptr %i.ah to i64
  %.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph1676, %.thread1177
  %i.as = phi ptr [ %i.ak, %.lr.ph1676 ], [ %i.ajf, %.thread1177 ] ; 2 uses
  %.09021674 = phi i64 [ 0, %.lr.ph1676 ], [ %.7909, %.thread1177 ] ; 47 uses
  %.09101673 = phi ptr [ %i.x, %.lr.ph1676 ], [ %.47, %.thread1177 ] ; 88 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %i.at = getelementptr i8, ptr %i.as, i64 1      ; 4 uses
  store ptr %i.at, ptr %i.c, align 8, !tbaa !59
  %i.au = load i8, ptr %i.as, align 1, !tbaa !56  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.e, align 4, !tbaa !10
  %i.av = sext i8 %i.au to i32
  %i.aw = icmp ne i8 %i.au, 32
  %i.ax = add nsw i32 %i.av, -14
  %i.ay = icmp ult i32 %i.ax, -5
  %narrow.i.not = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %narrow.i.not, label %bb.k, label %.thread1177, !llvm.loop !103

bb.k:                                             ; preds = %bb.j
  %i.az = icmp eq i8 %i.au, 35
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = sub i64 %i.ar, %i.ba
  %i.bc = call ptr @memchr(ptr noundef %i.at, i32 noundef 10, i64 noundef %i.bb) #14 ; 2 uses
  %.not.i1105 = icmp eq ptr %i.bc, null
  %i.bd = getelementptr i8, ptr %i.bc, i64 1
  %i.be = select i1 %.not.i1105, ptr %i.ah, ptr %i.bd
  store ptr %i.be, ptr %i.c, align 8, !tbaa !59
  br label %.thread1177, !llvm.loop !103

bb.m:                                             ; preds = %bb.k
  %i.bf = call fastcc ptr @pack_modifiers(ptr noundef %i.at, i8 noundef signext %i.au, ptr noundef %i.e, ptr noundef %i.d) ; 4 uses
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !59
  %.not1026 = icmp ult ptr %i.bf, %i.ah
  br i1 %.not1026, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !56  ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 42
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = ptrtoint ptr %.09101673 to i64
  %i.bj = sub i64 %i.an, %i.bi
  %i.bk = getelementptr i8, ptr %i.bf, i64 1
  store ptr %i.bk, ptr %i.c, align 8, !tbaa !59
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.bl = sext i8 %i.bg to i32
  %i.bm = add nsw i32 %i.bl, -58
  %i.bn = icmp ult i32 %i.bm, -10
  br i1 %i.bn, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = call ptr @rb_errno_ptr() #12
  store i32 0, ptr %i.bo, align 4, !tbaa !10
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.bq = call i64 @ruby_strtoul(ptr noundef %i.bp, ptr noundef nonnull %i.c, i32 noundef 10) #12 ; 2 uses
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = call ptr @rb_errno_ptr() #12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !10
  %.not1028 = icmp eq i32 %i.bt, 0
  br i1 %.not1028, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bu = load i64, ptr @rb_eRangeError, align 8, !tbaa !53
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bu, ptr noundef nonnull @.str.9) #13
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.bv = icmp ne i8 %i.au, 64
  %i.bw = zext i1 %i.bv to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %bb.o, %bb.r, %bb.t
  %.0876 = phi i64 [ %i.bw, %bb.t ], [ %i.bj, %bb.o ], [ %i.bq, %bb.r ], [ 1, %bb.m ] ; 41 uses
  %.not1047 = phi i1 [ true, %bb.t ], [ false, %bb.o ], [ true, %bb.r ], [ true, %bb.m ] ; 8 uses
  switch i8 %i.au, label %bb.jm [
    i8 37, label %bb.v
    i8 65, label %bb.w
    i8 90, label %bb.ab
    i8 97, label %bb.ag
    i8 98, label %._crit_edge1877
    i8 66, label %._crit_edge1876
    i8 104, label %._crit_edge1875
    i8 72, label %._crit_edge1874
    i8 99, label %bb.by
    i8 67, label %bb.bn
    i8 115, label %bb.bo
    i8 83, label %bb.bp
    i8 105, label %bb.bq
    i8 73, label %bb.br
    i8 108, label %bb.bs
    i8 76, label %bb.bt
    i8 113, label %bb.bu
    i8 81, label %bb.bv
    i8 106, label %bb.bu
    i8 74, label %bb.bv
    i8 110, label %bb.bw
    i8 78, label %bb.bx
    i8 118, label %bb.bp
    i8 86, label %bb.br
    i8 102, label %bb.ch
    i8 70, label %bb.ch
    i8 101, label %bb.cp
    i8 69, label %bb.cx
    i8 68, label %bb.df
    i8 100, label %bb.df
    i8 103, label %bb.dn
    i8 71, label %bb.dv
    i8 85, label %bb.ed
    i8 117, label %bb.fb
    i8 109, label %bb.gb
    i8 77, label %bb.hi
    i8 64, label %bb.hv
    i8 88, label %bb.hz
    i8 120, label %bb.id
    i8 80, label %bb.ig
    i8 112, label %bb.iu
    i8 119, label %.preheader1347
  ]

.preheader1347:                                   ; preds = %bb.u
  %i.bx = icmp slt i64 %.0876, 1
  %i.by = icmp uge ptr %.09101673, %i.w
  %.not10321512 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %.not10321512, label %.thread1177, label %.lr.ph

bb.v:                                             ; preds = %bb.u
  %i.bz = load i64, ptr @rb_eArgError, align 8, !tbaa !53
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bz, ptr noundef nonnull @.str.13) #13
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ca = ptrtoint ptr %.09101673 to i64
  %i.cb = sub i64 %i.an, %i.ca
  %spec.select = call i64 @llvm.smin.i64(i64 %.0876, i64 %i.cb) ; 3 uses
  %i.cc = getelementptr i8, ptr %.09101673, i64 %spec.select ; 3 uses
  %.08521663 = getelementptr i8, ptr %i.cc, i64 -1 ; 2 uses
  %.not10681664 = icmp ult ptr %.08521663, %.09101673
  br i1 %.not10681664, label %._crit_edge1669, label %.lr.ph1668

.lr.ph1668:                                       ; preds = %bb.w, %bb.x
  %.08521666 = phi ptr [ %.0852, %bb.x ], [ %.08521663, %bb.w ] ; 2 uses
  %.28781665 = phi i64 [ %i.ce, %bb.x ], [ %spec.select, %bb.w ] ; 2 uses
  %i.cd = load i8, ptr %.08521666, align 1, !tbaa !56
  switch i8 %i.cd, label %._crit_edge1669 [
    i8 32, label %bb.x
    i8 0, label %bb.x
  ]

bb.x:                                             ; preds = %.lr.ph1668, %.lr.ph1668
  %i.ce = add i64 %.28781665, -1                  ; 2 uses
  %.0852 = getelementptr i8, ptr %.08521666, i64 -1 ; 2 uses
  %.not1068 = icmp ult ptr %.0852, %.09101673
  br i1 %.not1068, label %._crit_edge1669, label %.lr.ph1668, !llvm.loop !104

._crit_edge1669:                                  ; preds = %bb.x, %.lr.ph1668, %bb.w
  %.2878.lcssa = phi i64 [ %spec.select, %bb.w ], [ %.28781665, %.lr.ph1668 ], [ %i.ce, %bb.x ]
  %i.cf = call i64 @rb_str_new(ptr noundef %.09101673, i64 noundef %.2878.lcssa) #12 ; 3 uses
  br i1 %i.ao, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge1669
  %i.cg = call i64 @rb_yield(i64 noundef %i.cf) #12 ; 0 uses
  br label %.thread1177

bb.z:                                             ; preds = %._crit_edge1669
  br i1 %i.ai, label %bb.aa, label %.thread1319

bb.aa:                                            ; preds = %bb.z
  %i.ch = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.cf) #12 ; 0 uses
  br label %.thread1177

bb.ab:                                            ; preds = %bb.u
  %i.ci = ptrtoint ptr %.09101673 to i64          ; 2 uses
  %i.cj = sub i64 %i.an, %i.ci
  %spec.select1072 = call i64 @llvm.smin.i64(i64 %.0876, i64 %i.cj)
  %i.ck = getelementptr i8, ptr %.09101673, i64 %spec.select1072 ; 4 uses
  %i.cl = icmp ult ptr %.09101673, %i.ck
  br i1 %i.cl, label %.lr.ph1657, label %.critedge

.lr.ph1657:                                       ; preds = %bb.ab, %bb.ac
  %.08501655 = phi ptr [ %i.cn, %bb.ac ], [ %.09101673, %bb.ab ] ; 3 uses
  %i.cm = load i8, ptr %.08501655, align 1, !tbaa !56
  %.not1066 = icmp eq i8 %i.cm, 0
  br i1 %.not1066, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph1657
  %i.cn = getelementptr i8, ptr %.08501655, i64 1 ; 2 uses
  %exitcond1862.not = icmp eq ptr %i.cn, %i.ck
  br i1 %exitcond1862.not, label %.critedge, label %.lr.ph1657, !llvm.loop !105

.critedge:                                        ; preds = %bb.ac, %.lr.ph1657, %bb.ab
  %.0850.lcssa = phi ptr [ %.09101673, %bb.ab ], [ %.08501655, %.lr.ph1657 ], [ %i.ck, %bb.ac ] ; 3 uses
  %.pre-phi = ptrtoint ptr %.0850.lcssa to i64
  %i.co = sub i64 %.pre-phi, %i.ci
  %i.cp = call i64 @rb_str_new(ptr noundef %.09101673, i64 noundef %i.co) #12 ; 3 uses
  br i1 %i.ao, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.critedge
  %i.cq = call i64 @rb_yield(i64 noundef %i.cp) #12 ; 0 uses
  br label %.thread1189

bb.ae:                                            ; preds = %.critedge
  br i1 %i.ai, label %bb.af, label %.thread1319

bb.af:                                            ; preds = %bb.ae
  %i.cr = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.cp) #12 ; 0 uses
  br label %.thread1189

.thread1189:                                      ; preds = %bb.ad, %bb.af
  %i.cs = icmp ult ptr %.0850.lcssa, %i.w
  %spec.select10731184.idx = zext i1 %i.cs to i64
  %spec.select10731184 = getelementptr i8, ptr %.0850.lcssa, i64 %spec.select10731184.idx
  %i.ct = select i1 %.not1047, ptr %i.ck, ptr %spec.select10731184
  br label %.thread1177

bb.ag:                                            ; preds = %bb.u
  %i.cu = ptrtoint ptr %.09101673 to i64
  %i.cv = sub i64 %i.an, %i.cu
  %spec.select1074 = call i64 @llvm.smin.i64(i64 %.0876, i64 %i.cv) ; 2 uses
  %i.cw = call i64 @rb_str_new(ptr noundef %.09101673, i64 noundef %spec.select1074) #12 ; 3 uses
  br i1 %i.ao, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cx = call i64 @rb_yield(i64 noundef %i.cw) #12 ; 0 uses
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.ai, label %bb.aj, label %.thread1319

bb.aj:                                            ; preds = %bb.ai
  %i.cy = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.cw) #12 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %i.cz = getelementptr i8, ptr %.09101673, i64 %spec.select1074
  br label %.thread1177

._crit_edge1877:                                  ; preds = %bb.u
  %i.da = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.db = getelementptr i8, ptr %i.da, i64 -1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !56
  %i.dd = icmp eq i8 %i.dc, 42
  %.pre1878 = ptrtoint ptr %.09101673 to i64
  %.pre1880 = sub i64 %i.an, %.pre1878
  %.pre1882 = shl i64 %.pre1880, 3                ; 2 uses
  %spec.select2147 = call i64 @llvm.smin.i64(i64 %.0876, i64 %.pre1882)
  %.5881 = select i1 %i.dd, i64 %.pre1882, i64 %spec.select2147 ; 6 uses
  %i.de = call i64 @rb_usascii_str_new(ptr noundef null, i64 noundef %.5881) #12, !callees !106 ; 4 uses
  %i.df = inttoptr i64 %i.de to ptr               ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !55
  %i.dh = and i64 %i.dg, 8192
  %.not.i1106 = icmp eq i64 %i.dh, 0
  %i.di = getelementptr i8, ptr %i.df, i64 24     ; 2 uses
  br i1 %.not.i1106, label %RSTRING_PTR.exit1107, label %bb.al

bb.al:                                            ; preds = %._crit_edge1877
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !56
  br label %RSTRING_PTR.exit1107

RSTRING_PTR.exit1107:                             ; preds = %._crit_edge1877, %bb.al
  %i.dk = phi ptr [ %i.dj, %bb.al ], [ %i.di, %._crit_edge1877 ] ; 2 uses
  %i.dl = icmp sgt i64 %.5881, 0
  br i1 %i.dl, label %.lr.ph1652.preheader, label %._crit_edge1653

.lr.ph1652.preheader:                             ; preds = %RSTRING_PTR.exit1107
  %xtraiter2539 = and i64 %.5881, 1
  %i.dm = icmp eq i64 %.5881, 1
  br i1 %i.dm, label %.lr.ph1652.epil.preheader, label %.lr.ph1652.preheader.new

.lr.ph1652.preheader.new:                         ; preds = %.lr.ph1652.preheader
  %unroll_iter2543 = and i64 %.5881, 9223372036854775806
  br label %.lr.ph1652

.lr.ph1652:                                       ; preds = %.lr.ph1652.1, %.lr.ph1652.preheader.new
  %.08461651 = phi i64 [ 0, %.lr.ph1652.preheader.new ], [ %i.eb, %.lr.ph1652.1 ] ; 2 uses
  %.08471650 = phi i32 [ 0, %.lr.ph1652.preheader.new ], [ %i.dw, %.lr.ph1652.1 ]
  %.08491649 = phi ptr [ %i.dk, %.lr.ph1652.preheader.new ], [ %i.ea, %.lr.ph1652.1 ] ; 3 uses
  %.39131648 = phi ptr [ %.09101673, %.lr.ph1652.preheader.new ], [ %.4914, %.lr.ph1652.1 ] ; 3 uses
  %niter2544 = phi i64 [ 0, %.lr.ph1652.preheader.new ], [ %niter2544.next.1, %.lr.ph1652.1 ]
  %i.dn = and i64 %.08461651, 6
  %.not1064 = icmp eq i64 %i.dn, 0
  br i1 %.not1064, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph1652
  %i.do = lshr i32 %.08471650, 1
  br label %.lr.ph1652.1

bb.an:                                            ; preds = %.lr.ph1652
  %i.dp = getelementptr i8, ptr %.39131648, i64 1
  %i.dq = load i8, ptr %.39131648, align 1, !tbaa !56
  %i.dr = zext i8 %i.dq to i32
  br label %.lr.ph1652.1

.lr.ph1652.1:                                     ; preds = %bb.an, %bb.am
  %.4914 = phi ptr [ %.39131648, %bb.am ], [ %i.dp, %bb.an ] ; 3 uses
  %.1848 = phi i32 [ %i.do, %bb.am ], [ %i.dr, %bb.an ] ; 2 uses
  %i.ds = trunc nuw i32 %.1848 to i8
  %i.dt = and i8 %i.ds, 1
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = getelementptr i8, ptr %.08491649, i64 1
  store i8 %i.du, ptr %.08491649, align 1, !tbaa !56
  %i.dw = lshr i32 %.1848, 1                      ; 3 uses
  %i.dx = trunc nuw i32 %i.dw to i8
  %i.dy = and i8 %i.dx, 1
  %i.dz = or disjoint i8 %i.dy, 48
  %i.ea = getelementptr i8, ptr %.08491649, i64 2 ; 2 uses
  store i8 %i.dz, ptr %i.dv, align 1, !tbaa !56
  %i.eb = add nuw nsw i64 %.08461651, 2           ; 2 uses
  %niter2544.next.1 = add nuw nsw i64 %niter2544, 2 ; 2 uses
  %niter2544.ncmp.1 = icmp eq i64 %niter2544.next.1, %unroll_iter2543
  br i1 %niter2544.ncmp.1, label %._crit_edge1653.loopexit.unr-lcssa, label %.lr.ph1652, !llvm.loop !107

._crit_edge1653.loopexit.unr-lcssa:               ; preds = %.lr.ph1652.1
  %lcmp.mod2540.not = icmp eq i64 %xtraiter2539, 0
  br i1 %lcmp.mod2540.not, label %._crit_edge1653, label %.lr.ph1652.epil.preheader

.lr.ph1652.epil.preheader:                        ; preds = %._crit_edge1653.loopexit.unr-lcssa, %.lr.ph1652.preheader
  %.08461651.epil.init = phi i64 [ 0, %.lr.ph1652.preheader ], [ %i.eb, %._crit_edge1653.loopexit.unr-lcssa ]
  %.08471650.epil.init = phi i32 [ 0, %.lr.ph1652.preheader ], [ %i.dw, %._crit_edge1653.loopexit.unr-lcssa ]
  %.08491649.epil.init = phi ptr [ %i.dk, %.lr.ph1652.preheader ], [ %i.ea, %._crit_edge1653.loopexit.unr-lcssa ]
  %.39131648.epil.init = phi ptr [ %.09101673, %.lr.ph1652.preheader ], [ %.4914, %._crit_edge1653.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod2542 = trunc i64 %.5881 to i1
  call void @llvm.assume(i1 %lcmp.mod2542)
  %i.ec = and i64 %.08461651.epil.init, 7
  %.not1064.epil = icmp eq i64 %i.ec, 0
  br i1 %.not1064.epil, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph1652.epil.preheader
  %i.ed = lshr i32 %.08471650.epil.init, 1
  %i.ee = trunc nuw i32 %i.ed to i8
  br label %._crit_edge1653.loopexit.epilog-lcssa

bb.ap:                                            ; preds = %.lr.ph1652.epil.preheader
  %i.ef = getelementptr i8, ptr %.39131648.epil.init, i64 1
  %i.eg = load i8, ptr %.39131648.epil.init, align 1, !tbaa !56
  br label %._crit_edge1653.loopexit.epilog-lcssa

._crit_edge1653.loopexit.epilog-lcssa:            ; preds = %bb.ap, %bb.ao
  %.4914.epil = phi ptr [ %.39131648.epil.init, %bb.ao ], [ %i.ef, %bb.ap ]
  %.1848.epil = phi i8 [ %i.ee, %bb.ao ], [ %i.eg, %bb.ap ]
  %i.eh = and i8 %.1848.epil, 1
  %i.ei = or disjoint i8 %i.eh, 48
  store i8 %i.ei, ptr %.08491649.epil.init, align 1, !tbaa !56
  br label %._crit_edge1653

._crit_edge1653:                                  ; preds = %._crit_edge1653.loopexit.epilog-lcssa, %._crit_edge1653.loopexit.unr-lcssa, %RSTRING_PTR.exit1107
  %.3913.lcssa = phi ptr [ %.09101673, %RSTRING_PTR.exit1107 ], [ %.4914, %._crit_edge1653.loopexit.unr-lcssa ], [ %.4914.epil, %._crit_edge1653.loopexit.epilog-lcssa ] ; 2 uses
  br i1 %i.ao, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge1653
  %i.ej = call i64 @rb_yield(i64 noundef %i.de) #12 ; 0 uses
  br label %.thread1177

bb.ar:                                            ; preds = %._crit_edge1653
  br i1 %i.ai, label %bb.as, label %.thread1319

bb.as:                                            ; preds = %bb.ar
  %i.ek = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.de) #12 ; 0 uses
  br label %.thread1177

._crit_edge1876:                                  ; preds = %bb.u
  %i.el = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.em = getelementptr i8, ptr %i.el, i64 -1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !56
  %i.eo = icmp eq i8 %i.en, 42
  %.pre1884 = ptrtoint ptr %.09101673 to i64
  %.pre1886 = sub i64 %i.an, %.pre1884
  %.pre1888 = shl i64 %.pre1886, 3                ; 2 uses
  %spec.select2148 = call i64 @llvm.smin.i64(i64 %.0876, i64 %.pre1888)
  %.6882 = select i1 %i.eo, i64 %.pre1888, i64 %spec.select2148 ; 6 uses
  %i.ep = call i64 @rb_usascii_str_new(ptr noundef null, i64 noundef %.6882) #12, !callees !106 ; 4 uses
  %i.eq = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !55
  %i.es = and i64 %i.er, 8192
  %.not.i1108 = icmp eq i64 %i.es, 0
  %i.et = getelementptr i8, ptr %i.eq, i64 24     ; 2 uses
  br i1 %.not.i1108, label %RSTRING_PTR.exit1109, label %bb.at

bb.at:                                            ; preds = %._crit_edge1876
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !56
  br label %RSTRING_PTR.exit1109

RSTRING_PTR.exit1109:                             ; preds = %._crit_edge1876, %bb.at
  %i.ev = phi ptr [ %i.eu, %bb.at ], [ %i.et, %._crit_edge1876 ] ; 2 uses
  %i.ew = icmp sgt i64 %.6882, 0
  br i1 %i.ew, label %.lr.ph1645.preheader, label %._crit_edge1646

.lr.ph1645.preheader:                             ; preds = %RSTRING_PTR.exit1109
  %xtraiter2533 = and i64 %.6882, 1
  %i.ex = icmp eq i64 %.6882, 1
  br i1 %i.ex, label %.lr.ph1645.epil.preheader, label %.lr.ph1645.preheader.new

.lr.ph1645.preheader.new:                         ; preds = %.lr.ph1645.preheader
end_hunk_0
