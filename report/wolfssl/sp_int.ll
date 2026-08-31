Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_sp_prime_random_trials:bb.a
  %i.bz = icmp eq i16 %i.bx, 0
  br i1 %i.bz, label %sp_cmp_d.exit.us.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = load i64, ptr %i.at, align 8, !tbaa !11
  %i.cb = icmp ugt i64 %i.ca, 2
  br i1 %i.cb, label %bb.m, label %sp_cmp_d.exit.us.us

bb.m:                                             ; preds = %bb.l, %.lr.ph204
  %i.cc = load i16, ptr %i.x, align 16, !tbaa !16 ; 2 uses
  %i.cd = icmp ugt i16 %i.bx, %i.cc
  br i1 %i.cd, label %sp_cmp_d.exit.us.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = icmp ult i16 %i.bx, %i.cc
  br i1 %i.ce, label %_sp_cmp.exit, label %.preheader.i.i.us.us

.preheader.i.i.us.us:                             ; preds = %bb.n
  %.not305 = icmp eq i16 %i.bx, 0
  br i1 %.not305, label %sp_cmp_d.exit.us.us, label %.lr.ph303

.lr.ph303:                                        ; preds = %.preheader.i.i.us.us
  %i.cf = zext i16 %i.bx to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.us.us302 = add nsw i64 %indvars.iv.i.i.us.us301, -1
  %i.cg = icmp sgt i64 %indvars.iv.i.i.us.us301, 1
  br i1 %i.cg, label %bb.p, label %sp_cmp_d.exit.us.us, !llvm.loop !44

bb.p:                                             ; preds = %.lr.ph303, %bb.o
  %indvars.iv.i.i.us.us301 = phi i64 [ %i.cf, %.lr.ph303 ], [ %indvars.iv.next.i.i.us.us302, %bb.o ] ; 4 uses
  %i.ch = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.us.us301
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !11 ; 2 uses
  %i.cj = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv.i.i.us.us301
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.cl = icmp ugt i64 %i.ci, %i.ck
  br i1 %i.cl, label %sp_cmp_d.exit.us.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = icmp ult i64 %i.ci, %i.ck
  br i1 %i.cm, label %_sp_cmp.exit, label %bb.o, !llvm.loop !44

sp_cmp_d.exit.us.us:                              ; preds = %bb.p, %bb.o, %.preheader.i.i.us.us, %bb.m, %bb.l, %bb.k
  %i.cn = call i32 @wc_RNG_GenerateBlock(ptr noundef %3, ptr noundef nonnull %i.at, i32 noundef %i.s) #20 ; 2 uses
  %.not.us.us = icmp eq i32 %i.cn, 0
  br i1 %.not.us.us, label %.lr.ph204, label %.preheader16.i.i

.lr.ph298:                                        ; preds = %.lr.ph.split.preheader, %sp_cmp_d.exit
  %i.co = load i16, ptr %0, align 8, !tbaa !16    ; 3 uses
  store i16 %i.co, ptr %i.aa, align 16, !tbaa !16
  %i.cp = zext i16 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.aa, i64 %i.cp ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !11
  %i.cs = and i64 %i.cr, %i.bv
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !11
  %.not88 = icmp eq i16 %i.co, 0
  br i1 %.not88, label %sp_cmp_d.exit, label %.preheader

bb.r:                                             ; preds = %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv293, -1
  %i.ct = icmp sgt i64 %indvars.iv293, 1
  br i1 %i.ct, label %.preheader, label %thread-pre-split.thread243, !llvm.loop !190

thread-pre-split.thread243:                       ; preds = %bb.r
  store i16 0, ptr %i.aa, align 16, !tbaa !16
  br label %sp_cmp_d.exit

.preheader:                                       ; preds = %.lr.ph298, %bb.r
  %indvars.iv293 = phi i64 [ %indvars.iv.next, %bb.r ], [ %i.cp, %.lr.ph298 ] ; 4 uses
  %i.cu = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv293
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !11
  %.not89 = icmp eq i64 %i.cv, 0
  br i1 %.not89, label %bb.r, label %thread-pre-split, !llvm.loop !190

thread-pre-split:                                 ; preds = %.preheader
  %i.cw = trunc i64 %indvars.iv293 to i16         ; 4 uses
  store i16 %i.cw, ptr %i.aa, align 16, !tbaa !16
  %i.cx = icmp ugt i16 %i.cw, 1
  br i1 %i.cx, label %bb.u, label %bb.s

bb.s:                                             ; preds = %thread-pre-split
  %i.cy = icmp eq i16 %i.cw, 0
  br i1 %i.cy, label %sp_cmp_d.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = load i64, ptr %i.at, align 8, !tbaa !11
  %i.da = icmp ugt i64 %i.cz, 2
  br i1 %i.da, label %bb.u, label %sp_cmp_d.exit

bb.u:                                             ; preds = %bb.t, %thread-pre-split
  %i.db = phi i16 [ 1, %bb.t ], [ %i.cw, %thread-pre-split ] ; 3 uses
  %i.dc = load i16, ptr %i.x, align 16, !tbaa !16 ; 2 uses
  %i.dd = icmp ugt i16 %i.db, %i.dc
  br i1 %i.dd, label %sp_cmp_d.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = icmp ult i16 %i.db, %i.dc
  br i1 %i.de, label %_sp_cmp.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.v
  %i.df = zext i16 %i.db to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.y
  %indvars.iv.next.i.i296 = add nsw i64 %indvars.iv.i.i295, -1
  %i.dg = icmp sgt i64 %indvars.iv.i.i295, 1
  br i1 %i.dg, label %bb.x, label %sp_cmp_d.exit, !llvm.loop !44

bb.x:                                             ; preds = %.preheader.i.i, %bb.w
  %indvars.iv.i.i295 = phi i64 [ %i.df, %.preheader.i.i ], [ %indvars.iv.next.i.i296, %bb.w ] ; 4 uses
  %i.dh = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i295
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !11 ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv.i.i295
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !11 ; 2 uses
  %i.dl = icmp ugt i64 %i.di, %i.dk
  br i1 %i.dl, label %sp_cmp_d.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = icmp ult i64 %i.di, %i.dk
  br i1 %i.dm, label %_sp_cmp.exit, label %bb.w, !llvm.loop !44

sp_cmp_d.exit:                                    ; preds = %bb.x, %bb.w, %.lr.ph298, %thread-pre-split.thread243, %bb.t, %bb.u, %bb.s
  %i.dn = call i32 @wc_RNG_GenerateBlock(ptr noundef %3, ptr noundef nonnull %i.at, i32 noundef %i.s) #20 ; 2 uses
  %.not = icmp eq i32 %i.dn, 0
  br i1 %.not, label %.lr.ph298, label %.preheader16.i.i

_sp_cmp.exit:                                     ; preds = %bb.v, %bb.n, %bb.y, %bb.q
  %i.do = call fastcc i32 @sp_prime_miller_rabin(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %2, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ap) ; 2 uses
  %.not92 = icmp eq i32 %i.do, 0
  br i1 %.not92, label %bb.z, label %.preheader16.i.i

bb.z:                                             ; preds = %_sp_cmp.exit
  %i.dp = load i32, ptr %2, align 4, !tbaa !184
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = add nsw i32 %.079.ph207, -1
  %i.ds = icmp sgt i32 %.079.ph207, 1
  %or.cond272 = select i1 %i.dq, i1 %i.ds, i1 false
  br i1 %or.cond272, label %.lr.ph, label %.preheader16.i.i, !llvm.loop !191

.preheader16.i.i:                                 ; preds = %.lr.ph.split.us.split.us, %_sp_cmp.exit, %bb.z, %.lr.ph.split.preheader, %sp_cmp_d.exit, %sp_cmp_d.exit.us.us, %_sp_sub_d.exit
  %.3 = phi i32 [ 0, %_sp_sub_d.exit ], [ %i.dn, %sp_cmp_d.exit ], [ %i.cn, %sp_cmp_d.exit.us.us ], [ 0, %bb.z ], [ %i.do, %_sp_cmp.exit ], [ %i.bw, %.lr.ph.split.preheader ], [ %i.bw, %.lr.ph.split.us.split.us ]
  fence seq_cst
  store volatile i16 0, ptr %i.ae, align 8, !tbaa !8
  store volatile i64 0, ptr %i.as, align 8, !tbaa !11
  %i.dt = load i16, ptr %i.ao, align 2, !tbaa !14 ; 2 uses
  fence seq_cst
  %.not210 = icmp eq i16 %i.dt, 0
  br i1 %.not210, label %.preheader16.i.i127, label %.preheader16.i.i127.sink.split

.preheader16.i.i127.sink.split:                   ; preds = %.preheader16.i.i
  %i.du = zext i16 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.au, i8 0, i64 %i.dv, i1 false), !tbaa !17
  br label %.preheader16.i.i127

.preheader16.i.i127:                              ; preds = %.preheader16.i.i, %.preheader16.i.i127.sink.split
  fence seq_cst
  store volatile i16 0, ptr %i.ap, align 16, !tbaa !8
  store volatile i64 0, ptr %i.au, align 8, !tbaa !11
  %i.dw = load i16, ptr %i.al, align 2, !tbaa !14 ; 2 uses
  fence seq_cst
  %.not182 = icmp eq i16 %i.dw, 0
  br i1 %.not182, label %._crit_edge.i.i135, label %._crit_edge.i.i135.sink.split

._crit_edge.i.i135.sink.split:                    ; preds = %.preheader16.i.i127
  %i.dx = zext i16 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.dy, i1 false), !tbaa !17
  br label %._crit_edge.i.i135

._crit_edge.i.i135:                               ; preds = %.preheader16.i.i127, %._crit_edge.i.i135.sink.split
  fence seq_cst
  store volatile i16 0, ptr %i.aa, align 16, !tbaa !8
  store volatile i64 0, ptr %i.at, align 8, !tbaa !11
  fence seq_cst
  store volatile i16 0, ptr %i.x, align 16, !tbaa !8
  store volatile i64 0, ptr %i.ar, align 8, !tbaa !11
  br label %.critedge94

.critedge94:                                      ; preds = %sp_count_bits.exit, %bb.f, %._crit_edge.i.i135
  %.4 = phi i32 [ %.3, %._crit_edge.i.i135 ], [ -98, %bb.f ], [ -98, %sp_count_bits.exit ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @CheckRunTimeSettings() local_unnamed_addr #2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @CheckRunTimeFastMath() local_unnamed_addr #2 {
bb.a:
  ret i32 64
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_sp_div_same_size(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #10 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !16     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = zext i16 %i.a to i32                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.pre.pre = load i16, ptr %0, align 8, !tbaa !16 ; 6 uses
  %i.e = zext i16 %.pre.pre to i32                ; 2 uses
  %invariant.op = sub nsw i32 %i.e, %i.c
  %.041 = add i16 %i.a, -1                        ; 3 uses
  %i.f = zext i16 %.041 to i32                    ; 2 uses
  %.not42 = icmp eq i16 %.041, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.0 = add i16 %.043, -1                         ; 3 uses
  %i.g = zext i16 %.0 to i32                      ; 2 uses
  %.not = icmp eq i16 %.0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !192

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.f, %bb.a ], [ %i.g, %bb.b ]
  %.pre31 = load i64, ptr %i.d, align 8, !tbaa !11
  %.pre = zext i16 %.pre.pre to i32
  br label %split

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %.043 = phi i16 [ %.0, %bb.b ], [ %.041, %bb.a ] ; 2 uses
  %.reass = add nsw i32 %invariant.op, %i.h
  %i.i = sext i32 %.reass to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = zext i16 %.043 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %.not26 = icmp eq i64 %i.k, %i.n
  br i1 %.not26, label %bb.b, label %split, !llvm.loop !192

split:                                            ; preds = %.lr.ph, %._crit_edge
  %i.o = phi i32 [ %.lcssa, %._crit_edge ], [ %i.h, %.lr.ph ]
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.e, %.lr.ph ]
  %i.p = phi i64 [ %.pre31, %._crit_edge ], [ %i.n, %.lr.ph ]
  %i.q = sub nsw i32 %.pre-phi, %i.c              ; 2 uses
  %i.r = add nsw i32 %i.q, %i.o
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11
  %.not27 = icmp ult i64 %i.u, %i.p
  br i1 %.not27, label %_sp_sub_off.exit, label %bb.c

bb.c:                                             ; preds = %split
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !11
  %i.aa = sub i16 %.pre.pre, %i.a                 ; 3 uses
  %i.ab = icmp ult i16 %i.aa, %.pre.pre
  br i1 %i.ab, label %.lr.ph64.i, label %.critedge2.i

.lr.ph64.i:                                       ; preds = %bb.c
  %i.ac = zext i16 %i.aa to i64
  %wide.trip.count87.i = zext i16 %i.a to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph64.i
  %indvars.iv82.i = phi i64 [ %i.ac, %.lr.ph64.i ], [ %indvars.iv.next83.i, %bb.e ] ; 3 uses
  %indvars.iv80.i = phi i64 [ 0, %.lr.ph64.i ], [ %indvars.iv.next81.i, %bb.e ] ; 3 uses
  %.04963.i = phi i128 [ 0, %.lr.ph64.i ], [ %i.am, %bb.e ] ; 2 uses
  %exitcond88.not.i = icmp eq i64 %indvars.iv80.i, %wide.trip.count87.i
  br i1 %exitcond88.not.i, label %.critedge2.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv82.i ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !11
  %i.af = zext i64 %i.ae to i128
  %i.ag = add nsw i128 %.04963.i, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv80.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.aj = zext i64 %i.ai to i128
  %i.ak = sub nsw i128 %i.ag, %i.aj               ; 2 uses
  %i.al = trunc i128 %i.ak to i64
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !11
  %i.am = ashr i128 %i.ak, 64                     ; 2 uses
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next81.i to i16
  %exitcond = icmp eq i16 %i.a, %lftr.wideiv
  br i1 %exitcond, label %.critedge2.loopexit.i, label %bb.d, !llvm.loop !82

.critedge2.loopexit.i:                            ; preds = %bb.e, %bb.d
  %.2.lcssa.ph.in.i = phi i64 [ %indvars.iv82.i, %bb.d ], [ %indvars.iv.next83.i, %bb.e ]
  %.049.lcssa.ph.i = phi i128 [ %.04963.i, %bb.d ], [ %i.am, %bb.e ]
  %.2.lcssa.ph.i = trunc i64 %.2.lcssa.ph.in.i to i16
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.loopexit.i, %bb.c
  %.2.lcssa.i = phi i16 [ %i.aa, %bb.c ], [ %.2.lcssa.ph.i, %.critedge2.loopexit.i ] ; 2 uses
  %.049.lcssa.i = phi i128 [ 0, %bb.c ], [ %.049.lcssa.ph.i, %.critedge2.loopexit.i ] ; 2 uses
  %i.an = icmp ult i16 %.2.lcssa.i, %.pre.pre
  br i1 %i.an, label %.lr.ph74.i, label %_sp_sub_off.exit

.lr.ph74.i:                                       ; preds = %.critedge2.i
  %i.ao = zext i16 %.2.lcssa.i to i64             ; 5 uses
  %wide.trip.count93.i = zext i16 %.pre.pre to i64 ; 3 uses
  %i.ap = sub nsw i64 %wide.trip.count93.i, %i.ao
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph74.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ao ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.as = zext i64 %i.ar to i128
  %i.at = add nsw i128 %.049.lcssa.i, %i.as       ; 2 uses
  %i.au = trunc i128 %i.at to i64
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !11
  %i.av = ashr i128 %i.at, 64
  %indvars.iv.next91.i.prol = add nuw nsw i64 %i.ao, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph74.i
  %indvars.iv90.i.unr = phi i64 [ %i.ao, %.lr.ph74.i ], [ %indvars.iv.next91.i.prol, %.prol.loopexit.unr-lcssa ]
  %.173.i.unr = phi i128 [ %.049.lcssa.i, %.lr.ph74.i ], [ %i.av, %.prol.loopexit.unr-lcssa ]
  %i.aw = add nsw i64 %wide.trip.count93.i, -1
  %i.ax = icmp eq i64 %i.aw, %i.ao
  br i1 %i.ax, label %_sp_sub_off.exit, label %.lr.ph74.i.new

.lr.ph74.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph74.i.new
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %.lr.ph74.i.new ], [ %indvars.iv90.i.unr, %.prol.loopexit ] ; 3 uses
  %.173.i = phi i128 [ %i.bk, %.lr.ph74.i.new ], [ %.173.i.unr, %.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv90.i ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !11
  %i.ba = zext i64 %i.az to i128
  %i.bb = add nsw i128 %.173.i, %i.ba             ; 2 uses
  %i.bc = trunc i128 %i.bb to i64
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !11
  %i.bd = ashr i128 %i.bb, 64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv90.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !11
  %i.bh = zext i64 %i.bg to i128
  %i.bi = add nsw i128 %i.bd, %i.bh               ; 2 uses
  %i.bj = trunc i128 %i.bi to i64
  store i64 %i.bj, ptr %i.bf, align 8, !tbaa !11
  %i.bk = ashr i128 %i.bi, 64
  %indvars.iv.next91.i.1 = add nuw nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %exitcond94.not.i.1 = icmp eq i64 %indvars.iv.next91.i.1, %wide.trip.count93.i
  br i1 %exitcond94.not.i.1, label %_sp_sub_off.exit, label %.lr.ph74.i.new, !llvm.loop !83

_sp_sub_off.exit:                                 ; preds = %.prol.loopexit, %.lr.ph74.i.new, %.critedge2.i, %split
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc range(i32 -98, 1) i32 @_sp_mulmod_tmp(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(address) %3) unnamed_addr #13 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.b = zext i16 %i.a to i64
  %i.c = icmp eq i16 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store volatile i16 0, ptr %3, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store volatile i64 0, ptr %i.f, align 8, !tbaa !11
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.g = zext i16 %i.d to i64
  %i.h = add nuw nsw i64 %i.b, 4294967295
  %i.i = add nuw nsw i64 %i.h, %i.g
  %i.j = and i64 %i.i, 4294967295
  %i.k = add nuw nsw i64 %i.j, 2
  %i.l = tail call ptr @llvm.stacksave.p0()
  %i.m = alloca i64, i64 %i.k, align 16           ; 6 uses
  %i.n = load i16, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.o = zext i16 %i.n to i32
  %i.p = load i16, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.q = zext i16 %i.p to i32
  %i.r = add nuw nsw i32 %i.q, %i.o
  %i.s = icmp samesign ult i32 %i.r, 130
  br i1 %i.s, label %bb.e, label %sp_mod.exit

bb.e:                                             ; preds = %bb.d
  %i.t = add i16 %i.p, %i.n                       ; 2 uses
  %i.u = add i16 %i.t, -1
  %i.v = icmp ult i16 %i.u, 129
  br i1 %i.v, label %sp_init_size.exit, label %sp_mod.exit

sp_init_size.exit:                                ; preds = %bb.e
  store volatile i16 0, ptr %i.m, align 16, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store volatile i64 0, ptr %i.w, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store volatile i16 %i.t, ptr %i.x, align 2, !tbaa !13
  %i.y = call i32 @sp_mul(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.m) ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %sp_mod.exit

bb.f:                                             ; preds = %sp_init_size.exit
  %i.aa = icmp eq ptr %2, null
  %i.ab = icmp eq ptr %3, null
  %or.cond3.i = or i1 %i.aa, %i.ab
  br i1 %or.cond3.i, label %sp_mod.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i16, ptr %i.m, align 16, !tbaa !16
  %i.ad = icmp ult i16 %i.ac, 129
  br i1 %i.ad, label %bb.h, label %sp_mod.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = call i32 @sp_div(ptr noundef nonnull readonly %i.m, ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %3)
  br label %sp_mod.exit

sp_mod.exit:                                      ; preds = %bb.d, %bb.e, %bb.h, %bb.g, %bb.f, %sp_init_size.exit
  %.3 = phi i32 [ -98, %bb.f ], [ %i.y, %sp_init_size.exit ], [ %i.ae, %bb.h ], [ -98, %bb.g ], [ -98, %bb.e ], [ -98, %bb.d ]
  call void @llvm.stackrestore.p0(ptr %i.l)
  br label %bb.i

bb.i:                                             ; preds = %sp_mod.exit, %bb.c
  %.4 = phi i32 [ 0, %bb.c ], [ %.3, %sp_mod.exit ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -98, 1) i32 @_sp_invmod_div(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address) %2, ptr nofree noundef captures(address) %3, ptr nofree noundef %4, ptr nofree noundef nonnull %5, ptr nofree noundef nonnull captures(address) %6) unnamed_addr #11 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !16     ; 4 uses
  %i.b = zext i16 %i.a to i64
  %i.c = add nuw nsw i64 %i.b, 2
  %i.d = alloca i64, i64 %i.c, align 16           ; 12 uses
  %i.e = icmp ult i16 %i.a, 129
  br i1 %i.e, label %sp_init_size.exit.thread, label %sp_copy.exit

sp_init_size.exit.thread:                         ; preds = %bb.a
  %i.f = add nuw nsw i16 %i.a, 1
  store volatile i16 0, ptr %i.d, align 16, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store volatile i64 0, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store volatile i16 %i.f, ptr %i.h, align 2, !tbaa !13
  %.not = icmp eq ptr %0, %3
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %sp_init_size.exit.thread
  %i.i = load i16, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.j = icmp eq i16 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !11
  br label %_sp_copy.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i16 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = shl nuw nsw i64 %i.l, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull readonly align 8 %i.n, i64 %i.o, i1 false)
  %.pre.i = load i16, ptr %0, align 8, !tbaa !16
  br label %_sp_copy.exit

_sp_copy.exit:                                    ; preds = %bb.c, %bb.d
  %i.p = phi i16 [ %.pre.i, %bb.d ], [ 0, %bb.c ]
  store i16 %i.p, ptr %3, align 8, !tbaa !16
  %.pre = load i16, ptr %1, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_sp_copy.exit, %sp_init_size.exit.thread
  %i.q = phi i16 [ %.pre, %_sp_copy.exit ], [ %i.a, %sp_init_size.exit.thread ] ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !11
  br label %.lr.ph

bb.g:                                             ; preds = %bb.e
  %i.t = zext i16 %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
